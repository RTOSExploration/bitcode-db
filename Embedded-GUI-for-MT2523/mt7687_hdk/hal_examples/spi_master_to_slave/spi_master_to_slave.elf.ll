; ModuleID = './build/spi_master_to_slave.elf.bc'
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
@.str.2 = private unnamed_addr constant [61 x i8] c"---spi_master_transfer_data_two_boards_example begins---\0D\0A\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"hal_spi_master_init fail\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"hal_spi_master_init pass\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"hal_spi_master_deinit fail\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"---spi_master_transfer_data_two_boards_example ends---\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"spim_send_data_to_spis() begin\0D\0A\00", align 1
@.str.8.25 = private unnamed_addr constant [34 x i8] c"spim_send_data_to_spis() pass\0D\0A\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"spim_receive_data_from_spis() begin\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"spim_read_slave_data fail: i=%d, data=%x\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"spim_receive_data_from_spis() pass\0D\0A\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !629
@System_Initialize_Done = internal global i32 0, align 4, !dbg !687
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !689
@end = external dso_local global i8, align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.33 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.34 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:04 GMT +00:00\00", align 1, !dbg !897
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !902
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !908

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1088 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1092, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %1, metadata !1093, metadata !DIExpression()), !dbg !1097
  %3 = lshr i32 %0, 5, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %3, metadata !1094, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1097
  %4 = trunc i32 %0 to i16, !dbg !1099
  %5 = and i16 %4, 31, !dbg !1099
  call void @llvm.dbg.value(metadata i16 %4, metadata !1096, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1097
  %6 = trunc i32 %3 to i16, !dbg !1100
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1100

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1101
  %9 = zext i16 %5 to i32, !dbg !1104
  %10 = icmp ult i16 %5, 27, !dbg !1104
  br i1 %8, label %11, label %46, !dbg !1105

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1106

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1108
  %14 = xor i32 %13, -1, !dbg !1111
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1112
  %16 = and i32 %15, %14, !dbg !1112
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1112
  br label %44, !dbg !1113

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1114
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1114

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1115
  %21 = and i32 %20, -3, !dbg !1115
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1115
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1118
  %23 = or i32 %22, 2048, !dbg !1118
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1118
  br label %44, !dbg !1119

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1120
  %26 = and i32 %25, -3, !dbg !1120
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1120
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1123
  %28 = or i32 %27, 2048, !dbg !1123
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1123
  br label %44, !dbg !1124

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1125
  %31 = and i32 %30, -3, !dbg !1125
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1125
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1128
  %33 = or i32 %32, 2048, !dbg !1128
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1128
  br label %44, !dbg !1129

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1130
  %36 = and i32 %35, -3, !dbg !1130
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1130
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1133
  %38 = or i32 %37, 2048, !dbg !1133
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1133
  br label %44, !dbg !1134

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1135
  %41 = and i32 %40, -3, !dbg !1135
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1135
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1138
  %43 = or i32 %42, 2048, !dbg !1138
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1138
  br label %44, !dbg !1139

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1140
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1140
  br label %97, !dbg !1141

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1142

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1144
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1147
  %50 = or i32 %49, %48, !dbg !1147
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1147
  br label %68, !dbg !1148

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1149
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1149

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1150
  %55 = or i32 %54, 2050, !dbg !1150
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1150
  br label %68, !dbg !1153

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1154
  %58 = or i32 %57, 2050, !dbg !1154
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1154
  br label %68, !dbg !1157

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1158
  %61 = or i32 %60, 2050, !dbg !1158
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1158
  br label %68, !dbg !1161

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1162
  %64 = or i32 %63, 2050, !dbg !1162
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1162
  br label %68, !dbg !1165

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1166
  %67 = or i32 %66, 2050, !dbg !1166
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1166
  br label %68, !dbg !1169

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1170
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1170
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1171
  %72 = zext i16 %5 to i32, !dbg !1173
  %73 = icmp eq i16 %5, 0, !dbg !1173
  br i1 %71, label %74, label %87, !dbg !1174

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1175

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1177
  %77 = xor i32 %76, -1, !dbg !1180
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1181
  %79 = and i32 %78, %77, !dbg !1181
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1181
  br label %85, !dbg !1182

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1183
  %82 = and i32 %81, -3, !dbg !1183
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1183
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1185
  %84 = or i32 %83, 2048, !dbg !1185
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1185
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1186
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1186
  br label %97, !dbg !1187

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1188

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1190
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1193
  %91 = or i32 %90, %89, !dbg !1193
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1193
  br label %95, !dbg !1194

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1195
  %94 = or i32 %93, 2050, !dbg !1195
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1195
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1197
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1197
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1097
  ret i32 %98, !dbg !1198
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1199 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1201, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8 %1, metadata !1202, metadata !DIExpression()), !dbg !1205
  %3 = lshr i32 %0, 5, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %3, metadata !1203, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1205
  %4 = trunc i32 %0 to i16, !dbg !1207
  %5 = and i16 %4, 31, !dbg !1207
  call void @llvm.dbg.value(metadata i16 %5, metadata !1204, metadata !DIExpression()), !dbg !1205
  %6 = trunc i32 %3 to i16, !dbg !1208
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1208

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1209
  %9 = zext i16 %5 to i32, !dbg !1212
  %10 = shl nuw i32 1, %9, !dbg !1212
  br i1 %8, label %12, label %11, !dbg !1213

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1214
  br label %19, !dbg !1216

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1217
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1219
  %15 = zext i16 %5 to i32, !dbg !1221
  %16 = shl nuw i32 1, %15, !dbg !1221
  br i1 %14, label %18, label %17, !dbg !1222

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1223
  br label %19, !dbg !1225

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1226
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1205
  ret i32 %20, !dbg !1228
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1229 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1233, metadata !DIExpression()), !dbg !1237
  %2 = lshr i32 %0, 5, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %2, metadata !1234, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1237
  %3 = and i32 %0, 31, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %0, metadata !1235, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1236, metadata !DIExpression()), !dbg !1237
  %4 = trunc i32 %2 to i16, !dbg !1240
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1240

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1236, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1237
  br label %6, !dbg !1241

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1243
  %9 = lshr i32 %8, %3, !dbg !1243
  %10 = trunc i32 %9 to i8, !dbg !1243
  %11 = and i8 %10, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i8 %11, metadata !1236, metadata !DIExpression()), !dbg !1237
  br label %12, !dbg !1244

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1237
  ret i8 %13, !dbg !1245
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1246 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1248, metadata !DIExpression()), !dbg !1252
  %2 = lshr i32 %0, 5, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %2, metadata !1249, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1252
  %3 = and i32 %0, 31, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %0, metadata !1250, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1252
  call void @llvm.dbg.value(metadata i8 0, metadata !1251, metadata !DIExpression()), !dbg !1252
  %4 = trunc i32 %2 to i16, !dbg !1255
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1255

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1251, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1252
  br label %6, !dbg !1256

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1258
  %9 = lshr i32 %8, %3, !dbg !1258
  %10 = trunc i32 %9 to i8, !dbg !1258
  %11 = and i8 %10, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i8 %11, metadata !1251, metadata !DIExpression()), !dbg !1252
  br label %12, !dbg !1259

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1252
  ret i8 %13, !dbg !1260
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1263, metadata !DIExpression()), !dbg !1267
  %2 = lshr i32 %0, 5, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %2, metadata !1264, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1267
  %3 = and i32 %0, 31, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %0, metadata !1265, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1267
  call void @llvm.dbg.value(metadata i8 0, metadata !1266, metadata !DIExpression()), !dbg !1267
  %4 = trunc i32 %2 to i16, !dbg !1270
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1270

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1266, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1267
  br label %6, !dbg !1271

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1273
  %9 = lshr i32 %8, %3, !dbg !1273
  %10 = trunc i32 %9 to i8, !dbg !1273
  %11 = and i8 %10, 1, !dbg !1273
  call void @llvm.dbg.value(metadata i8 %11, metadata !1266, metadata !DIExpression()), !dbg !1267
  br label %12, !dbg !1274

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1267
  ret i8 %13, !dbg !1275
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1280, metadata !DIExpression()), !dbg !1283
  %2 = lshr i32 %0, 5, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %2, metadata !1281, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1283
  %3 = trunc i32 %0 to i16, !dbg !1285
  %4 = and i16 %3, 31, !dbg !1285
  call void @llvm.dbg.value(metadata i16 %3, metadata !1282, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1283
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1286
  %6 = trunc i32 %2 to i16, !dbg !1287
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1287

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1288
  br i1 %8, label %9, label %12, !dbg !1291

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1292
  %11 = shl nuw nsw i32 1, %10, !dbg !1293
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1293
  br label %49, !dbg !1295

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1296
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1296

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1297
  %16 = and i32 %15, -29, !dbg !1297
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1297
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1300
  %18 = or i32 %17, 2052, !dbg !1300
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1300
  br label %49, !dbg !1301

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1302
  %21 = and i32 %20, -29, !dbg !1302
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1302
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1305
  %23 = or i32 %22, 2052, !dbg !1305
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1305
  br label %49, !dbg !1306

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1307
  %26 = and i32 %25, -29, !dbg !1307
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1307
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1310
  %28 = or i32 %27, 2052, !dbg !1310
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1310
  br label %49, !dbg !1311

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1312
  %31 = and i32 %30, -29, !dbg !1312
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1312
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1315
  %33 = or i32 %32, 2052, !dbg !1315
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1315
  br label %49, !dbg !1316

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1317
  %36 = and i32 %35, -29, !dbg !1317
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1317
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1320
  %38 = or i32 %37, 2052, !dbg !1320
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1320
  br label %49, !dbg !1321

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1322
  br i1 %40, label %41, label %46, !dbg !1324

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1325
  %43 = and i32 %42, -29, !dbg !1325
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1325
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1327
  %45 = or i32 %44, 2052, !dbg !1327
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1327
  br label %49, !dbg !1328

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1329
  %48 = shl nuw i32 1, %47, !dbg !1329
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1329
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1283
  ret i32 %50, !dbg !1331
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1334, metadata !DIExpression()), !dbg !1337
  %2 = lshr i32 %0, 5, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %2, metadata !1335, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1337
  %3 = trunc i32 %0 to i16, !dbg !1339
  %4 = and i16 %3, 31, !dbg !1339
  call void @llvm.dbg.value(metadata i16 %3, metadata !1336, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1337
  %5 = trunc i32 %2 to i16, !dbg !1340
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1340

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1341
  br i1 %7, label %8, label %11, !dbg !1344

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1345
  %10 = shl nuw nsw i32 1, %9, !dbg !1346
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1346
  br label %48, !dbg !1348

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1349
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1349

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1350
  %15 = and i32 %14, -29, !dbg !1350
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1350
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1353
  %17 = or i32 %16, 2048, !dbg !1353
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1353
  br label %48, !dbg !1354

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1355
  %20 = and i32 %19, -29, !dbg !1355
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1355
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1358
  %22 = or i32 %21, 2048, !dbg !1358
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1358
  br label %48, !dbg !1359

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1360
  %25 = and i32 %24, -29, !dbg !1360
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1360
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1363
  %27 = or i32 %26, 2048, !dbg !1363
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1363
  br label %48, !dbg !1364

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1365
  %30 = and i32 %29, -29, !dbg !1365
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1365
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1368
  %32 = or i32 %31, 2048, !dbg !1368
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1368
  br label %48, !dbg !1369

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1370
  %35 = and i32 %34, -29, !dbg !1370
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1370
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1373
  %37 = or i32 %36, 2048, !dbg !1373
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1373
  br label %48, !dbg !1374

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1375
  br i1 %39, label %40, label %45, !dbg !1377

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1378
  %42 = and i32 %41, -29, !dbg !1378
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1378
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1380
  %44 = or i32 %43, 2048, !dbg !1380
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1380
  br label %48, !dbg !1381

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1382
  %47 = shl nuw i32 1, %46, !dbg !1382
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1382
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1337
  ret i32 %49, !dbg !1384
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1387, metadata !DIExpression()), !dbg !1390
  %2 = lshr i32 %0, 5, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %2, metadata !1388, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1390
  %3 = trunc i32 %0 to i16, !dbg !1392
  %4 = and i16 %3, 31, !dbg !1392
  call void @llvm.dbg.value(metadata i16 %3, metadata !1389, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1390
  %5 = trunc i32 %2 to i16, !dbg !1393
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1393

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1394
  br i1 %7, label %8, label %11, !dbg !1397

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1398
  %10 = shl nuw nsw i32 1, %9, !dbg !1399
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1399
  br label %48, !dbg !1401

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1402
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1402

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1403
  %15 = and i32 %14, -29, !dbg !1403
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1403
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1406
  %17 = or i32 %16, 2048, !dbg !1406
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1406
  br label %48, !dbg !1407

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1408
  %20 = and i32 %19, -29, !dbg !1408
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1408
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1411
  %22 = or i32 %21, 2048, !dbg !1411
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1411
  br label %48, !dbg !1412

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1413
  %25 = and i32 %24, -29, !dbg !1413
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1413
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1416
  %27 = or i32 %26, 2048, !dbg !1416
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1416
  br label %48, !dbg !1417

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1418
  %30 = and i32 %29, -29, !dbg !1418
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1418
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1421
  %32 = or i32 %31, 2048, !dbg !1421
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1421
  br label %48, !dbg !1422

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1423
  %35 = and i32 %34, -29, !dbg !1423
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1423
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1426
  %37 = or i32 %36, 2048, !dbg !1426
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1426
  br label %48, !dbg !1427

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1428
  br i1 %39, label %40, label %45, !dbg !1430

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1431
  %42 = and i32 %41, -29, !dbg !1431
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1431
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1433
  %44 = or i32 %43, 2048, !dbg !1433
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1433
  br label %48, !dbg !1434

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1435
  %47 = shl nuw i32 1, %46, !dbg !1435
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1435
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1390
  ret i32 %49, !dbg !1437
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1438 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1440, metadata !DIExpression()), !dbg !1443
  %2 = lshr i32 %0, 5, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %2, metadata !1441, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1443
  %3 = trunc i32 %0 to i16, !dbg !1445
  %4 = and i16 %3, 31, !dbg !1445
  call void @llvm.dbg.value(metadata i16 %3, metadata !1442, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1443
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1446
  %6 = trunc i32 %2 to i16, !dbg !1447
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1447

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1448
  br i1 %8, label %9, label %12, !dbg !1451

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1452
  %11 = shl nuw nsw i32 1, %10, !dbg !1453
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1453
  br label %49, !dbg !1455

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1456
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1456

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1457
  %16 = and i32 %15, -29, !dbg !1457
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1457
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1460
  %18 = or i32 %17, 2068, !dbg !1460
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1460
  br label %49, !dbg !1461

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1462
  %21 = and i32 %20, -29, !dbg !1462
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1462
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1465
  %23 = or i32 %22, 2068, !dbg !1465
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1465
  br label %49, !dbg !1466

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1467
  %26 = and i32 %25, -29, !dbg !1467
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1467
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1470
  %28 = or i32 %27, 2068, !dbg !1470
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1470
  br label %49, !dbg !1471

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1472
  %31 = and i32 %30, -29, !dbg !1472
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1472
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1475
  %33 = or i32 %32, 2068, !dbg !1475
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1475
  br label %49, !dbg !1476

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1477
  %36 = and i32 %35, -29, !dbg !1477
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1477
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1480
  %38 = or i32 %37, 2068, !dbg !1480
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1480
  br label %49, !dbg !1481

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1482
  br i1 %40, label %41, label %46, !dbg !1484

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1485
  %43 = and i32 %42, -29, !dbg !1485
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1485
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1487
  %45 = or i32 %44, 2068, !dbg !1487
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1487
  br label %49, !dbg !1488

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1489
  %48 = shl nuw i32 1, %47, !dbg !1489
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1489
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1443
  ret i32 %50, !dbg !1491
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1492 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1494, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %1, metadata !1495, metadata !DIExpression()), !dbg !1498
  %3 = lshr i32 %0, 4, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %3, metadata !1496, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1498
  %4 = trunc i32 %0 to i16, !dbg !1500
  %5 = and i16 %4, 15, !dbg !1500
  call void @llvm.dbg.value(metadata i16 %4, metadata !1497, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1498
  %6 = trunc i32 %3 to i16, !dbg !1501
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1501

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1502
  %9 = zext i16 %8 to i32, !dbg !1502
  %10 = shl nuw i32 3, %9, !dbg !1504
  %11 = xor i32 %10, -1, !dbg !1505
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1506
  %13 = and i32 %12, %11, !dbg !1506
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1506
  %14 = lshr i8 %1, 2, !dbg !1507
  %15 = zext i8 %14 to i32, !dbg !1507
  %16 = add nsw i32 %15, -1, !dbg !1508
  %17 = shl i32 %16, %9, !dbg !1509
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1510
  %19 = or i32 %18, %17, !dbg !1510
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1510
  br label %131, !dbg !1511

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1512
  br i1 %21, label %22, label %35, !dbg !1514

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1515
  %24 = zext i16 %23 to i32, !dbg !1515
  %25 = shl nuw nsw i32 3, %24, !dbg !1517
  %26 = xor i32 %25, -1, !dbg !1518
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1519
  %28 = and i32 %27, %26, !dbg !1519
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1519
  %29 = lshr i8 %1, 2, !dbg !1520
  %30 = zext i8 %29 to i32, !dbg !1520
  %31 = add nsw i32 %30, -1, !dbg !1521
  %32 = shl nsw i32 %31, %24, !dbg !1522
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1523
  %34 = or i32 %33, %32, !dbg !1523
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1523
  br label %131, !dbg !1524

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1525
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1525

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1526
  %39 = and i32 %38, -449, !dbg !1526
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1526
  %40 = lshr i8 %1, 1, !dbg !1529
  %41 = zext i8 %40 to i32, !dbg !1529
  %42 = shl nuw nsw i32 %41, 6, !dbg !1530
  %43 = add nsw i32 %42, -64, !dbg !1530
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1531
  %45 = or i32 %44, %43, !dbg !1531
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1531
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1532
  %47 = or i32 %46, 2048, !dbg !1532
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1532
  br label %131, !dbg !1533

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1534
  %50 = and i32 %49, -449, !dbg !1534
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1534
  %51 = lshr i8 %1, 1, !dbg !1537
  %52 = zext i8 %51 to i32, !dbg !1537
  %53 = shl nuw nsw i32 %52, 6, !dbg !1538
  %54 = add nsw i32 %53, -64, !dbg !1538
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1539
  %56 = or i32 %55, %54, !dbg !1539
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1539
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1540
  %58 = or i32 %57, 2048, !dbg !1540
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1540
  br label %131, !dbg !1541

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1542
  %61 = and i32 %60, -449, !dbg !1542
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1542
  %62 = lshr i8 %1, 1, !dbg !1545
  %63 = zext i8 %62 to i32, !dbg !1545
  %64 = shl nuw nsw i32 %63, 6, !dbg !1546
  %65 = add nsw i32 %64, -64, !dbg !1546
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1547
  %67 = or i32 %66, %65, !dbg !1547
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1547
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1548
  %69 = or i32 %68, 2048, !dbg !1548
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1548
  br label %131, !dbg !1549

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1550
  %72 = and i32 %71, -449, !dbg !1550
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1550
  %73 = lshr i8 %1, 1, !dbg !1553
  %74 = zext i8 %73 to i32, !dbg !1553
  %75 = shl nuw nsw i32 %74, 6, !dbg !1554
  %76 = add nsw i32 %75, -64, !dbg !1554
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1555
  %78 = or i32 %77, %76, !dbg !1555
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1555
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1556
  %80 = or i32 %79, 2048, !dbg !1556
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1556
  br label %131, !dbg !1557

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1558
  %83 = and i32 %82, -449, !dbg !1558
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1558
  %84 = lshr i8 %1, 1, !dbg !1561
  %85 = zext i8 %84 to i32, !dbg !1561
  %86 = shl nuw nsw i32 %85, 6, !dbg !1562
  %87 = add nsw i32 %86, -64, !dbg !1562
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1563
  %89 = or i32 %88, %87, !dbg !1563
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1563
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1564
  %91 = or i32 %90, 2048, !dbg !1564
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1564
  br label %131, !dbg !1565

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1566
  br i1 %93, label %94, label %105, !dbg !1568

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1569
  %96 = and i32 %95, -449, !dbg !1569
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1569
  %97 = lshr i8 %1, 1, !dbg !1571
  %98 = zext i8 %97 to i32, !dbg !1571
  %99 = shl nuw nsw i32 %98, 6, !dbg !1572
  %100 = add nsw i32 %99, -64, !dbg !1572
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1573
  %102 = or i32 %101, %100, !dbg !1573
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1573
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1574
  %104 = or i32 %103, 2048, !dbg !1574
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1574
  br label %131, !dbg !1575

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1576
  %107 = zext i16 %106 to i32, !dbg !1576
  %108 = shl nuw i32 3, %107, !dbg !1578
  %109 = xor i32 %108, -1, !dbg !1579
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1580
  %111 = and i32 %110, %109, !dbg !1580
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1580
  %112 = lshr i8 %1, 2, !dbg !1581
  %113 = zext i8 %112 to i32, !dbg !1581
  %114 = add nsw i32 %113, -1, !dbg !1582
  %115 = shl i32 %114, %107, !dbg !1583
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1584
  %117 = or i32 %116, %115, !dbg !1584
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1584
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1585
  %120 = zext i16 %119 to i32, !dbg !1585
  %121 = shl nuw i32 3, %120, !dbg !1586
  %122 = xor i32 %121, -1, !dbg !1587
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1588
  %124 = and i32 %123, %122, !dbg !1588
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1588
  %125 = lshr i8 %1, 2, !dbg !1589
  %126 = zext i8 %125 to i32, !dbg !1589
  %127 = add nsw i32 %126, -1, !dbg !1590
  %128 = shl i32 %127, %120, !dbg !1591
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1592
  %130 = or i32 %129, %128, !dbg !1592
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1592
  br label %131, !dbg !1593

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1498
  ret i32 %132, !dbg !1594
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1595 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1600, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8* %1, metadata !1601, metadata !DIExpression()), !dbg !1605
  %3 = lshr i32 %0, 4, !dbg !1606
  call void @llvm.dbg.value(metadata i32 %3, metadata !1602, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1605
  %4 = trunc i32 %0 to i16, !dbg !1607
  %5 = and i16 %4, 15, !dbg !1607
  call void @llvm.dbg.value(metadata i16 %4, metadata !1603, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1605
  %6 = trunc i32 %3 to i16, !dbg !1608
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1608

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %8, metadata !1604, metadata !DIExpression()), !dbg !1605
  %9 = shl nuw nsw i16 %5, 1, !dbg !1611
  %10 = zext i16 %9 to i32, !dbg !1611
  %11 = shl nuw i32 3, %10, !dbg !1612
  %12 = and i32 %8, %11, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %12, metadata !1604, metadata !DIExpression()), !dbg !1605
  %13 = lshr i32 %12, %10, !dbg !1614
  %14 = trunc i32 %13 to i8, !dbg !1615
  %15 = shl i8 %14, 2, !dbg !1615
  %16 = add i8 %15, 4, !dbg !1615
  br label %89, !dbg !1616

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1617
  br i1 %18, label %19, label %29, !dbg !1619

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %20, metadata !1604, metadata !DIExpression()), !dbg !1605
  %21 = shl nuw nsw i16 %5, 1, !dbg !1622
  %22 = zext i16 %21 to i32, !dbg !1622
  %23 = shl nuw nsw i32 3, %22, !dbg !1623
  %24 = and i32 %20, %23, !dbg !1624
  call void @llvm.dbg.value(metadata i32 %24, metadata !1604, metadata !DIExpression()), !dbg !1605
  %25 = lshr i32 %24, %22, !dbg !1625
  %26 = trunc i32 %25 to i8, !dbg !1626
  %27 = shl i8 %26, 2, !dbg !1626
  %28 = add i8 %27, 4, !dbg !1626
  br label %89, !dbg !1627

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1628
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1628

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %32, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %32, metadata !1604, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1605
  %33 = lshr i32 %32, 5, !dbg !1632
  %34 = trunc i32 %33 to i8, !dbg !1633
  %35 = and i8 %34, 14, !dbg !1633
  %36 = add nuw nsw i8 %35, 2, !dbg !1633
  br label %89, !dbg !1634

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %38, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %38, metadata !1604, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1605
  %39 = lshr i32 %38, 5, !dbg !1638
  %40 = trunc i32 %39 to i8, !dbg !1639
  %41 = and i8 %40, 14, !dbg !1639
  %42 = add nuw nsw i8 %41, 2, !dbg !1639
  br label %89, !dbg !1640

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %44, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %44, metadata !1604, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1605
  %45 = lshr i32 %44, 5, !dbg !1644
  %46 = trunc i32 %45 to i8, !dbg !1645
  %47 = and i8 %46, 14, !dbg !1645
  %48 = add nuw nsw i8 %47, 2, !dbg !1645
  br label %89, !dbg !1646

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1647
  call void @llvm.dbg.value(metadata i32 %50, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %50, metadata !1604, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1605
  %51 = lshr i32 %50, 5, !dbg !1650
  %52 = trunc i32 %51 to i8, !dbg !1651
  %53 = and i8 %52, 14, !dbg !1651
  %54 = add nuw nsw i8 %53, 2, !dbg !1651
  br label %89, !dbg !1652

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %56, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %56, metadata !1604, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1605
  %57 = lshr i32 %56, 5, !dbg !1656
  %58 = trunc i32 %57 to i8, !dbg !1657
  %59 = and i8 %58, 14, !dbg !1657
  %60 = add nuw nsw i8 %59, 2, !dbg !1657
  br label %89, !dbg !1658

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1659
  br i1 %62, label %63, label %69, !dbg !1661

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %64, metadata !1604, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i32 %64, metadata !1604, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1605
  %65 = lshr i32 %64, 5, !dbg !1664
  %66 = trunc i32 %65 to i8, !dbg !1665
  %67 = and i8 %66, 14, !dbg !1665
  %68 = add nuw nsw i8 %67, 2, !dbg !1665
  br label %89, !dbg !1666

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %70, metadata !1604, metadata !DIExpression()), !dbg !1605
  %71 = shl nuw nsw i16 %5, 1, !dbg !1669
  %72 = zext i16 %71 to i32, !dbg !1669
  %73 = shl nuw i32 3, %72, !dbg !1670
  %74 = and i32 %70, %73, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %74, metadata !1604, metadata !DIExpression()), !dbg !1605
  %75 = lshr i32 %74, %72, !dbg !1672
  %76 = trunc i32 %75 to i8, !dbg !1673
  %77 = shl i8 %76, 2, !dbg !1673
  %78 = add i8 %77, 4, !dbg !1673
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %80, metadata !1604, metadata !DIExpression()), !dbg !1605
  %81 = shl nuw nsw i16 %5, 1, !dbg !1675
  %82 = zext i16 %81 to i32, !dbg !1675
  %83 = shl nuw i32 3, %82, !dbg !1676
  %84 = and i32 %80, %83, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %84, metadata !1604, metadata !DIExpression()), !dbg !1605
  %85 = lshr i32 %84, %82, !dbg !1678
  %86 = trunc i32 %85 to i8, !dbg !1679
  %87 = shl i8 %86, 2, !dbg !1679
  %88 = add i8 %87, 4, !dbg !1679
  br label %89, !dbg !1680

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1681
  br label %91, !dbg !1682

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1605
  ret i32 %92, !dbg !1682
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1683 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1688, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 %1, metadata !1689, metadata !DIExpression()), !dbg !1692
  %3 = lshr i32 %0, 5, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %3, metadata !1690, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1692
  %4 = trunc i32 %0 to i16, !dbg !1694
  %5 = and i16 %4, 31, !dbg !1694
  call void @llvm.dbg.value(metadata i16 %5, metadata !1691, metadata !DIExpression()), !dbg !1692
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1695

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1690, metadata !DIExpression()), !dbg !1692
  %7 = trunc i32 %3 to i16, !dbg !1696
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1696

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1699
  %10 = shl nuw i32 1, %9, !dbg !1701
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1702
  %12 = or i32 %11, %10, !dbg !1702
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1702
  br label %32, !dbg !1703

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1704
  %15 = shl nuw i32 1, %14, !dbg !1705
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1706
  %17 = or i32 %16, %15, !dbg !1706
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1706
  br label %32, !dbg !1707

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1708
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1708

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1711
  %22 = shl nuw i32 1, %21, !dbg !1713
  %23 = xor i32 %22, -1, !dbg !1714
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1715
  %25 = and i32 %24, %23, !dbg !1715
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1715
  br label %32, !dbg !1716

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1717
  %28 = shl nuw i32 1, %27, !dbg !1718
  %29 = xor i32 %28, -1, !dbg !1719
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1720
  %31 = and i32 %30, %29, !dbg !1720
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1720
  br label %32, !dbg !1721

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1722
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1729, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 %1, metadata !1730, metadata !DIExpression()), !dbg !1732
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
  ], !dbg !1733

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %4, metadata !1731, metadata !DIExpression()), !dbg !1732
  %5 = and i32 %4, -16, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %5, metadata !1731, metadata !DIExpression()), !dbg !1732
  %6 = zext i8 %1 to i32, !dbg !1737
  %7 = or i32 %5, %6, !dbg !1738
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1739
  br label %187, !dbg !1740

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %9, metadata !1731, metadata !DIExpression()), !dbg !1732
  %10 = and i32 %9, -241, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %10, metadata !1731, metadata !DIExpression()), !dbg !1732
  %11 = zext i8 %1 to i32, !dbg !1743
  %12 = shl nuw nsw i32 %11, 4, !dbg !1744
  %13 = or i32 %10, %12, !dbg !1745
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1746
  br label %187, !dbg !1747

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1748
  call void @llvm.dbg.value(metadata i32 %15, metadata !1731, metadata !DIExpression()), !dbg !1732
  %16 = and i32 %15, -3841, !dbg !1749
  call void @llvm.dbg.value(metadata i32 %16, metadata !1731, metadata !DIExpression()), !dbg !1732
  %17 = zext i8 %1 to i32, !dbg !1750
  %18 = shl nuw nsw i32 %17, 8, !dbg !1751
  %19 = or i32 %16, %18, !dbg !1752
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1753
  br label %187, !dbg !1754

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1755
  call void @llvm.dbg.value(metadata i32 %21, metadata !1731, metadata !DIExpression()), !dbg !1732
  %22 = and i32 %21, -61441, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %22, metadata !1731, metadata !DIExpression()), !dbg !1732
  %23 = zext i8 %1 to i32, !dbg !1757
  %24 = shl nuw nsw i32 %23, 12, !dbg !1758
  %25 = or i32 %22, %24, !dbg !1759
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1760
  br label %187, !dbg !1761

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %27, metadata !1731, metadata !DIExpression()), !dbg !1732
  %28 = and i32 %27, -983041, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %28, metadata !1731, metadata !DIExpression()), !dbg !1732
  %29 = zext i8 %1 to i32, !dbg !1764
  %30 = shl nuw nsw i32 %29, 16, !dbg !1765
  %31 = or i32 %28, %30, !dbg !1766
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1767
  br label %187, !dbg !1768

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %33, metadata !1731, metadata !DIExpression()), !dbg !1732
  %34 = and i32 %33, -15728641, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %34, metadata !1731, metadata !DIExpression()), !dbg !1732
  %35 = zext i8 %1 to i32, !dbg !1771
  %36 = shl nuw nsw i32 %35, 20, !dbg !1772
  %37 = or i32 %34, %36, !dbg !1773
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1774
  br label %187, !dbg !1775

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1776
  call void @llvm.dbg.value(metadata i32 %39, metadata !1731, metadata !DIExpression()), !dbg !1732
  %40 = and i32 %39, -251658241, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %40, metadata !1731, metadata !DIExpression()), !dbg !1732
  %41 = zext i8 %1 to i32, !dbg !1778
  %42 = shl nuw i32 %41, 24, !dbg !1779
  %43 = or i32 %40, %42, !dbg !1780
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1781
  br label %187, !dbg !1782

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %45, metadata !1731, metadata !DIExpression()), !dbg !1732
  %46 = and i32 %45, 268435455, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %46, metadata !1731, metadata !DIExpression()), !dbg !1732
  %47 = zext i8 %1 to i32, !dbg !1785
  %48 = shl i32 %47, 28, !dbg !1786
  %49 = or i32 %46, %48, !dbg !1787
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1788
  br label %187, !dbg !1789

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %51, metadata !1731, metadata !DIExpression()), !dbg !1732
  %52 = and i32 %51, -16, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %52, metadata !1731, metadata !DIExpression()), !dbg !1732
  %53 = zext i8 %1 to i32, !dbg !1792
  %54 = or i32 %52, %53, !dbg !1793
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1794
  br label %187, !dbg !1795

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %56, metadata !1731, metadata !DIExpression()), !dbg !1732
  %57 = and i32 %56, -241, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %57, metadata !1731, metadata !DIExpression()), !dbg !1732
  %58 = zext i8 %1 to i32, !dbg !1798
  %59 = shl nuw nsw i32 %58, 4, !dbg !1799
  %60 = or i32 %57, %59, !dbg !1800
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1801
  br label %187, !dbg !1802

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %62, metadata !1731, metadata !DIExpression()), !dbg !1732
  %63 = and i32 %62, -3841, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %63, metadata !1731, metadata !DIExpression()), !dbg !1732
  %64 = zext i8 %1 to i32, !dbg !1805
  %65 = shl nuw nsw i32 %64, 8, !dbg !1806
  %66 = or i32 %63, %65, !dbg !1807
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1808
  br label %187, !dbg !1809

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %68, metadata !1731, metadata !DIExpression()), !dbg !1732
  %69 = and i32 %68, -61441, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %69, metadata !1731, metadata !DIExpression()), !dbg !1732
  %70 = zext i8 %1 to i32, !dbg !1812
  %71 = shl nuw nsw i32 %70, 12, !dbg !1813
  %72 = or i32 %69, %71, !dbg !1814
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1815
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1816

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #15, !dbg !1818
  br label %187, !dbg !1820

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %76, metadata !1731, metadata !DIExpression()), !dbg !1732
  %77 = and i32 %76, -983041, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %77, metadata !1731, metadata !DIExpression()), !dbg !1732
  %78 = zext i8 %1 to i32, !dbg !1823
  %79 = shl nuw nsw i32 %78, 16, !dbg !1824
  %80 = or i32 %77, %79, !dbg !1825
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1826
  %81 = and i8 %1, -2, !dbg !1827
  %82 = icmp eq i8 %81, 4, !dbg !1827
  br i1 %82, label %83, label %187, !dbg !1827

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #15, !dbg !1829
  br label %187, !dbg !1831

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %86, metadata !1731, metadata !DIExpression()), !dbg !1732
  %87 = and i32 %86, -15728641, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %87, metadata !1731, metadata !DIExpression()), !dbg !1732
  %88 = zext i8 %1 to i32, !dbg !1834
  %89 = shl nuw nsw i32 %88, 20, !dbg !1835
  %90 = or i32 %87, %89, !dbg !1836
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1837
  %91 = icmp eq i8 %1, 6, !dbg !1838
  br i1 %91, label %92, label %187, !dbg !1840

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #15, !dbg !1841
  br label %187, !dbg !1843

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1844
  call void @llvm.dbg.value(metadata i32 %95, metadata !1731, metadata !DIExpression()), !dbg !1732
  %96 = and i32 %95, -251658241, !dbg !1845
  call void @llvm.dbg.value(metadata i32 %96, metadata !1731, metadata !DIExpression()), !dbg !1732
  %97 = zext i8 %1 to i32, !dbg !1846
  %98 = shl nuw i32 %97, 24, !dbg !1847
  %99 = or i32 %96, %98, !dbg !1848
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1849
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1850

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #15, !dbg !1852
  br label %187, !dbg !1854

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %103, metadata !1731, metadata !DIExpression()), !dbg !1732
  %104 = and i32 %103, 268435455, !dbg !1856
  call void @llvm.dbg.value(metadata i32 %104, metadata !1731, metadata !DIExpression()), !dbg !1732
  %105 = zext i8 %1 to i32, !dbg !1857
  %106 = shl i32 %105, 28, !dbg !1858
  %107 = or i32 %104, %106, !dbg !1859
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1860
  %108 = and i8 %1, -3, !dbg !1861
  %109 = icmp eq i8 %108, 4, !dbg !1861
  br i1 %109, label %110, label %187, !dbg !1861

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #15, !dbg !1863
  br label %187, !dbg !1865

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %113, metadata !1731, metadata !DIExpression()), !dbg !1732
  %114 = and i32 %113, -16, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %114, metadata !1731, metadata !DIExpression()), !dbg !1732
  %115 = zext i8 %1 to i32, !dbg !1868
  %116 = or i32 %114, %115, !dbg !1869
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1870
  %117 = and i8 %1, -3, !dbg !1871
  %118 = icmp eq i8 %117, 4, !dbg !1871
  br i1 %118, label %119, label %187, !dbg !1871

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #15, !dbg !1873
  br label %187, !dbg !1875

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %122, metadata !1731, metadata !DIExpression()), !dbg !1732
  %123 = and i32 %122, -241, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %123, metadata !1731, metadata !DIExpression()), !dbg !1732
  %124 = zext i8 %1 to i32, !dbg !1878
  %125 = shl nuw nsw i32 %124, 4, !dbg !1879
  %126 = or i32 %123, %125, !dbg !1880
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1881
  br label %187, !dbg !1882

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %128, metadata !1731, metadata !DIExpression()), !dbg !1732
  %129 = and i32 %128, -3841, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %129, metadata !1731, metadata !DIExpression()), !dbg !1732
  %130 = zext i8 %1 to i32, !dbg !1885
  %131 = shl nuw nsw i32 %130, 8, !dbg !1886
  %132 = or i32 %129, %131, !dbg !1887
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1888
  br label %187, !dbg !1889

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %134, metadata !1731, metadata !DIExpression()), !dbg !1732
  %135 = and i32 %134, -61441, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %135, metadata !1731, metadata !DIExpression()), !dbg !1732
  %136 = zext i8 %1 to i32, !dbg !1892
  %137 = shl nuw nsw i32 %136, 12, !dbg !1893
  %138 = or i32 %135, %137, !dbg !1894
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1895
  br label %187, !dbg !1896

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1897
  call void @llvm.dbg.value(metadata i32 %140, metadata !1731, metadata !DIExpression()), !dbg !1732
  %141 = and i32 %140, -983041, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %141, metadata !1731, metadata !DIExpression()), !dbg !1732
  %142 = zext i8 %1 to i32, !dbg !1899
  %143 = shl nuw nsw i32 %142, 16, !dbg !1900
  %144 = or i32 %141, %143, !dbg !1901
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1902
  br label %187, !dbg !1903

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1904
  call void @llvm.dbg.value(metadata i32 %146, metadata !1731, metadata !DIExpression()), !dbg !1732
  %147 = and i32 %146, -15728641, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %147, metadata !1731, metadata !DIExpression()), !dbg !1732
  %148 = zext i8 %1 to i32, !dbg !1906
  %149 = shl nuw nsw i32 %148, 20, !dbg !1907
  %150 = or i32 %147, %149, !dbg !1908
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1909
  br label %187, !dbg !1910

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %152, metadata !1731, metadata !DIExpression()), !dbg !1732
  %153 = and i32 %152, -251658241, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %153, metadata !1731, metadata !DIExpression()), !dbg !1732
  %154 = zext i8 %1 to i32, !dbg !1913
  %155 = shl nuw i32 %154, 24, !dbg !1914
  %156 = or i32 %153, %155, !dbg !1915
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1916
  br label %187, !dbg !1917

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %158, metadata !1731, metadata !DIExpression()), !dbg !1732
  %159 = and i32 %158, 268435455, !dbg !1919
  call void @llvm.dbg.value(metadata i32 %159, metadata !1731, metadata !DIExpression()), !dbg !1732
  %160 = zext i8 %1 to i32, !dbg !1920
  %161 = shl i32 %160, 28, !dbg !1921
  %162 = or i32 %159, %161, !dbg !1922
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1923
  br label %187, !dbg !1924

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %164, metadata !1731, metadata !DIExpression()), !dbg !1732
  %165 = and i32 %164, -241, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %165, metadata !1731, metadata !DIExpression()), !dbg !1732
  %166 = zext i8 %1 to i32, !dbg !1927
  %167 = shl nuw nsw i32 %166, 4, !dbg !1928
  %168 = or i32 %165, %167, !dbg !1929
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1930
  br label %187, !dbg !1931

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %170, metadata !1731, metadata !DIExpression()), !dbg !1732
  %171 = and i32 %170, -3841, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %171, metadata !1731, metadata !DIExpression()), !dbg !1732
  %172 = zext i8 %1 to i32, !dbg !1934
  %173 = shl nuw nsw i32 %172, 8, !dbg !1935
  %174 = or i32 %171, %173, !dbg !1936
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1937
  br label %187, !dbg !1938

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %176, metadata !1731, metadata !DIExpression()), !dbg !1732
  %177 = and i32 %176, -61441, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %177, metadata !1731, metadata !DIExpression()), !dbg !1732
  %178 = zext i8 %1 to i32, !dbg !1941
  %179 = shl nuw nsw i32 %178, 12, !dbg !1942
  %180 = or i32 %177, %179, !dbg !1943
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1944
  br label %187, !dbg !1945

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %182, metadata !1731, metadata !DIExpression()), !dbg !1732
  %183 = and i32 %182, -983041, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %183, metadata !1731, metadata !DIExpression()), !dbg !1732
  %184 = zext i8 %1 to i32, !dbg !1948
  %185 = shl nuw nsw i32 %184, 16, !dbg !1949
  %186 = or i32 %183, %185, !dbg !1950
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1951
  br label %187, !dbg !1952

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1953
}

; Function Attrs: noinline nounwind optsize
define dso_local void @spim_irqhandler(i32 %0) #3 !dbg !1954 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 undef, metadata !1956, metadata !DIExpression()), !dbg !1958
  %3 = bitcast i32* %2 to i8*, !dbg !1959
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !1959
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1957, metadata !DIExpression()), !dbg !1960
  %4 = load void ()*, void ()** @halspim_isr, align 4, !dbg !1961
  tail call void %4() #15, !dbg !1961
  %5 = load volatile i32, i32* inttoptr (i32 603979828 to i32*), align 4, !dbg !1962
  store volatile i32 %5, i32* %2, align 4, !dbg !1963
  %6 = load volatile i32, i32* %2, align 4, !dbg !1964
  store volatile i32 %6, i32* %2, align 4, !dbg !1965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !1966
  ret void, !dbg !1966
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @spim_isr_Register(void ()* noundef %0) local_unnamed_addr #5 !dbg !1967 {
  call void @llvm.dbg.value(metadata void ()* %0, metadata !1971, metadata !DIExpression()), !dbg !1972
  store void ()* %0, void ()** @halspim_isr, align 4, !dbg !1973
  ret void, !dbg !1974
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @halSpim_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1975 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1979, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i32 %1, metadata !1980, metadata !DIExpression()), !dbg !1983
  %4 = bitcast i32* %3 to i8*, !dbg !1984
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4), !dbg !1984
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1981, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1982, metadata !DIExpression()), !dbg !1983
  %5 = tail call fastcc i32 @cmnReadRegister32() #14, !dbg !1986
  store volatile i32 %5, i32* %3, align 4, !dbg !1987
  %6 = load volatile i32, i32* %3, align 4, !dbg !1988
  %7 = lshr i32 %6, 28, !dbg !1989
  %8 = and i32 %7, 3, !dbg !1990
  store volatile i32 %8, i32* %3, align 4, !dbg !1991
  %9 = load volatile i32, i32* %3, align 4, !dbg !1992
  %10 = icmp eq i32 %9, 3, !dbg !1994
  br i1 %10, label %12, label %11, !dbg !1995

11:                                               ; preds = %2
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #15, !dbg !1996
  br label %12, !dbg !1998

12:                                               ; preds = %11, %2
  %13 = load volatile i32, i32* inttoptr (i32 -2097118796 to i32*), align 4, !dbg !1999
  %14 = and i32 %13, -131073, !dbg !1999
  store volatile i32 %14, i32* inttoptr (i32 -2097118796 to i32*), align 4, !dbg !1999
  %15 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 27, void (i32)* noundef nonnull @spim_irqhandler) #15, !dbg !2000
  %16 = tail call i32 @hal_nvic_set_priority(i32 noundef 27, i32 noundef 5) #15, !dbg !2001
  %17 = tail call i32 @hal_nvic_enable_irq(i32 noundef 27) #15, !dbg !2002
  %18 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2003
  %19 = and i32 %18, 268499332, !dbg !2003
  store volatile i32 %19, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2003
  %20 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2004
  %21 = shl i32 %1, 16, !dbg !2004
  %22 = or i32 %21, %0, !dbg !2004
  %23 = or i32 %22, %20, !dbg !2004
  store volatile i32 %23, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2004
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4), !dbg !2005
  ret i32 0, !dbg !2006
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32() unnamed_addr #2 !dbg !2007 {
  call void @llvm.dbg.value(metadata i8* inttoptr (i32 -2097118792 to i8*), metadata !2014, metadata !DIExpression()), !dbg !2015
  %1 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2016
  ret i32 %1, !dbg !2017
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @spim_busy_wait() local_unnamed_addr #0 !dbg !2018 {
  call void @llvm.dbg.value(metadata i32 60000, metadata !2022, metadata !DIExpression()), !dbg !2023
  br label %1, !dbg !2024

1:                                                ; preds = %6, %0
  %2 = phi i32 [ 60000, %0 ], [ %7, %6 ], !dbg !2023
  call void @llvm.dbg.value(metadata i32 %2, metadata !2022, metadata !DIExpression()), !dbg !2023
  %3 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2025
  %4 = and i32 %3, 65536, !dbg !2028
  %5 = icmp eq i32 %4, 0, !dbg !2029
  br i1 %5, label %9, label %6, !dbg !2030

6:                                                ; preds = %1
  %7 = add nsw i32 %2, -1, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %7, metadata !2022, metadata !DIExpression()), !dbg !2023
  %8 = icmp ugt i32 %2, 1, !dbg !2032
  br i1 %8, label %1, label %9, !dbg !2033, !llvm.loop !2034

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %1 ], [ -1, %6 ], !dbg !2023
  ret i32 %10, !dbg !2036
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !dbg !2037 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2045, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %1, metadata !2046, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8* %2, metadata !2047, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %3, metadata !2048, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %4, metadata !2049, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 -1, metadata !2054, metadata !DIExpression()), !dbg !2056
  %6 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2057
  %7 = or i32 %6, 4, !dbg !2057
  store volatile i32 %7, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2057
  store volatile i32 %0, i32* inttoptr (i32 603979780 to i32*), align 4, !dbg !2058
  %8 = shl i32 %1, 27, !dbg !2059
  store volatile i32 %8, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2059
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2056
  br label %9, !dbg !2060

9:                                                ; preds = %5, %9
  %10 = phi i32 [ 0, %5 ], [ %14, %9 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !2051, metadata !DIExpression()), !dbg !2056
  %11 = shl nuw nsw i32 %10, 2, !dbg !2062
  %12 = add nuw nsw i32 %11, 603979784, !dbg !2062
  %13 = inttoptr i32 %12 to i32*, !dbg !2062
  store volatile i32 0, i32* %13, align 4, !dbg !2062
  %14 = add nuw nsw i32 %10, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i32 %14, metadata !2051, metadata !DIExpression()), !dbg !2056
  %15 = icmp eq i32 %14, 8, !dbg !2066
  br i1 %15, label %16, label %9, !dbg !2060, !llvm.loop !2067

16:                                               ; preds = %9
  %17 = and i32 %4, 2, !dbg !2069
  %18 = icmp eq i32 %17, 0, !dbg !2069
  br i1 %18, label %41, label %19, !dbg !2071

19:                                               ; preds = %16
  %20 = icmp eq i8* %2, null, !dbg !2072
  br i1 %20, label %70, label %21, !dbg !2075

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2056
  %22 = icmp eq i32 %3, 0, !dbg !2076
  br i1 %22, label %41, label %23, !dbg !2079

23:                                               ; preds = %21, %31
  %24 = phi i32 [ %39, %31 ], [ 0, %21 ]
  call void @llvm.dbg.value(metadata i32 %24, metadata !2051, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %24, metadata !2052, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2056
  %25 = and i32 %24, 3, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %25, metadata !2053, metadata !DIExpression()), !dbg !2056
  %26 = icmp eq i32 %25, 0, !dbg !2082
  %27 = and i32 %24, 2147483644, !dbg !2084
  %28 = add nuw nsw i32 %27, 603979784, !dbg !2084
  %29 = inttoptr i32 %28 to i32*, !dbg !2084
  br i1 %26, label %30, label %31, !dbg !2085

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 %24, metadata !2052, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2056
  store volatile i32 0, i32* %29, align 4, !dbg !2086
  br label %31, !dbg !2088

31:                                               ; preds = %23, %30
  %32 = load volatile i32, i32* %29, align 4, !dbg !2089
  %33 = getelementptr inbounds i8, i8* %2, i32 %24, !dbg !2089
  %34 = load i8, i8* %33, align 1, !dbg !2089
  %35 = zext i8 %34 to i32, !dbg !2089
  %36 = shl nuw nsw i32 %25, 3, !dbg !2089
  %37 = shl nuw i32 %35, %36, !dbg !2089
  %38 = or i32 %37, %32, !dbg !2089
  store volatile i32 %38, i32* %29, align 4, !dbg !2089
  %39 = add nuw i32 %24, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %39, metadata !2051, metadata !DIExpression()), !dbg !2056
  %40 = icmp eq i32 %39, %3, !dbg !2076
  br i1 %40, label %41, label %23, !dbg !2079, !llvm.loop !2091

41:                                               ; preds = %31, %16, %21
  %42 = phi i32 [ 3, %21 ], [ 15, %16 ], [ 3, %31 ]
  %43 = load volatile i32, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2093
  %44 = and i32 %43, -2093568, !dbg !2093
  store volatile i32 %44, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2093
  %45 = load volatile i32, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2094
  %46 = shl i32 %3, %42, !dbg !2094
  %47 = or i32 %45, %46, !dbg !2094
  store volatile i32 %47, i32* inttoptr (i32 603979820 to i32*), align 4, !dbg !2094
  %48 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2096
  %49 = or i32 %48, 256, !dbg !2096
  store volatile i32 %49, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !2096
  %50 = tail call i32 @spim_busy_wait() #14, !dbg !2097
  %51 = and i32 %4, 3, !dbg !2098
  %52 = icmp eq i32 %51, 1, !dbg !2098
  br i1 %52, label %53, label %70, !dbg !2098

53:                                               ; preds = %41
  %54 = icmp eq i8* %2, null, !dbg !2099
  br i1 %54, label %74, label %55, !dbg !2103

55:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2056
  %56 = icmp eq i32 %3, 0, !dbg !2104
  br i1 %56, label %70, label %57, !dbg !2107

57:                                               ; preds = %55, %57
  %58 = phi i32 [ %68, %57 ], [ 0, %55 ]
  call void @llvm.dbg.value(metadata i32 %58, metadata !2051, metadata !DIExpression()), !dbg !2056
  %59 = and i32 %58, 2147483644, !dbg !2108
  call void @llvm.dbg.value(metadata i32 %58, metadata !2052, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !2056
  call void @llvm.dbg.value(metadata i32 %58, metadata !2053, metadata !DIExpression(DW_OP_constu, 3, DW_OP_and, DW_OP_stack_value)), !dbg !2056
  %60 = add nuw nsw i32 %59, 603979784, !dbg !2108
  %61 = inttoptr i32 %60 to i32*, !dbg !2108
  %62 = load volatile i32, i32* %61, align 4, !dbg !2108
  call void @llvm.dbg.value(metadata i32 %62, metadata !2050, metadata !DIExpression()), !dbg !2056
  %63 = shl i32 %58, 3, !dbg !2110
  %64 = and i32 %63, 24, !dbg !2110
  %65 = lshr i32 %62, %64, !dbg !2111
  %66 = trunc i32 %65 to i8, !dbg !2112
  %67 = getelementptr inbounds i8, i8* %2, i32 %58, !dbg !2113
  store i8 %66, i8* %67, align 1, !dbg !2114
  %68 = add nuw nsw i32 %58, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %68, metadata !2051, metadata !DIExpression()), !dbg !2056
  %69 = icmp eq i32 %68, %3, !dbg !2104
  br i1 %69, label %70, label %57, !dbg !2107, !llvm.loop !2116

70:                                               ; preds = %57, %55, %41, %19
  %71 = phi i32 [ -1, %19 ], [ 0, %41 ], [ 0, %55 ], [ 0, %57 ], !dbg !2056
  call void @llvm.dbg.value(metadata i32 %71, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.label(metadata !2055), !dbg !2118
  %72 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2119
  %73 = and i32 %72, -5, !dbg !2119
  store volatile i32 %73, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2119
  br label %74, !dbg !2120

74:                                               ; preds = %53, %70
  %75 = phi i32 [ %71, %70 ], [ -1, %53 ], !dbg !2056
  ret i32 %75, !dbg !2121
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2122 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2126, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %1, metadata !2127, metadata !DIExpression()), !dbg !2128
  %3 = trunc i32 %1 to i8, !dbg !2129
  %4 = tail call i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %3) #15, !dbg !2130
  ret i32 %4, !dbg !2131
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2132 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 %1, metadata !2137, metadata !DIExpression()), !dbg !2138
  %3 = tail call i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2139
  ret i32 %3, !dbg !2140
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpio_get_status(%struct.gpio_status* noalias nocapture writeonly sret(%struct.gpio_status) align 4 %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2141 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.declare(metadata %struct.gpio_status* %0, metadata !2153, metadata !DIExpression()), !dbg !2155
  %3 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 0, !dbg !2156
  store i32 %1, i32* %3, align 4, !dbg !2157
  %4 = tail call zeroext i8 @halgetGPIO_OutEnable(i32 noundef %1) #15, !dbg !2158
  %5 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 1, !dbg !2159
  store i8 %4, i8* %5, align 4, !dbg !2160
  %6 = tail call zeroext i8 @halgetGPIO_DIN(i32 noundef %1) #15, !dbg !2161
  %7 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 2, !dbg !2162
  store i8 %6, i8* %7, align 1, !dbg !2163
  %8 = tail call zeroext i8 @halgetGPIO_DOUT(i32 noundef %1) #15, !dbg !2164
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 3, !dbg !2165
  store i8 %8, i8* %9, align 2, !dbg !2166
  ret void, !dbg !2167
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullUp(i32 noundef %0) local_unnamed_addr #3 !dbg !2168 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 0, metadata !2173, metadata !DIExpression()), !dbg !2174
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2175
  %2 = tail call i32 @halGPIO_PullUp_SET(i32 noundef %0) #15, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %2, metadata !2173, metadata !DIExpression()), !dbg !2174
  ret i32 %2, !dbg !2177
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDown(i32 noundef %0) local_unnamed_addr #3 !dbg !2178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2180, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 0, metadata !2181, metadata !DIExpression()), !dbg !2182
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2183
  %2 = tail call i32 @halGPIO_PullDown_SET(i32 noundef %0) #15, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %2, metadata !2181, metadata !DIExpression()), !dbg !2182
  ret i32 %2, !dbg !2185
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDisable(i32 noundef %0) local_unnamed_addr #3 !dbg !2186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 0, metadata !2189, metadata !DIExpression()), !dbg !2190
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #15, !dbg !2191
  %2 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #15, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %2, metadata !2189, metadata !DIExpression()), !dbg !2190
  %3 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #15, !dbg !2193
  call void @llvm.dbg.value(metadata i32 %3, metadata !2189, metadata !DIExpression()), !dbg !2190
  ret i32 %3, !dbg !2194
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !2195 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8 %1, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 0, metadata !2199, metadata !DIExpression()), !dbg !2200
  %3 = tail call i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) #15, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %3, metadata !2199, metadata !DIExpression()), !dbg !2200
  ret i32 %3, !dbg !2202
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_GetDriving(i32 noundef %0, i8* noundef %1) local_unnamed_addr #3 !dbg !2203 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2207, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i8* %1, metadata !2208, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !2209, metadata !DIExpression()), !dbg !2210
  %3 = tail call i32 @halGPIO_GetDriving(i32 noundef %0, i8* noundef %1) #15, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %3, metadata !2209, metadata !DIExpression()), !dbg !2210
  ret i32 %3, !dbg !2212
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_backup_all_registers() local_unnamed_addr #0 !dbg !2213 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2215, metadata !DIExpression()), !dbg !2216
  br label %1, !dbg !2217

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2215, metadata !DIExpression()), !dbg !2216
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2219
  %4 = load i32, i32* %3, align 4, !dbg !2219
  %5 = inttoptr i32 %4 to i32*, !dbg !2219
  %6 = load volatile i32, i32* %5, align 4, !dbg !2219
  %7 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2222
  store i32 %6, i32* %7, align 4, !dbg !2223
  %8 = add nuw nsw i32 %2, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %8, metadata !2215, metadata !DIExpression()), !dbg !2216
  %9 = icmp eq i32 %8, 22, !dbg !2225
  br i1 %9, label %10, label %1, !dbg !2217, !llvm.loop !2226

10:                                               ; preds = %1
  ret void, !dbg !2228
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_restore_all_registers() local_unnamed_addr #0 !dbg !2229 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2231, metadata !DIExpression()), !dbg !2232
  br label %1, !dbg !2233

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !2231, metadata !DIExpression()), !dbg !2232
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !2235
  %4 = load i32, i32* %3, align 4, !dbg !2235
  %5 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !2238
  %6 = load i32, i32* %5, align 4, !dbg !2238
  %7 = inttoptr i32 %6 to i32*, !dbg !2238
  store volatile i32 %4, i32* %7, align 4, !dbg !2239
  %8 = add nuw nsw i32 %2, 1, !dbg !2240
  call void @llvm.dbg.value(metadata i32 %8, metadata !2231, metadata !DIExpression()), !dbg !2232
  %9 = icmp eq i32 %8, 22, !dbg !2241
  br i1 %9, label %10, label %1, !dbg !2233, !llvm.loop !2242

10:                                               ; preds = %1
  ret void, !dbg !2244
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !2245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2249, metadata !DIExpression()), !dbg !2250
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !2251
  tail call void asm sideeffect "dsb", ""() #16, !dbg !2252, !srcloc !2253
  tail call void asm sideeffect "isb", ""() #16, !dbg !2254, !srcloc !2255
  ret void, !dbg !2256
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !2257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()), !dbg !2262
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !2263
  ret void, !dbg !2264
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !2265 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #16, !dbg !2270, !srcloc !2277
  call void @llvm.dbg.value(metadata i32 %1, metadata !2274, metadata !DIExpression()) #16, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %1, metadata !2269, metadata !DIExpression()), !dbg !2279
  tail call void asm sideeffect "cpsid i", "~{memory}"() #16, !dbg !2280, !srcloc !2284
  ret i32 %1, !dbg !2285
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !2286 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2288, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %0, metadata !2290, metadata !DIExpression()) #16, !dbg !2293
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #16, !dbg !2296, !srcloc !2297
  ret void, !dbg !2298
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2299 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2303, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %1, metadata !2304, metadata !DIExpression()), !dbg !2306
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
  ], !dbg !2307

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !2305, metadata !DIExpression()), !dbg !2306
  %4 = trunc i32 %1 to i8, !dbg !2308
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #15, !dbg !2309
  br label %5, !dbg !2310

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !2306
  ret i32 %6, !dbg !2311
}

; Function Attrs: noinline nounwind optsize
define dso_local void @spim_Lisr() #3 !dbg !2312 {
  %1 = load volatile i32, i32* @spi_ok_cnt, align 4, !dbg !2313
  %2 = add nsw i32 %1, 1, !dbg !2313
  store volatile i32 %2, i32* @spi_ok_cnt, align 4, !dbg !2313
  %3 = load volatile i32, i32* @spi_ok_cnt, align 4, !dbg !2314
  %4 = load i32, i32* @quotient, align 4, !dbg !2316
  %5 = add i32 %4, 1, !dbg !2317
  %6 = icmp eq i32 %3, %5, !dbg !2318
  br i1 %6, label %7, label %10, !dbg !2319

7:                                                ; preds = %0
  %8 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2320
  %9 = tail call i32 @hal_gpio_set_output(i32 noundef %8, i32 noundef 1) #15, !dbg !2322
  store volatile i32 0, i32* @spi_ok_cnt, align 4, !dbg !2323
  br label %10, !dbg !2324

10:                                               ; preds = %7, %0
  ret void, !dbg !2325
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !2326 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2330, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 %1, metadata !2331, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 0, metadata !2332, metadata !DIExpression()), !dbg !2333
  tail call void @spim_isr_Register(void ()* noundef nonnull @spim_Lisr) #15, !dbg !2334
  %3 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2335
  %4 = tail call i32 @hal_gpio_set_direction(i32 noundef %3, i32 noundef 1) #15, !dbg !2336
  %5 = or i32 %0, 4, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %5, metadata !2330, metadata !DIExpression()), !dbg !2333
  %6 = tail call i32 @halSpim_init(i32 noundef %5, i32 noundef %1) #15, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %6, metadata !2332, metadata !DIExpression()), !dbg !2333
  %7 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !2339
  %8 = tail call i32 @hal_gpio_set_output(i32 noundef %7, i32 noundef 1) #15, !dbg !2340
  ret i32 %6, !dbg !2341
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_write(i8* noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !159 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !167, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 %1, metadata !168, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !171, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 4, metadata !172, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2342
  %3 = udiv i32 %1, 36, !dbg !2343
  store i32 %3, i32* @quotient, align 4, !dbg !2344
  %4 = mul i32 %3, 36
  %5 = sub i32 %1, %4
  store i32 %5, i32* @spim_write.remainder, align 4, !dbg !2345
  %6 = load volatile i32, i32* inttoptr (i32 603979816 to i32*), align 8, !dbg !2346
  %7 = and i32 %6, 8, !dbg !2347
  store i32 %7, i32* @spim_write.regVal, align 4, !dbg !2347
  %8 = icmp eq i32 %1, 0, !dbg !2348
  br i1 %8, label %57, label %9, !dbg !2350

9:                                                ; preds = %2
  %10 = icmp ult i32 %1, 5, !dbg !2351
  br i1 %10, label %19, label %11, !dbg !2353

11:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()), !dbg !2342
  %12 = icmp ult i32 %1, 36, !dbg !2354
  br i1 %12, label %38, label %13, !dbg !2358

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %0, i32 4
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()), !dbg !2342
  %15 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef 0, i32 noundef %7, i32 noundef 4) #14, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %15, metadata !171, metadata !DIExpression()), !dbg !2342
  %16 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %15, i32 noundef 4, i8* noundef nonnull %14, i32 noundef 32, i32 noundef 2) #15, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %16, metadata !169, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 1, metadata !173, metadata !DIExpression()), !dbg !2342
  %17 = load i32, i32* @quotient, align 4, !dbg !2362
  %18 = icmp ugt i32 %17, 1, !dbg !2354
  br i1 %18, label %22, label %32, !dbg !2358, !llvm.loop !2363

19:                                               ; preds = %9
  %20 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef 0, i32 noundef %7, i32 noundef %5) #14, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %20, metadata !171, metadata !DIExpression()), !dbg !2342
  %21 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %20, i32 noundef %1, i8* noundef null, i32 noundef 0, i32 noundef 0) #15, !dbg !2367
  call void @llvm.dbg.value(metadata i32 %21, metadata !169, metadata !DIExpression()), !dbg !2342
  br label %57, !dbg !2368

22:                                               ; preds = %13, %22
  %23 = phi i32 [ %29, %22 ], [ 1, %13 ]
  %24 = load i32, i32* @spim_write.regVal, align 4, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %23, metadata !173, metadata !DIExpression()), !dbg !2342
  %25 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %23, i32 noundef %24, i32 noundef 4) #14, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %25, metadata !171, metadata !DIExpression()), !dbg !2342
  %26 = mul i32 %23, 36, !dbg !2370
  %27 = getelementptr inbounds i8, i8* %14, i32 %26, !dbg !2371
  %28 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %25, i32 noundef 4, i8* noundef nonnull %27, i32 noundef 32, i32 noundef 2) #15, !dbg !2361
  call void @llvm.dbg.value(metadata i32 %28, metadata !169, metadata !DIExpression()), !dbg !2342
  %29 = add nuw i32 %23, 1, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %29, metadata !173, metadata !DIExpression()), !dbg !2342
  %30 = load i32, i32* @quotient, align 4, !dbg !2362
  %31 = icmp ult i32 %29, %30, !dbg !2354
  br i1 %31, label %22, label %32, !dbg !2358, !llvm.loop !2363

32:                                               ; preds = %22, %13
  %33 = phi i32 [ %16, %13 ], [ %28, %22 ], !dbg !2361
  %34 = phi i32 [ 1, %13 ], [ %29, %22 ], !dbg !2372
  %35 = phi i32 [ %17, %13 ], [ %30, %22 ], !dbg !2362
  %36 = load i32, i32* @spim_write.remainder, align 4, !dbg !2373
  %37 = mul i32 %35, 36, !dbg !2373
  br label %38, !dbg !2373

38:                                               ; preds = %32, %11
  %39 = phi i32 [ %5, %11 ], [ %36, %32 ], !dbg !2373
  %40 = phi i32 [ 0, %11 ], [ %33, %32 ], !dbg !2342
  %41 = phi i32 [ 0, %11 ], [ %34, %32 ], !dbg !2375
  %42 = phi i32 [ 0, %11 ], [ %37, %32 ]
  %43 = icmp ult i32 %39, 5, !dbg !2376
  br i1 %43, label %44, label %50, !dbg !2377

44:                                               ; preds = %38
  %45 = icmp eq i32 %39, 0, !dbg !2378
  br i1 %45, label %57, label %46, !dbg !2381

46:                                               ; preds = %44
  %47 = load i32, i32* @spim_write.regVal, align 4, !dbg !2382
  %48 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %41, i32 noundef %47, i32 noundef %39) #14, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %48, metadata !171, metadata !DIExpression()), !dbg !2342
  %49 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %48, i32 noundef %39, i8* noundef null, i32 noundef 0, i32 noundef 0) #15, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %49, metadata !169, metadata !DIExpression()), !dbg !2342
  br label %57, !dbg !2385

50:                                               ; preds = %38
  %51 = load i32, i32* @spim_write.regVal, align 4, !dbg !2386
  %52 = tail call fastcc i32 @spim_fill_in_data(i8* noundef %0, i32 noundef %41, i32 noundef %51, i32 noundef 4) #14, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %52, metadata !171, metadata !DIExpression()), !dbg !2342
  %53 = getelementptr inbounds i8, i8* %0, i32 %42, !dbg !2389
  %54 = getelementptr inbounds i8, i8* %53, i32 4, !dbg !2390
  %55 = add i32 %39, -4, !dbg !2391
  %56 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %52, i32 noundef 4, i8* noundef nonnull %54, i32 noundef %55, i32 noundef 2) #15, !dbg !2392
  call void @llvm.dbg.value(metadata i32 %56, metadata !169, metadata !DIExpression()), !dbg !2342
  br label %57, !dbg !2393

57:                                               ; preds = %44, %2, %50, %46, %19
  %58 = phi i32 [ %21, %19 ], [ %49, %46 ], [ %56, %50 ], [ -1, %2 ], [ %40, %44 ], !dbg !2342
  ret i32 %58, !dbg !2394
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc i32 @spim_fill_in_data(i8* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 !dbg !2395 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2399, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %1, metadata !2400, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %2, metadata !2401, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %3, metadata !2402, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression()), !dbg !2404
  %5 = icmp eq i32 %2, 0, !dbg !2405
  br i1 %5, label %6, label %57, !dbg !2407

6:                                                ; preds = %4
  switch i32 %3, label %108 [
    i32 1, label %7
    i32 2, label %12
    i32 3, label %22
    i32 4, label %37
  ], !dbg !2408

7:                                                ; preds = %6
  %8 = mul i32 %1, 36, !dbg !2410
  %9 = getelementptr inbounds i8, i8* %0, i32 %8, !dbg !2413
  %10 = load i8, i8* %9, align 1, !dbg !2414
  %11 = zext i8 %10 to i32, !dbg !2414
  call void @llvm.dbg.value(metadata i32 %11, metadata !2403, metadata !DIExpression()), !dbg !2404
  br label %108, !dbg !2415

12:                                               ; preds = %6
  %13 = mul i32 %1, 36, !dbg !2416
  %14 = getelementptr inbounds i8, i8* %0, i32 %13, !dbg !2419
  %15 = load i8, i8* %14, align 1, !dbg !2420
  %16 = zext i8 %15 to i32, !dbg !2420
  %17 = shl nuw nsw i32 %16, 8, !dbg !2421
  %18 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !2422
  %19 = load i8, i8* %18, align 1, !dbg !2423
  %20 = zext i8 %19 to i32, !dbg !2423
  %21 = or i32 %17, %20, !dbg !2424
  call void @llvm.dbg.value(metadata i32 %21, metadata !2403, metadata !DIExpression()), !dbg !2404
  br label %108, !dbg !2425

22:                                               ; preds = %6
  %23 = mul i32 %1, 36, !dbg !2426
  %24 = getelementptr inbounds i8, i8* %0, i32 %23, !dbg !2429
  %25 = load i8, i8* %24, align 1, !dbg !2430
  %26 = zext i8 %25 to i32, !dbg !2430
  %27 = shl nuw nsw i32 %26, 16, !dbg !2431
  %28 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !2432
  %29 = load i8, i8* %28, align 1, !dbg !2433
  %30 = zext i8 %29 to i32, !dbg !2433
  %31 = shl nuw nsw i32 %30, 8, !dbg !2434
  %32 = or i32 %31, %27, !dbg !2435
  %33 = getelementptr inbounds i8, i8* %24, i32 2, !dbg !2436
  %34 = load i8, i8* %33, align 1, !dbg !2437
  %35 = zext i8 %34 to i32, !dbg !2437
  %36 = or i32 %32, %35, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %36, metadata !2403, metadata !DIExpression()), !dbg !2404
  br label %108, !dbg !2439

37:                                               ; preds = %6
  %38 = mul i32 %1, 36, !dbg !2440
  %39 = getelementptr inbounds i8, i8* %0, i32 %38, !dbg !2443
  %40 = load i8, i8* %39, align 1, !dbg !2444
  %41 = zext i8 %40 to i32, !dbg !2444
  %42 = shl nuw i32 %41, 24, !dbg !2445
  %43 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !2446
  %44 = load i8, i8* %43, align 1, !dbg !2447
  %45 = zext i8 %44 to i32, !dbg !2447
  %46 = shl nuw nsw i32 %45, 16, !dbg !2448
  %47 = or i32 %46, %42, !dbg !2449
  %48 = getelementptr inbounds i8, i8* %39, i32 2, !dbg !2450
  %49 = load i8, i8* %48, align 1, !dbg !2451
  %50 = zext i8 %49 to i32, !dbg !2451
  %51 = shl nuw nsw i32 %50, 8, !dbg !2452
  %52 = or i32 %47, %51, !dbg !2453
  %53 = getelementptr inbounds i8, i8* %39, i32 3, !dbg !2454
  %54 = load i8, i8* %53, align 1, !dbg !2455
  %55 = zext i8 %54 to i32, !dbg !2455
  %56 = or i32 %52, %55, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %56, metadata !2403, metadata !DIExpression()), !dbg !2404
  br label %108, !dbg !2457

57:                                               ; preds = %4
  switch i32 %3, label %108 [
    i32 1, label %58
    i32 2, label %63
    i32 3, label %73
    i32 4, label %88
  ], !dbg !2458

58:                                               ; preds = %57
  %59 = mul i32 %1, 36, !dbg !2460
  %60 = getelementptr inbounds i8, i8* %0, i32 %59, !dbg !2463
  %61 = load i8, i8* %60, align 1, !dbg !2464
  %62 = zext i8 %61 to i32, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %62, metadata !2403, metadata !DIExpression()), !dbg !2404
  br label %108, !dbg !2465

63:                                               ; preds = %57
  %64 = mul i32 %1, 36, !dbg !2466
  %65 = getelementptr inbounds i8, i8* %0, i32 %64, !dbg !2469
  %66 = load i8, i8* %65, align 1, !dbg !2470
  %67 = zext i8 %66 to i32, !dbg !2470
  %68 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !2471
  %69 = load i8, i8* %68, align 1, !dbg !2472
  %70 = zext i8 %69 to i32, !dbg !2472
  %71 = shl nuw nsw i32 %70, 8, !dbg !2473
  %72 = or i32 %71, %67, !dbg !2474
  call void @llvm.dbg.value(metadata i32 %72, metadata !2403, metadata !DIExpression()), !dbg !2404
  br label %108, !dbg !2475

73:                                               ; preds = %57
  %74 = mul i32 %1, 36, !dbg !2476
  %75 = getelementptr inbounds i8, i8* %0, i32 %74, !dbg !2479
  %76 = load i8, i8* %75, align 1, !dbg !2480
  %77 = zext i8 %76 to i32, !dbg !2480
  %78 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !2481
  %79 = load i8, i8* %78, align 1, !dbg !2482
  %80 = zext i8 %79 to i32, !dbg !2482
  %81 = shl nuw nsw i32 %80, 8, !dbg !2483
  %82 = or i32 %81, %77, !dbg !2484
  %83 = getelementptr inbounds i8, i8* %75, i32 2, !dbg !2485
  %84 = load i8, i8* %83, align 1, !dbg !2486
  %85 = zext i8 %84 to i32, !dbg !2486
  %86 = shl nuw nsw i32 %85, 16, !dbg !2487
  %87 = or i32 %82, %86, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %87, metadata !2403, metadata !DIExpression()), !dbg !2404
  br label %108, !dbg !2489

88:                                               ; preds = %57
  %89 = mul i32 %1, 36, !dbg !2490
  %90 = getelementptr inbounds i8, i8* %0, i32 %89, !dbg !2493
  %91 = load i8, i8* %90, align 1, !dbg !2494
  %92 = zext i8 %91 to i32, !dbg !2494
  %93 = getelementptr inbounds i8, i8* %90, i32 1, !dbg !2495
  %94 = load i8, i8* %93, align 1, !dbg !2496
  %95 = zext i8 %94 to i32, !dbg !2496
  %96 = shl nuw nsw i32 %95, 8, !dbg !2497
  %97 = or i32 %96, %92, !dbg !2498
  %98 = getelementptr inbounds i8, i8* %90, i32 2, !dbg !2499
  %99 = load i8, i8* %98, align 1, !dbg !2500
  %100 = zext i8 %99 to i32, !dbg !2500
  %101 = shl nuw nsw i32 %100, 16, !dbg !2501
  %102 = or i32 %97, %101, !dbg !2502
  %103 = getelementptr inbounds i8, i8* %90, i32 3, !dbg !2503
  %104 = load i8, i8* %103, align 1, !dbg !2504
  %105 = zext i8 %104 to i32, !dbg !2504
  %106 = shl nuw i32 %105, 24, !dbg !2505
  %107 = or i32 %102, %106, !dbg !2506
  call void @llvm.dbg.value(metadata i32 %107, metadata !2403, metadata !DIExpression()), !dbg !2404
  br label %108, !dbg !2507

108:                                              ; preds = %57, %6, %58, %73, %88, %63, %7, %22, %37, %12
  %109 = phi i32 [ %11, %7 ], [ %21, %12 ], [ %36, %22 ], [ %56, %37 ], [ %62, %58 ], [ %72, %63 ], [ %87, %73 ], [ %107, %88 ], [ 0, %6 ], [ 0, %57 ], !dbg !2404
  call void @llvm.dbg.value(metadata i32 %109, metadata !2403, metadata !DIExpression()), !dbg !2404
  ret i32 %109, !dbg !2508
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @spim_read(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !182, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %1, metadata !183, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* %2, metadata !184, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %3, metadata !185, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !188, metadata !DIExpression()), !dbg !2509
  %5 = lshr i32 %3, 5, !dbg !2510
  store i32 %5, i32* @quotient, align 4, !dbg !2511
  %6 = and i32 %3, 31, !dbg !2512
  store i32 %6, i32* @spim_read.remainder, align 4, !dbg !2513
  %7 = icmp ult i32 %3, 32, !dbg !2514
  br i1 %7, label %8, label %10, !dbg !2516

8:                                                ; preds = %4
  %9 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i32 noundef 1) #15, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %9, metadata !186, metadata !DIExpression()), !dbg !2509
  br label %31, !dbg !2519

10:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !189, metadata !DIExpression()), !dbg !2509
  %11 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef 32, i32 noundef 1) #15, !dbg !2520
  call void @llvm.dbg.value(metadata i32 1, metadata !189, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !2509
  %12 = load i32, i32* @quotient, align 4, !dbg !2522
  %13 = icmp ugt i32 %12, 1, !dbg !2525
  br i1 %13, label %14, label %22, !dbg !2526

14:                                               ; preds = %10, %14
  %15 = phi i32 [ %19, %14 ], [ 1, %10 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !189, metadata !DIExpression()), !dbg !2509
  %16 = shl i32 %15, 5, !dbg !2527
  %17 = getelementptr inbounds i8, i8* %2, i32 %16, !dbg !2529
  %18 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef 0, i32 noundef 0, i8* noundef %17, i32 noundef 32, i32 noundef 1) #15, !dbg !2530
  call void @llvm.dbg.value(metadata i32 %18, metadata !186, metadata !DIExpression()), !dbg !2509
  %19 = add nuw i32 %15, 1, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %19, metadata !189, metadata !DIExpression()), !dbg !2509
  %20 = load i32, i32* @quotient, align 4, !dbg !2522
  %21 = icmp ult i32 %19, %20, !dbg !2525
  br i1 %21, label %14, label %22, !dbg !2526, !llvm.loop !2532

22:                                               ; preds = %14, %10
  %23 = phi i32 [ 0, %10 ], [ %18, %14 ], !dbg !2509
  %24 = phi i32 [ %12, %10 ], [ %20, %14 ], !dbg !2522
  %25 = load i32, i32* @spim_read.remainder, align 4, !dbg !2534
  %26 = icmp eq i32 %25, 0, !dbg !2536
  br i1 %26, label %31, label %27, !dbg !2537

27:                                               ; preds = %22
  %28 = shl i32 %24, 5, !dbg !2538
  %29 = getelementptr inbounds i8, i8* %2, i32 %28, !dbg !2540
  %30 = tail call i32 @spim_more_buf_trans_gpio(i32 noundef 0, i32 noundef 0, i8* noundef %29, i32 noundef %25, i32 noundef 1) #15, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %30, metadata !186, metadata !DIExpression()), !dbg !2509
  br label %31, !dbg !2542

31:                                               ; preds = %22, %27, %8
  %32 = phi i32 [ %9, %8 ], [ %30, %27 ], [ %23, %22 ], !dbg !2543
  ret i32 %32, !dbg !2544
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !2545 {
  call void @llvm.dbg.value(metadata i32 0, metadata !2547, metadata !DIExpression()), !dbg !2549
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %1, metadata !2548, metadata !DIExpression()), !dbg !2549
  %2 = lshr i32 %1, 13, !dbg !2551
  %3 = and i32 %2, 7, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %3, metadata !2548, metadata !DIExpression()), !dbg !2549
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2553
  call void @llvm.dbg.value(metadata i32 %4, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 %4, metadata !2547, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !2549
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !2554
  %6 = load i32, i32* %5, align 4, !dbg !2554
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !2554
  %8 = load i32, i32* %7, align 4, !dbg !2554
  %9 = and i32 %4, -2048, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %9, metadata !2547, metadata !DIExpression()), !dbg !2549
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !2556
  %10 = or i32 %9, %8, !dbg !2556
  call void @llvm.dbg.value(metadata i32 %10, metadata !2547, metadata !DIExpression()), !dbg !2549
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !2558
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !2559
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !2560
  tail call void @SystemCoreClockUpdate() #15, !dbg !2561
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !2562
  %13 = udiv i32 %12, 1000, !dbg !2563
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #15, !dbg !2564
  ret void, !dbg !2565
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #6 !dbg !2566 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !2567
  ret i32 %1, !dbg !2568
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #6 !dbg !2569 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !2570
  ret i32 %1, !dbg !2571
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #7 !dbg !2572 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2576
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2576
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2575, metadata !DIExpression()), !dbg !2578
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2579
  store volatile i32 %3, i32* %1, align 4, !dbg !2580
  %4 = load volatile i32, i32* %1, align 4, !dbg !2581
  %5 = lshr i32 %4, 28, !dbg !2582
  %6 = and i32 %5, 3, !dbg !2583
  store volatile i32 %6, i32* %1, align 4, !dbg !2584
  %7 = load volatile i32, i32* %1, align 4, !dbg !2585
  %8 = icmp eq i32 %7, 0, !dbg !2587
  br i1 %8, label %9, label %22, !dbg !2588

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2589
  store volatile i32 %10, i32* %1, align 4, !dbg !2591
  %11 = load volatile i32, i32* %1, align 4, !dbg !2592
  %12 = and i32 %11, -16777217, !dbg !2593
  store volatile i32 %12, i32* %1, align 4, !dbg !2594
  %13 = load volatile i32, i32* %1, align 4, !dbg !2595
  %14 = or i32 %13, 536870912, !dbg !2596
  store volatile i32 %14, i32* %1, align 4, !dbg !2597
  %15 = load volatile i32, i32* %1, align 4, !dbg !2598
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !2599
  br label %16, !dbg !2600

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2601
  store volatile i32 %17, i32* %1, align 4, !dbg !2603
  %18 = load volatile i32, i32* %1, align 4, !dbg !2604
  %19 = and i32 %18, 134217728, !dbg !2605
  store volatile i32 %19, i32* %1, align 4, !dbg !2606
  %20 = load volatile i32, i32* %1, align 4, !dbg !2607
  %21 = icmp eq i32 %20, 0, !dbg !2608
  br i1 %21, label %16, label %22, !dbg !2609, !llvm.loop !2610

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2612
  ret void, !dbg !2612
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32.1(i8* noundef %0) unnamed_addr #2 !dbg !2613 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2615, metadata !DIExpression()), !dbg !2616
  %2 = bitcast i8* %0 to i32*, !dbg !2617
  %3 = load volatile i32, i32* %2, align 4, !dbg !2618
  ret i32 %3, !dbg !2619
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2620 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 %1, metadata !2625, metadata !DIExpression()), !dbg !2626
  %3 = bitcast i8* %0 to i32*, !dbg !2627
  store volatile i32 %1, i32* %3, align 4, !dbg !2628
  ret void, !dbg !2629
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #7 !dbg !2630 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2634, metadata !DIExpression()), !dbg !2637
  %3 = bitcast i32* %2 to i8*, !dbg !2638
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2638
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2636, metadata !DIExpression()), !dbg !2637
  %4 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2640
  store volatile i32 %4, i32* %2, align 4, !dbg !2641
  %5 = load volatile i32, i32* %2, align 4, !dbg !2642
  %6 = lshr i32 %5, 28, !dbg !2643
  %7 = and i32 %6, 3, !dbg !2644
  store volatile i32 %7, i32* %2, align 4, !dbg !2645
  %8 = load volatile i32, i32* %2, align 4, !dbg !2646
  %9 = icmp eq i32 %8, 3, !dbg !2648
  br i1 %9, label %38, label %10, !dbg !2649

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2650
  store volatile i32 %11, i32* %2, align 4, !dbg !2652
  %12 = load volatile i32, i32* %2, align 4, !dbg !2653
  %13 = and i32 %12, -262145, !dbg !2654
  store volatile i32 %13, i32* %2, align 4, !dbg !2655
  %14 = load volatile i32, i32* %2, align 4, !dbg !2656
  %15 = and i32 %14, -16777217, !dbg !2657
  store volatile i32 %15, i32* %2, align 4, !dbg !2658
  %16 = load volatile i32, i32* %2, align 4, !dbg !2659
  store volatile i32 %16, i32* %2, align 4, !dbg !2660
  %17 = load volatile i32, i32* %2, align 4, !dbg !2661
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2662
  %18 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2663
  store volatile i32 %18, i32* %2, align 4, !dbg !2664
  %19 = load volatile i32, i32* %2, align 4, !dbg !2665
  %20 = and i32 %19, -805306369, !dbg !2666
  store volatile i32 %20, i32* %2, align 4, !dbg !2667
  %21 = load volatile i32, i32* %2, align 4, !dbg !2668
  %22 = and i32 %21, -16777217, !dbg !2669
  store volatile i32 %22, i32* %2, align 4, !dbg !2670
  %23 = load volatile i32, i32* %2, align 4, !dbg !2671
  %24 = or i32 %23, 805306368, !dbg !2672
  store volatile i32 %24, i32* %2, align 4, !dbg !2673
  %25 = load volatile i32, i32* %2, align 4, !dbg !2674
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2675
  br label %26, !dbg !2676

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2677
  store volatile i32 %27, i32* %2, align 4, !dbg !2679
  %28 = load volatile i32, i32* %2, align 4, !dbg !2680
  %29 = and i32 %28, 67108864, !dbg !2681
  store volatile i32 %29, i32* %2, align 4, !dbg !2682
  %30 = load volatile i32, i32* %2, align 4, !dbg !2683
  %31 = icmp eq i32 %30, 0, !dbg !2684
  br i1 %31, label %26, label %32, !dbg !2685, !llvm.loop !2686

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2688
  store volatile i32 %33, i32* %2, align 4, !dbg !2689
  %34 = load volatile i32, i32* %2, align 4, !dbg !2690
  %35 = and i32 %34, -262145, !dbg !2691
  store volatile i32 %35, i32* %2, align 4, !dbg !2692
  %36 = load volatile i32, i32* %2, align 4, !dbg !2693
  %37 = and i32 %36, -16777217, !dbg !2694
  store volatile i32 %37, i32* %2, align 4, !dbg !2695
  br label %38, !dbg !2696

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2697
  store volatile i32 %39, i32* %2, align 4, !dbg !2698
  %40 = icmp eq i8 %0, 0, !dbg !2699
  %41 = load volatile i32, i32* %2, align 4, !dbg !2701
  br i1 %40, label %44, label %42, !dbg !2702

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2703
  store volatile i32 %43, i32* %2, align 4, !dbg !2705
  br label %45, !dbg !2706

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2707
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2709
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2710
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2711
  ret void, !dbg !2711
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #7 !dbg !2712 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2716
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2716
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2714, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2715, metadata !DIExpression()), !dbg !2718
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2719
  store volatile i32 %3, i32* %1, align 4, !dbg !2720
  %4 = load volatile i32, i32* %1, align 4, !dbg !2721
  %5 = and i32 %4, -805306369, !dbg !2722
  store volatile i32 %5, i32* %1, align 4, !dbg !2723
  %6 = load volatile i32, i32* %1, align 4, !dbg !2724
  %7 = and i32 %6, -16777217, !dbg !2725
  store volatile i32 %7, i32* %1, align 4, !dbg !2726
  %8 = load volatile i32, i32* %1, align 4, !dbg !2727
  store volatile i32 %8, i32* %1, align 4, !dbg !2728
  %9 = load volatile i32, i32* %1, align 4, !dbg !2729
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2730
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2731
  store volatile i32 %10, i32* %1, align 4, !dbg !2732
  %11 = load volatile i32, i32* %1, align 4, !dbg !2733
  %12 = and i32 %11, -262145, !dbg !2734
  store volatile i32 %12, i32* %1, align 4, !dbg !2735
  %13 = load volatile i32, i32* %1, align 4, !dbg !2736
  %14 = and i32 %13, -16777217, !dbg !2737
  store volatile i32 %14, i32* %1, align 4, !dbg !2738
  %15 = load volatile i32, i32* %1, align 4, !dbg !2739
  store volatile i32 %15, i32* %1, align 4, !dbg !2740
  %16 = load volatile i32, i32* %1, align 4, !dbg !2741
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2742
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2743
  ret void, !dbg !2743
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2744 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2748
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2748
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2746, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2747, metadata !DIExpression()), !dbg !2750
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2751
  store volatile i32 %3, i32* %1, align 4, !dbg !2752
  %4 = load volatile i32, i32* %1, align 4, !dbg !2753
  %5 = and i32 %4, -8, !dbg !2754
  store volatile i32 %5, i32* %1, align 4, !dbg !2755
  %6 = load volatile i32, i32* %1, align 4, !dbg !2756
  store volatile i32 %6, i32* %1, align 4, !dbg !2757
  %7 = load volatile i32, i32* %1, align 4, !dbg !2758
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2759
  %8 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2760
  store volatile i32 %8, i32* %1, align 4, !dbg !2761
  %9 = load volatile i32, i32* %1, align 4, !dbg !2762
  %10 = and i32 %9, -49153, !dbg !2763
  store volatile i32 %10, i32* %1, align 4, !dbg !2764
  %11 = load volatile i32, i32* %1, align 4, !dbg !2765
  store volatile i32 %11, i32* %1, align 4, !dbg !2766
  %12 = load volatile i32, i32* %1, align 4, !dbg !2767
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2768
  br label %13, !dbg !2769

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2770
  %15 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2771
  %16 = icmp eq i32 %14, %15, !dbg !2772
  br i1 %16, label %17, label %13, !dbg !2769, !llvm.loop !2773

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2775
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2776
  tail call void @SystemCoreClockUpdate() #15, !dbg !2777
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2778
  %20 = udiv i32 %19, 1000, !dbg !2779
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2780
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2781
  ret void, !dbg !2781
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2782 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2786
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2786
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2784, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2785, metadata !DIExpression()), !dbg !2788
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2789
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2790
  store volatile i32 %3, i32* %1, align 4, !dbg !2791
  %4 = load volatile i32, i32* %1, align 4, !dbg !2792
  %5 = and i32 %4, -49153, !dbg !2793
  store volatile i32 %5, i32* %1, align 4, !dbg !2794
  %6 = load volatile i32, i32* %1, align 4, !dbg !2795
  %7 = or i32 %6, 16384, !dbg !2796
  store volatile i32 %7, i32* %1, align 4, !dbg !2797
  %8 = load volatile i32, i32* %1, align 4, !dbg !2798
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2799
  br label %9, !dbg !2800

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2801
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2802
  %12 = icmp eq i32 %10, %11, !dbg !2803
  br i1 %12, label %13, label %9, !dbg !2800, !llvm.loop !2804

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2806
  store volatile i32 %14, i32* %1, align 4, !dbg !2807
  %15 = load volatile i32, i32* %1, align 4, !dbg !2808
  %16 = and i32 %15, -1009, !dbg !2809
  store volatile i32 %16, i32* %1, align 4, !dbg !2810
  %17 = load volatile i32, i32* %1, align 4, !dbg !2811
  %18 = or i32 %17, 128, !dbg !2812
  store volatile i32 %18, i32* %1, align 4, !dbg !2813
  %19 = load volatile i32, i32* %1, align 4, !dbg !2814
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2815
  %20 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2816
  store volatile i32 %20, i32* %1, align 4, !dbg !2817
  %21 = load volatile i32, i32* %1, align 4, !dbg !2818
  %22 = and i32 %21, -8, !dbg !2819
  store volatile i32 %22, i32* %1, align 4, !dbg !2820
  %23 = load volatile i32, i32* %1, align 4, !dbg !2821
  %24 = or i32 %23, 4, !dbg !2822
  store volatile i32 %24, i32* %1, align 4, !dbg !2823
  %25 = load volatile i32, i32* %1, align 4, !dbg !2824
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2825
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2826
  tail call void @SystemCoreClockUpdate() #15, !dbg !2827
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2828
  %27 = udiv i32 %26, 1000, !dbg !2829
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2831
  ret void, !dbg !2831
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2832 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2836
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2836
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2834, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2835, metadata !DIExpression()), !dbg !2838
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2839
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2840
  store volatile i32 %3, i32* %1, align 4, !dbg !2841
  %4 = load volatile i32, i32* %1, align 4, !dbg !2842
  %5 = and i32 %4, -49153, !dbg !2843
  store volatile i32 %5, i32* %1, align 4, !dbg !2844
  %6 = load volatile i32, i32* %1, align 4, !dbg !2845
  %7 = or i32 %6, 32768, !dbg !2846
  store volatile i32 %7, i32* %1, align 4, !dbg !2847
  %8 = load volatile i32, i32* %1, align 4, !dbg !2848
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2849
  br label %9, !dbg !2850

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2851
  %11 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2852
  %12 = icmp eq i32 %10, %11, !dbg !2853
  br i1 %12, label %13, label %9, !dbg !2850, !llvm.loop !2854

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2856
  store volatile i32 %14, i32* %1, align 4, !dbg !2857
  %15 = load volatile i32, i32* %1, align 4, !dbg !2858
  %16 = and i32 %15, -1009, !dbg !2859
  store volatile i32 %16, i32* %1, align 4, !dbg !2860
  %17 = load volatile i32, i32* %1, align 4, !dbg !2861
  %18 = or i32 %17, 32, !dbg !2862
  store volatile i32 %18, i32* %1, align 4, !dbg !2863
  %19 = load volatile i32, i32* %1, align 4, !dbg !2864
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2865
  %20 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2866
  store volatile i32 %20, i32* %1, align 4, !dbg !2867
  %21 = load volatile i32, i32* %1, align 4, !dbg !2868
  %22 = and i32 %21, -8, !dbg !2869
  store volatile i32 %22, i32* %1, align 4, !dbg !2870
  %23 = load volatile i32, i32* %1, align 4, !dbg !2871
  %24 = or i32 %23, 4, !dbg !2872
  store volatile i32 %24, i32* %1, align 4, !dbg !2873
  %25 = load volatile i32, i32* %1, align 4, !dbg !2874
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2875
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2876
  tail call void @SystemCoreClockUpdate() #15, !dbg !2877
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2878
  %27 = udiv i32 %26, 1000, !dbg !2879
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2880
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2881
  ret void, !dbg !2881
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2882 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2886
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2886
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2884, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2885, metadata !DIExpression()), !dbg !2888
  tail call void @cmnPLL1ON() #14, !dbg !2889
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2890
  store volatile i32 %3, i32* %1, align 4, !dbg !2891
  %4 = load volatile i32, i32* %1, align 4, !dbg !2892
  %5 = and i32 %4, -49153, !dbg !2893
  store volatile i32 %5, i32* %1, align 4, !dbg !2894
  %6 = load volatile i32, i32* %1, align 4, !dbg !2895
  store volatile i32 %6, i32* %1, align 4, !dbg !2896
  %7 = load volatile i32, i32* %1, align 4, !dbg !2897
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2898
  br label %8, !dbg !2899

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2900
  %10 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2901
  %11 = icmp eq i32 %9, %10, !dbg !2902
  br i1 %11, label %12, label %8, !dbg !2899, !llvm.loop !2903

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2905
  store volatile i32 %13, i32* %1, align 4, !dbg !2906
  %14 = load volatile i32, i32* %1, align 4, !dbg !2907
  %15 = and i32 %14, -8, !dbg !2908
  store volatile i32 %15, i32* %1, align 4, !dbg !2909
  %16 = load volatile i32, i32* %1, align 4, !dbg !2910
  %17 = or i32 %16, 2, !dbg !2911
  store volatile i32 %17, i32* %1, align 4, !dbg !2912
  %18 = load volatile i32, i32* %1, align 4, !dbg !2913
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2914
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2915
  tail call void @SystemCoreClockUpdate() #15, !dbg !2916
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2917
  %20 = udiv i32 %19, 1000, !dbg !2918
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2919
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2920
  ret void, !dbg !2920
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #7 section ".ramTEXT" !dbg !2921 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2925
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2923, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2924, metadata !DIExpression()), !dbg !2927
  %3 = tail call fastcc i32 @cmnReadRegister32.1(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2928
  store volatile i32 %3, i32* %1, align 4, !dbg !2929
  %4 = load volatile i32, i32* %1, align 4, !dbg !2930
  %5 = and i32 %4, -24577, !dbg !2931
  store volatile i32 %5, i32* %1, align 4, !dbg !2932
  %6 = load volatile i32, i32* %1, align 4, !dbg !2933
  store volatile i32 %6, i32* %1, align 4, !dbg !2934
  %7 = load volatile i32, i32* %1, align 4, !dbg !2935
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2937
  ret void, !dbg !2937
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2938 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2943
  call void @llvm.dbg.value(metadata i32 %1, metadata !2942, metadata !DIExpression()), !dbg !2944
  ret i32 %1, !dbg !2945
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2946 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2949
  %2 = and i32 %1, 1, !dbg !2951
  %3 = icmp eq i32 %2, 0, !dbg !2951
  br i1 %3, label %7, label %4, !dbg !2952

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2953
  %6 = and i32 %5, 255, !dbg !2955
  call void @llvm.dbg.value(metadata i32 %5, metadata !2948, metadata !DIExpression()), !dbg !2956
  br label %7, !dbg !2957

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2958
  ret i32 %8, !dbg !2959
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2965, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8 %1, metadata !2966, metadata !DIExpression()), !dbg !2968
  %3 = icmp eq i32 %0, 0, !dbg !2969
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %4, metadata !2967, metadata !DIExpression()), !dbg !2968
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2970

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2971
  %9 = and i32 %8, 32, !dbg !2972
  %10 = icmp eq i32 %9, 0, !dbg !2973
  br i1 %10, label %7, label %11, !dbg !2970, !llvm.loop !2974

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2976
  %13 = inttoptr i32 %4 to i32*, !dbg !2977
  store volatile i32 %12, i32* %13, align 65536, !dbg !2978
  ret void, !dbg !2979
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2980 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2984, metadata !DIExpression()), !dbg !2987
  %2 = icmp eq i32 %0, 0, !dbg !2988
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2988
  call void @llvm.dbg.value(metadata i32 %3, metadata !2985, metadata !DIExpression()), !dbg !2987
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2989

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2990
  %8 = and i32 %7, 1, !dbg !2991
  %9 = icmp eq i32 %8, 0, !dbg !2992
  br i1 %9, label %6, label %10, !dbg !2989, !llvm.loop !2993

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2995
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2995
  %13 = trunc i32 %12 to i8, !dbg !2995
  call void @llvm.dbg.value(metadata i8 %13, metadata !2986, metadata !DIExpression()), !dbg !2987
  ret i8 %13, !dbg !2996
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2997 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3001, metadata !DIExpression()), !dbg !3004
  %2 = icmp eq i32 %0, 0, !dbg !3005
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3005
  call void @llvm.dbg.value(metadata i32 %3, metadata !3002, metadata !DIExpression()), !dbg !3004
  %4 = or i32 %3, 20, !dbg !3006
  %5 = inttoptr i32 %4 to i32*, !dbg !3006
  %6 = load volatile i32, i32* %5, align 4, !dbg !3006
  %7 = and i32 %6, 1, !dbg !3008
  %8 = icmp eq i32 %7, 0, !dbg !3008
  br i1 %8, label %13, label %9, !dbg !3009

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !3010
  %11 = load volatile i32, i32* %10, align 65536, !dbg !3010
  %12 = and i32 %11, 255, !dbg !3012
  call void @llvm.dbg.value(metadata i32 %11, metadata !3003, metadata !DIExpression()), !dbg !3004
  br label %13, !dbg !3013

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !3014
  ret i32 %14, !dbg !3015
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !3016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3020, metadata !DIExpression()), !dbg !3021
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !3022
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !3023

2:                                                ; preds = %1
  br label %3, !dbg !3024

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !3028
  %6 = or i32 %5, 1, !dbg !3028
  store volatile i32 %6, i32* %4, align 4, !dbg !3028
  br label %7, !dbg !3029

7:                                                ; preds = %3, %1
  ret void, !dbg !3029
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !3030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3036, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %1, metadata !3037, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i16 %2, metadata !3038, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i16 %3, metadata !3039, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i16 %4, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !3042, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !3049, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !3051, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !3052, metadata !DIExpression()), !dbg !3053
  %6 = tail call i32 @top_xtal_freq_get() #15, !dbg !3056
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !3057
  %7 = icmp eq i32 %0, 1, !dbg !3058
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %8, metadata !3042, metadata !DIExpression()), !dbg !3053
  %9 = or i32 %8, 36, !dbg !3059
  %10 = inttoptr i32 %9 to i32*, !dbg !3059
  store volatile i32 3, i32* %10, align 4, !dbg !3060
  %11 = or i32 %8, 12, !dbg !3061
  %12 = inttoptr i32 %11 to i32*, !dbg !3061
  %13 = load volatile i32, i32* %12, align 4, !dbg !3061
  call void @llvm.dbg.value(metadata i32 %13, metadata !3044, metadata !DIExpression()), !dbg !3053
  %14 = or i32 %13, 128, !dbg !3062
  store volatile i32 %14, i32* %12, align 4, !dbg !3063
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !3064
  %16 = udiv i32 %15, %1, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %16, metadata !3043, metadata !DIExpression()), !dbg !3053
  %17 = lshr i32 %16, 8, !dbg !3066
  %18 = add nuw nsw i32 %17, 1, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %18, metadata !3045, metadata !DIExpression()), !dbg !3053
  %19 = udiv i32 %16, %18, !dbg !3068
  %20 = add i32 %19, -1, !dbg !3070
  call void @llvm.dbg.value(metadata i32 %20, metadata !3046, metadata !DIExpression()), !dbg !3053
  %21 = icmp eq i32 %20, 3, !dbg !3071
  %22 = lshr i32 %20, 1, !dbg !3073
  %23 = add nsw i32 %22, -1, !dbg !3073
  %24 = select i1 %21, i32 0, i32 %23, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %24, metadata !3047, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 undef, metadata !3052, metadata !DIExpression()), !dbg !3053
  %25 = mul i32 %15, 10, !dbg !3074
  %26 = udiv i32 %25, %1, !dbg !3075
  %27 = udiv i32 %26, %16, !dbg !3076
  %28 = mul i32 %19, -10, !dbg !3077
  %29 = add i32 %27, %28, !dbg !3078
  %30 = urem i32 %29, 10, !dbg !3079
  call void @llvm.dbg.value(metadata i32 %30, metadata !3048, metadata !DIExpression()), !dbg !3053
  %31 = and i32 %18, 255, !dbg !3080
  %32 = inttoptr i32 %8 to i32*, !dbg !3081
  store volatile i32 %31, i32* %32, align 65536, !dbg !3082
  %33 = lshr i32 %18, 8, !dbg !3083
  %34 = and i32 %33, 255, !dbg !3084
  %35 = or i32 %8, 4, !dbg !3085
  %36 = inttoptr i32 %35 to i32*, !dbg !3085
  store volatile i32 %34, i32* %36, align 4, !dbg !3086
  %37 = or i32 %8, 40, !dbg !3087
  %38 = inttoptr i32 %37 to i32*, !dbg !3087
  store volatile i32 %20, i32* %38, align 8, !dbg !3088
  %39 = or i32 %8, 44, !dbg !3089
  %40 = inttoptr i32 %39 to i32*, !dbg !3089
  store volatile i32 %24, i32* %40, align 4, !dbg !3090
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !3091
  %42 = load i16, i16* %41, align 2, !dbg !3091
  %43 = zext i16 %42 to i32, !dbg !3091
  %44 = or i32 %8, 88, !dbg !3092
  %45 = inttoptr i32 %44 to i32*, !dbg !3092
  store volatile i32 %43, i32* %45, align 8, !dbg !3093
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !3094
  %47 = load i16, i16* %46, align 2, !dbg !3094
  %48 = zext i16 %47 to i32, !dbg !3094
  %49 = or i32 %8, 84, !dbg !3095
  %50 = inttoptr i32 %49 to i32*, !dbg !3095
  store volatile i32 %48, i32* %50, align 4, !dbg !3096
  store volatile i32 %13, i32* %12, align 4, !dbg !3097
  %51 = or i32 %8, 8, !dbg !3098
  %52 = inttoptr i32 %51 to i32*, !dbg !3098
  store volatile i32 71, i32* %52, align 8, !dbg !3099
  %53 = inttoptr i32 %11 to i16*, !dbg !3100
  %54 = load volatile i16, i16* %53, align 4, !dbg !3100
  call void @llvm.dbg.value(metadata i16 %54, metadata !3041, metadata !DIExpression()), !dbg !3053
  %55 = and i16 %54, -64, !dbg !3101
  call void @llvm.dbg.value(metadata i16 %54, metadata !3041, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !3053
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !3041, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3053
  %56 = and i16 %2, -61, !dbg !3102
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !3041, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3053
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !3041, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !3053
  %57 = and i16 %4, -57, !dbg !3103
  call void @llvm.dbg.value(metadata i16 undef, metadata !3041, metadata !DIExpression()), !dbg !3053
  %58 = or i16 %56, %3, !dbg !3102
  %59 = or i16 %58, %57, !dbg !3103
  %60 = or i16 %59, %55, !dbg !3104
  call void @llvm.dbg.value(metadata i16 %60, metadata !3041, metadata !DIExpression()), !dbg !3053
  store volatile i16 %60, i16* %53, align 4, !dbg !3105
  ret void, !dbg !3106
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !3107 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3112, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 %1, metadata !3113, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32* %2, metadata !3114, metadata !DIExpression()), !dbg !3115
  %4 = icmp eq i32 %0, 0, !dbg !3116
  %5 = icmp eq i32 %1, 0, !dbg !3118
  br i1 %4, label %6, label %16, !dbg !3119

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !3120

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !3122
  %9 = zext i16 %8 to i32, !dbg !3122
  br label %26, !dbg !3125

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !3126
  %12 = zext i16 %11 to i32, !dbg !3126
  store i32 %12, i32* %2, align 4, !dbg !3128
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !3129
  %14 = zext i16 %13 to i32, !dbg !3129
  %15 = sub nsw i32 %12, %14, !dbg !3130
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !3131

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !3133
  %19 = zext i16 %18 to i32, !dbg !3133
  br label %26, !dbg !3136

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !3137
  %22 = zext i16 %21 to i32, !dbg !3137
  store i32 %22, i32* %2, align 4, !dbg !3139
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !3140
  %24 = zext i16 %23 to i32, !dbg !3140
  %25 = sub nsw i32 %22, %24, !dbg !3141
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !3118
  ret void, !dbg !3142
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3143 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3147, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8* %1, metadata !3148, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 %2, metadata !3149, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 0, metadata !3150, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 0, metadata !3150, metadata !DIExpression()), !dbg !3151
  %4 = icmp eq i32 %2, 0, !dbg !3152
  br i1 %4, label %15, label %5, !dbg !3155

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3150, metadata !DIExpression()), !dbg !3151
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3156

7:                                                ; preds = %5
  br label %8, !dbg !3158

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !3162
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3162
  store i8 %10, i8* %11, align 1, !dbg !3162
  br label %12, !dbg !3163

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %13, metadata !3150, metadata !DIExpression()), !dbg !3151
  %14 = icmp eq i32 %13, %2, !dbg !3152
  br i1 %14, label %15, label %5, !dbg !3155, !llvm.loop !3164

15:                                               ; preds = %12, %3
  ret void, !dbg !3166
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !3167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3173, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !3174, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 %2, metadata !3175, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 0, metadata !3176, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata i32 0, metadata !3176, metadata !DIExpression()), !dbg !3177
  %4 = icmp eq i32 %2, 0, !dbg !3178
  br i1 %4, label %16, label %5, !dbg !3181

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3176, metadata !DIExpression()), !dbg !3177
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !3182

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3184
  %9 = load i8, i8* %8, align 1, !dbg !3184
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !3187
  br label %13, !dbg !3188

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !3189
  %12 = load i8, i8* %11, align 1, !dbg !3189
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !3192
  br label %13, !dbg !3193

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !3194
  call void @llvm.dbg.value(metadata i32 %14, metadata !3176, metadata !DIExpression()), !dbg !3177
  %15 = icmp eq i32 %14, %2, !dbg !3178
  br i1 %15, label %16, label %5, !dbg !3181, !llvm.loop !3195

16:                                               ; preds = %13, %3
  ret void, !dbg !3197
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !3198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8* %1, metadata !3203, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %2, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 %3, metadata !3205, metadata !DIExpression()), !dbg !3206
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !3207

5:                                                ; preds = %4
  br label %6, !dbg !3208

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !3212
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #15, !dbg !3212
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #15, !dbg !3212
  br label %9, !dbg !3213

9:                                                ; preds = %6, %4
  ret void, !dbg !3213
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !3214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3218, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i8* %1, metadata !3219, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %2, metadata !3220, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %3, metadata !3221, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %4, metadata !3222, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32 %5, metadata !3223, metadata !DIExpression()), !dbg !3224
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !3225

7:                                                ; preds = %6
  br label %8, !dbg !3226

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !3230
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !3230
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #15, !dbg !3230
  br label %11, !dbg !3231

11:                                               ; preds = %8, %6
  ret void, !dbg !3231
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3232 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3236, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3237, metadata !DIExpression()), !dbg !3238
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3239

3:                                                ; preds = %2
  br label %4, !dbg !3240

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3244
  br label %6, !dbg !3245

6:                                                ; preds = %4, %2
  ret void, !dbg !3245
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !3246 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3248, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata void ()* %1, metadata !3249, metadata !DIExpression()), !dbg !3250
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !3251

3:                                                ; preds = %2
  br label %4, !dbg !3252

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !3256
  br label %6, !dbg !3257

6:                                                ; preds = %4, %2
  ret void, !dbg !3257
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3258 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3260, metadata !DIExpression()), !dbg !3264
  %2 = icmp eq i32 %0, 0, !dbg !3265
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %3, metadata !3261, metadata !DIExpression()), !dbg !3264
  %4 = or i32 %3, 12, !dbg !3266
  %5 = inttoptr i32 %4 to i32*, !dbg !3266
  %6 = load volatile i32, i32* %5, align 4, !dbg !3266
  call void @llvm.dbg.value(metadata i32 %6, metadata !3263, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3264
  store volatile i32 191, i32* %5, align 4, !dbg !3267
  %7 = or i32 %3, 8, !dbg !3268
  %8 = inttoptr i32 %7 to i32*, !dbg !3268
  %9 = load volatile i32, i32* %8, align 8, !dbg !3268
  call void @llvm.dbg.value(metadata i32 %9, metadata !3262, metadata !DIExpression()), !dbg !3264
  %10 = and i32 %9, 65327, !dbg !3269
  %11 = or i32 %10, 208, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %9, metadata !3262, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !3264
  store volatile i32 %11, i32* %8, align 8, !dbg !3270
  %12 = or i32 %3, 68, !dbg !3271
  %13 = inttoptr i32 %12 to i32*, !dbg !3271
  store volatile i32 0, i32* %13, align 4, !dbg !3272
  store volatile i32 0, i32* %5, align 4, !dbg !3273
  %14 = or i32 %3, 16, !dbg !3274
  %15 = inttoptr i32 %14 to i32*, !dbg !3274
  store volatile i32 2, i32* %15, align 16, !dbg !3275
  %16 = and i32 %6, 65535, !dbg !3276
  store volatile i32 %16, i32* %5, align 4, !dbg !3277
  ret void, !dbg !3278
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !3279 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3283, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %1, metadata !3284, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %2, metadata !3285, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 %3, metadata !3286, metadata !DIExpression()), !dbg !3290
  %5 = icmp eq i32 %0, 0, !dbg !3291
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !3291
  call void @llvm.dbg.value(metadata i32 %6, metadata !3287, metadata !DIExpression()), !dbg !3290
  %7 = or i32 %6, 12, !dbg !3292
  %8 = inttoptr i32 %7 to i32*, !dbg !3292
  %9 = load volatile i32, i32* %8, align 4, !dbg !3292
  call void @llvm.dbg.value(metadata i32 %9, metadata !3289, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3290
  store volatile i32 191, i32* %8, align 4, !dbg !3293
  %10 = zext i8 %1 to i32, !dbg !3294
  %11 = or i32 %6, 16, !dbg !3295
  %12 = inttoptr i32 %11 to i32*, !dbg !3295
  store volatile i32 %10, i32* %12, align 16, !dbg !3296
  %13 = or i32 %6, 20, !dbg !3297
  %14 = inttoptr i32 %13 to i32*, !dbg !3297
  store volatile i32 %10, i32* %14, align 4, !dbg !3298
  %15 = zext i8 %2 to i32, !dbg !3299
  %16 = or i32 %6, 24, !dbg !3300
  %17 = inttoptr i32 %16 to i32*, !dbg !3300
  store volatile i32 %15, i32* %17, align 8, !dbg !3301
  %18 = or i32 %6, 28, !dbg !3302
  %19 = inttoptr i32 %18 to i32*, !dbg !3302
  store volatile i32 %15, i32* %19, align 4, !dbg !3303
  %20 = or i32 %6, 8, !dbg !3304
  %21 = inttoptr i32 %20 to i32*, !dbg !3304
  %22 = load volatile i32, i32* %21, align 8, !dbg !3304
  call void @llvm.dbg.value(metadata i32 %22, metadata !3288, metadata !DIExpression()), !dbg !3290
  %23 = and i32 %22, 65525, !dbg !3305
  %24 = or i32 %23, 10, !dbg !3305
  call void @llvm.dbg.value(metadata i32 %22, metadata !3288, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !3290
  store volatile i32 %24, i32* %21, align 8, !dbg !3306
  %25 = and i32 %9, 65535, !dbg !3307
  store volatile i32 %25, i32* %8, align 4, !dbg !3308
  %26 = zext i8 %3 to i32, !dbg !3309
  %27 = or i32 %6, 64, !dbg !3310
  %28 = inttoptr i32 %27 to i32*, !dbg !3310
  store volatile i32 %26, i32* %28, align 64, !dbg !3311
  %29 = or i32 %6, 68, !dbg !3312
  %30 = inttoptr i32 %29 to i32*, !dbg !3312
  store volatile i32 1, i32* %30, align 4, !dbg !3313
  ret void, !dbg !3314
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !3315 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3317, metadata !DIExpression()), !dbg !3320
  %2 = icmp eq i32 %0, 0, !dbg !3321
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3321
  call void @llvm.dbg.value(metadata i32 %3, metadata !3318, metadata !DIExpression()), !dbg !3320
  %4 = or i32 %3, 12, !dbg !3322
  %5 = inttoptr i32 %4 to i32*, !dbg !3322
  %6 = load volatile i32, i32* %5, align 4, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %6, metadata !3319, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3320
  store volatile i32 191, i32* %5, align 4, !dbg !3323
  %7 = or i32 %3, 8, !dbg !3324
  %8 = inttoptr i32 %7 to i32*, !dbg !3324
  store volatile i32 0, i32* %8, align 8, !dbg !3325
  store volatile i32 0, i32* %5, align 4, !dbg !3326
  %9 = and i32 %6, 65535, !dbg !3327
  store volatile i32 %9, i32* %5, align 4, !dbg !3328
  ret void, !dbg !3329
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !3330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3332, metadata !DIExpression()), !dbg !3334
  %2 = icmp eq i32 %0, 0, !dbg !3335
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !3335
  call void @llvm.dbg.value(metadata i32 %3, metadata !3333, metadata !DIExpression()), !dbg !3334
  %4 = or i32 %3, 12, !dbg !3336
  %5 = inttoptr i32 %4 to i32*, !dbg !3336
  store volatile i32 191, i32* %5, align 4, !dbg !3337
  %6 = or i32 %3, 8, !dbg !3338
  %7 = inttoptr i32 %6 to i32*, !dbg !3338
  store volatile i32 16, i32* %7, align 8, !dbg !3339
  %8 = or i32 %3, 16, !dbg !3340
  %9 = inttoptr i32 %8 to i32*, !dbg !3340
  store volatile i32 0, i32* %9, align 16, !dbg !3341
  %10 = or i32 %3, 24, !dbg !3342
  %11 = inttoptr i32 %10 to i32*, !dbg !3342
  store volatile i32 0, i32* %11, align 8, !dbg !3343
  store volatile i32 128, i32* %5, align 4, !dbg !3344
  %12 = inttoptr i32 %3 to i32*, !dbg !3345
  store volatile i32 0, i32* %12, align 65536, !dbg !3346
  %13 = or i32 %3, 4, !dbg !3347
  %14 = inttoptr i32 %13 to i32*, !dbg !3347
  store volatile i32 0, i32* %14, align 4, !dbg !3348
  store volatile i32 0, i32* %5, align 4, !dbg !3349
  store volatile i32 0, i32* %14, align 4, !dbg !3350
  store volatile i32 0, i32* %7, align 8, !dbg !3351
  store volatile i32 191, i32* %5, align 4, !dbg !3352
  store volatile i32 0, i32* %7, align 8, !dbg !3353
  store volatile i32 0, i32* %5, align 4, !dbg !3354
  store volatile i32 0, i32* %9, align 16, !dbg !3355
  %15 = or i32 %3, 28, !dbg !3356
  %16 = inttoptr i32 %15 to i32*, !dbg !3356
  store volatile i32 0, i32* %16, align 4, !dbg !3357
  %17 = or i32 %3, 36, !dbg !3358
  %18 = inttoptr i32 %17 to i32*, !dbg !3358
  store volatile i32 0, i32* %18, align 4, !dbg !3359
  %19 = or i32 %3, 40, !dbg !3360
  %20 = inttoptr i32 %19 to i32*, !dbg !3360
  store volatile i32 0, i32* %20, align 8, !dbg !3361
  %21 = or i32 %3, 44, !dbg !3362
  %22 = inttoptr i32 %21 to i32*, !dbg !3362
  store volatile i32 0, i32* %22, align 4, !dbg !3363
  %23 = or i32 %3, 52, !dbg !3364
  %24 = inttoptr i32 %23 to i32*, !dbg !3364
  store volatile i32 0, i32* %24, align 4, !dbg !3365
  %25 = or i32 %3, 60, !dbg !3366
  %26 = inttoptr i32 %25 to i32*, !dbg !3366
  store volatile i32 0, i32* %26, align 4, !dbg !3367
  %27 = or i32 %3, 64, !dbg !3368
  %28 = inttoptr i32 %27 to i32*, !dbg !3368
  store volatile i32 0, i32* %28, align 64, !dbg !3369
  %29 = or i32 %3, 68, !dbg !3370
  %30 = inttoptr i32 %29 to i32*, !dbg !3370
  store volatile i32 0, i32* %30, align 4, !dbg !3371
  %31 = or i32 %3, 72, !dbg !3372
  %32 = inttoptr i32 %31 to i32*, !dbg !3372
  store volatile i32 0, i32* %32, align 8, !dbg !3373
  %33 = or i32 %3, 76, !dbg !3374
  %34 = inttoptr i32 %33 to i32*, !dbg !3374
  store volatile i32 0, i32* %34, align 4, !dbg !3375
  %35 = or i32 %3, 80, !dbg !3376
  %36 = inttoptr i32 %35 to i32*, !dbg !3376
  store volatile i32 0, i32* %36, align 16, !dbg !3377
  %37 = or i32 %3, 84, !dbg !3378
  %38 = inttoptr i32 %37 to i32*, !dbg !3378
  store volatile i32 0, i32* %38, align 4, !dbg !3379
  %39 = or i32 %3, 88, !dbg !3380
  %40 = inttoptr i32 %39 to i32*, !dbg !3380
  store volatile i32 0, i32* %40, align 8, !dbg !3381
  %41 = or i32 %3, 96, !dbg !3382
  %42 = inttoptr i32 %41 to i32*, !dbg !3382
  store volatile i32 0, i32* %42, align 32, !dbg !3383
  ret void, !dbg !3384
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !3385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3387, metadata !DIExpression()), !dbg !3389
  %2 = icmp eq i32 %0, 0, !dbg !3390
  call void @llvm.dbg.value(metadata i32 undef, metadata !3388, metadata !DIExpression()), !dbg !3389
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !3391

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !3392
  %7 = and i32 %6, 64, !dbg !3393
  %8 = icmp eq i32 %7, 0, !dbg !3394
  br i1 %8, label %5, label %9, !dbg !3391, !llvm.loop !3395

9:                                                ; preds = %5
  ret void, !dbg !3397
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3398 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3402, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i32 %1, metadata !3403, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i8* %2, metadata !3404, metadata !DIExpression()), !dbg !3415
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3416
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3416
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3405, metadata !DIExpression()), !dbg !3417
  %7 = bitcast i32* %5 to i8*, !dbg !3418
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3418
  call void @llvm.dbg.value(metadata i32* %5, metadata !3414, metadata !DIExpression(DW_OP_deref)), !dbg !3415
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3419
  call void @llvm.va_start(i8* nonnull %6), !dbg !3420
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3421
  %10 = load i32, i32* %9, align 4, !dbg !3421
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3421
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3421
  call void @llvm.va_end(i8* nonnull %6), !dbg !3422
  %13 = load i32, i32* %5, align 4, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %13, metadata !3414, metadata !DIExpression()), !dbg !3415
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3424
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3425
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3425
  ret void, !dbg !3425
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #9

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #9

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3426 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3428, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 %1, metadata !3429, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i8* %2, metadata !3430, metadata !DIExpression()), !dbg !3433
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3434
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3434
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3431, metadata !DIExpression()), !dbg !3435
  %7 = bitcast i32* %5 to i8*, !dbg !3436
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3436
  call void @llvm.dbg.value(metadata i32* %5, metadata !3432, metadata !DIExpression(DW_OP_deref)), !dbg !3433
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3437
  call void @llvm.va_start(i8* nonnull %6), !dbg !3438
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3439
  %10 = load i32, i32* %9, align 4, !dbg !3439
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3439
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3439
  call void @llvm.va_end(i8* nonnull %6), !dbg !3440
  %13 = load i32, i32* %5, align 4, !dbg !3441
  call void @llvm.dbg.value(metadata i32 %13, metadata !3432, metadata !DIExpression()), !dbg !3433
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3442
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3443
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3443
  ret void, !dbg !3443
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3444 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3446, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i32 %1, metadata !3447, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i8* %2, metadata !3448, metadata !DIExpression()), !dbg !3451
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3452
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3449, metadata !DIExpression()), !dbg !3453
  %7 = bitcast i32* %5 to i8*, !dbg !3454
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3454
  call void @llvm.dbg.value(metadata i32* %5, metadata !3450, metadata !DIExpression(DW_OP_deref)), !dbg !3451
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3455
  call void @llvm.va_start(i8* nonnull %6), !dbg !3456
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3457
  %10 = load i32, i32* %9, align 4, !dbg !3457
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3457
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3457
  call void @llvm.va_end(i8* nonnull %6), !dbg !3458
  %13 = load i32, i32* %5, align 4, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %13, metadata !3450, metadata !DIExpression()), !dbg !3451
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3460
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3461
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3461
  ret void, !dbg !3461
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !3462 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !3464, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 %1, metadata !3465, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8* %2, metadata !3466, metadata !DIExpression()), !dbg !3469
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !3470
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3470
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !3467, metadata !DIExpression()), !dbg !3471
  %7 = bitcast i32* %5 to i8*, !dbg !3472
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3472
  call void @llvm.dbg.value(metadata i32* %5, metadata !3468, metadata !DIExpression(DW_OP_deref)), !dbg !3469
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !3473
  call void @llvm.va_start(i8* nonnull %6), !dbg !3474
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !3475
  %10 = load i32, i32* %9, align 4, !dbg !3475
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !3475
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !3475
  call void @llvm.va_end(i8* nonnull %6), !dbg !3476
  %13 = load i32, i32* %5, align 4, !dbg !3477
  call void @llvm.dbg.value(metadata i32 %13, metadata !3468, metadata !DIExpression()), !dbg !3469
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !3478
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !3479
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !3479
  ret void, !dbg !3479
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #10 !dbg !3480 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3486, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i32 %1, metadata !3487, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8* %2, metadata !3488, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i8* %3, metadata !3489, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata i32 %4, metadata !3490, metadata !DIExpression()), !dbg !3491
  ret void, !dbg !3492
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3493 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3501
  call void @llvm.dbg.value(metadata i32 %1, metadata !3500, metadata !DIExpression()), !dbg !3502
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3503, !range !3505
  %3 = icmp eq i8 %2, 0, !dbg !3503
  br i1 %3, label %5, label %4, !dbg !3506

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3507
  br label %15, !dbg !3509

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3510
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3512
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3513
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3514
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3515
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3516
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3517
  call void @llvm.dbg.value(metadata i32 0, metadata !3498, metadata !DIExpression()), !dbg !3502
  br label %7, !dbg !3518

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3498, metadata !DIExpression()), !dbg !3502
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3520
  store volatile i32 0, i32* %9, align 4, !dbg !3523
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3524
  store volatile i32 0, i32* %10, align 4, !dbg !3525
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3526
  store i32 0, i32* %11, align 4, !dbg !3527
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3528
  store i32 0, i32* %12, align 4, !dbg !3529
  %13 = add nuw nsw i32 %8, 1, !dbg !3530
  call void @llvm.dbg.value(metadata i32 %13, metadata !3498, metadata !DIExpression()), !dbg !3502
  %14 = icmp eq i32 %13, 16, !dbg !3531
  br i1 %14, label %15, label %7, !dbg !3518, !llvm.loop !3532

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3502
  ret i32 %16, !dbg !3534
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3535 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %1, metadata !3537, metadata !DIExpression()), !dbg !3539
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3540
  %3 = and i32 %2, -31, !dbg !3540
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3540
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3541
  %5 = or i32 %4, 19, !dbg !3541
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3541
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %7 = and i32 %6, -31, !dbg !3542
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3542
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3543
  %9 = or i32 %8, 3, !dbg !3543
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3543
  tail call void asm sideeffect "isb", ""() #16, !dbg !3544, !srcloc !3548
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3549
  ret i32 0, !dbg !3550
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3551 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3554
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3555
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3556
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3557
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3558
  call void @llvm.dbg.value(metadata i32 0, metadata !3553, metadata !DIExpression()), !dbg !3559
  br label %2, !dbg !3560

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3553, metadata !DIExpression()), !dbg !3559
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3562
  store volatile i32 0, i32* %4, align 4, !dbg !3565
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3566
  store volatile i32 0, i32* %5, align 4, !dbg !3567
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3568
  store i32 0, i32* %6, align 4, !dbg !3569
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3570
  store i32 0, i32* %7, align 4, !dbg !3571
  %8 = add nuw nsw i32 %3, 1, !dbg !3572
  call void @llvm.dbg.value(metadata i32 %8, metadata !3553, metadata !DIExpression()), !dbg !3559
  %9 = icmp eq i32 %8, 16, !dbg !3573
  br i1 %9, label %10, label %2, !dbg !3560, !llvm.loop !3574

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3576
  ret i32 0, !dbg !3577
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #0 !dbg !3578 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3579
  %2 = and i32 %1, 768, !dbg !3581
  %3 = icmp eq i32 %2, 0, !dbg !3581
  br i1 %3, label %8, label %4, !dbg !3582

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3583
  %6 = or i32 %5, 13, !dbg !3583
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3583
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3584
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3585
  br label %8, !dbg !3586

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3587
  ret i32 %9, !dbg !3588
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3589 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3592
  call void @llvm.dbg.value(metadata i32 %1, metadata !3591, metadata !DIExpression()), !dbg !3593
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3594
  %3 = and i32 %2, 1, !dbg !3596
  %4 = icmp eq i32 %3, 0, !dbg !3596
  br i1 %4, label %7, label %5, !dbg !3597

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !3598
  br label %7, !dbg !3600

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3601
  %9 = and i32 %8, -2, !dbg !3601
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3601
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3602
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3603
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3604
  ret i32 0, !dbg !3605
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !3606 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3610, metadata !DIExpression()), !dbg !3611
  %2 = icmp ugt i32 %0, 15, !dbg !3612
  br i1 %2, label %13, label %3, !dbg !3614

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3615
  %5 = load volatile i32, i32* %4, align 4, !dbg !3615
  %6 = and i32 %5, 256, !dbg !3617
  %7 = icmp eq i32 %6, 0, !dbg !3617
  br i1 %7, label %13, label %8, !dbg !3618

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3619
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3621
  %11 = or i32 %10, %9, !dbg !3621
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3621
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3622
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3623
  br label %13, !dbg !3624

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3611
  ret i32 %14, !dbg !3625
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !3626 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3628, metadata !DIExpression()), !dbg !3629
  %2 = icmp ugt i32 %0, 15, !dbg !3630
  br i1 %2, label %11, label %3, !dbg !3632

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3633
  %5 = xor i32 %4, -1, !dbg !3634
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3635
  %7 = and i32 %6, %5, !dbg !3635
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3635
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3636
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3637
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3638
  store i32 0, i32* %9, align 4, !dbg !3639
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3640
  store i32 0, i32* %10, align 4, !dbg !3641
  br label %11, !dbg !3642

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3629
  ret i32 %12, !dbg !3643
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #0 !dbg !3644 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3649, metadata !DIExpression()), !dbg !3650
  %2 = icmp ugt i32 %0, 3, !dbg !3651
  br i1 %2, label %13, label %3, !dbg !3653

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3654
  %5 = and i32 %4, -769, !dbg !3654
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3654
  %6 = shl nuw nsw i32 %0, 8, !dbg !3655
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3656
  %8 = or i32 %7, %6, !dbg !3656
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3656
  %9 = icmp eq i32 %0, 0, !dbg !3657
  br i1 %9, label %10, label %11, !dbg !3659

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3660
  br label %11, !dbg !3662

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3663
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3664
  br label %13, !dbg !3665

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3650
  ret i32 %14, !dbg !3666
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.gpio_backup_restore_t* noundef readonly %1) local_unnamed_addr #3 !dbg !3667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata %struct.gpio_backup_restore_t* %1, metadata !3679, metadata !DIExpression()), !dbg !3680
  %3 = icmp ugt i32 %0, 15, !dbg !3681
  br i1 %3, label %30, label %4, !dbg !3683

4:                                                ; preds = %2
  %5 = icmp eq %struct.gpio_backup_restore_t* %1, null, !dbg !3684
  br i1 %5, label %30, label %6, !dbg !3686

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 0, !dbg !3687
  %8 = load i32, i32* %7, align 4, !dbg !3687
  %9 = and i32 %8, 4095, !dbg !3689
  %10 = icmp eq i32 %9, 0, !dbg !3689
  br i1 %10, label %12, label %11, !dbg !3690

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3691
  unreachable, !dbg !3691

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gpio_backup_restore_t, %struct.gpio_backup_restore_t* %1, i32 0, i32 1, !dbg !3693
  %14 = load i32, i32* %13, align 4, !dbg !3693
  %15 = and i32 %14, 4095, !dbg !3695
  %16 = icmp eq i32 %15, 0, !dbg !3695
  br i1 %16, label %18, label %17, !dbg !3696

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3697
  unreachable, !dbg !3697

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3699
  store volatile i32 %8, i32* %19, align 4, !dbg !3700
  %20 = load i32, i32* %7, align 4, !dbg !3701
  %21 = load i32, i32* %13, align 4, !dbg !3702
  %22 = add i32 %21, %20, !dbg !3703
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3704
  store volatile i32 %22, i32* %23, align 4, !dbg !3705
  %24 = load volatile i32, i32* %19, align 4, !dbg !3706
  %25 = or i32 %24, 256, !dbg !3706
  store volatile i32 %25, i32* %19, align 4, !dbg !3706
  %26 = load volatile i32, i32* %19, align 4, !dbg !3707
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3708
  store i32 %26, i32* %27, align 4, !dbg !3709
  %28 = load volatile i32, i32* %23, align 4, !dbg !3710
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3711
  store i32 %28, i32* %29, align 4, !dbg !3712
  br label %30, !dbg !3713

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3680
  ret i32 %31, !dbg !3714
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3715 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3719, metadata !DIExpression()), !dbg !3721
  %2 = and i32 %0, 31, !dbg !3722
  %3 = icmp eq i32 %2, 0, !dbg !3722
  br i1 %3, label %4, label %9, !dbg !3724

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3725
  call void @llvm.dbg.value(metadata i32 %5, metadata !3720, metadata !DIExpression()), !dbg !3721
  %6 = and i32 %0, -32, !dbg !3726
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3727
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3728
  %8 = or i32 %7, 5, !dbg !3728
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3728
  tail call void asm sideeffect "isb", ""() #16, !dbg !3729, !srcloc !3548
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3731
  br label %9, !dbg !3732

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3721
  ret i32 %10, !dbg !3733
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3734 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 %1, metadata !3739, metadata !DIExpression()), !dbg !3742
  %3 = add i32 %1, %0, !dbg !3743
  call void @llvm.dbg.value(metadata i32 %3, metadata !3741, metadata !DIExpression()), !dbg !3742
  %4 = or i32 %1, %0, !dbg !3744
  %5 = and i32 %4, 31, !dbg !3744
  %6 = icmp eq i32 %5, 0, !dbg !3744
  br i1 %6, label %7, label %16, !dbg !3744

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3746
  call void @llvm.dbg.value(metadata i32 %8, metadata !3740, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 %0, metadata !3738, metadata !DIExpression()), !dbg !3742
  %9 = icmp ugt i32 %3, %0, !dbg !3747
  br i1 %9, label %10, label %15, !dbg !3748

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3738, metadata !DIExpression()), !dbg !3742
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !3749
  %13 = add i32 %11, 32, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %13, metadata !3738, metadata !DIExpression()), !dbg !3742
  %14 = icmp ult i32 %13, %3, !dbg !3747
  br i1 %14, label %10, label %15, !dbg !3748, !llvm.loop !3752

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3754, !srcloc !3548
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3756
  br label %16, !dbg !3757

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3742
  ret i32 %17, !dbg !3758
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3759 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3763
  %2 = and i32 %0, 31, !dbg !3764
  %3 = icmp eq i32 %2, 0, !dbg !3764
  br i1 %3, label %4, label %9, !dbg !3766

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3767
  call void @llvm.dbg.value(metadata i32 %5, metadata !3762, metadata !DIExpression()), !dbg !3763
  %6 = and i32 %0, -32, !dbg !3768
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3769
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3770
  %8 = or i32 %7, 21, !dbg !3770
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3770
  tail call void asm sideeffect "isb", ""() #16, !dbg !3771, !srcloc !3548
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3773
  br label %9, !dbg !3774

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3763
  ret i32 %10, !dbg !3775
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3778, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 %1, metadata !3779, metadata !DIExpression()), !dbg !3782
  %3 = add i32 %1, %0, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %3, metadata !3781, metadata !DIExpression()), !dbg !3782
  %4 = or i32 %1, %0, !dbg !3784
  %5 = and i32 %4, 31, !dbg !3784
  %6 = icmp eq i32 %5, 0, !dbg !3784
  br i1 %6, label %7, label %16, !dbg !3784

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3786
  call void @llvm.dbg.value(metadata i32 %8, metadata !3780, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i32 %0, metadata !3778, metadata !DIExpression()), !dbg !3782
  %9 = icmp ugt i32 %3, %0, !dbg !3787
  br i1 %9, label %10, label %15, !dbg !3788

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3778, metadata !DIExpression()), !dbg !3782
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !3789
  %13 = add i32 %11, 32, !dbg !3791
  call void @llvm.dbg.value(metadata i32 %13, metadata !3778, metadata !DIExpression()), !dbg !3782
  %14 = icmp ult i32 %13, %3, !dbg !3787
  br i1 %14, label %10, label %15, !dbg !3788, !llvm.loop !3792

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3794, !srcloc !3548
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3796
  br label %16, !dbg !3797

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3782
  ret i32 %17, !dbg !3798
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3799 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3802
  call void @llvm.dbg.value(metadata i32 %1, metadata !3801, metadata !DIExpression()), !dbg !3803
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3804
  %3 = and i32 %2, -31, !dbg !3804
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3804
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3805
  %5 = or i32 %4, 19, !dbg !3805
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3805
  tail call void asm sideeffect "isb", ""() #16, !dbg !3806, !srcloc !3548
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3808
  ret i32 0, !dbg !3809
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #0 !dbg !3810 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3814, metadata !DIExpression()), !dbg !3816
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3817
  %3 = and i32 %2, 8, !dbg !3819
  %4 = icmp eq i32 %3, 0, !dbg !3819
  br i1 %4, label %23, label %5, !dbg !3820

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3815, metadata !DIExpression()), !dbg !3816
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3821
  %8 = shl nuw nsw i32 1, %6, !dbg !3826
  %9 = and i32 %7, %8, !dbg !3827
  %10 = icmp eq i32 %9, 0, !dbg !3827
  br i1 %10, label %20, label %11, !dbg !3828

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3829
  %13 = load volatile i32, i32* %12, align 4, !dbg !3829
  %14 = and i32 %13, -257, !dbg !3832
  %15 = icmp ugt i32 %14, %0, !dbg !3833
  br i1 %15, label %20, label %16, !dbg !3834

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3835
  %18 = load volatile i32, i32* %17, align 4, !dbg !3835
  %19 = icmp ugt i32 %18, %0, !dbg !3836
  br i1 %19, label %23, label %20, !dbg !3837

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3838
  call void @llvm.dbg.value(metadata i32 %21, metadata !3815, metadata !DIExpression()), !dbg !3816
  %22 = icmp eq i32 %21, 16, !dbg !3839
  br i1 %22, label %23, label %5, !dbg !3840, !llvm.loop !3841

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3816
  ret i1 %24, !dbg !3843
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #10 !dbg !3844 {
  ret i32 0, !dbg !3848
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3849 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata i32 -1, metadata !3854, metadata !DIExpression()), !dbg !3855
  %2 = icmp ugt i32 %0, 95, !dbg !3856
  br i1 %2, label %4, label %3, !dbg !3856

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3858
  call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression()), !dbg !3855
  br label %4, !dbg !3860

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3855
  ret i32 %5, !dbg !3861
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3866, metadata !DIExpression()), !dbg !3867
  %2 = and i32 %0, 31, !dbg !3868
  %3 = shl nuw i32 1, %2, !dbg !3869
  %4 = lshr i32 %0, 5, !dbg !3870
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3871
  store volatile i32 %3, i32* %5, align 4, !dbg !3872
  ret void, !dbg !3873
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3876, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 -1, metadata !3877, metadata !DIExpression()), !dbg !3878
  %2 = icmp ugt i32 %0, 95, !dbg !3879
  br i1 %2, label %4, label %3, !dbg !3879

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3881
  call void @llvm.dbg.value(metadata i32 0, metadata !3877, metadata !DIExpression()), !dbg !3878
  br label %4, !dbg !3883

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3878
  ret i32 %5, !dbg !3884
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3885 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3887, metadata !DIExpression()), !dbg !3888
  %2 = and i32 %0, 31, !dbg !3889
  %3 = shl nuw i32 1, %2, !dbg !3890
  %4 = lshr i32 %0, 5, !dbg !3891
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3892
  store volatile i32 %3, i32* %5, align 4, !dbg !3893
  ret void, !dbg !3894
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3895 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3899, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 255, metadata !3900, metadata !DIExpression()), !dbg !3901
  %2 = icmp ugt i32 %0, 95, !dbg !3902
  br i1 %2, label %5, label %3, !dbg !3902

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3904
  call void @llvm.dbg.value(metadata i32 %4, metadata !3900, metadata !DIExpression()), !dbg !3901
  br label %5, !dbg !3906

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3901
  ret i32 %6, !dbg !3907
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3908 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3912, metadata !DIExpression()), !dbg !3913
  %2 = lshr i32 %0, 5, !dbg !3914
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3915
  %4 = load volatile i32, i32* %3, align 4, !dbg !3915
  %5 = and i32 %0, 31, !dbg !3916
  %6 = lshr i32 %4, %5, !dbg !3917
  %7 = and i32 %6, 1, !dbg !3917
  ret i32 %7, !dbg !3918
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3919 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3921, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i32 -1, metadata !3922, metadata !DIExpression()), !dbg !3923
  %2 = icmp ugt i32 %0, 95, !dbg !3924
  br i1 %2, label %4, label %3, !dbg !3924

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3926
  call void @llvm.dbg.value(metadata i32 0, metadata !3922, metadata !DIExpression()), !dbg !3923
  br label %4, !dbg !3928

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3923
  ret i32 %5, !dbg !3929
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3930 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3932, metadata !DIExpression()), !dbg !3933
  %2 = and i32 %0, 31, !dbg !3934
  %3 = shl nuw i32 1, %2, !dbg !3935
  %4 = lshr i32 %0, 5, !dbg !3936
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3937
  store volatile i32 %3, i32* %5, align 4, !dbg !3938
  ret void, !dbg !3939
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3942, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i32 -1, metadata !3943, metadata !DIExpression()), !dbg !3944
  %2 = icmp ugt i32 %0, 95, !dbg !3945
  br i1 %2, label %4, label %3, !dbg !3945

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3947
  call void @llvm.dbg.value(metadata i32 0, metadata !3943, metadata !DIExpression()), !dbg !3944
  br label %4, !dbg !3949

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3944
  ret i32 %5, !dbg !3950
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3951 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3953, metadata !DIExpression()), !dbg !3954
  %2 = and i32 %0, 31, !dbg !3955
  %3 = shl nuw i32 1, %2, !dbg !3956
  %4 = lshr i32 %0, 5, !dbg !3957
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3958
  store volatile i32 %3, i32* %5, align 4, !dbg !3959
  ret void, !dbg !3960
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3961 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 %1, metadata !3966, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 -1, metadata !3967, metadata !DIExpression()), !dbg !3968
  %3 = icmp ugt i32 %0, 95, !dbg !3969
  br i1 %3, label %5, label %4, !dbg !3969

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !3971
  call void @llvm.dbg.value(metadata i32 0, metadata !3967, metadata !DIExpression()), !dbg !3968
  br label %5, !dbg !3973

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3968
  ret i32 %6, !dbg !3974
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3979, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i32 %1, metadata !3980, metadata !DIExpression()), !dbg !3981
  %3 = trunc i32 %1 to i8, !dbg !3982
  %4 = shl i8 %3, 5, !dbg !3982
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3985
  store volatile i8 %4, i8* %5, align 1, !dbg !3986
  ret void, !dbg !3987
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3988 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3990, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 68, metadata !3991, metadata !DIExpression()), !dbg !3992
  %2 = icmp ugt i32 %0, 95, !dbg !3993
  br i1 %2, label %5, label %3, !dbg !3993

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3995
  call void @llvm.dbg.value(metadata i32 %4, metadata !3991, metadata !DIExpression()), !dbg !3992
  br label %5, !dbg !3997

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3992
  ret i32 %6, !dbg !3998
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !3999 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4001, metadata !DIExpression()), !dbg !4002
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4003
  %3 = load volatile i8, i8* %2, align 1, !dbg !4003
  %4 = lshr i8 %3, 5, !dbg !4006
  %5 = zext i8 %4 to i32, !dbg !4006
  ret i32 %5, !dbg !4007
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #10 !dbg !4008 {
  ret void, !dbg !4009
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !4010 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4012, metadata !DIExpression()), !dbg !4014
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !4015
  call void @llvm.dbg.value(metadata i32 %1, metadata !4013, metadata !DIExpression()), !dbg !4014
  %2 = icmp ugt i32 %1, 95, !dbg !4016
  br i1 %2, label %12, label %3, !dbg !4016

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4018
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4018
  %6 = icmp eq void (i32)* %5, null, !dbg !4020
  br i1 %6, label %7, label %8, !dbg !4021

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4012, metadata !DIExpression()), !dbg !4014
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #15, !dbg !4022
  br label %12, !dbg !4024

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !4025
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4027
  store i32 %9, i32* %10, align 4, !dbg !4028
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4029
  tail call void %11(i32 noundef %1) #15, !dbg !4030
  call void @llvm.dbg.value(metadata i32 0, metadata !4012, metadata !DIExpression()), !dbg !4014
  br label %12, !dbg !4031

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4014
  ret i32 %13, !dbg !4032
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !4033 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4036
  %2 = and i32 %1, 511, !dbg !4037
  call void @llvm.dbg.value(metadata i32 %2, metadata !4035, metadata !DIExpression()), !dbg !4038
  %3 = add nsw i32 %2, -16, !dbg !4039
  ret i32 %3, !dbg !4040
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !4041 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4042
  %2 = lshr i32 %1, 22, !dbg !4043
  %3 = and i32 %2, 1, !dbg !4043
  ret i32 %3, !dbg !4044
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !4045 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4050, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4051, metadata !DIExpression()), !dbg !4053
  %3 = icmp ugt i32 %0, 95, !dbg !4054
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4054
  br i1 %5, label %10, label %6, !dbg !4054

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4056
  call void @llvm.dbg.value(metadata i32 %7, metadata !4052, metadata !DIExpression()), !dbg !4053
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !4057
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4058
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4059
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4060
  store i32 0, i32* %9, align 4, !dbg !4061
  tail call void @restore_interrupt_mask(i32 noundef %7) #15, !dbg !4062
  br label %10, !dbg !4063

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4053
  ret i32 %11, !dbg !4064
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4065 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4069, metadata !DIExpression()), !dbg !4070
  %2 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4071
  store i32 %2, i32* %0, align 4, !dbg !4072
  ret i32 0, !dbg !4073
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !4074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4078, metadata !DIExpression()), !dbg !4079
  tail call void @restore_interrupt_mask(i32 noundef %0) #15, !dbg !4080
  ret i32 0, !dbg !4081
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4082 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4087, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i8 %1, metadata !4088, metadata !DIExpression()), !dbg !4090
  %3 = icmp ugt i32 %0, 60, !dbg !4091
  br i1 %3, label %11, label %4, !dbg !4093

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4094
  br i1 %5, label %11, label %6, !dbg !4096

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4097
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #15, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %8, metadata !4089, metadata !DIExpression()), !dbg !4090
  %9 = icmp slt i32 %8, 0, !dbg !4099
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4099
  br label %11, !dbg !4100

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4090
  ret i32 %12, !dbg !4101
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #10 !dbg !4102 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4107, metadata !DIExpression()), !dbg !4108
  ret i32 0, !dbg !4109
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #10 !dbg !4110 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4112, metadata !DIExpression()), !dbg !4113
  ret i32 0, !dbg !4114
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4115 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4120, metadata !DIExpression()), !dbg !4130
  call void @llvm.dbg.value(metadata i32* %1, metadata !4121, metadata !DIExpression()), !dbg !4130
  %4 = icmp eq i32* %1, null, !dbg !4131
  br i1 %4, label %12, label %5, !dbg !4133

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4134
  br i1 %6, label %12, label %7, !dbg !4136

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4137
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4137
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4137
  %10 = load i8, i8* %9, align 1, !dbg !4137
  call void @llvm.dbg.value(metadata i8 %10, metadata !4122, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4130
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4137
  %11 = zext i8 %10 to i32, !dbg !4138
  store i32 %11, i32* %1, align 4, !dbg !4139
  br label %12, !dbg !4140

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4130
  ret i32 %13, !dbg !4141
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4146, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i32 %1, metadata !4147, metadata !DIExpression()), !dbg !4149
  %3 = icmp ugt i32 %0, 60, !dbg !4150
  br i1 %3, label %9, label %4, !dbg !4152

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4153
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4154
  call void @llvm.dbg.value(metadata i32 %6, metadata !4148, metadata !DIExpression()), !dbg !4149
  %7 = icmp slt i32 %6, 0, !dbg !4155
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4155
  br label %9, !dbg !4156

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4149
  ret i32 %10, !dbg !4157
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4158 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4160, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata i32* %1, metadata !4161, metadata !DIExpression()), !dbg !4163
  %4 = icmp ugt i32 %0, 60, !dbg !4164
  br i1 %4, label %12, label %5, !dbg !4166

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4167
  br i1 %6, label %12, label %7, !dbg !4169

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4170
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4170
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4170
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4170
  %10 = load i8, i8* %9, align 2, !dbg !4170
  call void @llvm.dbg.value(metadata i8 %10, metadata !4162, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4163
  call void @llvm.dbg.value(metadata i8 undef, metadata !4162, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4163
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4170
  %11 = zext i8 %10 to i32, !dbg !4171
  store i32 %11, i32* %1, align 4, !dbg !4172
  br label %12, !dbg !4173

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4163
  ret i32 %13, !dbg !4174
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4175 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i32 %1, metadata !4181, metadata !DIExpression()), !dbg !4183
  %3 = icmp ugt i32 %0, 60, !dbg !4184
  br i1 %3, label %8, label %4, !dbg !4186

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #15, !dbg !4187
  call void @llvm.dbg.value(metadata i32 %5, metadata !4182, metadata !DIExpression()), !dbg !4183
  %6 = icmp slt i32 %5, 0, !dbg !4188
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4188
  br label %8, !dbg !4189

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4183
  ret i32 %9, !dbg !4190
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4191 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4196, metadata !DIExpression()), !dbg !4199
  call void @llvm.dbg.value(metadata i32* %1, metadata !4197, metadata !DIExpression()), !dbg !4199
  %4 = icmp ugt i32 %0, 60, !dbg !4200
  br i1 %4, label %13, label %5, !dbg !4202

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4203
  br i1 %6, label %13, label %7, !dbg !4205

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4206
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4206
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !4206
  call void @llvm.dbg.value(metadata i32 undef, metadata !4198, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4199
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4206
  %10 = load i8, i8* %9, align 4, !dbg !4206
  call void @llvm.dbg.value(metadata i8 %10, metadata !4198, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !4206
  %11 = icmp ne i8 %10, 0, !dbg !4207
  %12 = zext i1 %11 to i32, !dbg !4207
  store i32 %12, i32* %1, align 4, !dbg !4208
  br label %13, !dbg !4209

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4199
  ret i32 %14, !dbg !4210
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4211 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4213, metadata !DIExpression()), !dbg !4215
  %3 = icmp ugt i32 %0, 60, !dbg !4216
  br i1 %3, label %11, label %4, !dbg !4218

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4219
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4219
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #15, !dbg !4219
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4219
  %7 = load i8, i8* %6, align 2, !dbg !4219
  call void @llvm.dbg.value(metadata i8 %7, metadata !4214, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4215
  call void @llvm.dbg.value(metadata i8 undef, metadata !4214, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4215
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #16, !dbg !4219
  %8 = xor i8 %7, 1, !dbg !4220
  %9 = zext i8 %8 to i32, !dbg !4220
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !4221
  br label %11, !dbg !4222

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4215
  ret i32 %12, !dbg !4223
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4224 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4226, metadata !DIExpression()), !dbg !4228
  %2 = icmp ugt i32 %0, 60, !dbg !4229
  br i1 %2, label %10, label %3, !dbg !4231

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4232
  call void @llvm.dbg.value(metadata i32 %4, metadata !4227, metadata !DIExpression()), !dbg !4228
  %5 = icmp slt i32 %4, 0, !dbg !4233
  br i1 %5, label %10, label %6, !dbg !4235

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #15, !dbg !4236
  call void @llvm.dbg.value(metadata i32 %7, metadata !4227, metadata !DIExpression()), !dbg !4228
  %8 = icmp slt i32 %7, 0, !dbg !4237
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4237
  br label %10, !dbg !4238

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4228
  ret i32 %11, !dbg !4239
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4242, metadata !DIExpression()), !dbg !4244
  %2 = icmp ugt i32 %0, 60, !dbg !4245
  br i1 %2, label %10, label %3, !dbg !4247

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4248
  call void @llvm.dbg.value(metadata i32 %4, metadata !4243, metadata !DIExpression()), !dbg !4244
  %5 = icmp slt i32 %4, 0, !dbg !4249
  br i1 %5, label %10, label %6, !dbg !4251

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #15, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %7, metadata !4243, metadata !DIExpression()), !dbg !4244
  %8 = icmp slt i32 %7, 0, !dbg !4253
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4253
  br label %10, !dbg !4254

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4244
  ret i32 %11, !dbg !4255
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4258, metadata !DIExpression()), !dbg !4260
  %2 = icmp ugt i32 %0, 60, !dbg !4261
  br i1 %2, label %7, label %3, !dbg !4263

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !4264
  call void @llvm.dbg.value(metadata i32 %4, metadata !4259, metadata !DIExpression()), !dbg !4260
  %5 = icmp slt i32 %4, 0, !dbg !4265
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4265
  br label %7, !dbg !4266

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4260
  ret i32 %8, !dbg !4267
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4272, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i32 %1, metadata !4273, metadata !DIExpression()), !dbg !4275
  %3 = icmp ugt i32 %0, 60, !dbg !4276
  br i1 %3, label %9, label %4, !dbg !4278

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4279
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !4280
  call void @llvm.dbg.value(metadata i32 %6, metadata !4274, metadata !DIExpression()), !dbg !4275
  %7 = icmp slt i32 %6, 0, !dbg !4281
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4281
  br label %9, !dbg !4282

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4275
  ret i32 %10, !dbg !4283
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4284 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4289, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32* %1, metadata !4290, metadata !DIExpression()), !dbg !4293
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4294
  %4 = icmp ugt i32 %0, 60, !dbg !4295
  br i1 %4, label %11, label %5, !dbg !4297

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4292, metadata !DIExpression(DW_OP_deref)), !dbg !4293
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #15, !dbg !4298
  call void @llvm.dbg.value(metadata i32 %6, metadata !4291, metadata !DIExpression()), !dbg !4293
  %7 = load i8, i8* %3, align 1, !dbg !4299
  call void @llvm.dbg.value(metadata i8 %7, metadata !4292, metadata !DIExpression()), !dbg !4293
  %8 = zext i8 %7 to i32, !dbg !4300
  store i32 %8, i32* %1, align 4, !dbg !4301
  %9 = icmp slt i32 %6, 0, !dbg !4302
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4302
  br label %11, !dbg !4303

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4293
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #16, !dbg !4304
  ret i32 %12, !dbg !4304
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_init(i32 noundef %0, %struct.hal_spi_master_config_t* noundef %1) local_unnamed_addr #3 !dbg !4305 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4312, metadata !DIExpression()), !dbg !4319
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_config_t* %1, metadata !4313, metadata !DIExpression()), !dbg !4319
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4320
  br i1 %3, label %4, label %28, !dbg !4322

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_spi_master_config_t* %1, null, !dbg !4323
  br i1 %5, label %28, label %6, !dbg !4325

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 0, !dbg !4326
  %8 = load i32, i32* %7, align 4, !dbg !4326
  %9 = add i32 %8, -60000001, !dbg !4328
  %10 = icmp ult i32 %9, -59970001, !dbg !4328
  br i1 %10, label %28, label %11, !dbg !4328

11:                                               ; preds = %6
  %12 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !4329
  call void @llvm.dbg.value(metadata i32 %12, metadata !4317, metadata !DIExpression()), !dbg !4330
  %13 = load volatile i8, i8* @g_spi_master_status, align 1, !dbg !4331
  %14 = icmp eq i8 %13, 1, !dbg !4331
  br i1 %14, label %15, label %16, !dbg !4329

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i32 0, metadata !4316, metadata !DIExpression()), !dbg !4319
  tail call void @restore_interrupt_mask(i32 noundef %12) #15, !dbg !4329
  br label %28, !dbg !4333

16:                                               ; preds = %11
  store volatile i8 1, i8* @g_spi_master_status, align 1, !dbg !4334
  call void @llvm.dbg.value(metadata i32 0, metadata !4316, metadata !DIExpression()), !dbg !4319
  tail call void @restore_interrupt_mask(i32 noundef %12) #15, !dbg !4329
  %17 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 1, !dbg !4336
  %18 = load i32, i32* %17, align 4, !dbg !4336
  tail call fastcc void @hal_spi_master_map_cs_pin(i32 noundef %18) #14, !dbg !4337
  %19 = tail call fastcc i32 @hal_spi_master_build_settings(%struct.hal_spi_master_config_t* noundef nonnull %1) #14, !dbg !4338
  call void @llvm.dbg.value(metadata i32 %19, metadata !4314, metadata !DIExpression()), !dbg !4319
  %20 = load i32, i32* %7, align 4, !dbg !4339
  %21 = tail call fastcc i32 @hal_spi_master_calc_divisor(i32 noundef %20) #14, !dbg !4340, !range !4341
  %22 = tail call i32 @spim_init(i32 noundef %19, i32 noundef %21) #15, !dbg !4342
  call void @llvm.dbg.value(metadata i32 %22, metadata !4315, metadata !DIExpression()), !dbg !4319
  %23 = icmp slt i32 %22, 0, !dbg !4343
  br i1 %23, label %28, label %24, !dbg !4345

24:                                               ; preds = %16
  %25 = tail call i8* @memset(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i32 noundef 0, i32 noundef 20) #15, !dbg !4346
  %26 = bitcast %struct.hal_spi_master_config_t* %1 to i8*, !dbg !4347
  %27 = tail call i8* @memcpy(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i8* noundef nonnull %26, i32 noundef 20) #15, !dbg !4348
  br label %28, !dbg !4349

28:                                               ; preds = %15, %16, %6, %4, %2, %24
  %29 = phi i32 [ 0, %24 ], [ -2, %2 ], [ -1, %4 ], [ -1, %6 ], [ -4, %16 ], [ -3, %15 ], !dbg !4319
  ret i32 %29, !dbg !4350
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4351 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4355, metadata !DIExpression()), !dbg !4356
  %2 = icmp eq i32 %0, 0, !dbg !4357
  ret i1 %2, !dbg !4358
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_spi_master_map_cs_pin(i32 noundef %0) unnamed_addr #3 !dbg !4359 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4363, metadata !DIExpression()), !dbg !4364
  %2 = icmp eq i32 %0, 0, !dbg !4365
  br i1 %2, label %3, label %14, !dbg !4367

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !4368
  %5 = and i32 %4, 7340032, !dbg !4368
  %6 = icmp eq i32 %5, 7340032, !dbg !4368
  br i1 %6, label %7, label %8, !dbg !4371

7:                                                ; preds = %3
  store i32 32, i32* @g_spi_master_cs_n, align 4, !dbg !4372
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 106, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 32) #15, !dbg !4374
  br label %15, !dbg !4375

8:                                                ; preds = %3
  %9 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !4376
  %10 = and i32 %9, 6, !dbg !4376
  %11 = icmp eq i32 %10, 6, !dbg !4376
  br i1 %11, label %12, label %13, !dbg !4378

12:                                               ; preds = %8
  store i32 7, i32* @g_spi_master_cs_n, align 4, !dbg !4379
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 109, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 7) #15, !dbg !4381
  br label %15, !dbg !4382

13:                                               ; preds = %8
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 111, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.22, i32 0, i32 0)) #15, !dbg !4383
  store i32 32, i32* @g_spi_master_cs_n, align 4, !dbg !4385
  br label %15

14:                                               ; preds = %1
  store i32 6, i32* @g_spi_master_cs_n, align 4, !dbg !4386
  tail call void (i8*, i32, i8*, ...) @log_hal_info_internal(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.hal_spi_master_map_cs_pin, i32 0, i32 0), i32 noundef 116, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i32 0, i32 0), i32 noundef 6) #15, !dbg !4388
  br label %15

15:                                               ; preds = %7, %13, %12, %14
  ret void, !dbg !4389
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc i32 @hal_spi_master_build_settings(%struct.hal_spi_master_config_t* nocapture noundef readonly %0) unnamed_addr #6 !dbg !4390 {
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_config_t* %0, metadata !4394, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i32 0, metadata !4395, metadata !DIExpression()), !dbg !4396
  %2 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 1, !dbg !4397
  %3 = load i32, i32* %2, align 4, !dbg !4397
  %4 = icmp eq i32 %3, 0, !dbg !4399
  %5 = select i1 %4, i32 0, i32 536870912
  call void @llvm.dbg.value(metadata i32 %5, metadata !4395, metadata !DIExpression()), !dbg !4396
  %6 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 2, !dbg !4400
  %7 = load i32, i32* %6, align 4, !dbg !4400
  %8 = icmp eq i32 %7, 1, !dbg !4402
  %9 = or i32 %5, 8, !dbg !4403
  %10 = select i1 %8, i32 %5, i32 %9, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %10, metadata !4395, metadata !DIExpression()), !dbg !4396
  %11 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 3, !dbg !4404
  %12 = load i32, i32* %11, align 4, !dbg !4404
  %13 = icmp eq i32 %12, 0, !dbg !4406
  %14 = or i32 %10, 16, !dbg !4407
  %15 = select i1 %13, i32 %10, i32 %14, !dbg !4407
  call void @llvm.dbg.value(metadata i32 %15, metadata !4395, metadata !DIExpression()), !dbg !4396
  %16 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %0, i32 0, i32 4, !dbg !4408
  %17 = load i32, i32* %16, align 4, !dbg !4408
  %18 = icmp eq i32 %17, 0, !dbg !4410
  %19 = or i32 %15, 32, !dbg !4411
  %20 = select i1 %18, i32 %15, i32 %19, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %20, metadata !4395, metadata !DIExpression()), !dbg !4396
  ret i32 %20, !dbg !4412
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_spi_master_calc_divisor(i32 noundef %0) unnamed_addr #10 !dbg !515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !519, metadata !DIExpression()), !dbg !4413
  %2 = udiv i32 120000000, %0, !dbg !4414
  %3 = add nsw i32 %2, -2, !dbg !4415
  ret i32 %3, !dbg !4416
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4417 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4421, metadata !DIExpression()), !dbg !4422
  %2 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4423
  br i1 %2, label %3, label %5, !dbg !4425

3:                                                ; preds = %1
  %4 = tail call i8* @memset(i8* noundef bitcast (%struct.hal_spi_master_config_t* @g_spi_master_context to i8*), i32 noundef 0, i32 noundef 20) #15, !dbg !4426
  store volatile i8 0, i8* @g_spi_master_status, align 1, !dbg !4427
  br label %5, !dbg !4429

5:                                                ; preds = %1, %3
  %6 = phi i32 [ 0, %3 ], [ -2, %1 ], !dbg !4422
  ret i32 %6, !dbg !4430
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_send_polling(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4431 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4435, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i8* %1, metadata !4436, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 %2, metadata !4437, metadata !DIExpression()), !dbg !4439
  %4 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4440
  br i1 %4, label %5, label %19, !dbg !4442

5:                                                ; preds = %3
  %6 = icmp eq i8* %1, null, !dbg !4443
  br i1 %6, label %19, label %7, !dbg !4445

7:                                                ; preds = %5
  %8 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4446
  %9 = and i32 %8, 65536, !dbg !4448
  %10 = icmp eq i32 %9, 0, !dbg !4449
  br i1 %10, label %11, label %19, !dbg !4450

11:                                               ; preds = %7
  %12 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4451
  %13 = tail call i32 @hal_gpio_set_output(i32 noundef %12, i32 noundef 0) #15, !dbg !4452
  %14 = tail call i32 @spim_write(i8* noundef nonnull %1, i32 noundef %2) #15, !dbg !4453
  call void @llvm.dbg.value(metadata i32 %14, metadata !4438, metadata !DIExpression()), !dbg !4439
  %15 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4454
  %16 = tail call i32 @hal_gpio_set_output(i32 noundef %15, i32 noundef 1) #15, !dbg !4455
  %17 = icmp slt i32 %14, 0, !dbg !4456
  %18 = select i1 %17, i32 -4, i32 0, !dbg !4456
  br label %19, !dbg !4457

19:                                               ; preds = %7, %5, %3, %11
  %20 = phi i32 [ %18, %11 ], [ -2, %3 ], [ -1, %5 ], [ -3, %7 ], !dbg !4439
  ret i32 %20, !dbg !4458
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_master_send_and_receive_polling(i32 noundef %0, %struct.hal_spi_master_send_and_receive_config_t* nocapture noundef readonly %1) local_unnamed_addr #3 !dbg !4459 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4471, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_send_and_receive_config_t* %1, metadata !4472, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i32 0, metadata !4473, metadata !DIExpression()), !dbg !4474
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4475
  br i1 %3, label %4, label %38, !dbg !4477

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 2, !dbg !4478
  %6 = load i8*, i8** %5, align 4, !dbg !4478
  %7 = icmp eq i8* %6, null, !dbg !4480
  br i1 %7, label %38, label %8, !dbg !4481

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 0, !dbg !4482
  %10 = load i8*, i8** %9, align 4, !dbg !4482
  %11 = icmp eq i8* %10, null, !dbg !4484
  br i1 %11, label %38, label %12, !dbg !4485

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 1, !dbg !4486
  %14 = load i32, i32* %13, align 4, !dbg !4486
  %15 = icmp ugt i32 %14, 4, !dbg !4488
  br i1 %15, label %38, label %16, !dbg !4489

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %1, i32 0, i32 3, !dbg !4490
  %18 = load i32, i32* %17, align 4, !dbg !4490
  %19 = icmp ugt i32 %14, %18, !dbg !4492
  br i1 %19, label %38, label %20, !dbg !4493

20:                                               ; preds = %16
  %21 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4494
  %22 = and i32 %21, 65536, !dbg !4496
  %23 = icmp eq i32 %22, 0, !dbg !4497
  br i1 %23, label %24, label %38, !dbg !4498

24:                                               ; preds = %20
  %25 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4499
  %26 = tail call i32 @hal_gpio_set_output(i32 noundef %25, i32 noundef 0) #15, !dbg !4500
  %27 = tail call fastcc i32 @hal_spi_build_op_addr(%struct.hal_spi_master_send_and_receive_config_t* noundef nonnull %1) #14, !dbg !4501
  %28 = load i32, i32* %13, align 4, !dbg !4502
  %29 = load i8*, i8** %5, align 4, !dbg !4503
  %30 = getelementptr inbounds i8, i8* %29, i32 %28, !dbg !4504
  %31 = load i32, i32* %17, align 4, !dbg !4505
  %32 = sub i32 %31, %28, !dbg !4506
  %33 = tail call i32 @spim_read(i32 noundef %27, i32 noundef %28, i8* noundef %30, i32 noundef %32) #15, !dbg !4507
  call void @llvm.dbg.value(metadata i32 %33, metadata !4473, metadata !DIExpression()), !dbg !4474
  %34 = load i32, i32* @g_spi_master_cs_n, align 4, !dbg !4508
  %35 = tail call i32 @hal_gpio_set_output(i32 noundef %34, i32 noundef 1) #15, !dbg !4509
  %36 = icmp slt i32 %33, 0, !dbg !4510
  %37 = select i1 %36, i32 -4, i32 0, !dbg !4510
  br label %38, !dbg !4511

38:                                               ; preds = %20, %16, %12, %8, %4, %2, %24
  %39 = phi i32 [ %37, %24 ], [ -2, %2 ], [ -1, %4 ], [ -1, %8 ], [ -1, %12 ], [ -1, %16 ], [ -3, %20 ], !dbg !4474
  ret i32 %39, !dbg !4512
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize readonly
define internal fastcc i32 @hal_spi_build_op_addr(%struct.hal_spi_master_send_and_receive_config_t* nocapture noundef readonly %0) unnamed_addr #12 !dbg !4513 {
  call void @llvm.dbg.value(metadata %struct.hal_spi_master_send_and_receive_config_t* %0, metadata !4519, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 0, metadata !4520, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 0, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 0, metadata !4521, metadata !DIExpression()), !dbg !4522
  %2 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  call void @llvm.dbg.value(metadata i32 0, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 0, metadata !4520, metadata !DIExpression()), !dbg !4522
  %4 = icmp eq i32 %3, 0, !dbg !4523
  br i1 %4, label %21, label %5, !dbg !4526

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %0, i32 0, i32 0
  %7 = load i8*, i8** %6, align 4
  br label %8, !dbg !4526

8:                                                ; preds = %5, %8
  %9 = phi i32 [ 0, %5 ], [ %19, %8 ]
  %10 = phi i32 [ 0, %5 ], [ %18, %8 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata i32 %10, metadata !4520, metadata !DIExpression()), !dbg !4522
  %11 = getelementptr inbounds i8, i8* %7, i32 %9, !dbg !4527
  %12 = load i8, i8* %11, align 1, !dbg !4527
  %13 = zext i8 %12 to i32, !dbg !4527
  %14 = xor i32 %9, -1, !dbg !4529
  %15 = add i32 %3, %14, !dbg !4529
  %16 = shl i32 %15, 3, !dbg !4530
  %17 = shl i32 %13, %16, !dbg !4531
  %18 = or i32 %17, %10, !dbg !4532
  call void @llvm.dbg.value(metadata i32 %18, metadata !4520, metadata !DIExpression()), !dbg !4522
  %19 = add nuw i32 %9, 1, !dbg !4533
  call void @llvm.dbg.value(metadata i32 %19, metadata !4521, metadata !DIExpression()), !dbg !4522
  %20 = icmp eq i32 %19, %3, !dbg !4523
  br i1 %20, label %21, label %8, !dbg !4526, !llvm.loop !4534

21:                                               ; preds = %8, %1
  %22 = phi i32 [ 0, %1 ], [ %18, %8 ], !dbg !4522
  ret i32 %22, !dbg !4536
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_spi_master_get_running_status(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #2 !dbg !4537 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4543, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.value(metadata i32* %1, metadata !4544, metadata !DIExpression()), !dbg !4545
  %3 = tail call fastcc zeroext i1 @hal_spi_master_is_master_port_valid(i32 noundef %0) #14, !dbg !4546
  br i1 %3, label %4, label %11, !dbg !4548

4:                                                ; preds = %2
  %5 = icmp eq i32* %1, null, !dbg !4549
  br i1 %5, label %11, label %6, !dbg !4551

6:                                                ; preds = %4
  %7 = load volatile i32, i32* inttoptr (i32 603979776 to i32*), align 67108864, !dbg !4552
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  store i32 %10, i32* %1, align 4, !dbg !4554
  br label %11, !dbg !4555

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ 0, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4545
  ret i32 %12, !dbg !4556
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4557 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4563, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4564, metadata !DIExpression()), !dbg !4565
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4566
  br i1 %3, label %4, label %18, !dbg !4568

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4569
  %6 = load i8, i8* %5, align 4, !dbg !4569, !range !3505
  %7 = icmp eq i8 %6, 0, !dbg !4569
  br i1 %7, label %8, label %18, !dbg !4571

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #15, !dbg !4572
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4573
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4574
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4575
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #15, !dbg !4576
  store i8 1, i8* %5, align 4, !dbg !4577
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4578, !range !4579
  tail call void @uart_reset_default_value(i32 noundef %14) #15, !dbg !4580
  tail call void @halUART_HWInit(i32 noundef %14) #15, !dbg !4581
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4582
  %16 = icmp eq i32 %15, 0, !dbg !4584
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4565
  br label %18, !dbg !4565

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4565
  ret i32 %19, !dbg !4585
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #6 !dbg !4586 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4592, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4593, metadata !DIExpression()), !dbg !4594
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4595
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4597
  br i1 %5, label %6, label %22, !dbg !4597

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4598
  %8 = load i32, i32* %7, align 4, !dbg !4598
  %9 = icmp ugt i32 %8, 12, !dbg !4600
  br i1 %9, label %22, label %10, !dbg !4601

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4602
  %12 = load i32, i32* %11, align 4, !dbg !4602
  %13 = icmp ugt i32 %12, 2, !dbg !4603
  br i1 %13, label %22, label %14, !dbg !4604

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4605
  %16 = load i32, i32* %15, align 4, !dbg !4605
  %17 = icmp ugt i32 %16, 1, !dbg !4606
  br i1 %17, label %22, label %18, !dbg !4607

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4608
  %20 = load i32, i32* %19, align 4, !dbg !4608
  %21 = icmp ult i32 %20, 4, !dbg !4609
  br label %22, !dbg !4610

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4594
  ret i1 %23, !dbg !4611
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #10 !dbg !4612 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4616, metadata !DIExpression()), !dbg !4617
  %2 = icmp ne i32 %0, 0, !dbg !4618
  %3 = zext i1 %2 to i32, !dbg !4619
  ret i32 %3, !dbg !4620
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4621 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4625, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4626, metadata !DIExpression()), !dbg !4627
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !4628
  br i1 %3, label %4, label %22, !dbg !4630

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4631
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4632
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4633
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #15, !dbg !4634
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4635
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4636
  %11 = load i32, i32* %10, align 4, !dbg !4636
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !4637
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4638
  %14 = load i32, i32* %13, align 4, !dbg !4638
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !4639
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4640
  %17 = load i32, i32* %16, align 4, !dbg !4640
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !4641
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4642
  %20 = load i32, i32* %19, align 4, !dbg !4642
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !4643
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #15, !dbg !4644
  br label %22, !dbg !4645

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4627
  ret i32 %23, !dbg !4646
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #10 !dbg !4647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4651, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4652, metadata !DIExpression()), !dbg !4657
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4658
  %3 = load i32, i32* %2, align 4, !dbg !4658
  ret i32 %3, !dbg !4659
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #10 !dbg !4660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4664, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4665, metadata !DIExpression()), !dbg !4668
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4669
  %3 = load i16, i16* %2, align 2, !dbg !4669
  ret i16 %3, !dbg !4670
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #10 !dbg !4671 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4675, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4676, metadata !DIExpression()), !dbg !4679
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4680
  %3 = load i16, i16* %2, align 2, !dbg !4680
  ret i16 %3, !dbg !4681
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #10 !dbg !4682 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4686, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4687, metadata !DIExpression()), !dbg !4690
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4691
  %3 = load i16, i16* %2, align 2, !dbg !4691
  ret i16 %3, !dbg !4692
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #10 !dbg !4693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4697, metadata !DIExpression()), !dbg !4698
  %2 = icmp ult i32 %0, 2, !dbg !4699
  ret i1 %2, !dbg !4700
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4701 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4705, metadata !DIExpression()), !dbg !4706
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4707
  br i1 %2, label %3, label %10, !dbg !4709

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4710
  %5 = load i8, i8* %4, align 4, !dbg !4710, !range !3505
  %6 = icmp eq i8 %5, 0, !dbg !4712
  br i1 %6, label %10, label %7, !dbg !4713

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #15, !dbg !4714
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4715, !range !4579
  tail call void @uart_query_empty(i32 noundef %9) #15, !dbg !4716
  tail call void @uart_reset_default_value(i32 noundef %9) #15, !dbg !4717
  br label %10, !dbg !4718

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4706
  ret i32 %11, !dbg !4719
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4724, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i8 %1, metadata !4725, metadata !DIExpression()), !dbg !4727
  %3 = icmp eq i32 %0, 0, !dbg !4728
  %4 = icmp eq i32 %0, 1, !dbg !4728
  %5 = select i1 %4, i32 1, i32 2, !dbg !4728
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4728
  call void @llvm.dbg.value(metadata i32 %6, metadata !4726, metadata !DIExpression()), !dbg !4727
  %7 = icmp eq i32 %6, 2, !dbg !4729
  br i1 %7, label %9, label %8, !dbg !4731

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #15, !dbg !4732
  br label %9, !dbg !4734

9:                                                ; preds = %2, %8
  ret void, !dbg !4735
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4736 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4740, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i8* %1, metadata !4741, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.value(metadata i32 %2, metadata !4742, metadata !DIExpression()), !dbg !4745
  %4 = icmp eq i32 %0, 0, !dbg !4746
  %5 = icmp eq i32 %0, 1, !dbg !4746
  %6 = select i1 %5, i32 1, i32 2, !dbg !4746
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4746
  call void @llvm.dbg.value(metadata i32 %7, metadata !4743, metadata !DIExpression()), !dbg !4745
  %8 = icmp eq i8* %1, null, !dbg !4747
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4749
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4749
  call void @llvm.dbg.value(metadata i32 0, metadata !4744, metadata !DIExpression()), !dbg !4745
  br i1 %12, label %19, label %13, !dbg !4749

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4744, metadata !DIExpression()), !dbg !4745
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4750
  %16 = load i8, i8* %15, align 1, !dbg !4750
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #15, !dbg !4756
  %17 = add nuw i32 %14, 1, !dbg !4757
  call void @llvm.dbg.value(metadata i32 %17, metadata !4744, metadata !DIExpression()), !dbg !4745
  %18 = icmp eq i32 %17, %2, !dbg !4758
  br i1 %18, label %19, label %13, !dbg !4759, !llvm.loop !4760

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4745
  ret i32 %20, !dbg !4762
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4763 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4765, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i8* %1, metadata !4766, metadata !DIExpression()), !dbg !4772
  call void @llvm.dbg.value(metadata i32 %2, metadata !4767, metadata !DIExpression()), !dbg !4772
  %5 = bitcast i32* %4 to i8*, !dbg !4773
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4773
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4774
  br i1 %6, label %7, label %24, !dbg !4776

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4777
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4779
  br i1 %10, label %24, label %11, !dbg !4779

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4780
  %13 = load i8, i8* %12, align 4, !dbg !4780, !range !3505
  %14 = icmp eq i8 %13, 0, !dbg !4780
  br i1 %14, label %24, label %15, !dbg !4782

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4783, !range !4579
  call void @llvm.dbg.value(metadata i32* %4, metadata !4768, metadata !DIExpression(DW_OP_deref)), !dbg !4772
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !4784
  %17 = load i32, i32* %4, align 4, !dbg !4785
  call void @llvm.dbg.value(metadata i32 %17, metadata !4768, metadata !DIExpression()), !dbg !4772
  %18 = icmp ult i32 %17, %2, !dbg !4787
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4769, metadata !DIExpression()), !dbg !4772
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #15, !dbg !4788
  %20 = load i32, i32* %4, align 4, !dbg !4789
  call void @llvm.dbg.value(metadata i32 %20, metadata !4768, metadata !DIExpression()), !dbg !4772
  %21 = icmp eq i32 %19, %20, !dbg !4791
  br i1 %21, label %22, label %24, !dbg !4792

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4793, !range !4795
  call void @llvm.dbg.value(metadata i32 %23, metadata !4770, metadata !DIExpression()), !dbg !4772
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #15, !dbg !4796
  br label %24, !dbg !4797

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4772
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4798
  ret i32 %25, !dbg !4798
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #10 !dbg !4799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4803, metadata !DIExpression()), !dbg !4806
  call void @llvm.dbg.value(metadata i1 %1, metadata !4804, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4806
  %3 = icmp eq i32 %0, 0, !dbg !4807
  %4 = select i1 %1, i32 15, i32 14, !dbg !4809
  %5 = select i1 %1, i32 17, i32 16, !dbg !4809
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4809
  call void @llvm.dbg.value(metadata i32 %6, metadata !4805, metadata !DIExpression()), !dbg !4806
  ret i32 %6, !dbg !4810
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4811 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4815, metadata !DIExpression()), !dbg !4817
  %2 = icmp eq i32 %0, 0, !dbg !4818
  %3 = icmp eq i32 %0, 1, !dbg !4818
  %4 = select i1 %3, i32 1, i32 2, !dbg !4818
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4818
  call void @llvm.dbg.value(metadata i32 %5, metadata !4816, metadata !DIExpression()), !dbg !4817
  %6 = icmp ult i32 %5, 2, !dbg !4819
  br i1 %6, label %7, label %9, !dbg !4821

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #15, !dbg !4822
  br label %9, !dbg !4824

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4825
  ret i8 %10, !dbg !4826
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4831, metadata !DIExpression()), !dbg !4833
  %2 = icmp eq i32 %0, 0, !dbg !4834
  %3 = icmp eq i32 %0, 1, !dbg !4834
  %4 = select i1 %3, i32 1, i32 2, !dbg !4834
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4834
  call void @llvm.dbg.value(metadata i32 %5, metadata !4832, metadata !DIExpression()), !dbg !4833
  %6 = icmp ult i32 %5, 2, !dbg !4835
  br i1 %6, label %7, label %9, !dbg !4837

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #15, !dbg !4838
  br label %9, !dbg !4840

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4841
  ret i32 %10, !dbg !4842
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4843 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4847, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i8* %1, metadata !4848, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.value(metadata i32 %2, metadata !4849, metadata !DIExpression()), !dbg !4852
  %4 = icmp eq i32 %0, 0, !dbg !4853
  %5 = icmp eq i32 %0, 1, !dbg !4853
  %6 = select i1 %5, i32 1, i32 2, !dbg !4853
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4853
  call void @llvm.dbg.value(metadata i32 %7, metadata !4850, metadata !DIExpression()), !dbg !4852
  %8 = icmp eq i8* %1, null, !dbg !4854
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4856
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4856
  call void @llvm.dbg.value(metadata i32 0, metadata !4851, metadata !DIExpression()), !dbg !4852
  br i1 %12, label %19, label %13, !dbg !4856

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4851, metadata !DIExpression()), !dbg !4852
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #15, !dbg !4857
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4863
  store i8 %15, i8* %16, align 1, !dbg !4864
  %17 = add nuw i32 %14, 1, !dbg !4865
  call void @llvm.dbg.value(metadata i32 %17, metadata !4851, metadata !DIExpression()), !dbg !4852
  %18 = icmp eq i32 %17, %2, !dbg !4866
  br i1 %18, label %19, label %13, !dbg !4867, !llvm.loop !4868

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4852
  ret i32 %20, !dbg !4870
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4871 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4873, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i8* %1, metadata !4874, metadata !DIExpression()), !dbg !4879
  call void @llvm.dbg.value(metadata i32 %2, metadata !4875, metadata !DIExpression()), !dbg !4879
  %5 = bitcast i32* %4 to i8*, !dbg !4880
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4880
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4881
  br i1 %6, label %7, label %20, !dbg !4883

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4884
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4886
  br i1 %10, label %20, label %11, !dbg !4886

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4887, !range !4579
  call void @llvm.dbg.value(metadata i32* %4, metadata !4876, metadata !DIExpression(DW_OP_deref)), !dbg !4879
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #15, !dbg !4888
  %13 = load i32, i32* %4, align 4, !dbg !4889
  call void @llvm.dbg.value(metadata i32 %13, metadata !4876, metadata !DIExpression()), !dbg !4879
  %14 = icmp ult i32 %13, %2, !dbg !4891
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4877, metadata !DIExpression()), !dbg !4879
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #15, !dbg !4892
  %16 = load i32, i32* %4, align 4, !dbg !4893
  call void @llvm.dbg.value(metadata i32 %16, metadata !4876, metadata !DIExpression()), !dbg !4879
  %17 = icmp eq i32 %15, %16, !dbg !4895
  br i1 %17, label %18, label %20, !dbg !4896

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4897, !range !4795
  call void @llvm.dbg.value(metadata i32 %19, metadata !4878, metadata !DIExpression()), !dbg !4879
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #15, !dbg !4899
  br label %20, !dbg !4900

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4879
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4901
  ret i32 %21, !dbg !4901
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4902 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4904, metadata !DIExpression()), !dbg !4906
  %3 = bitcast i32* %2 to i8*, !dbg !4907
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4907
  call void @llvm.dbg.value(metadata i32 0, metadata !4905, metadata !DIExpression()), !dbg !4906
  store i32 0, i32* %2, align 4, !dbg !4908
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4909
  br i1 %4, label %5, label %8, !dbg !4911

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4912, !range !4579
  call void @llvm.dbg.value(metadata i32* %2, metadata !4905, metadata !DIExpression(DW_OP_deref)), !dbg !4906
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #15, !dbg !4913
  %7 = load i32, i32* %2, align 4, !dbg !4914
  call void @llvm.dbg.value(metadata i32 %7, metadata !4905, metadata !DIExpression()), !dbg !4906
  br label %8, !dbg !4915

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4906
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4916
  ret i32 %9, !dbg !4916
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4917 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4919, metadata !DIExpression()), !dbg !4921
  %3 = bitcast i32* %2 to i8*, !dbg !4922
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4922
  call void @llvm.dbg.value(metadata i32 0, metadata !4920, metadata !DIExpression()), !dbg !4921
  store i32 0, i32* %2, align 4, !dbg !4923
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4924
  br i1 %4, label %5, label %8, !dbg !4926

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4927, !range !4579
  call void @llvm.dbg.value(metadata i32* %2, metadata !4920, metadata !DIExpression(DW_OP_deref)), !dbg !4921
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #15, !dbg !4928
  %7 = load i32, i32* %2, align 4, !dbg !4929
  call void @llvm.dbg.value(metadata i32 %7, metadata !4920, metadata !DIExpression()), !dbg !4921
  br label %8, !dbg !4930

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4921
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4931
  ret i32 %9, !dbg !4931
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4932 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4936, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4937, metadata !DIExpression()), !dbg !4940
  call void @llvm.dbg.value(metadata i8* %2, metadata !4938, metadata !DIExpression()), !dbg !4940
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4941
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4943
  br i1 %6, label %7, label %18, !dbg !4943

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4944
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4945
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4946
  store i8* %2, i8** %9, align 4, !dbg !4947
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4948
  store i8 1, i8* %10, align 4, !dbg !4949
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4950
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4951
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4952
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4953
  %13 = icmp eq i32 %11, 0, !dbg !4954
  br i1 %13, label %14, label %15, !dbg !4956

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #15, !dbg !4957
  br label %16, !dbg !4959

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #15, !dbg !4960
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4962, !range !4795
  call void @llvm.dbg.value(metadata i32 %17, metadata !4939, metadata !DIExpression()), !dbg !4940
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #15, !dbg !4963
  br label %18, !dbg !4964

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4940
  ret i32 %19, !dbg !4965
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #10 !dbg !579 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !585, metadata !DIExpression()), !dbg !4966
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4967
  %3 = load void ()*, void ()** %2, align 4, !dbg !4967
  ret void ()* %3, !dbg !4968
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !4969 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4975, !range !3505
  %2 = icmp eq i8 %1, 0, !dbg !4975
  br i1 %2, label %8, label %3, !dbg !4976

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4977
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4979
  br i1 %5, label %8, label %6, !dbg !4980

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4981
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !4983
  br label %8, !dbg !4984

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4985, !range !4579
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4986
  ret void, !dbg !4987
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !4988 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4993, !range !3505
  %2 = icmp eq i8 %1, 0, !dbg !4993
  br i1 %2, label %8, label %3, !dbg !4994

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4995
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4997
  br i1 %5, label %8, label %6, !dbg !4998

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4999
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !5001
  br label %8, !dbg !5002

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5003, !range !4579
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !5004
  ret void, !dbg !5005
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !5006 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !5010, metadata !DIExpression()), !dbg !5017
  call void @llvm.dbg.value(metadata i1 %1, metadata !5011, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5017
  %5 = bitcast i32* %3 to i8*, !dbg !5018
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5018
  %6 = bitcast i32* %4 to i8*, !dbg !5018
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5018
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5014, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5017
  br i1 %1, label %7, label %12, !dbg !5019

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !5014, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !5017
  call void @llvm.dbg.value(metadata i32* %3, metadata !5012, metadata !DIExpression(DW_OP_deref)), !dbg !5017
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #15, !dbg !5020
  %8 = load i32, i32* %3, align 4, !dbg !5023
  call void @llvm.dbg.value(metadata i32 %8, metadata !5012, metadata !DIExpression()), !dbg !5017
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !5025
  %10 = load i32, i32* %9, align 4, !dbg !5025
  %11 = icmp ult i32 %8, %10, !dbg !5026
  br i1 %11, label %22, label %20, !dbg !5027

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !5013, metadata !DIExpression(DW_OP_deref)), !dbg !5017
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !5028
  %13 = load i32, i32* %4, align 4, !dbg !5030
  call void @llvm.dbg.value(metadata i32 %13, metadata !5013, metadata !DIExpression()), !dbg !5017
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !5032
  %15 = load i32, i32* %14, align 4, !dbg !5032
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !5033
  %17 = load i32, i32* %16, align 4, !dbg !5033
  %18 = sub i32 %15, %17, !dbg !5034
  %19 = icmp ult i32 %13, %18, !dbg !5035
  br i1 %19, label %22, label %20, !dbg !5036

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !5037, !range !4795
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #15, !dbg !5037
  br label %22, !dbg !5038

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5038
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5038
  ret void, !dbg !5038
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !5039 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !5044, !range !3505
  %2 = icmp eq i8 %1, 0, !dbg !5044
  br i1 %2, label %11, label %3, !dbg !5045

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !5046
  %5 = icmp eq i32 %4, 0, !dbg !5047
  br i1 %5, label %11, label %6, !dbg !5048

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !5049
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5051
  br i1 %8, label %11, label %9, !dbg !5052

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !5053
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5055
  br label %11, !dbg !5056

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !5057, !range !4579
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5058
  ret void, !dbg !5059
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !5060 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !5065, !range !3505
  %2 = icmp eq i8 %1, 0, !dbg !5065
  br i1 %2, label %11, label %3, !dbg !5066

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !5067
  %5 = icmp eq i32 %4, 0, !dbg !5068
  br i1 %5, label %11, label %6, !dbg !5069

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !5070
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !5072
  br i1 %8, label %11, label %9, !dbg !5073

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !5074
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !5076
  br label %11, !dbg !5077

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !5078, !range !4579
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !5079
  ret void, !dbg !5080
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5081 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5085, metadata !DIExpression()), !dbg !5087
  call void @llvm.dbg.value(metadata i32 %1, metadata !5086, metadata !DIExpression()), !dbg !5087
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5088
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !5090
  br i1 %5, label %6, label %10, !dbg !5090

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !5091
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !5092
  store i32 %1, i32* %8, align 4, !dbg !5093
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !5094
  br label %10, !dbg !5095

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !5087
  ret i32 %11, !dbg !5096
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !5097 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5103, metadata !DIExpression()), !dbg !5105
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !5104, metadata !DIExpression()), !dbg !5105
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5106
  br i1 %3, label %4, label %28, !dbg !5108

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !5109
  br i1 %5, label %6, label %28, !dbg !5111

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !5112
  store i8 1, i8* %7, align 4, !dbg !5113
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !5114
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !5115
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !5116
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #15, !dbg !5117
  tail call void @DMA_Init() #15, !dbg !5118
  tail call void @DMA_Vfifo_init() #15, !dbg !5119
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !5120
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !5121
  %14 = load i8*, i8** %13, align 4, !dbg !5121
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !5122
  %16 = load i32, i32* %15, align 4, !dbg !5122
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !5123
  %18 = load i32, i32* %17, align 4, !dbg !5123
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !5124
  %20 = load i32, i32* %19, align 4, !dbg !5124
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !5125
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #15, !dbg !5126
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !5127
  %23 = load i8*, i8** %22, align 4, !dbg !5127
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !5128
  %25 = load i32, i32* %24, align 4, !dbg !5128
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !5129
  %27 = load i32, i32* %26, align 4, !dbg !5129
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #15, !dbg !5130
  br label %28, !dbg !5131

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !5105
  ret i32 %29, !dbg !5132
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #6 !dbg !5133 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !5137, metadata !DIExpression()), !dbg !5138
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !5139
  br i1 %2, label %27, label %3, !dbg !5141

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !5142
  %5 = load i8*, i8** %4, align 4, !dbg !5142
  %6 = icmp eq i8* %5, null, !dbg !5144
  br i1 %6, label %27, label %7, !dbg !5145

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !5146
  %9 = load i32, i32* %8, align 4, !dbg !5146
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !5148
  %11 = load i32, i32* %10, align 4, !dbg !5148
  %12 = icmp ult i32 %9, %11, !dbg !5149
  br i1 %12, label %27, label %13, !dbg !5150

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !5151
  %15 = load i32, i32* %14, align 4, !dbg !5151
  %16 = icmp ult i32 %9, %15, !dbg !5153
  br i1 %16, label %27, label %17, !dbg !5154

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !5155
  %19 = load i8*, i8** %18, align 4, !dbg !5155
  %20 = icmp eq i8* %19, null, !dbg !5157
  br i1 %20, label %27, label %21, !dbg !5158

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !5159
  %23 = load i32, i32* %22, align 4, !dbg !5159
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !5161
  %25 = load i32, i32* %24, align 4, !dbg !5161
  %26 = icmp uge i32 %23, %25, !dbg !5162
  br label %27, !dbg !5163

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !5138
  ret i1 %28, !dbg !5164
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #8

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !5165 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5167, metadata !DIExpression()), !dbg !5169
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !5170
  %3 = udiv i32 %2, 1000000, !dbg !5171
  call void @llvm.dbg.value(metadata i32 %3, metadata !5168, metadata !DIExpression()), !dbg !5169
  %4 = mul i32 %3, %0, !dbg !5172
  ret i32 %4, !dbg !5173
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5176, metadata !DIExpression()), !dbg !5178
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5179
  br i1 %2, label %3, label %8, !dbg !5181

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5182
  %5 = icmp eq i32 %0, 1, !dbg !5182
  %6 = select i1 %5, i32 1, i32 2, !dbg !5182
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5182
  call void @llvm.dbg.value(metadata i32 %7, metadata !5177, metadata !DIExpression()), !dbg !5178
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #15, !dbg !5183
  br label %8, !dbg !5184

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5178
  ret i32 %9, !dbg !5185
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !5186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5190, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.value(metadata i8 %1, metadata !5191, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.value(metadata i8 %2, metadata !5192, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.value(metadata i8 %3, metadata !5193, metadata !DIExpression()), !dbg !5195
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5196
  br i1 %5, label %6, label %11, !dbg !5198

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !5199
  %8 = icmp eq i32 %0, 1, !dbg !5199
  %9 = select i1 %8, i32 1, i32 2, !dbg !5199
  %10 = select i1 %7, i32 0, i32 %9, !dbg !5199
  call void @llvm.dbg.value(metadata i32 %10, metadata !5194, metadata !DIExpression()), !dbg !5195
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #15, !dbg !5200
  br label %11, !dbg !5201

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !5195
  ret i32 %12, !dbg !5202
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !5203 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5205, metadata !DIExpression()), !dbg !5207
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5208
  br i1 %2, label %3, label %8, !dbg !5210

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !5211
  %5 = icmp eq i32 %0, 1, !dbg !5211
  %6 = select i1 %5, i32 1, i32 2, !dbg !5211
  %7 = select i1 %4, i32 0, i32 %6, !dbg !5211
  call void @llvm.dbg.value(metadata i32 %7, metadata !5206, metadata !DIExpression()), !dbg !5207
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #15, !dbg !5212
  br label %8, !dbg !5213

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !5207
  ret i32 %9, !dbg !5214
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5215 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5219, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.value(metadata i32 %1, metadata !5220, metadata !DIExpression()), !dbg !5221
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !5222
  br i1 %3, label %4, label %8, !dbg !5224

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !5225
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !5227
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #15, !dbg !5227
  br label %8, !dbg !5228

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !5221
  ret i32 %9, !dbg !5228
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !5229 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5233, metadata !DIExpression()), !dbg !5234
  %2 = trunc i32 %0 to i8, !dbg !5235
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #15, !dbg !5236
  ret i32 %0, !dbg !5237
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !5238 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !5239
  tail call fastcc void @prvSetupHardware() #14, !dbg !5240
  tail call void asm sideeffect "cpsie i", "~{memory}"() #16, !dbg !5241, !srcloc !5244
  tail call void asm sideeffect "cpsie f", "~{memory}"() #16, !dbg !5245, !srcloc !5248
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #15, !dbg !5249
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.24, i32 0, i32 0)) #15, !dbg !5250
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0)) #15, !dbg !5251
  tail call fastcc void @spi_master_transfer_data_two_boards_example() #14, !dbg !5252
  br label %4, !dbg !5253

4:                                                ; preds = %0, %4
  br label %4, !dbg !5253, !llvm.loop !5254
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !5256 {
  tail call void @top_xtal_init() #15, !dbg !5257
  ret void, !dbg !5258
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !5259 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !5260
  ret void, !dbg !5261
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spi_master_transfer_data_two_boards_example() unnamed_addr #3 !dbg !5262 {
  %1 = alloca %struct.hal_spi_master_config_t, align 4
  %2 = bitcast %struct.hal_spi_master_config_t* %1 to i8*, !dbg !5273
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #16, !dbg !5273
  call void @llvm.dbg.declare(metadata %struct.hal_spi_master_config_t* %1, metadata !5264, metadata !DIExpression()), !dbg !5274
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0)) #15, !dbg !5275
  %4 = tail call i32 @hal_gpio_init(i32 noundef 32) #15, !dbg !5276
  %5 = tail call i32 @hal_gpio_init(i32 noundef 31) #15, !dbg !5277
  %6 = tail call i32 @hal_gpio_init(i32 noundef 30) #15, !dbg !5278
  %7 = tail call i32 @hal_gpio_init(i32 noundef 29) #15, !dbg !5279
  %8 = tail call i32 @hal_pinmux_set_function(i32 noundef 32, i8 noundef zeroext 7) #15, !dbg !5280
  %9 = tail call i32 @hal_pinmux_set_function(i32 noundef 31, i8 noundef zeroext 7) #15, !dbg !5281
  %10 = tail call i32 @hal_pinmux_set_function(i32 noundef 30, i8 noundef zeroext 7) #15, !dbg !5282
  %11 = tail call i32 @hal_pinmux_set_function(i32 noundef 29, i8 noundef zeroext 7) #15, !dbg !5283
  %12 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 2, !dbg !5284
  store i32 1, i32* %12, align 4, !dbg !5285
  %13 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 1, !dbg !5286
  store i32 0, i32* %13, align 4, !dbg !5287
  %14 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 0, !dbg !5288
  store i32 1000000, i32* %14, align 4, !dbg !5289
  %15 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 4, !dbg !5290
  store i32 0, i32* %15, align 4, !dbg !5291
  %16 = getelementptr inbounds %struct.hal_spi_master_config_t, %struct.hal_spi_master_config_t* %1, i32 0, i32 3, !dbg !5292
  store i32 0, i32* %16, align 4, !dbg !5293
  %17 = call i32 @hal_spi_master_init(i32 noundef 0, %struct.hal_spi_master_config_t* noundef nonnull %1) #15, !dbg !5294
  %18 = icmp eq i32 %17, 0, !dbg !5296
  br i1 %18, label %19, label %28, !dbg !5297

19:                                               ; preds = %0
  %20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #15, !dbg !5298
  call fastcc void @spim_send_data_to_spis() #14, !dbg !5300
  call fastcc void @spim_receive_data_from_spis() #14, !dbg !5301
  %21 = call i32 @hal_spi_master_deinit(i32 noundef 0) #15, !dbg !5302
  %22 = icmp eq i32 %21, 0, !dbg !5304
  br i1 %22, label %23, label %28, !dbg !5305

23:                                               ; preds = %19
  %24 = call i32 @hal_gpio_deinit(i32 noundef 32) #15, !dbg !5306
  %25 = call i32 @hal_gpio_deinit(i32 noundef 31) #15, !dbg !5307
  %26 = call i32 @hal_gpio_deinit(i32 noundef 30) #15, !dbg !5308
  %27 = call i32 @hal_gpio_deinit(i32 noundef 29) #15, !dbg !5309
  br label %28, !dbg !5310

28:                                               ; preds = %19, %0, %23
  %29 = phi i8* [ getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i32 0, i32 0), %23 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), %0 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), %19 ]
  %30 = call i32 (i8*, ...) @printf(i8* noundef %29) #15, !dbg !5311
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #16, !dbg !5310
  ret void, !dbg !5310
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_send_data_to_spis() unnamed_addr #3 !dbg !5312 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0)) #15, !dbg !5315
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5316
  tail call fastcc void @spim_write_slave_address(i32 noundef 536871424) #14, !dbg !5317
  tail call fastcc void @spim_write_slave_data(i32 noundef 85) #14, !dbg !5318
  tail call fastcc void @spim_write_slave_command(i1 noundef zeroext false) #14, !dbg !5319
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5320
  tail call fastcc void @spim_active_slave_irq() #14, !dbg !5321
  tail call fastcc void @spim_wait_slave_ack() #14, !dbg !5322
  tail call fastcc void @spim_write_slave_address(i32 noundef 536871432) #14, !dbg !5323
  call void @llvm.dbg.value(metadata i32 0, metadata !5314, metadata !DIExpression()), !dbg !5324
  br label %2, !dbg !5325

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %4, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !5314, metadata !DIExpression()), !dbg !5324
  tail call fastcc void @spim_write_slave_data(i32 noundef 19088743) #14, !dbg !5327
  tail call fastcc void @spim_write_slave_command(i1 noundef zeroext false) #14, !dbg !5330
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5331
  %4 = add nuw nsw i32 %3, 1, !dbg !5332
  call void @llvm.dbg.value(metadata i32 %4, metadata !5314, metadata !DIExpression()), !dbg !5324
  %5 = icmp eq i32 %4, 5120, !dbg !5333
  br i1 %5, label %6, label %2, !dbg !5325, !llvm.loop !5334

6:                                                ; preds = %2
  tail call fastcc void @spim_write_slave_address(i32 noundef 536871424) #14, !dbg !5336
  tail call fastcc void @spim_write_slave_data(i32 noundef 170) #14, !dbg !5337
  tail call fastcc void @spim_write_slave_command(i1 noundef zeroext false) #14, !dbg !5338
  tail call fastcc void @spim_active_slave_irq() #14, !dbg !5339
  tail call fastcc void @spim_wait_slave_ack() #14, !dbg !5340
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8.25, i32 0, i32 0)) #15, !dbg !5341
  ret void, !dbg !5342
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_receive_data_from_spis() unnamed_addr #3 !dbg !5343 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0)) #15, !dbg !5347
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5348
  tail call fastcc void @spim_write_slave_address(i32 noundef 536871424) #14, !dbg !5349
  tail call fastcc void @spim_write_slave_data(i32 noundef 10) #14, !dbg !5350
  tail call fastcc void @spim_write_slave_command(i1 noundef zeroext false) #14, !dbg !5351
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5352
  tail call fastcc void @spim_active_slave_irq() #14, !dbg !5353
  tail call fastcc void @spim_wait_slave_ack() #14, !dbg !5354
  tail call fastcc void @spim_write_slave_address(i32 noundef 536871432) #14, !dbg !5355
  call void @llvm.dbg.value(metadata i32 0, metadata !5345, metadata !DIExpression()), !dbg !5356
  br label %2, !dbg !5357

2:                                                ; preds = %0, %8
  %3 = phi i32 [ 0, %0 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !5345, metadata !DIExpression()), !dbg !5356
  tail call fastcc void @spim_write_slave_command(i1 noundef zeroext true) #14, !dbg !5359
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5362
  %4 = tail call fastcc i32 @spim_read_slave_data() #14, !dbg !5363
  call void @llvm.dbg.value(metadata i32 %4, metadata !5346, metadata !DIExpression()), !dbg !5356
  %5 = icmp eq i32 %4, -1985229329, !dbg !5364
  br i1 %5, label %8, label %6, !dbg !5366

6:                                                ; preds = %2
  %7 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0), i32 noundef %3, i32 noundef %4) #15, !dbg !5367
  br label %13, !dbg !5369

8:                                                ; preds = %2
  %9 = add nuw nsw i32 %3, 1, !dbg !5370
  call void @llvm.dbg.value(metadata i32 %9, metadata !5345, metadata !DIExpression()), !dbg !5356
  %10 = icmp eq i32 %9, 5120, !dbg !5371
  br i1 %10, label %11, label %2, !dbg !5357, !llvm.loop !5372

11:                                               ; preds = %8
  tail call fastcc void @spim_write_slave_address(i32 noundef 536871424) #14, !dbg !5374
  tail call fastcc void @spim_write_slave_data(i32 noundef 160) #14, !dbg !5375
  tail call fastcc void @spim_write_slave_command(i1 noundef zeroext false) #14, !dbg !5376
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5377
  tail call fastcc void @spim_active_slave_irq() #14, !dbg !5378
  %12 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0)) #15, !dbg !5379
  br label %13, !dbg !5380

13:                                               ; preds = %11, %6
  ret void, !dbg !5380
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_wait_slave_idle() unnamed_addr #3 !dbg !5381 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca i32, align 4
  %3 = alloca %struct.hal_spi_master_send_and_receive_config_t, align 4
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 0, !dbg !5394
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16, !dbg !5394
  call void @llvm.dbg.declare(metadata [4 x i8]* %1, metadata !5383, metadata !DIExpression()), !dbg !5395
  %5 = bitcast i32* %2 to i8*, !dbg !5396
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5396
  %6 = bitcast %struct.hal_spi_master_send_and_receive_config_t* %3 to i8*, !dbg !5397
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #16, !dbg !5397
  call void @llvm.dbg.declare(metadata %struct.hal_spi_master_send_and_receive_config_t* %3, metadata !5386, metadata !DIExpression()), !dbg !5398
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %3, i32 0, i32 1
  %10 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %3, i32 0, i32 2
  %11 = bitcast i8** %10 to i32**
  %12 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %3, i32 0, i32 3
  br label %13, !dbg !5399

13:                                               ; preds = %13, %0
  store i8 0, i8* %4, align 1, !dbg !5400
  store i8 16, i8* %7, align 1, !dbg !5402
  store i8* %4, i8** %8, align 4, !dbg !5403
  store i32 2, i32* %9, align 4, !dbg !5404
  store i32* %2, i32** %11, align 4, !dbg !5405
  store i32 4, i32* %12, align 4, !dbg !5406
  %14 = call i32 @hal_spi_master_send_and_receive_polling(i32 noundef 0, %struct.hal_spi_master_send_and_receive_config_t* noundef nonnull %3) #15, !dbg !5407
  %15 = load i32, i32* %2, align 4, !dbg !5408
  call void @llvm.dbg.value(metadata i32 %15, metadata !5385, metadata !DIExpression()), !dbg !5409
  %16 = and i32 %15, 16777216, !dbg !5410
  %17 = icmp eq i32 %16, 0, !dbg !5411
  br i1 %17, label %18, label %13, !dbg !5411, !llvm.loop !5412

18:                                               ; preds = %13
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #16, !dbg !5414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5414
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16, !dbg !5414
  ret void, !dbg !5414
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_write_slave_address(i32 noundef %0) unnamed_addr #3 !dbg !5415 {
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5417, metadata !DIExpression()), !dbg !5420
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 0, !dbg !5421
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16, !dbg !5421
  call void @llvm.dbg.declare(metadata [4 x i8]* %2, metadata !5418, metadata !DIExpression()), !dbg !5422
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0, !dbg !5423
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5423
  call void @llvm.dbg.declare(metadata [4 x i8]* %3, metadata !5419, metadata !DIExpression()), !dbg !5424
  store i8 -128, i8* %4, align 1, !dbg !5425
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 1, !dbg !5426
  store i8 8, i8* %6, align 1, !dbg !5427
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 2, !dbg !5428
  store i8 2, i8* %7, align 1, !dbg !5429
  %8 = trunc i32 %0 to i8, !dbg !5430
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 3, !dbg !5431
  store i8 %8, i8* %9, align 1, !dbg !5432
  store i8 -128, i8* %5, align 1, !dbg !5433
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 1, !dbg !5434
  store i8 10, i8* %10, align 1, !dbg !5435
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 2, !dbg !5436
  store i8 32, i8* %11, align 1, !dbg !5437
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 3, !dbg !5438
  store i8 0, i8* %12, align 1, !dbg !5439
  %13 = call i32 @hal_spi_master_send_polling(i32 noundef 0, i8* noundef nonnull %4, i32 noundef 4) #15, !dbg !5440
  %14 = call i32 @hal_spi_master_send_polling(i32 noundef 0, i8* noundef nonnull %5, i32 noundef 4) #15, !dbg !5441
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5442
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16, !dbg !5442
  ret void, !dbg !5442
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_write_slave_data(i32 noundef %0) unnamed_addr #3 !dbg !5443 {
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5445, metadata !DIExpression()), !dbg !5448
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 0, !dbg !5449
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16, !dbg !5449
  call void @llvm.dbg.declare(metadata [4 x i8]* %2, metadata !5446, metadata !DIExpression()), !dbg !5450
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 0, !dbg !5451
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5451
  call void @llvm.dbg.declare(metadata [4 x i8]* %3, metadata !5447, metadata !DIExpression()), !dbg !5452
  store i8 -128, i8* %4, align 1, !dbg !5453
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 1, !dbg !5454
  store i8 4, i8* %6, align 1, !dbg !5455
  %7 = lshr i32 %0, 8, !dbg !5456
  %8 = trunc i32 %7 to i8, !dbg !5457
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 2, !dbg !5458
  store i8 %8, i8* %9, align 1, !dbg !5459
  %10 = trunc i32 %0 to i8, !dbg !5460
  %11 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 3, !dbg !5461
  store i8 %10, i8* %11, align 1, !dbg !5462
  store i8 -128, i8* %5, align 1, !dbg !5463
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 1, !dbg !5464
  store i8 6, i8* %12, align 1, !dbg !5465
  %13 = lshr i32 %0, 24, !dbg !5466
  %14 = trunc i32 %13 to i8, !dbg !5467
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 2, !dbg !5468
  store i8 %14, i8* %15, align 1, !dbg !5469
  %16 = lshr i32 %0, 16, !dbg !5470
  %17 = trunc i32 %16 to i8, !dbg !5471
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i32 0, i32 3, !dbg !5472
  store i8 %17, i8* %18, align 1, !dbg !5473
  %19 = call i32 @hal_spi_master_send_polling(i32 noundef 0, i8* noundef nonnull %4, i32 noundef 4) #15, !dbg !5474
  %20 = call i32 @hal_spi_master_send_polling(i32 noundef 0, i8* noundef nonnull %5, i32 noundef 4) #15, !dbg !5475
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !5476
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16, !dbg !5476
  ret void, !dbg !5476
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_write_slave_command(i1 noundef zeroext %0) unnamed_addr #3 !dbg !5477 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata i1 %0, metadata !5481, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5483
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 0, !dbg !5484
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !5484
  call void @llvm.dbg.declare(metadata [4 x i8]* %2, metadata !5482, metadata !DIExpression()), !dbg !5485
  store i8 -128, i8* %3, align 1, !dbg !5486
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 1, !dbg !5487
  store i8 12, i8* %4, align 1, !dbg !5488
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 2, !dbg !5489
  store i8 0, i8* %5, align 1, !dbg !5490
  %6 = select i1 %0, i8 4, i8 5, !dbg !5491
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i32 0, i32 3, !dbg !5492
  store i8 %6, i8* %7, align 1, !dbg !5495
  %8 = call i32 @hal_spi_master_send_polling(i32 noundef 0, i8* noundef nonnull %3, i32 noundef 4) #15, !dbg !5496
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !5497
  ret void, !dbg !5497
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_active_slave_irq() unnamed_addr #3 !dbg !5498 {
  %1 = alloca [4 x i8], align 1
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 0, !dbg !5501
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #16, !dbg !5501
  call void @llvm.dbg.declare(metadata [4 x i8]* %1, metadata !5500, metadata !DIExpression()), !dbg !5502
  store i8 -128, i8* %2, align 1, !dbg !5503
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 1, !dbg !5504
  store i8 20, i8* %3, align 1, !dbg !5505
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 2, !dbg !5506
  store i8 0, i8* %4, align 1, !dbg !5507
  %5 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 3, !dbg !5508
  store i8 1, i8* %5, align 1, !dbg !5509
  %6 = call i32 @hal_spi_master_send_polling(i32 noundef 0, i8* noundef nonnull %2, i32 noundef 4) #15, !dbg !5510
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #16, !dbg !5511
  ret void, !dbg !5511
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spim_wait_slave_ack() unnamed_addr #3 !dbg !5512 {
  br label %1, !dbg !5515

1:                                                ; preds = %1, %0
  tail call fastcc void @spim_write_slave_address(i32 noundef 536871428) #14, !dbg !5516
  tail call fastcc void @spim_write_slave_command(i1 noundef zeroext true) #14, !dbg !5518
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5519
  %2 = tail call fastcc i32 @spim_read_slave_data() #14, !dbg !5520
  call void @llvm.dbg.value(metadata i32 %2, metadata !5514, metadata !DIExpression()), !dbg !5521
  %3 = icmp eq i32 %2, 90, !dbg !5522
  br i1 %3, label %4, label %1, !dbg !5523, !llvm.loop !5524

4:                                                ; preds = %1
  tail call fastcc void @spim_write_slave_address(i32 noundef 536871428) #14, !dbg !5526
  tail call fastcc void @spim_write_slave_data(i32 noundef 0) #14, !dbg !5527
  tail call fastcc void @spim_write_slave_command(i1 noundef zeroext false) #14, !dbg !5528
  tail call fastcc void @spim_wait_slave_idle() #14, !dbg !5529
  ret void, !dbg !5530
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @spim_read_slave_data() unnamed_addr #3 !dbg !5531 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca %struct.hal_spi_master_send_and_receive_config_t, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 0, !dbg !5537
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #16, !dbg !5537
  call void @llvm.dbg.declare(metadata [4 x i8]* %1, metadata !5533, metadata !DIExpression()), !dbg !5538
  %5 = bitcast %struct.hal_spi_master_send_and_receive_config_t* %2 to i8*, !dbg !5539
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #16, !dbg !5539
  call void @llvm.dbg.declare(metadata %struct.hal_spi_master_send_and_receive_config_t* %2, metadata !5534, metadata !DIExpression()), !dbg !5540
  %6 = bitcast i32* %3 to i8*, !dbg !5541
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5541
  store i8 0, i8* %4, align 1, !dbg !5542
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i32 0, i32 1, !dbg !5543
  store i8 0, i8* %7, align 1, !dbg !5544
  %8 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %2, i32 0, i32 0, !dbg !5545
  store i8* %4, i8** %8, align 4, !dbg !5546
  %9 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %2, i32 0, i32 1, !dbg !5547
  store i32 2, i32* %9, align 4, !dbg !5548
  %10 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %2, i32 0, i32 2, !dbg !5549
  %11 = bitcast i8** %10 to i32**, !dbg !5550
  store i32* %3, i32** %11, align 4, !dbg !5550
  %12 = getelementptr inbounds %struct.hal_spi_master_send_and_receive_config_t, %struct.hal_spi_master_send_and_receive_config_t* %2, i32 0, i32 3, !dbg !5551
  store i32 4, i32* %12, align 4, !dbg !5552
  %13 = call i32 @hal_spi_master_send_and_receive_polling(i32 noundef 0, %struct.hal_spi_master_send_and_receive_config_t* noundef nonnull %2) #15, !dbg !5553
  %14 = load i32, i32* %3, align 4, !dbg !5554
  call void @llvm.dbg.value(metadata i32 %14, metadata !5536, metadata !DIExpression()), !dbg !5555
  %15 = lshr i32 %14, 24, !dbg !5556
  call void @llvm.dbg.value(metadata i32 %15, metadata !5535, metadata !DIExpression()), !dbg !5555
  %16 = lshr i32 %14, 8, !dbg !5557
  %17 = and i32 %16, 65280, !dbg !5558
  %18 = or i32 %17, %15, !dbg !5559
  call void @llvm.dbg.value(metadata i32 %18, metadata !5535, metadata !DIExpression()), !dbg !5555
  store i8 0, i8* %4, align 1, !dbg !5560
  store i8 2, i8* %7, align 1, !dbg !5561
  store i8* %4, i8** %8, align 4, !dbg !5562
  store i32 2, i32* %9, align 4, !dbg !5563
  store i32* %3, i32** %11, align 4, !dbg !5564
  store i32 4, i32* %12, align 4, !dbg !5565
  %19 = call i32 @hal_spi_master_send_and_receive_polling(i32 noundef 0, %struct.hal_spi_master_send_and_receive_config_t* noundef nonnull %2) #15, !dbg !5566
  %20 = load i32, i32* %3, align 4, !dbg !5567
  call void @llvm.dbg.value(metadata i32 %20, metadata !5536, metadata !DIExpression()), !dbg !5555
  %21 = lshr i32 %20, 8, !dbg !5568
  %22 = and i32 %21, 16711680, !dbg !5569
  %23 = or i32 %18, %22, !dbg !5570
  call void @llvm.dbg.value(metadata i32 %23, metadata !5535, metadata !DIExpression()), !dbg !5555
  %24 = shl i32 %20, 8, !dbg !5571
  %25 = and i32 %24, -16777216, !dbg !5572
  %26 = or i32 %23, %25, !dbg !5573
  call void @llvm.dbg.value(metadata i32 %26, metadata !5535, metadata !DIExpression()), !dbg !5555
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !5574
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #16, !dbg !5574
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #16, !dbg !5574
  ret i32 %26, !dbg !5575
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !5576 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5586
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #16, !dbg !5586
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5578, metadata !DIExpression()), !dbg !5587
  %3 = tail call i32 @hal_gpio_init(i32 noundef 2) #15, !dbg !5588
  %4 = tail call i32 @hal_gpio_init(i32 noundef 3) #15, !dbg !5589
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #15, !dbg !5590
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #15, !dbg !5591
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5592
  store i32 9, i32* %7, align 4, !dbg !5593
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5594
  store i32 3, i32* %8, align 4, !dbg !5595
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5596
  store i32 0, i32* %9, align 4, !dbg !5597
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5598
  store i32 0, i32* %10, align 4, !dbg !5599
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #15, !dbg !5600
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #16, !dbg !5601
  ret void, !dbg !5601
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !5602 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5604, metadata !DIExpression()), !dbg !5606
  %2 = add i32 %0, -1, !dbg !5607
  %3 = icmp ugt i32 %2, 16777215, !dbg !5609
  br i1 %3, label %8, label %4, !dbg !5610

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5611
  call void @llvm.dbg.value(metadata i32 %5, metadata !5605, metadata !DIExpression()), !dbg !5606
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5612
  %7 = and i32 %6, -4, !dbg !5612
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5612
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5613
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5614
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5615
  br label %8, !dbg !5616

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5606
  ret i32 %9, !dbg !5617
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !5618 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5619
  ret void, !dbg !5620
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !5621 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5622
  ret i32 %1, !dbg !5623
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !5624 {
  %1 = tail call i32 @top_mcu_freq_get() #15, !dbg !5625
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5626
  ret void, !dbg !5627
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !5628 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5629
  %2 = or i32 %1, 15728640, !dbg !5629
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5629
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5630
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5631
  %4 = or i32 %3, 458752, !dbg !5631
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5631
  ret void, !dbg !5632
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !5633 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5634
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5635
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5636
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5637
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5638
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5639
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5640
  ret void, !dbg !5641
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #10 !dbg !5642 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5644, metadata !DIExpression()), !dbg !5645
  ret i32 0, !dbg !5646
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #10 !dbg !5647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5697, metadata !DIExpression()), !dbg !5699
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5698, metadata !DIExpression()), !dbg !5699
  ret i32 0, !dbg !5700
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #10 !dbg !5701 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5703, metadata !DIExpression()), !dbg !5704
  ret i32 1, !dbg !5705
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5706 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5710, metadata !DIExpression()), !dbg !5713
  call void @llvm.dbg.value(metadata i32 %1, metadata !5711, metadata !DIExpression()), !dbg !5713
  call void @llvm.dbg.value(metadata i32 %2, metadata !5712, metadata !DIExpression()), !dbg !5713
  ret i32 0, !dbg !5714
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5715 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5719, metadata !DIExpression()), !dbg !5722
  call void @llvm.dbg.value(metadata i32 %1, metadata !5720, metadata !DIExpression()), !dbg !5722
  call void @llvm.dbg.value(metadata i32 %2, metadata !5721, metadata !DIExpression()), !dbg !5722
  ret i32 -1, !dbg !5723
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5724 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5728, metadata !DIExpression()), !dbg !5731
  call void @llvm.dbg.value(metadata i8* %1, metadata !5729, metadata !DIExpression()), !dbg !5731
  call void @llvm.dbg.value(metadata i32 %2, metadata !5730, metadata !DIExpression()), !dbg !5731
  ret i32 0, !dbg !5732
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5733 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5735, metadata !DIExpression()), !dbg !5739
  call void @llvm.dbg.value(metadata i8* %1, metadata !5736, metadata !DIExpression()), !dbg !5739
  call void @llvm.dbg.value(metadata i32 %2, metadata !5737, metadata !DIExpression()), !dbg !5739
  call void @llvm.dbg.value(metadata i32 0, metadata !5738, metadata !DIExpression()), !dbg !5739
  %4 = icmp sgt i32 %2, 0, !dbg !5740
  br i1 %4, label %5, label %14, !dbg !5743

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5738, metadata !DIExpression()), !dbg !5739
  call void @llvm.dbg.value(metadata i8* %7, metadata !5736, metadata !DIExpression()), !dbg !5739
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5744
  call void @llvm.dbg.value(metadata i8* %8, metadata !5736, metadata !DIExpression()), !dbg !5739
  %9 = load i8, i8* %7, align 1, !dbg !5746
  %10 = zext i8 %9 to i32, !dbg !5746
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #15, !dbg !5747
  %12 = add nuw nsw i32 %6, 1, !dbg !5748
  call void @llvm.dbg.value(metadata i32 %12, metadata !5738, metadata !DIExpression()), !dbg !5739
  %13 = icmp eq i32 %12, %2, !dbg !5740
  br i1 %13, label %14, label %5, !dbg !5743, !llvm.loop !5749

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5751
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !691 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !893, metadata !DIExpression()), !dbg !5752
  call void @llvm.dbg.value(metadata i32 %1, metadata !894, metadata !DIExpression()), !dbg !5752
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #16, !dbg !5753, !srcloc !5754
  call void @llvm.dbg.value(metadata i8* %3, metadata !896, metadata !DIExpression()), !dbg !5752
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5755
  %5 = icmp eq i8* %4, null, !dbg !5757
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5758
  call void @llvm.dbg.value(metadata i8* %6, metadata !895, metadata !DIExpression()), !dbg !5752
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5759
  %8 = icmp ult i8* %3, %7, !dbg !5761
  %9 = xor i1 %8, true, !dbg !5762
  %10 = or i1 %5, %9, !dbg !5762
  br i1 %10, label %11, label %13, !dbg !5762

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5763
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5762
  br label %13, !dbg !5762

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5763
  ret i8* %14, !dbg !5762
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !5764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5766, metadata !DIExpression()), !dbg !5767
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)) #15, !dbg !5768
  br label %3, !dbg !5769

3:                                                ; preds = %1, %3
  br label %3, !dbg !5769, !llvm.loop !5770
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5776, metadata !DIExpression()), !dbg !5778
  call void @llvm.dbg.value(metadata i32 %1, metadata !5777, metadata !DIExpression()), !dbg !5778
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.33, i32 0, i32 0), i32 noundef %1) #15, !dbg !5779
  ret i32 -1, !dbg !5780
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5781 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.34, i32 0, i32 0)) #15, !dbg !5786
  ret i32 0, !dbg !5787
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
!llvm.ident = !{!1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078}
!llvm.module.flags = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "halspim_isr", scope: !2, file: !3, line: 51, type: !78, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !77, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_spim.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!4 = !{!5, !51}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !6, line: 47, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!52 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!79 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_spim.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "gpio_bakup_table", scope: !85, file: !86, line: 62, type: !131, isLocal: true, isDefinition: true)
!85 = distinct !DICompileUnit(language: DW_LANG_C99, file: !86, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !87, retainedTypes: !129, globals: !130, splitDebugInlining: false, nameTableKind: None)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!87 = !{!88, !119, !124}
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 55, baseType: !53, size: 32, elements: !90)
!89 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!120 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!121 = !{!122, !123}
!122 = !DIEnumerator(name: "eDirection_IN", value: 0)
!123 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 1209, baseType: !53, size: 32, elements: !126)
!125 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!142 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/spim.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!143 = !{!144, !149}
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 217, baseType: !53, size: 32, elements: !146)
!145 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!196 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!197 = !{!198, !64, !71, !62}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !53)
!200 = !{!193, !201}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !195, file: !196, line: 44, type: !73, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !205, file: !206, line: 54, type: !73, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !207, retainedTypes: !231, globals: !238, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!207 = !{!208, !214}
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !209, line: 71, baseType: !53, size: 32, elements: !210)
!209 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!210 = !{!211, !212, !213}
!211 = !DIEnumerator(name: "UART_PORT0", value: 0)
!212 = !DIEnumerator(name: "UART_PORT1", value: 1)
!213 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !215, line: 129, baseType: !53, size: 32, elements: !216)
!215 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!242 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!243 = !{!244, !255, !274, !281}
!244 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !245, line: 163, baseType: !7, size: 32, elements: !246)
!245 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!282 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!293 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!326 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!327 = !{!328, !5}
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !329, line: 152, baseType: !7, size: 32, elements: !330)
!329 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!341 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!427 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_spi_master.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!428 = !{!429, !437, !442, !447, !451, !455, !144, !459, !463}
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !430, line: 550, baseType: !7, size: 32, elements: !431)
!430 = !DIFile(filename: "../../../../../driver/chip/inc/hal_spi_master.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!431 = !{!432, !433, !434, !435, !436}
!432 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR", value: -4)
!433 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR_BUSY", value: -3)
!434 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_ERROR_PORT", value: -2)
!435 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_INVALID_PARAMETER", value: -1)
!436 = !DIEnumerator(name: "HAL_SPI_MASTER_STATUS_OK", value: 0)
!437 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 459, baseType: !53, size: 32, elements: !439)
!438 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!523 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!524 = !{!525, !533, !538, !554, !560, !564, !208, !214, !569}
!525 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !526, line: 345, baseType: !7, size: 32, elements: !527)
!526 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!632 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_master_to_slave/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!692 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!889 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!900 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!901 = !{!897, !902, !908}
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !899, file: !904, line: 5, type: !905, isLocal: false, isDefinition: true)
!904 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 88, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 11)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !899, file: !904, line: 6, type: !905, isLocal: false, isDefinition: true)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 248, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 31)
!913 = distinct !DICompileUnit(language: DW_LANG_C99, file: !914, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !915, retainedTypes: !916, splitDebugInlining: false, nameTableKind: None)
!914 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!915 = !{!124}
!916 = !{!65, !67}
!917 = distinct !DICompileUnit(language: DW_LANG_C99, file: !918, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !919, retainedTypes: !997, splitDebugInlining: false, nameTableKind: None)
!918 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!919 = !{!920}
!920 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !921, line: 150, baseType: !53, size: 32, elements: !922)
!921 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!999 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!1044 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!1045 = !{!88, !920}
!1046 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1047, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1047 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!1048 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1049, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1050, retainedTypes: !1069, splitDebugInlining: false, nameTableKind: None)
!1049 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
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
!1074 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1075, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1076, retainedTypes: !1077, splitDebugInlining: false, nameTableKind: None)
!1075 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_master_to_slave/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!1076 = !{!533, !538, !554, !560, !564, !463, !442, !447, !451, !455, !429, !437}
!1077 = !{!162, !7, !53}
!1078 = !{!"Ubuntu clang version 14.0.6"}
!1079 = !{i32 7, !"Dwarf Version", i32 2}
!1080 = !{i32 2, !"Debug Info Version", i32 3}
!1081 = !{i32 1, !"wchar_size", i32 4}
!1082 = !{i32 1, !"min_enum_size", i32 4}
!1083 = !{i32 1, !"branch-target-enforcement", i32 0}
!1084 = !{i32 1, !"sign-return-address", i32 0}
!1085 = !{i32 1, !"sign-return-address-all", i32 0}
!1086 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!1087 = !{i32 7, !"frame-pointer", i32 2}
!1088 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !914, file: !914, line: 54, type: !1089, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!170, !64, !69}
!1091 = !{!1092, !1093, !1094, !1096}
!1092 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1088, file: !914, line: 54, type: !64)
!1093 = !DILocalVariable(name: "outEnable", arg: 2, scope: !1088, file: !914, line: 54, type: !69)
!1094 = !DILocalVariable(name: "no", scope: !1088, file: !914, line: 57, type: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !52, line: 60, baseType: !235)
!1096 = !DILocalVariable(name: "remainder", scope: !1088, file: !914, line: 58, type: !1095)
!1097 = !DILocation(line: 0, scope: !1088)
!1098 = !DILocation(line: 59, column: 19, scope: !1088)
!1099 = !DILocation(line: 60, column: 17, scope: !1088)
!1100 = !DILocation(line: 61, column: 5, scope: !1088)
!1101 = !DILocation(line: 65, column: 27, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !914, line: 65, column: 17)
!1103 = distinct !DILexicalBlock(scope: !1088, file: !914, line: 61, column: 17)
!1104 = !DILocation(line: 0, scope: !1102)
!1105 = !DILocation(line: 65, column: 17, scope: !1103)
!1106 = !DILocation(line: 66, column: 21, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !914, line: 65, column: 33)
!1108 = !DILocation(line: 67, column: 73, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !914, line: 66, column: 38)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !914, line: 66, column: 21)
!1111 = !DILocation(line: 67, column: 69, scope: !1109)
!1112 = !DILocation(line: 67, column: 66, scope: !1109)
!1113 = !DILocation(line: 68, column: 17, scope: !1109)
!1114 = !DILocation(line: 68, column: 28, scope: !1110)
!1115 = !DILocation(line: 69, column: 77, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !914, line: 68, column: 45)
!1117 = distinct !DILexicalBlock(scope: !1110, file: !914, line: 68, column: 28)
!1118 = !DILocation(line: 70, column: 77, scope: !1116)
!1119 = !DILocation(line: 71, column: 17, scope: !1116)
!1120 = !DILocation(line: 72, column: 77, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !914, line: 71, column: 45)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !914, line: 71, column: 28)
!1123 = !DILocation(line: 73, column: 77, scope: !1121)
!1124 = !DILocation(line: 74, column: 17, scope: !1121)
!1125 = !DILocation(line: 75, column: 79, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !914, line: 74, column: 45)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !914, line: 74, column: 28)
!1128 = !DILocation(line: 76, column: 79, scope: !1126)
!1129 = !DILocation(line: 77, column: 17, scope: !1126)
!1130 = !DILocation(line: 78, column: 79, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !914, line: 77, column: 45)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !914, line: 77, column: 28)
!1133 = !DILocation(line: 79, column: 79, scope: !1131)
!1134 = !DILocation(line: 80, column: 17, scope: !1131)
!1135 = !DILocation(line: 81, column: 79, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !914, line: 80, column: 45)
!1137 = distinct !DILexicalBlock(scope: !1132, file: !914, line: 80, column: 28)
!1138 = !DILocation(line: 82, column: 79, scope: !1136)
!1139 = !DILocation(line: 83, column: 17, scope: !1136)
!1140 = !DILocation(line: 85, column: 17, scope: !1107)
!1141 = !DILocation(line: 86, column: 13, scope: !1107)
!1142 = !DILocation(line: 88, column: 21, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1102, file: !914, line: 86, column: 20)
!1144 = !DILocation(line: 89, column: 72, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !914, line: 88, column: 38)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !914, line: 88, column: 21)
!1147 = !DILocation(line: 89, column: 66, scope: !1145)
!1148 = !DILocation(line: 90, column: 17, scope: !1145)
!1149 = !DILocation(line: 90, column: 28, scope: !1146)
!1150 = !DILocation(line: 91, column: 77, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !914, line: 90, column: 45)
!1152 = distinct !DILexicalBlock(scope: !1146, file: !914, line: 90, column: 28)
!1153 = !DILocation(line: 92, column: 17, scope: !1151)
!1154 = !DILocation(line: 93, column: 77, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !914, line: 92, column: 45)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !914, line: 92, column: 28)
!1157 = !DILocation(line: 94, column: 17, scope: !1155)
!1158 = !DILocation(line: 95, column: 79, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !914, line: 94, column: 45)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !914, line: 94, column: 28)
!1161 = !DILocation(line: 96, column: 17, scope: !1159)
!1162 = !DILocation(line: 97, column: 79, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !914, line: 96, column: 45)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !914, line: 96, column: 28)
!1165 = !DILocation(line: 98, column: 17, scope: !1163)
!1166 = !DILocation(line: 99, column: 79, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !914, line: 98, column: 45)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !914, line: 98, column: 28)
!1169 = !DILocation(line: 100, column: 17, scope: !1167)
!1170 = !DILocation(line: 103, column: 17, scope: !1143)
!1171 = !DILocation(line: 109, column: 27, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1103, file: !914, line: 109, column: 17)
!1173 = !DILocation(line: 0, scope: !1172)
!1174 = !DILocation(line: 109, column: 17, scope: !1103)
!1175 = !DILocation(line: 110, column: 21, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1172, file: !914, line: 109, column: 33)
!1177 = !DILocation(line: 111, column: 73, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !914, line: 110, column: 36)
!1179 = distinct !DILexicalBlock(scope: !1176, file: !914, line: 110, column: 21)
!1180 = !DILocation(line: 111, column: 69, scope: !1178)
!1181 = !DILocation(line: 111, column: 66, scope: !1178)
!1182 = !DILocation(line: 112, column: 17, scope: !1178)
!1183 = !DILocation(line: 113, column: 79, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !914, line: 112, column: 24)
!1185 = !DILocation(line: 114, column: 79, scope: !1184)
!1186 = !DILocation(line: 117, column: 17, scope: !1176)
!1187 = !DILocation(line: 118, column: 13, scope: !1176)
!1188 = !DILocation(line: 120, column: 21, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1172, file: !914, line: 118, column: 20)
!1190 = !DILocation(line: 121, column: 72, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !914, line: 120, column: 36)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !914, line: 120, column: 21)
!1193 = !DILocation(line: 121, column: 66, scope: !1191)
!1194 = !DILocation(line: 122, column: 17, scope: !1191)
!1195 = !DILocation(line: 123, column: 79, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !914, line: 122, column: 24)
!1197 = !DILocation(line: 126, column: 17, scope: !1189)
!1198 = !DILocation(line: 133, column: 1, scope: !1088)
!1199 = distinct !DISubprogram(name: "halGPO_Write", scope: !914, file: !914, line: 136, type: !1089, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1200)
!1200 = !{!1201, !1202, !1203, !1204}
!1201 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1199, file: !914, line: 136, type: !64)
!1202 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1199, file: !914, line: 136, type: !69)
!1203 = !DILocalVariable(name: "no", scope: !1199, file: !914, line: 138, type: !1095)
!1204 = !DILocalVariable(name: "remainder", scope: !1199, file: !914, line: 139, type: !1095)
!1205 = !DILocation(line: 0, scope: !1199)
!1206 = !DILocation(line: 140, column: 19, scope: !1199)
!1207 = !DILocation(line: 141, column: 17, scope: !1199)
!1208 = !DILocation(line: 142, column: 5, scope: !1199)
!1209 = !DILocation(line: 145, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !914, line: 145, column: 17)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !914, line: 142, column: 17)
!1212 = !DILocation(line: 0, scope: !1210)
!1213 = !DILocation(line: 145, column: 17, scope: !1211)
!1214 = !DILocation(line: 146, column: 17, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !914, line: 145, column: 29)
!1216 = !DILocation(line: 147, column: 13, scope: !1215)
!1217 = !DILocation(line: 148, column: 17, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1210, file: !914, line: 147, column: 20)
!1219 = !DILocation(line: 153, column: 17, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1211, file: !914, line: 153, column: 17)
!1221 = !DILocation(line: 0, scope: !1220)
!1222 = !DILocation(line: 153, column: 17, scope: !1211)
!1223 = !DILocation(line: 154, column: 17, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !914, line: 153, column: 29)
!1225 = !DILocation(line: 155, column: 13, scope: !1224)
!1226 = !DILocation(line: 156, column: 17, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !914, line: 155, column: 20)
!1228 = !DILocation(line: 163, column: 1, scope: !1199)
!1229 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !914, file: !914, line: 169, type: !1230, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!69, !64}
!1232 = !{!1233, !1234, !1235, !1236}
!1233 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1229, file: !914, line: 169, type: !64)
!1234 = !DILocalVariable(name: "no", scope: !1229, file: !914, line: 171, type: !1095)
!1235 = !DILocalVariable(name: "remainder", scope: !1229, file: !914, line: 172, type: !1095)
!1236 = !DILocalVariable(name: "dout", scope: !1229, file: !914, line: 175, type: !69)
!1237 = !DILocation(line: 0, scope: !1229)
!1238 = !DILocation(line: 173, column: 19, scope: !1229)
!1239 = !DILocation(line: 174, column: 17, scope: !1229)
!1240 = !DILocation(line: 177, column: 5, scope: !1229)
!1241 = !DILocation(line: 183, column: 13, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1229, file: !914, line: 177, column: 17)
!1243 = !DILocation(line: 0, scope: !1242)
!1244 = !DILocation(line: 187, column: 5, scope: !1229)
!1245 = !DILocation(line: 188, column: 1, scope: !1229)
!1246 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !914, file: !914, line: 189, type: !1230, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1247)
!1247 = !{!1248, !1249, !1250, !1251}
!1248 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1246, file: !914, line: 189, type: !64)
!1249 = !DILocalVariable(name: "no", scope: !1246, file: !914, line: 191, type: !1095)
!1250 = !DILocalVariable(name: "remainder", scope: !1246, file: !914, line: 192, type: !1095)
!1251 = !DILocalVariable(name: "din", scope: !1246, file: !914, line: 195, type: !69)
!1252 = !DILocation(line: 0, scope: !1246)
!1253 = !DILocation(line: 193, column: 19, scope: !1246)
!1254 = !DILocation(line: 194, column: 17, scope: !1246)
!1255 = !DILocation(line: 196, column: 5, scope: !1246)
!1256 = !DILocation(line: 203, column: 13, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1246, file: !914, line: 196, column: 17)
!1258 = !DILocation(line: 0, scope: !1257)
!1259 = !DILocation(line: 208, column: 5, scope: !1246)
!1260 = !DILocation(line: 209, column: 1, scope: !1246)
!1261 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !914, file: !914, line: 210, type: !1230, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1262)
!1262 = !{!1263, !1264, !1265, !1266}
!1263 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1261, file: !914, line: 210, type: !64)
!1264 = !DILocalVariable(name: "no", scope: !1261, file: !914, line: 212, type: !1095)
!1265 = !DILocalVariable(name: "remainder", scope: !1261, file: !914, line: 213, type: !1095)
!1266 = !DILocalVariable(name: "outEnable", scope: !1261, file: !914, line: 216, type: !69)
!1267 = !DILocation(line: 0, scope: !1261)
!1268 = !DILocation(line: 214, column: 19, scope: !1261)
!1269 = !DILocation(line: 215, column: 17, scope: !1261)
!1270 = !DILocation(line: 218, column: 5, scope: !1261)
!1271 = !DILocation(line: 224, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1261, file: !914, line: 218, column: 17)
!1273 = !DILocation(line: 0, scope: !1272)
!1274 = !DILocation(line: 228, column: 5, scope: !1261)
!1275 = !DILocation(line: 229, column: 1, scope: !1261)
!1276 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !914, file: !914, line: 232, type: !1277, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1279)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!170, !64}
!1279 = !{!1280, !1281, !1282}
!1280 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1276, file: !914, line: 232, type: !64)
!1281 = !DILocalVariable(name: "no", scope: !1276, file: !914, line: 234, type: !1095)
!1282 = !DILocalVariable(name: "remainder", scope: !1276, file: !914, line: 235, type: !1095)
!1283 = !DILocation(line: 0, scope: !1276)
!1284 = !DILocation(line: 236, column: 19, scope: !1276)
!1285 = !DILocation(line: 237, column: 17, scope: !1276)
!1286 = !DILocation(line: 238, column: 5, scope: !1276)
!1287 = !DILocation(line: 239, column: 5, scope: !1276)
!1288 = !DILocation(line: 241, column: 27, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !914, line: 241, column: 17)
!1290 = distinct !DILexicalBlock(scope: !1276, file: !914, line: 239, column: 17)
!1291 = !DILocation(line: 241, column: 17, scope: !1290)
!1292 = !DILocation(line: 241, column: 17, scope: !1289)
!1293 = !DILocation(line: 242, column: 17, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !914, line: 241, column: 34)
!1295 = !DILocation(line: 243, column: 13, scope: !1294)
!1296 = !DILocation(line: 243, column: 24, scope: !1289)
!1297 = !DILocation(line: 244, column: 73, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !914, line: 243, column: 41)
!1299 = distinct !DILexicalBlock(scope: !1289, file: !914, line: 243, column: 24)
!1300 = !DILocation(line: 245, column: 73, scope: !1298)
!1301 = !DILocation(line: 246, column: 13, scope: !1298)
!1302 = !DILocation(line: 247, column: 73, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !914, line: 246, column: 41)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !914, line: 246, column: 24)
!1305 = !DILocation(line: 248, column: 73, scope: !1303)
!1306 = !DILocation(line: 249, column: 13, scope: !1303)
!1307 = !DILocation(line: 250, column: 75, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !914, line: 249, column: 41)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !914, line: 249, column: 24)
!1310 = !DILocation(line: 251, column: 75, scope: !1308)
!1311 = !DILocation(line: 252, column: 13, scope: !1308)
!1312 = !DILocation(line: 253, column: 75, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !914, line: 252, column: 41)
!1314 = distinct !DILexicalBlock(scope: !1309, file: !914, line: 252, column: 24)
!1315 = !DILocation(line: 254, column: 75, scope: !1313)
!1316 = !DILocation(line: 255, column: 13, scope: !1313)
!1317 = !DILocation(line: 256, column: 75, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !914, line: 255, column: 41)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !914, line: 255, column: 24)
!1320 = !DILocation(line: 257, column: 75, scope: !1318)
!1321 = !DILocation(line: 258, column: 13, scope: !1318)
!1322 = !DILocation(line: 261, column: 18, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1290, file: !914, line: 261, column: 17)
!1324 = !DILocation(line: 261, column: 17, scope: !1290)
!1325 = !DILocation(line: 262, column: 75, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !914, line: 261, column: 29)
!1327 = !DILocation(line: 263, column: 75, scope: !1326)
!1328 = !DILocation(line: 264, column: 13, scope: !1326)
!1329 = !DILocation(line: 265, column: 17, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1323, file: !914, line: 264, column: 20)
!1331 = !DILocation(line: 272, column: 1, scope: !1276)
!1332 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !914, file: !914, line: 359, type: !1277, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1333)
!1333 = !{!1334, !1335, !1336}
!1334 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1332, file: !914, line: 359, type: !64)
!1335 = !DILocalVariable(name: "no", scope: !1332, file: !914, line: 362, type: !1095)
!1336 = !DILocalVariable(name: "remainder", scope: !1332, file: !914, line: 363, type: !1095)
!1337 = !DILocation(line: 0, scope: !1332)
!1338 = !DILocation(line: 364, column: 19, scope: !1332)
!1339 = !DILocation(line: 365, column: 17, scope: !1332)
!1340 = !DILocation(line: 367, column: 5, scope: !1332)
!1341 = !DILocation(line: 369, column: 27, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !914, line: 369, column: 17)
!1343 = distinct !DILexicalBlock(scope: !1332, file: !914, line: 367, column: 17)
!1344 = !DILocation(line: 369, column: 17, scope: !1343)
!1345 = !DILocation(line: 369, column: 17, scope: !1342)
!1346 = !DILocation(line: 370, column: 17, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !914, line: 369, column: 34)
!1348 = !DILocation(line: 371, column: 13, scope: !1347)
!1349 = !DILocation(line: 371, column: 24, scope: !1342)
!1350 = !DILocation(line: 372, column: 73, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !914, line: 371, column: 41)
!1352 = distinct !DILexicalBlock(scope: !1342, file: !914, line: 371, column: 24)
!1353 = !DILocation(line: 373, column: 73, scope: !1351)
!1354 = !DILocation(line: 374, column: 13, scope: !1351)
!1355 = !DILocation(line: 375, column: 73, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !914, line: 374, column: 41)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !914, line: 374, column: 24)
!1358 = !DILocation(line: 376, column: 73, scope: !1356)
!1359 = !DILocation(line: 377, column: 13, scope: !1356)
!1360 = !DILocation(line: 378, column: 75, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !914, line: 377, column: 41)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !914, line: 377, column: 24)
!1363 = !DILocation(line: 379, column: 75, scope: !1361)
!1364 = !DILocation(line: 380, column: 13, scope: !1361)
!1365 = !DILocation(line: 381, column: 75, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !914, line: 380, column: 41)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !914, line: 380, column: 24)
!1368 = !DILocation(line: 382, column: 75, scope: !1366)
!1369 = !DILocation(line: 383, column: 13, scope: !1366)
!1370 = !DILocation(line: 384, column: 75, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !914, line: 383, column: 41)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !914, line: 383, column: 24)
!1373 = !DILocation(line: 385, column: 75, scope: !1371)
!1374 = !DILocation(line: 386, column: 13, scope: !1371)
!1375 = !DILocation(line: 389, column: 18, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1343, file: !914, line: 389, column: 17)
!1377 = !DILocation(line: 389, column: 17, scope: !1343)
!1378 = !DILocation(line: 390, column: 75, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !914, line: 389, column: 29)
!1380 = !DILocation(line: 391, column: 75, scope: !1379)
!1381 = !DILocation(line: 392, column: 13, scope: !1379)
!1382 = !DILocation(line: 393, column: 17, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1376, file: !914, line: 392, column: 20)
!1384 = !DILocation(line: 401, column: 1, scope: !1332)
!1385 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !914, file: !914, line: 274, type: !1277, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1386)
!1386 = !{!1387, !1388, !1389}
!1387 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1385, file: !914, line: 274, type: !64)
!1388 = !DILocalVariable(name: "no", scope: !1385, file: !914, line: 276, type: !1095)
!1389 = !DILocalVariable(name: "remainder", scope: !1385, file: !914, line: 277, type: !1095)
!1390 = !DILocation(line: 0, scope: !1385)
!1391 = !DILocation(line: 278, column: 19, scope: !1385)
!1392 = !DILocation(line: 279, column: 17, scope: !1385)
!1393 = !DILocation(line: 281, column: 5, scope: !1385)
!1394 = !DILocation(line: 283, column: 27, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !914, line: 283, column: 17)
!1396 = distinct !DILexicalBlock(scope: !1385, file: !914, line: 281, column: 17)
!1397 = !DILocation(line: 283, column: 17, scope: !1396)
!1398 = !DILocation(line: 283, column: 17, scope: !1395)
!1399 = !DILocation(line: 284, column: 17, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !914, line: 283, column: 34)
!1401 = !DILocation(line: 285, column: 13, scope: !1400)
!1402 = !DILocation(line: 285, column: 24, scope: !1395)
!1403 = !DILocation(line: 286, column: 73, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !914, line: 285, column: 41)
!1405 = distinct !DILexicalBlock(scope: !1395, file: !914, line: 285, column: 24)
!1406 = !DILocation(line: 287, column: 73, scope: !1404)
!1407 = !DILocation(line: 288, column: 13, scope: !1404)
!1408 = !DILocation(line: 289, column: 73, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !914, line: 288, column: 41)
!1410 = distinct !DILexicalBlock(scope: !1405, file: !914, line: 288, column: 24)
!1411 = !DILocation(line: 290, column: 73, scope: !1409)
!1412 = !DILocation(line: 291, column: 13, scope: !1409)
!1413 = !DILocation(line: 292, column: 75, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !914, line: 291, column: 41)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !914, line: 291, column: 24)
!1416 = !DILocation(line: 293, column: 75, scope: !1414)
!1417 = !DILocation(line: 294, column: 13, scope: !1414)
!1418 = !DILocation(line: 295, column: 75, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !914, line: 294, column: 41)
!1420 = distinct !DILexicalBlock(scope: !1415, file: !914, line: 294, column: 24)
!1421 = !DILocation(line: 296, column: 75, scope: !1419)
!1422 = !DILocation(line: 297, column: 13, scope: !1419)
!1423 = !DILocation(line: 298, column: 75, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !914, line: 297, column: 41)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !914, line: 297, column: 24)
!1426 = !DILocation(line: 299, column: 75, scope: !1424)
!1427 = !DILocation(line: 300, column: 13, scope: !1424)
!1428 = !DILocation(line: 303, column: 18, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1396, file: !914, line: 303, column: 17)
!1430 = !DILocation(line: 303, column: 17, scope: !1396)
!1431 = !DILocation(line: 304, column: 75, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1429, file: !914, line: 303, column: 29)
!1433 = !DILocation(line: 305, column: 75, scope: !1432)
!1434 = !DILocation(line: 306, column: 13, scope: !1432)
!1435 = !DILocation(line: 307, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1429, file: !914, line: 306, column: 20)
!1437 = !DILocation(line: 314, column: 1, scope: !1385)
!1438 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !914, file: !914, line: 316, type: !1277, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1438, file: !914, line: 316, type: !64)
!1441 = !DILocalVariable(name: "no", scope: !1438, file: !914, line: 318, type: !1095)
!1442 = !DILocalVariable(name: "remainder", scope: !1438, file: !914, line: 319, type: !1095)
!1443 = !DILocation(line: 0, scope: !1438)
!1444 = !DILocation(line: 320, column: 19, scope: !1438)
!1445 = !DILocation(line: 321, column: 17, scope: !1438)
!1446 = !DILocation(line: 322, column: 5, scope: !1438)
!1447 = !DILocation(line: 323, column: 5, scope: !1438)
!1448 = !DILocation(line: 325, column: 27, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !914, line: 325, column: 17)
!1450 = distinct !DILexicalBlock(scope: !1438, file: !914, line: 323, column: 17)
!1451 = !DILocation(line: 325, column: 17, scope: !1450)
!1452 = !DILocation(line: 325, column: 17, scope: !1449)
!1453 = !DILocation(line: 326, column: 17, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !914, line: 325, column: 34)
!1455 = !DILocation(line: 327, column: 13, scope: !1454)
!1456 = !DILocation(line: 327, column: 24, scope: !1449)
!1457 = !DILocation(line: 328, column: 73, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !914, line: 327, column: 41)
!1459 = distinct !DILexicalBlock(scope: !1449, file: !914, line: 327, column: 24)
!1460 = !DILocation(line: 329, column: 73, scope: !1458)
!1461 = !DILocation(line: 330, column: 13, scope: !1458)
!1462 = !DILocation(line: 331, column: 73, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !914, line: 330, column: 41)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !914, line: 330, column: 24)
!1465 = !DILocation(line: 332, column: 73, scope: !1463)
!1466 = !DILocation(line: 333, column: 13, scope: !1463)
!1467 = !DILocation(line: 334, column: 75, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !914, line: 333, column: 41)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !914, line: 333, column: 24)
!1470 = !DILocation(line: 335, column: 75, scope: !1468)
!1471 = !DILocation(line: 336, column: 13, scope: !1468)
!1472 = !DILocation(line: 337, column: 75, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !914, line: 336, column: 41)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !914, line: 336, column: 24)
!1475 = !DILocation(line: 338, column: 75, scope: !1473)
!1476 = !DILocation(line: 339, column: 13, scope: !1473)
!1477 = !DILocation(line: 340, column: 75, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !914, line: 339, column: 41)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !914, line: 339, column: 24)
!1480 = !DILocation(line: 341, column: 75, scope: !1478)
!1481 = !DILocation(line: 342, column: 13, scope: !1478)
!1482 = !DILocation(line: 345, column: 18, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1450, file: !914, line: 345, column: 17)
!1484 = !DILocation(line: 345, column: 17, scope: !1450)
!1485 = !DILocation(line: 346, column: 75, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1483, file: !914, line: 345, column: 29)
!1487 = !DILocation(line: 347, column: 75, scope: !1486)
!1488 = !DILocation(line: 348, column: 13, scope: !1486)
!1489 = !DILocation(line: 349, column: 17, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1483, file: !914, line: 348, column: 20)
!1491 = !DILocation(line: 357, column: 1, scope: !1438)
!1492 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !914, file: !914, line: 404, type: !1089, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1493)
!1493 = !{!1494, !1495, !1496, !1497}
!1494 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1492, file: !914, line: 404, type: !64)
!1495 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1492, file: !914, line: 404, type: !69)
!1496 = !DILocalVariable(name: "no", scope: !1492, file: !914, line: 406, type: !1095)
!1497 = !DILocalVariable(name: "remainder", scope: !1492, file: !914, line: 407, type: !1095)
!1498 = !DILocation(line: 0, scope: !1492)
!1499 = !DILocation(line: 408, column: 19, scope: !1492)
!1500 = !DILocation(line: 409, column: 17, scope: !1492)
!1501 = !DILocation(line: 411, column: 5, scope: !1492)
!1502 = !DILocation(line: 413, column: 84, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1492, file: !914, line: 411, column: 17)
!1504 = !DILocation(line: 413, column: 70, scope: !1503)
!1505 = !DILocation(line: 413, column: 64, scope: !1503)
!1506 = !DILocation(line: 413, column: 61, scope: !1503)
!1507 = !DILocation(line: 414, column: 79, scope: !1503)
!1508 = !DILocation(line: 414, column: 83, scope: !1503)
!1509 = !DILocation(line: 414, column: 88, scope: !1503)
!1510 = !DILocation(line: 414, column: 61, scope: !1503)
!1511 = !DILocation(line: 415, column: 13, scope: !1503)
!1512 = !DILocation(line: 417, column: 27, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1503, file: !914, line: 417, column: 17)
!1514 = !DILocation(line: 417, column: 17, scope: !1503)
!1515 = !DILocation(line: 418, column: 88, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !914, line: 417, column: 33)
!1517 = !DILocation(line: 418, column: 74, scope: !1516)
!1518 = !DILocation(line: 418, column: 68, scope: !1516)
!1519 = !DILocation(line: 418, column: 65, scope: !1516)
!1520 = !DILocation(line: 419, column: 83, scope: !1516)
!1521 = !DILocation(line: 419, column: 87, scope: !1516)
!1522 = !DILocation(line: 419, column: 92, scope: !1516)
!1523 = !DILocation(line: 419, column: 65, scope: !1516)
!1524 = !DILocation(line: 420, column: 13, scope: !1516)
!1525 = !DILocation(line: 420, column: 24, scope: !1513)
!1526 = !DILocation(line: 421, column: 73, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !914, line: 420, column: 41)
!1528 = distinct !DILexicalBlock(scope: !1513, file: !914, line: 420, column: 24)
!1529 = !DILocation(line: 422, column: 91, scope: !1527)
!1530 = !DILocation(line: 422, column: 100, scope: !1527)
!1531 = !DILocation(line: 422, column: 73, scope: !1527)
!1532 = !DILocation(line: 423, column: 73, scope: !1527)
!1533 = !DILocation(line: 424, column: 13, scope: !1527)
!1534 = !DILocation(line: 425, column: 73, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !914, line: 424, column: 41)
!1536 = distinct !DILexicalBlock(scope: !1528, file: !914, line: 424, column: 24)
!1537 = !DILocation(line: 426, column: 91, scope: !1535)
!1538 = !DILocation(line: 426, column: 100, scope: !1535)
!1539 = !DILocation(line: 426, column: 73, scope: !1535)
!1540 = !DILocation(line: 427, column: 73, scope: !1535)
!1541 = !DILocation(line: 428, column: 13, scope: !1535)
!1542 = !DILocation(line: 429, column: 75, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !914, line: 428, column: 41)
!1544 = distinct !DILexicalBlock(scope: !1536, file: !914, line: 428, column: 24)
!1545 = !DILocation(line: 430, column: 93, scope: !1543)
!1546 = !DILocation(line: 430, column: 102, scope: !1543)
!1547 = !DILocation(line: 430, column: 75, scope: !1543)
!1548 = !DILocation(line: 431, column: 75, scope: !1543)
!1549 = !DILocation(line: 432, column: 13, scope: !1543)
!1550 = !DILocation(line: 433, column: 75, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !914, line: 432, column: 41)
!1552 = distinct !DILexicalBlock(scope: !1544, file: !914, line: 432, column: 24)
!1553 = !DILocation(line: 434, column: 93, scope: !1551)
!1554 = !DILocation(line: 434, column: 102, scope: !1551)
!1555 = !DILocation(line: 434, column: 75, scope: !1551)
!1556 = !DILocation(line: 435, column: 75, scope: !1551)
!1557 = !DILocation(line: 436, column: 13, scope: !1551)
!1558 = !DILocation(line: 437, column: 75, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !914, line: 436, column: 41)
!1560 = distinct !DILexicalBlock(scope: !1552, file: !914, line: 436, column: 24)
!1561 = !DILocation(line: 438, column: 93, scope: !1559)
!1562 = !DILocation(line: 438, column: 102, scope: !1559)
!1563 = !DILocation(line: 438, column: 75, scope: !1559)
!1564 = !DILocation(line: 439, column: 75, scope: !1559)
!1565 = !DILocation(line: 440, column: 13, scope: !1559)
!1566 = !DILocation(line: 443, column: 18, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1503, file: !914, line: 443, column: 17)
!1568 = !DILocation(line: 443, column: 17, scope: !1503)
!1569 = !DILocation(line: 444, column: 75, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !914, line: 443, column: 29)
!1571 = !DILocation(line: 445, column: 93, scope: !1570)
!1572 = !DILocation(line: 445, column: 102, scope: !1570)
!1573 = !DILocation(line: 445, column: 75, scope: !1570)
!1574 = !DILocation(line: 446, column: 75, scope: !1570)
!1575 = !DILocation(line: 447, column: 13, scope: !1570)
!1576 = !DILocation(line: 448, column: 88, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1567, file: !914, line: 447, column: 20)
!1578 = !DILocation(line: 448, column: 74, scope: !1577)
!1579 = !DILocation(line: 448, column: 68, scope: !1577)
!1580 = !DILocation(line: 448, column: 65, scope: !1577)
!1581 = !DILocation(line: 449, column: 83, scope: !1577)
!1582 = !DILocation(line: 449, column: 87, scope: !1577)
!1583 = !DILocation(line: 449, column: 92, scope: !1577)
!1584 = !DILocation(line: 449, column: 65, scope: !1577)
!1585 = !DILocation(line: 453, column: 84, scope: !1503)
!1586 = !DILocation(line: 453, column: 70, scope: !1503)
!1587 = !DILocation(line: 453, column: 64, scope: !1503)
!1588 = !DILocation(line: 453, column: 61, scope: !1503)
!1589 = !DILocation(line: 454, column: 79, scope: !1503)
!1590 = !DILocation(line: 454, column: 83, scope: !1503)
!1591 = !DILocation(line: 454, column: 88, scope: !1503)
!1592 = !DILocation(line: 454, column: 61, scope: !1503)
!1593 = !DILocation(line: 455, column: 13, scope: !1503)
!1594 = !DILocation(line: 460, column: 1, scope: !1492)
!1595 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !914, file: !914, line: 463, type: !1596, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1599)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!170, !64, !1598}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 32)
!1599 = !{!1600, !1601, !1602, !1603, !1604}
!1600 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1595, file: !914, line: 463, type: !64)
!1601 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1595, file: !914, line: 463, type: !1598)
!1602 = !DILocalVariable(name: "no", scope: !1595, file: !914, line: 465, type: !1095)
!1603 = !DILocalVariable(name: "remainder", scope: !1595, file: !914, line: 466, type: !1095)
!1604 = !DILocalVariable(name: "temp", scope: !1595, file: !914, line: 467, type: !64)
!1605 = !DILocation(line: 0, scope: !1595)
!1606 = !DILocation(line: 468, column: 19, scope: !1595)
!1607 = !DILocation(line: 469, column: 17, scope: !1595)
!1608 = !DILocation(line: 471, column: 5, scope: !1595)
!1609 = !DILocation(line: 473, column: 20, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1595, file: !914, line: 471, column: 17)
!1611 = !DILocation(line: 474, column: 40, scope: !1610)
!1612 = !DILocation(line: 474, column: 26, scope: !1610)
!1613 = !DILocation(line: 474, column: 18, scope: !1610)
!1614 = !DILocation(line: 475, column: 40, scope: !1610)
!1615 = !DILocation(line: 475, column: 29, scope: !1610)
!1616 = !DILocation(line: 476, column: 13, scope: !1610)
!1617 = !DILocation(line: 478, column: 27, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1610, file: !914, line: 478, column: 17)
!1619 = !DILocation(line: 478, column: 17, scope: !1610)
!1620 = !DILocation(line: 479, column: 24, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !914, line: 478, column: 33)
!1622 = !DILocation(line: 480, column: 44, scope: !1621)
!1623 = !DILocation(line: 480, column: 30, scope: !1621)
!1624 = !DILocation(line: 480, column: 22, scope: !1621)
!1625 = !DILocation(line: 481, column: 44, scope: !1621)
!1626 = !DILocation(line: 481, column: 33, scope: !1621)
!1627 = !DILocation(line: 482, column: 13, scope: !1621)
!1628 = !DILocation(line: 482, column: 24, scope: !1618)
!1629 = !DILocation(line: 483, column: 24, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !914, line: 482, column: 41)
!1631 = distinct !DILexicalBlock(scope: !1618, file: !914, line: 482, column: 24)
!1632 = !DILocation(line: 485, column: 53, scope: !1630)
!1633 = !DILocation(line: 485, column: 33, scope: !1630)
!1634 = !DILocation(line: 486, column: 13, scope: !1630)
!1635 = !DILocation(line: 487, column: 24, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !914, line: 486, column: 41)
!1637 = distinct !DILexicalBlock(scope: !1631, file: !914, line: 486, column: 24)
!1638 = !DILocation(line: 489, column: 53, scope: !1636)
!1639 = !DILocation(line: 489, column: 33, scope: !1636)
!1640 = !DILocation(line: 490, column: 13, scope: !1636)
!1641 = !DILocation(line: 491, column: 24, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !914, line: 490, column: 41)
!1643 = distinct !DILexicalBlock(scope: !1637, file: !914, line: 490, column: 24)
!1644 = !DILocation(line: 493, column: 53, scope: !1642)
!1645 = !DILocation(line: 493, column: 33, scope: !1642)
!1646 = !DILocation(line: 494, column: 13, scope: !1642)
!1647 = !DILocation(line: 495, column: 24, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !914, line: 494, column: 41)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !914, line: 494, column: 24)
!1650 = !DILocation(line: 497, column: 53, scope: !1648)
!1651 = !DILocation(line: 497, column: 33, scope: !1648)
!1652 = !DILocation(line: 498, column: 13, scope: !1648)
!1653 = !DILocation(line: 499, column: 24, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !914, line: 498, column: 41)
!1655 = distinct !DILexicalBlock(scope: !1649, file: !914, line: 498, column: 24)
!1656 = !DILocation(line: 501, column: 53, scope: !1654)
!1657 = !DILocation(line: 501, column: 33, scope: !1654)
!1658 = !DILocation(line: 502, column: 13, scope: !1654)
!1659 = !DILocation(line: 505, column: 18, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1610, file: !914, line: 505, column: 17)
!1661 = !DILocation(line: 505, column: 17, scope: !1610)
!1662 = !DILocation(line: 506, column: 24, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !914, line: 505, column: 29)
!1664 = !DILocation(line: 508, column: 53, scope: !1663)
!1665 = !DILocation(line: 508, column: 33, scope: !1663)
!1666 = !DILocation(line: 509, column: 13, scope: !1663)
!1667 = !DILocation(line: 510, column: 24, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1660, file: !914, line: 509, column: 20)
!1669 = !DILocation(line: 511, column: 44, scope: !1668)
!1670 = !DILocation(line: 511, column: 30, scope: !1668)
!1671 = !DILocation(line: 511, column: 22, scope: !1668)
!1672 = !DILocation(line: 512, column: 44, scope: !1668)
!1673 = !DILocation(line: 512, column: 33, scope: !1668)
!1674 = !DILocation(line: 516, column: 20, scope: !1610)
!1675 = !DILocation(line: 517, column: 40, scope: !1610)
!1676 = !DILocation(line: 517, column: 26, scope: !1610)
!1677 = !DILocation(line: 517, column: 18, scope: !1610)
!1678 = !DILocation(line: 518, column: 40, scope: !1610)
!1679 = !DILocation(line: 518, column: 29, scope: !1610)
!1680 = !DILocation(line: 519, column: 13, scope: !1610)
!1681 = !DILocation(line: 0, scope: !1610)
!1682 = !DILocation(line: 524, column: 1, scope: !1595)
!1683 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !914, file: !914, line: 526, type: !1684, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !913, retainedNodes: !1687)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !64, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !125, line: 1212, baseType: !124)
!1687 = !{!1688, !1689, !1690, !1691}
!1688 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1683, file: !914, line: 526, type: !64)
!1689 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1683, file: !914, line: 526, type: !1686)
!1690 = !DILocalVariable(name: "no", scope: !1683, file: !914, line: 529, type: !1095)
!1691 = !DILocalVariable(name: "remainder", scope: !1683, file: !914, line: 530, type: !1095)
!1692 = !DILocation(line: 0, scope: !1683)
!1693 = !DILocation(line: 531, column: 19, scope: !1683)
!1694 = !DILocation(line: 532, column: 17, scope: !1683)
!1695 = !DILocation(line: 534, column: 9, scope: !1683)
!1696 = !DILocation(line: 536, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !914, line: 534, column: 45)
!1698 = distinct !DILexicalBlock(scope: !1683, file: !914, line: 534, column: 9)
!1699 = !DILocation(line: 538, column: 56, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1697, file: !914, line: 536, column: 21)
!1701 = !DILocation(line: 538, column: 53, scope: !1700)
!1702 = !DILocation(line: 538, column: 47, scope: !1700)
!1703 = !DILocation(line: 539, column: 17, scope: !1700)
!1704 = !DILocation(line: 541, column: 56, scope: !1700)
!1705 = !DILocation(line: 541, column: 53, scope: !1700)
!1706 = !DILocation(line: 541, column: 47, scope: !1700)
!1707 = !DILocation(line: 542, column: 17, scope: !1700)
!1708 = !DILocation(line: 548, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !914, line: 547, column: 51)
!1710 = distinct !DILexicalBlock(scope: !1698, file: !914, line: 547, column: 16)
!1711 = !DILocation(line: 550, column: 57, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1709, file: !914, line: 548, column: 21)
!1713 = !DILocation(line: 550, column: 54, scope: !1712)
!1714 = !DILocation(line: 550, column: 50, scope: !1712)
!1715 = !DILocation(line: 550, column: 47, scope: !1712)
!1716 = !DILocation(line: 551, column: 17, scope: !1712)
!1717 = !DILocation(line: 553, column: 57, scope: !1712)
!1718 = !DILocation(line: 553, column: 54, scope: !1712)
!1719 = !DILocation(line: 553, column: 50, scope: !1712)
!1720 = !DILocation(line: 553, column: 47, scope: !1712)
!1721 = !DILocation(line: 554, column: 17, scope: !1712)
!1722 = !DILocation(line: 560, column: 1, scope: !1683)
!1723 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !918, file: !918, line: 85, type: !1724, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !917, retainedNodes: !1728)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!1726, !1727, !69}
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !52, line: 79, baseType: null)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !921, line: 225, baseType: !920)
!1728 = !{!1729, !1730, !1731}
!1729 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1723, file: !918, line: 85, type: !1727)
!1730 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1723, file: !918, line: 85, type: !69)
!1731 = !DILocalVariable(name: "temp", scope: !1723, file: !918, line: 87, type: !73)
!1732 = !DILocation(line: 0, scope: !1723)
!1733 = !DILocation(line: 88, column: 5, scope: !1723)
!1734 = !DILocation(line: 91, column: 20, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1723, file: !918, line: 88, column: 24)
!1736 = !DILocation(line: 92, column: 18, scope: !1735)
!1737 = !DILocation(line: 93, column: 66, scope: !1735)
!1738 = !DILocation(line: 93, column: 63, scope: !1735)
!1739 = !DILocation(line: 93, column: 56, scope: !1735)
!1740 = !DILocation(line: 94, column: 13, scope: !1735)
!1741 = !DILocation(line: 97, column: 20, scope: !1735)
!1742 = !DILocation(line: 98, column: 18, scope: !1735)
!1743 = !DILocation(line: 99, column: 67, scope: !1735)
!1744 = !DILocation(line: 99, column: 74, scope: !1735)
!1745 = !DILocation(line: 99, column: 64, scope: !1735)
!1746 = !DILocation(line: 99, column: 56, scope: !1735)
!1747 = !DILocation(line: 100, column: 13, scope: !1735)
!1748 = !DILocation(line: 103, column: 20, scope: !1735)
!1749 = !DILocation(line: 104, column: 18, scope: !1735)
!1750 = !DILocation(line: 105, column: 67, scope: !1735)
!1751 = !DILocation(line: 105, column: 74, scope: !1735)
!1752 = !DILocation(line: 105, column: 64, scope: !1735)
!1753 = !DILocation(line: 105, column: 56, scope: !1735)
!1754 = !DILocation(line: 106, column: 13, scope: !1735)
!1755 = !DILocation(line: 109, column: 20, scope: !1735)
!1756 = !DILocation(line: 110, column: 18, scope: !1735)
!1757 = !DILocation(line: 111, column: 67, scope: !1735)
!1758 = !DILocation(line: 111, column: 74, scope: !1735)
!1759 = !DILocation(line: 111, column: 64, scope: !1735)
!1760 = !DILocation(line: 111, column: 56, scope: !1735)
!1761 = !DILocation(line: 112, column: 13, scope: !1735)
!1762 = !DILocation(line: 115, column: 20, scope: !1735)
!1763 = !DILocation(line: 116, column: 18, scope: !1735)
!1764 = !DILocation(line: 117, column: 67, scope: !1735)
!1765 = !DILocation(line: 117, column: 74, scope: !1735)
!1766 = !DILocation(line: 117, column: 64, scope: !1735)
!1767 = !DILocation(line: 117, column: 56, scope: !1735)
!1768 = !DILocation(line: 118, column: 13, scope: !1735)
!1769 = !DILocation(line: 121, column: 20, scope: !1735)
!1770 = !DILocation(line: 122, column: 18, scope: !1735)
!1771 = !DILocation(line: 123, column: 67, scope: !1735)
!1772 = !DILocation(line: 123, column: 74, scope: !1735)
!1773 = !DILocation(line: 123, column: 64, scope: !1735)
!1774 = !DILocation(line: 123, column: 56, scope: !1735)
!1775 = !DILocation(line: 124, column: 13, scope: !1735)
!1776 = !DILocation(line: 127, column: 20, scope: !1735)
!1777 = !DILocation(line: 128, column: 18, scope: !1735)
!1778 = !DILocation(line: 129, column: 67, scope: !1735)
!1779 = !DILocation(line: 129, column: 74, scope: !1735)
!1780 = !DILocation(line: 129, column: 64, scope: !1735)
!1781 = !DILocation(line: 129, column: 56, scope: !1735)
!1782 = !DILocation(line: 130, column: 13, scope: !1735)
!1783 = !DILocation(line: 133, column: 20, scope: !1735)
!1784 = !DILocation(line: 134, column: 18, scope: !1735)
!1785 = !DILocation(line: 135, column: 67, scope: !1735)
!1786 = !DILocation(line: 135, column: 74, scope: !1735)
!1787 = !DILocation(line: 135, column: 64, scope: !1735)
!1788 = !DILocation(line: 135, column: 56, scope: !1735)
!1789 = !DILocation(line: 136, column: 13, scope: !1735)
!1790 = !DILocation(line: 139, column: 20, scope: !1735)
!1791 = !DILocation(line: 140, column: 18, scope: !1735)
!1792 = !DILocation(line: 141, column: 67, scope: !1735)
!1793 = !DILocation(line: 141, column: 64, scope: !1735)
!1794 = !DILocation(line: 141, column: 56, scope: !1735)
!1795 = !DILocation(line: 142, column: 13, scope: !1735)
!1796 = !DILocation(line: 145, column: 20, scope: !1735)
!1797 = !DILocation(line: 146, column: 18, scope: !1735)
!1798 = !DILocation(line: 147, column: 67, scope: !1735)
!1799 = !DILocation(line: 147, column: 74, scope: !1735)
!1800 = !DILocation(line: 147, column: 64, scope: !1735)
!1801 = !DILocation(line: 147, column: 56, scope: !1735)
!1802 = !DILocation(line: 148, column: 13, scope: !1735)
!1803 = !DILocation(line: 151, column: 20, scope: !1735)
!1804 = !DILocation(line: 152, column: 18, scope: !1735)
!1805 = !DILocation(line: 153, column: 67, scope: !1735)
!1806 = !DILocation(line: 153, column: 74, scope: !1735)
!1807 = !DILocation(line: 153, column: 64, scope: !1735)
!1808 = !DILocation(line: 153, column: 56, scope: !1735)
!1809 = !DILocation(line: 154, column: 13, scope: !1735)
!1810 = !DILocation(line: 157, column: 20, scope: !1735)
!1811 = !DILocation(line: 158, column: 18, scope: !1735)
!1812 = !DILocation(line: 159, column: 67, scope: !1735)
!1813 = !DILocation(line: 159, column: 74, scope: !1735)
!1814 = !DILocation(line: 159, column: 64, scope: !1735)
!1815 = !DILocation(line: 159, column: 56, scope: !1735)
!1816 = !DILocation(line: 160, column: 29, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1735, file: !918, line: 160, column: 17)
!1818 = !DILocation(line: 161, column: 17, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1817, file: !918, line: 160, column: 60)
!1820 = !DILocation(line: 162, column: 13, scope: !1819)
!1821 = !DILocation(line: 166, column: 20, scope: !1735)
!1822 = !DILocation(line: 167, column: 18, scope: !1735)
!1823 = !DILocation(line: 168, column: 67, scope: !1735)
!1824 = !DILocation(line: 168, column: 74, scope: !1735)
!1825 = !DILocation(line: 168, column: 64, scope: !1735)
!1826 = !DILocation(line: 168, column: 56, scope: !1735)
!1827 = !DILocation(line: 169, column: 29, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1735, file: !918, line: 169, column: 17)
!1829 = !DILocation(line: 170, column: 17, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1828, file: !918, line: 169, column: 45)
!1831 = !DILocation(line: 171, column: 13, scope: !1830)
!1832 = !DILocation(line: 175, column: 20, scope: !1735)
!1833 = !DILocation(line: 176, column: 18, scope: !1735)
!1834 = !DILocation(line: 177, column: 67, scope: !1735)
!1835 = !DILocation(line: 177, column: 74, scope: !1735)
!1836 = !DILocation(line: 177, column: 64, scope: !1735)
!1837 = !DILocation(line: 177, column: 56, scope: !1735)
!1838 = !DILocation(line: 178, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1735, file: !918, line: 178, column: 17)
!1840 = !DILocation(line: 178, column: 17, scope: !1735)
!1841 = !DILocation(line: 179, column: 17, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !918, line: 178, column: 30)
!1843 = !DILocation(line: 180, column: 13, scope: !1842)
!1844 = !DILocation(line: 184, column: 20, scope: !1735)
!1845 = !DILocation(line: 185, column: 18, scope: !1735)
!1846 = !DILocation(line: 186, column: 67, scope: !1735)
!1847 = !DILocation(line: 186, column: 74, scope: !1735)
!1848 = !DILocation(line: 186, column: 64, scope: !1735)
!1849 = !DILocation(line: 186, column: 56, scope: !1735)
!1850 = !DILocation(line: 187, column: 29, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1735, file: !918, line: 187, column: 17)
!1852 = !DILocation(line: 188, column: 17, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !918, line: 187, column: 45)
!1854 = !DILocation(line: 189, column: 13, scope: !1853)
!1855 = !DILocation(line: 193, column: 20, scope: !1735)
!1856 = !DILocation(line: 194, column: 18, scope: !1735)
!1857 = !DILocation(line: 195, column: 67, scope: !1735)
!1858 = !DILocation(line: 195, column: 74, scope: !1735)
!1859 = !DILocation(line: 195, column: 64, scope: !1735)
!1860 = !DILocation(line: 195, column: 56, scope: !1735)
!1861 = !DILocation(line: 196, column: 29, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1735, file: !918, line: 196, column: 17)
!1863 = !DILocation(line: 197, column: 17, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1862, file: !918, line: 196, column: 45)
!1865 = !DILocation(line: 198, column: 13, scope: !1864)
!1866 = !DILocation(line: 202, column: 20, scope: !1735)
!1867 = !DILocation(line: 203, column: 18, scope: !1735)
!1868 = !DILocation(line: 204, column: 67, scope: !1735)
!1869 = !DILocation(line: 204, column: 64, scope: !1735)
!1870 = !DILocation(line: 204, column: 56, scope: !1735)
!1871 = !DILocation(line: 205, column: 29, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1735, file: !918, line: 205, column: 17)
!1873 = !DILocation(line: 206, column: 17, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1872, file: !918, line: 205, column: 45)
!1875 = !DILocation(line: 207, column: 13, scope: !1874)
!1876 = !DILocation(line: 211, column: 20, scope: !1735)
!1877 = !DILocation(line: 212, column: 18, scope: !1735)
!1878 = !DILocation(line: 213, column: 67, scope: !1735)
!1879 = !DILocation(line: 213, column: 74, scope: !1735)
!1880 = !DILocation(line: 213, column: 64, scope: !1735)
!1881 = !DILocation(line: 213, column: 56, scope: !1735)
!1882 = !DILocation(line: 214, column: 13, scope: !1735)
!1883 = !DILocation(line: 217, column: 20, scope: !1735)
!1884 = !DILocation(line: 218, column: 18, scope: !1735)
!1885 = !DILocation(line: 219, column: 67, scope: !1735)
!1886 = !DILocation(line: 219, column: 74, scope: !1735)
!1887 = !DILocation(line: 219, column: 64, scope: !1735)
!1888 = !DILocation(line: 219, column: 56, scope: !1735)
!1889 = !DILocation(line: 220, column: 13, scope: !1735)
!1890 = !DILocation(line: 223, column: 20, scope: !1735)
!1891 = !DILocation(line: 224, column: 18, scope: !1735)
!1892 = !DILocation(line: 225, column: 67, scope: !1735)
!1893 = !DILocation(line: 225, column: 74, scope: !1735)
!1894 = !DILocation(line: 225, column: 64, scope: !1735)
!1895 = !DILocation(line: 225, column: 56, scope: !1735)
!1896 = !DILocation(line: 226, column: 13, scope: !1735)
!1897 = !DILocation(line: 229, column: 20, scope: !1735)
!1898 = !DILocation(line: 230, column: 18, scope: !1735)
!1899 = !DILocation(line: 231, column: 67, scope: !1735)
!1900 = !DILocation(line: 231, column: 74, scope: !1735)
!1901 = !DILocation(line: 231, column: 64, scope: !1735)
!1902 = !DILocation(line: 231, column: 56, scope: !1735)
!1903 = !DILocation(line: 232, column: 13, scope: !1735)
!1904 = !DILocation(line: 235, column: 20, scope: !1735)
!1905 = !DILocation(line: 236, column: 18, scope: !1735)
!1906 = !DILocation(line: 237, column: 66, scope: !1735)
!1907 = !DILocation(line: 237, column: 73, scope: !1735)
!1908 = !DILocation(line: 237, column: 63, scope: !1735)
!1909 = !DILocation(line: 237, column: 56, scope: !1735)
!1910 = !DILocation(line: 238, column: 13, scope: !1735)
!1911 = !DILocation(line: 241, column: 20, scope: !1735)
!1912 = !DILocation(line: 242, column: 18, scope: !1735)
!1913 = !DILocation(line: 243, column: 67, scope: !1735)
!1914 = !DILocation(line: 243, column: 74, scope: !1735)
!1915 = !DILocation(line: 243, column: 64, scope: !1735)
!1916 = !DILocation(line: 243, column: 56, scope: !1735)
!1917 = !DILocation(line: 244, column: 13, scope: !1735)
!1918 = !DILocation(line: 247, column: 20, scope: !1735)
!1919 = !DILocation(line: 248, column: 18, scope: !1735)
!1920 = !DILocation(line: 249, column: 67, scope: !1735)
!1921 = !DILocation(line: 249, column: 74, scope: !1735)
!1922 = !DILocation(line: 249, column: 64, scope: !1735)
!1923 = !DILocation(line: 249, column: 56, scope: !1735)
!1924 = !DILocation(line: 250, column: 13, scope: !1735)
!1925 = !DILocation(line: 253, column: 20, scope: !1735)
!1926 = !DILocation(line: 254, column: 18, scope: !1735)
!1927 = !DILocation(line: 255, column: 67, scope: !1735)
!1928 = !DILocation(line: 255, column: 74, scope: !1735)
!1929 = !DILocation(line: 255, column: 64, scope: !1735)
!1930 = !DILocation(line: 255, column: 56, scope: !1735)
!1931 = !DILocation(line: 256, column: 13, scope: !1735)
!1932 = !DILocation(line: 259, column: 20, scope: !1735)
!1933 = !DILocation(line: 260, column: 18, scope: !1735)
!1934 = !DILocation(line: 261, column: 67, scope: !1735)
!1935 = !DILocation(line: 261, column: 74, scope: !1735)
!1936 = !DILocation(line: 261, column: 64, scope: !1735)
!1937 = !DILocation(line: 261, column: 56, scope: !1735)
!1938 = !DILocation(line: 262, column: 13, scope: !1735)
!1939 = !DILocation(line: 265, column: 20, scope: !1735)
!1940 = !DILocation(line: 266, column: 18, scope: !1735)
!1941 = !DILocation(line: 267, column: 67, scope: !1735)
!1942 = !DILocation(line: 267, column: 74, scope: !1735)
!1943 = !DILocation(line: 267, column: 64, scope: !1735)
!1944 = !DILocation(line: 267, column: 56, scope: !1735)
!1945 = !DILocation(line: 268, column: 13, scope: !1735)
!1946 = !DILocation(line: 271, column: 20, scope: !1735)
!1947 = !DILocation(line: 272, column: 18, scope: !1735)
!1948 = !DILocation(line: 273, column: 67, scope: !1735)
!1949 = !DILocation(line: 273, column: 74, scope: !1735)
!1950 = !DILocation(line: 273, column: 64, scope: !1735)
!1951 = !DILocation(line: 273, column: 56, scope: !1735)
!1952 = !DILocation(line: 274, column: 13, scope: !1735)
!1953 = !DILocation(line: 278, column: 1, scope: !1723)
!1954 = distinct !DISubprogram(name: "spim_irqhandler", scope: !3, file: !3, line: 52, type: !419, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1955)
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "irq_number", arg: 1, scope: !1954, file: !3, line: 52, type: !337)
!1957 = !DILocalVariable(name: "reg", scope: !1954, file: !3, line: 54, type: !63)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocation(line: 54, column: 5, scope: !1954)
!1960 = !DILocation(line: 54, column: 21, scope: !1954)
!1961 = !DILocation(line: 56, column: 5, scope: !1954)
!1962 = !DILocation(line: 57, column: 11, scope: !1954)
!1963 = !DILocation(line: 57, column: 9, scope: !1954)
!1964 = !DILocation(line: 58, column: 11, scope: !1954)
!1965 = !DILocation(line: 58, column: 9, scope: !1954)
!1966 = !DILocation(line: 60, column: 1, scope: !1954)
!1967 = distinct !DISubprogram(name: "spim_isr_Register", scope: !3, file: !3, line: 62, type: !1968, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !78}
!1970 = !{!1971}
!1971 = !DILocalVariable(name: "spim_isr", arg: 1, scope: !1967, file: !3, line: 62, type: !78)
!1972 = !DILocation(line: 0, scope: !1967)
!1973 = !DILocation(line: 64, column: 17, scope: !1967)
!1974 = !DILocation(line: 65, column: 1, scope: !1967)
!1975 = distinct !DISubprogram(name: "halSpim_init", scope: !3, file: !3, line: 75, type: !1976, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!170, !60, !60}
!1978 = !{!1979, !1980, !1981, !1982}
!1979 = !DILocalVariable(name: "setting", arg: 1, scope: !1975, file: !3, line: 75, type: !60)
!1980 = !DILocalVariable(name: "clock", arg: 2, scope: !1975, file: !3, line: 75, type: !60)
!1981 = !DILocalVariable(name: "reg", scope: !1975, file: !3, line: 78, type: !63)
!1982 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1975, file: !3, line: 79, type: !62)
!1983 = !DILocation(line: 0, scope: !1975)
!1984 = !DILocation(line: 78, column: 5, scope: !1975)
!1985 = !DILocation(line: 78, column: 21, scope: !1975)
!1986 = !DILocation(line: 80, column: 11, scope: !1975)
!1987 = !DILocation(line: 80, column: 9, scope: !1975)
!1988 = !DILocation(line: 81, column: 12, scope: !1975)
!1989 = !DILocation(line: 81, column: 16, scope: !1975)
!1990 = !DILocation(line: 81, column: 39, scope: !1975)
!1991 = !DILocation(line: 81, column: 9, scope: !1975)
!1992 = !DILocation(line: 83, column: 9, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 83, column: 9)
!1994 = !DILocation(line: 83, column: 13, scope: !1993)
!1995 = !DILocation(line: 83, column: 9, scope: !1975)
!1996 = !DILocation(line: 84, column: 9, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 83, column: 45)
!1998 = !DILocation(line: 85, column: 5, scope: !1997)
!1999 = !DILocation(line: 87, column: 38, scope: !1975)
!2000 = !DILocation(line: 89, column: 5, scope: !1975)
!2001 = !DILocation(line: 90, column: 5, scope: !1975)
!2002 = !DILocation(line: 92, column: 5, scope: !1975)
!2003 = !DILocation(line: 95, column: 5, scope: !1975)
!2004 = !DILocation(line: 96, column: 5, scope: !1975)
!2005 = !DILocation(line: 98, column: 1, scope: !1975)
!2006 = !DILocation(line: 97, column: 5, scope: !1975)
!2007 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2008, file: !2008, line: 176, type: !2009, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2013)
!2008 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!73, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2013 = !{!2014}
!2014 = !DILocalVariable(name: "Register", arg: 1, scope: !2007, file: !2008, line: 176, type: !2011)
!2015 = !DILocation(line: 0, scope: !2007)
!2016 = !DILocation(line: 178, column: 12, scope: !2007)
!2017 = !DILocation(line: 178, column: 5, scope: !2007)
!2018 = distinct !DISubprogram(name: "spim_busy_wait", scope: !3, file: !3, line: 102, type: !2019, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!170}
!2021 = !{!2022}
!2022 = !DILocalVariable(name: "n", scope: !2018, file: !3, line: 104, type: !7)
!2023 = !DILocation(line: 0, scope: !2018)
!2024 = !DILocation(line: 105, column: 5, scope: !2018)
!2025 = !DILocation(line: 106, column: 14, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 106, column: 13)
!2027 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 105, column: 8)
!2028 = !DILocation(line: 106, column: 39, scope: !2026)
!2029 = !DILocation(line: 106, column: 55, scope: !2026)
!2030 = !DILocation(line: 106, column: 13, scope: !2027)
!2031 = !DILocation(line: 109, column: 14, scope: !2018)
!2032 = !DILocation(line: 109, column: 18, scope: !2018)
!2033 = !DILocation(line: 109, column: 5, scope: !2027)
!2034 = distinct !{!2034, !2024, !2035}
!2035 = !DILocation(line: 109, column: 21, scope: !2018)
!2036 = !DILocation(line: 113, column: 1, scope: !2018)
!2037 = distinct !DISubprogram(name: "spim_more_buf_trans_gpio", scope: !3, file: !3, line: 115, type: !2038, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2044)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!170, !2040, !2041, !1598, !2041, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 51, baseType: !53)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055}
!2045 = !DILocalVariable(name: "op_addr", arg: 1, scope: !2037, file: !3, line: 115, type: !2040)
!2046 = !DILocalVariable(name: "n_cmd_byte", arg: 2, scope: !2037, file: !3, line: 115, type: !2041)
!2047 = !DILocalVariable(name: "buf", arg: 3, scope: !2037, file: !3, line: 115, type: !1598)
!2048 = !DILocalVariable(name: "buf_cnt", arg: 4, scope: !2037, file: !3, line: 115, type: !2041)
!2049 = !DILocalVariable(name: "flag", arg: 5, scope: !2037, file: !3, line: 115, type: !2043)
!2050 = !DILocalVariable(name: "reg", scope: !2037, file: !3, line: 117, type: !64)
!2051 = !DILocalVariable(name: "i", scope: !2037, file: !3, line: 118, type: !7)
!2052 = !DILocalVariable(name: "q", scope: !2037, file: !3, line: 118, type: !7)
!2053 = !DILocalVariable(name: "r", scope: !2037, file: !3, line: 118, type: !7)
!2054 = !DILocalVariable(name: "rc", scope: !2037, file: !3, line: 119, type: !7)
!2055 = !DILabel(scope: !2037, name: "RET_MB_TRANS", file: !3, line: 187)
!2056 = !DILocation(line: 0, scope: !2037)
!2057 = !DILocation(line: 122, column: 5, scope: !2037)
!2058 = !DILocation(line: 124, column: 5, scope: !2037)
!2059 = !DILocation(line: 125, column: 5, scope: !2037)
!2060 = !DILocation(line: 128, column: 5, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 128, column: 5)
!2062 = !DILocation(line: 129, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 128, column: 29)
!2064 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 128, column: 5)
!2065 = !DILocation(line: 128, column: 25, scope: !2064)
!2066 = !DILocation(line: 128, column: 19, scope: !2064)
!2067 = distinct !{!2067, !2060, !2068}
!2068 = !DILocation(line: 130, column: 5, scope: !2061)
!2069 = !DILocation(line: 133, column: 14, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 133, column: 9)
!2071 = !DILocation(line: 133, column: 9, scope: !2037)
!2072 = !DILocation(line: 134, column: 17, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 134, column: 13)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 133, column: 32)
!2075 = !DILocation(line: 134, column: 13, scope: !2074)
!2076 = !DILocation(line: 138, column: 23, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !3, line: 138, column: 9)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 138, column: 9)
!2079 = !DILocation(line: 138, column: 9, scope: !2078)
!2080 = !DILocation(line: 140, column: 19, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 138, column: 39)
!2082 = !DILocation(line: 141, column: 19, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 141, column: 17)
!2084 = !DILocation(line: 0, scope: !2081)
!2085 = !DILocation(line: 141, column: 17, scope: !2081)
!2086 = !DILocation(line: 142, column: 17, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 141, column: 25)
!2088 = !DILocation(line: 143, column: 13, scope: !2087)
!2089 = !DILocation(line: 145, column: 13, scope: !2081)
!2090 = !DILocation(line: 138, column: 35, scope: !2077)
!2091 = distinct !{!2091, !2079, !2092}
!2092 = !DILocation(line: 146, column: 9, scope: !2078)
!2093 = !DILocation(line: 150, column: 5, scope: !2037)
!2094 = !DILocation(line: 0, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 151, column: 9)
!2096 = !DILocation(line: 160, column: 5, scope: !2037)
!2097 = !DILocation(line: 162, column: 5, scope: !2037)
!2098 = !DILocation(line: 165, column: 9, scope: !2037)
!2099 = !DILocation(line: 172, column: 17, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 172, column: 13)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 171, column: 31)
!2102 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 171, column: 9)
!2103 = !DILocation(line: 172, column: 13, scope: !2101)
!2104 = !DILocation(line: 177, column: 23, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 177, column: 9)
!2106 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 177, column: 9)
!2107 = !DILocation(line: 177, column: 9, scope: !2106)
!2108 = !DILocation(line: 180, column: 19, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 177, column: 39)
!2110 = !DILocation(line: 181, column: 44, scope: !2109)
!2111 = !DILocation(line: 181, column: 38, scope: !2109)
!2112 = !DILocation(line: 181, column: 26, scope: !2109)
!2113 = !DILocation(line: 181, column: 19, scope: !2109)
!2114 = !DILocation(line: 181, column: 24, scope: !2109)
!2115 = !DILocation(line: 177, column: 35, scope: !2105)
!2116 = distinct !{!2116, !2107, !2117}
!2117 = !DILocation(line: 182, column: 9, scope: !2106)
!2118 = !DILocation(line: 187, column: 1, scope: !2037)
!2119 = !DILocation(line: 189, column: 5, scope: !2037)
!2120 = !DILocation(line: 190, column: 5, scope: !2037)
!2121 = !DILocation(line: 191, column: 1, scope: !2037)
!2122 = distinct !DISubprogram(name: "gpio_direction", scope: !86, file: !86, line: 107, type: !2123, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2125)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!154, !1070, !1073}
!2125 = !{!2126, !2127}
!2126 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2122, file: !86, line: 107, type: !1070)
!2127 = !DILocalVariable(name: "direction", arg: 2, scope: !2122, file: !86, line: 107, type: !1073)
!2128 = !DILocation(line: 0, scope: !2122)
!2129 = !DILocation(line: 109, column: 45, scope: !2122)
!2130 = !DILocation(line: 109, column: 12, scope: !2122)
!2131 = !DILocation(line: 109, column: 5, scope: !2122)
!2132 = distinct !DISubprogram(name: "gpio_write", scope: !86, file: !86, line: 113, type: !2133, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!154, !1070, !163}
!2135 = !{!2136, !2137}
!2136 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2132, file: !86, line: 113, type: !1070)
!2137 = !DILocalVariable(name: "data", arg: 2, scope: !2132, file: !86, line: 113, type: !163)
!2138 = !DILocation(line: 0, scope: !2132)
!2139 = !DILocation(line: 115, column: 12, scope: !2132)
!2140 = !DILocation(line: 115, column: 5, scope: !2132)
!2141 = distinct !DISubprogram(name: "gpio_get_status", scope: !86, file: !86, line: 169, type: !2142, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2151)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!2144, !1070}
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !120, line: 67, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 62, size: 64, elements: !2146)
!2146 = !{!2147, !2148, !2149, !2150}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !2145, file: !120, line: 63, baseType: !73, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !2145, file: !120, line: 64, baseType: !163, size: 8, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !2145, file: !120, line: 65, baseType: !163, size: 8, offset: 40)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !2145, file: !120, line: 66, baseType: !163, size: 8, offset: 48)
!2151 = !{!2152, !2153}
!2152 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2141, file: !86, line: 169, type: !1070)
!2153 = !DILocalVariable(name: "p", scope: !2141, file: !86, line: 171, type: !2144)
!2154 = !DILocation(line: 0, scope: !2141)
!2155 = !DILocation(line: 171, column: 17, scope: !2141)
!2156 = !DILocation(line: 172, column: 7, scope: !2141)
!2157 = !DILocation(line: 172, column: 16, scope: !2141)
!2158 = !DILocation(line: 173, column: 20, scope: !2141)
!2159 = !DILocation(line: 173, column: 7, scope: !2141)
!2160 = !DILocation(line: 173, column: 18, scope: !2141)
!2161 = !DILocation(line: 174, column: 17, scope: !2141)
!2162 = !DILocation(line: 174, column: 7, scope: !2141)
!2163 = !DILocation(line: 174, column: 15, scope: !2141)
!2164 = !DILocation(line: 175, column: 18, scope: !2141)
!2165 = !DILocation(line: 175, column: 7, scope: !2141)
!2166 = !DILocation(line: 175, column: 16, scope: !2141)
!2167 = !DILocation(line: 176, column: 5, scope: !2141)
!2168 = distinct !DISubprogram(name: "gpio_PullUp", scope: !86, file: !86, line: 179, type: !2169, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!154, !1070}
!2171 = !{!2172, !2173}
!2172 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2168, file: !86, line: 179, type: !1070)
!2173 = !DILocalVariable(name: "ret", scope: !2168, file: !86, line: 181, type: !170)
!2174 = !DILocation(line: 0, scope: !2168)
!2175 = !DILocation(line: 182, column: 5, scope: !2168)
!2176 = !DILocation(line: 183, column: 11, scope: !2168)
!2177 = !DILocation(line: 184, column: 5, scope: !2168)
!2178 = distinct !DISubprogram(name: "gpio_PullDown", scope: !86, file: !86, line: 187, type: !2169, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2179)
!2179 = !{!2180, !2181}
!2180 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2178, file: !86, line: 187, type: !1070)
!2181 = !DILocalVariable(name: "ret", scope: !2178, file: !86, line: 189, type: !170)
!2182 = !DILocation(line: 0, scope: !2178)
!2183 = !DILocation(line: 190, column: 5, scope: !2178)
!2184 = !DILocation(line: 191, column: 11, scope: !2178)
!2185 = !DILocation(line: 192, column: 5, scope: !2178)
!2186 = distinct !DISubprogram(name: "gpio_PullDisable", scope: !86, file: !86, line: 194, type: !2169, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2187)
!2187 = !{!2188, !2189}
!2188 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2186, file: !86, line: 194, type: !1070)
!2189 = !DILocalVariable(name: "ret", scope: !2186, file: !86, line: 196, type: !170)
!2190 = !DILocation(line: 0, scope: !2186)
!2191 = !DILocation(line: 197, column: 5, scope: !2186)
!2192 = !DILocation(line: 198, column: 11, scope: !2186)
!2193 = !DILocation(line: 199, column: 11, scope: !2186)
!2194 = !DILocation(line: 200, column: 5, scope: !2186)
!2195 = distinct !DISubprogram(name: "gpio_SetDriving", scope: !86, file: !86, line: 202, type: !2133, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2196)
!2196 = !{!2197, !2198, !2199}
!2197 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2195, file: !86, line: 202, type: !1070)
!2198 = !DILocalVariable(name: "driving", arg: 2, scope: !2195, file: !86, line: 202, type: !163)
!2199 = !DILocalVariable(name: "ret", scope: !2195, file: !86, line: 204, type: !170)
!2200 = !DILocation(line: 0, scope: !2195)
!2201 = !DILocation(line: 205, column: 11, scope: !2195)
!2202 = !DILocation(line: 206, column: 5, scope: !2195)
!2203 = distinct !DISubprogram(name: "gpio_GetDriving", scope: !86, file: !86, line: 209, type: !2204, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!154, !1070, !162}
!2206 = !{!2207, !2208, !2209}
!2207 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !2203, file: !86, line: 209, type: !1070)
!2208 = !DILocalVariable(name: "driving", arg: 2, scope: !2203, file: !86, line: 209, type: !162)
!2209 = !DILocalVariable(name: "ret", scope: !2203, file: !86, line: 211, type: !170)
!2210 = !DILocation(line: 0, scope: !2203)
!2211 = !DILocation(line: 212, column: 11, scope: !2203)
!2212 = !DILocation(line: 213, column: 5, scope: !2203)
!2213 = distinct !DISubprogram(name: "gpio_backup_all_registers", scope: !86, file: !86, line: 216, type: !81, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2214)
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "i", scope: !2213, file: !86, line: 218, type: !73)
!2216 = !DILocation(line: 0, scope: !2213)
!2217 = !DILocation(line: 220, column: 5, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !86, line: 220, column: 5)
!2219 = !DILocation(line: 221, column: 40, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !86, line: 220, column: 78)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !86, line: 220, column: 5)
!2222 = !DILocation(line: 221, column: 29, scope: !2220)
!2223 = !DILocation(line: 221, column: 38, scope: !2220)
!2224 = !DILocation(line: 220, column: 74, scope: !2221)
!2225 = !DILocation(line: 220, column: 15, scope: !2221)
!2226 = distinct !{!2226, !2217, !2227}
!2227 = !DILocation(line: 222, column: 5, scope: !2218)
!2228 = !DILocation(line: 224, column: 1, scope: !2213)
!2229 = distinct !DISubprogram(name: "gpio_restore_all_registers", scope: !86, file: !86, line: 226, type: !81, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !85, retainedNodes: !2230)
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "i", scope: !2229, file: !86, line: 228, type: !73)
!2232 = !DILocation(line: 0, scope: !2229)
!2233 = !DILocation(line: 230, column: 5, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !86, line: 230, column: 5)
!2235 = !DILocation(line: 231, column: 71, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !86, line: 230, column: 78)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !86, line: 230, column: 5)
!2238 = !DILocation(line: 231, column: 9, scope: !2236)
!2239 = !DILocation(line: 231, column: 49, scope: !2236)
!2240 = !DILocation(line: 230, column: 74, scope: !2237)
!2241 = !DILocation(line: 230, column: 15, scope: !2237)
!2242 = distinct !{!2242, !2233, !2243}
!2243 = !DILocation(line: 233, column: 5, scope: !2234)
!2244 = !DILocation(line: 234, column: 1, scope: !2229)
!2245 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !999, file: !999, line: 47, type: !2246, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !73}
!2248 = !{!2249}
!2249 = !DILocalVariable(name: "addr", arg: 1, scope: !2245, file: !999, line: 47, type: !73)
!2250 = !DILocation(line: 0, scope: !2245)
!2251 = !DILocation(line: 49, column: 15, scope: !2245)
!2252 = !DILocation(line: 51, column: 5, scope: !2245)
!2253 = !{i64 2624}
!2254 = !DILocation(line: 52, column: 5, scope: !2245)
!2255 = !{i64 2651}
!2256 = !DILocation(line: 53, column: 1, scope: !2245)
!2257 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !999, file: !999, line: 56, type: !2258, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !53}
!2260 = !{!2261}
!2261 = !DILocalVariable(name: "source", arg: 1, scope: !2257, file: !999, line: 56, type: !53)
!2262 = !DILocation(line: 0, scope: !2257)
!2263 = !DILocation(line: 58, column: 16, scope: !2257)
!2264 = !DILocation(line: 59, column: 1, scope: !2257)
!2265 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !999, file: !999, line: 61, type: !2266, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!73}
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "mask", scope: !2265, file: !999, line: 63, type: !73)
!2270 = !DILocation(line: 470, column: 3, scope: !2271, inlinedAt: !2275)
!2271 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !2272, file: !2272, line: 466, type: !2266, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2273)
!2272 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!2273 = !{!2274}
!2274 = !DILocalVariable(name: "result", scope: !2271, file: !2272, line: 468, type: !73)
!2275 = distinct !DILocation(line: 64, column: 5, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2265, file: !999, line: 64, column: 5)
!2277 = !{i64 302169}
!2278 = !DILocation(line: 0, scope: !2271, inlinedAt: !2275)
!2279 = !DILocation(line: 0, scope: !2265)
!2280 = !DILocation(line: 330, column: 3, scope: !2281, inlinedAt: !2283)
!2281 = distinct !DISubprogram(name: "__disable_irq", scope: !2272, file: !2272, line: 328, type: !81, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2282)
!2282 = !{}
!2283 = distinct !DILocation(line: 64, column: 5, scope: !2276)
!2284 = !{i64 298833}
!2285 = !DILocation(line: 65, column: 5, scope: !2265)
!2286 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !999, file: !999, line: 68, type: !2246, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2287)
!2287 = !{!2288}
!2288 = !DILocalVariable(name: "mask", arg: 1, scope: !2286, file: !999, line: 68, type: !73)
!2289 = !DILocation(line: 0, scope: !2286)
!2290 = !DILocalVariable(name: "priMask", arg: 1, scope: !2291, file: !2272, line: 481, type: !73)
!2291 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !2272, file: !2272, line: 481, type: !2246, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !2292)
!2292 = !{!2290}
!2293 = !DILocation(line: 0, scope: !2291, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 70, column: 5, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2286, file: !999, line: 70, column: 5)
!2296 = !DILocation(line: 483, column: 3, scope: !2291, inlinedAt: !2294)
!2297 = !{i64 302487}
!2298 = !DILocation(line: 71, column: 1, scope: !2286)
!2299 = distinct !DISubprogram(name: "pinmux_config", scope: !1044, file: !1044, line: 54, type: !2300, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!154, !1070, !73}
!2302 = !{!2303, !2304, !2305}
!2303 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !2299, file: !1044, line: 54, type: !1070)
!2304 = !DILocalVariable(name: "function", arg: 2, scope: !2299, file: !1044, line: 54, type: !73)
!2305 = !DILocalVariable(name: "ePadIndex", scope: !2299, file: !1044, line: 56, type: !1727)
!2306 = !DILocation(line: 0, scope: !2299)
!2307 = !DILocation(line: 60, column: 5, scope: !2299)
!2308 = !DILocation(line: 205, column: 38, scope: !2299)
!2309 = !DILocation(line: 205, column: 5, scope: !2299)
!2310 = !DILocation(line: 207, column: 5, scope: !2299)
!2311 = !DILocation(line: 208, column: 1, scope: !2299)
!2312 = distinct !DISubprogram(name: "spim_Lisr", scope: !142, file: !142, line: 54, type: !81, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2282)
!2313 = !DILocation(line: 56, column: 15, scope: !2312)
!2314 = !DILocation(line: 57, column: 9, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !142, line: 57, column: 9)
!2316 = !DILocation(line: 57, column: 24, scope: !2315)
!2317 = !DILocation(line: 57, column: 33, scope: !2315)
!2318 = !DILocation(line: 57, column: 20, scope: !2315)
!2319 = !DILocation(line: 57, column: 9, scope: !2312)
!2320 = !DILocation(line: 58, column: 29, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2315, file: !142, line: 57, column: 39)
!2322 = !DILocation(line: 58, column: 9, scope: !2321)
!2323 = !DILocation(line: 59, column: 20, scope: !2321)
!2324 = !DILocation(line: 60, column: 5, scope: !2321)
!2325 = !DILocation(line: 61, column: 1, scope: !2312)
!2326 = distinct !DISubprogram(name: "spim_init", scope: !142, file: !142, line: 63, type: !2327, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!154, !73, !73}
!2329 = !{!2330, !2331, !2332}
!2330 = !DILocalVariable(name: "setting", arg: 1, scope: !2326, file: !142, line: 63, type: !73)
!2331 = !DILocalVariable(name: "clock", arg: 2, scope: !2326, file: !142, line: 63, type: !73)
!2332 = !DILocalVariable(name: "ret", scope: !2326, file: !142, line: 65, type: !170)
!2333 = !DILocation(line: 0, scope: !2326)
!2334 = !DILocation(line: 67, column: 5, scope: !2326)
!2335 = !DILocation(line: 69, column: 28, scope: !2326)
!2336 = !DILocation(line: 69, column: 5, scope: !2326)
!2337 = !DILocation(line: 70, column: 89, scope: !2326)
!2338 = !DILocation(line: 71, column: 11, scope: !2326)
!2339 = !DILocation(line: 72, column: 25, scope: !2326)
!2340 = !DILocation(line: 72, column: 5, scope: !2326)
!2341 = !DILocation(line: 73, column: 5, scope: !2326)
!2342 = !DILocation(line: 0, scope: !159)
!2343 = !DILocation(line: 110, column: 24, scope: !159)
!2344 = !DILocation(line: 110, column: 14, scope: !159)
!2345 = !DILocation(line: 111, column: 17, scope: !159)
!2346 = !DILocation(line: 113, column: 14, scope: !159)
!2347 = !DILocation(line: 114, column: 12, scope: !159)
!2348 = !DILocation(line: 116, column: 17, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !159, file: !142, line: 116, column: 9)
!2350 = !DILocation(line: 116, column: 9, scope: !159)
!2351 = !DILocation(line: 120, column: 17, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !159, file: !142, line: 120, column: 9)
!2353 = !DILocation(line: 120, column: 9, scope: !159)
!2354 = !DILocation(line: 126, column: 23, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !142, line: 126, column: 9)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !142, line: 126, column: 9)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !142, line: 124, column: 12)
!2358 = !DILocation(line: 126, column: 9, scope: !2356)
!2359 = !DILocation(line: 127, column: 23, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !142, line: 126, column: 40)
!2361 = !DILocation(line: 128, column: 19, scope: !2360)
!2362 = !DILocation(line: 126, column: 25, scope: !2355)
!2363 = distinct !{!2363, !2358, !2364}
!2364 = !DILocation(line: 129, column: 9, scope: !2356)
!2365 = !DILocation(line: 121, column: 19, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2352, file: !142, line: 120, column: 32)
!2367 = !DILocation(line: 122, column: 15, scope: !2366)
!2368 = !DILocation(line: 123, column: 9, scope: !2366)
!2369 = !DILocation(line: 127, column: 49, scope: !2360)
!2370 = !DILocation(line: 128, column: 74, scope: !2360)
!2371 = !DILocation(line: 128, column: 102, scope: !2360)
!2372 = !DILocation(line: 126, column: 36, scope: !2355)
!2373 = !DILocation(line: 131, column: 13, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2357, file: !142, line: 131, column: 13)
!2375 = !DILocation(line: 0, scope: !2356)
!2376 = !DILocation(line: 131, column: 23, scope: !2374)
!2377 = !DILocation(line: 131, column: 13, scope: !2357)
!2378 = !DILocation(line: 132, column: 27, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !142, line: 132, column: 17)
!2380 = distinct !DILexicalBlock(scope: !2374, file: !142, line: 131, column: 38)
!2381 = !DILocation(line: 132, column: 17, scope: !2380)
!2382 = !DILocation(line: 135, column: 49, scope: !2380)
!2383 = !DILocation(line: 135, column: 23, scope: !2380)
!2384 = !DILocation(line: 136, column: 19, scope: !2380)
!2385 = !DILocation(line: 137, column: 13, scope: !2380)
!2386 = !DILocation(line: 139, column: 49, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2374, file: !142, line: 138, column: 16)
!2388 = !DILocation(line: 139, column: 23, scope: !2387)
!2389 = !DILocation(line: 140, column: 70, scope: !2387)
!2390 = !DILocation(line: 140, column: 109, scope: !2387)
!2391 = !DILocation(line: 140, column: 134, scope: !2387)
!2392 = !DILocation(line: 140, column: 19, scope: !2387)
!2393 = !DILocation(line: 141, column: 13, scope: !2387)
!2394 = !DILocation(line: 144, column: 1, scope: !159)
!2395 = distinct !DISubprogram(name: "spim_fill_in_data", scope: !142, file: !142, line: 76, type: !2396, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !141, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!73, !162, !73, !73, !73}
!2398 = !{!2399, !2400, !2401, !2402, !2403}
!2399 = !DILocalVariable(name: "buf", arg: 1, scope: !2395, file: !142, line: 76, type: !162)
!2400 = !DILocalVariable(name: "write_buf_cnt", arg: 2, scope: !2395, file: !142, line: 76, type: !73)
!2401 = !DILocalVariable(name: "regVal", arg: 3, scope: !2395, file: !142, line: 76, type: !73)
!2402 = !DILocalVariable(name: "remainder", arg: 4, scope: !2395, file: !142, line: 76, type: !73)
!2403 = !DILocalVariable(name: "op_addr", scope: !2395, file: !142, line: 78, type: !73)
!2404 = !DILocation(line: 0, scope: !2395)
!2405 = !DILocation(line: 79, column: 16, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2395, file: !142, line: 79, column: 9)
!2407 = !DILocation(line: 79, column: 9, scope: !2395)
!2408 = !DILocation(line: 80, column: 13, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !142, line: 79, column: 44)
!2410 = !DILocation(line: 81, column: 46, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !142, line: 80, column: 29)
!2412 = distinct !DILexicalBlock(scope: !2409, file: !142, line: 80, column: 13)
!2413 = !DILocation(line: 81, column: 30, scope: !2411)
!2414 = !DILocation(line: 81, column: 24, scope: !2411)
!2415 = !DILocation(line: 82, column: 9, scope: !2411)
!2416 = !DILocation(line: 83, column: 46, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !142, line: 82, column: 36)
!2418 = distinct !DILexicalBlock(scope: !2412, file: !142, line: 82, column: 20)
!2419 = !DILocation(line: 83, column: 30, scope: !2417)
!2420 = !DILocation(line: 83, column: 24, scope: !2417)
!2421 = !DILocation(line: 83, column: 79, scope: !2417)
!2422 = !DILocation(line: 83, column: 138, scope: !2417)
!2423 = !DILocation(line: 83, column: 88, scope: !2417)
!2424 = !DILocation(line: 83, column: 85, scope: !2417)
!2425 = !DILocation(line: 84, column: 9, scope: !2417)
!2426 = !DILocation(line: 85, column: 46, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !142, line: 84, column: 36)
!2428 = distinct !DILexicalBlock(scope: !2418, file: !142, line: 84, column: 20)
!2429 = !DILocation(line: 85, column: 30, scope: !2427)
!2430 = !DILocation(line: 85, column: 24, scope: !2427)
!2431 = !DILocation(line: 85, column: 79, scope: !2427)
!2432 = !DILocation(line: 85, column: 139, scope: !2427)
!2433 = !DILocation(line: 85, column: 89, scope: !2427)
!2434 = !DILocation(line: 85, column: 144, scope: !2427)
!2435 = !DILocation(line: 85, column: 86, scope: !2427)
!2436 = !DILocation(line: 85, column: 203, scope: !2427)
!2437 = !DILocation(line: 85, column: 153, scope: !2427)
!2438 = !DILocation(line: 85, column: 150, scope: !2427)
!2439 = !DILocation(line: 86, column: 9, scope: !2427)
!2440 = !DILocation(line: 87, column: 46, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !142, line: 86, column: 36)
!2442 = distinct !DILexicalBlock(scope: !2428, file: !142, line: 86, column: 20)
!2443 = !DILocation(line: 87, column: 30, scope: !2441)
!2444 = !DILocation(line: 87, column: 24, scope: !2441)
!2445 = !DILocation(line: 87, column: 79, scope: !2441)
!2446 = !DILocation(line: 87, column: 139, scope: !2441)
!2447 = !DILocation(line: 87, column: 89, scope: !2441)
!2448 = !DILocation(line: 87, column: 144, scope: !2441)
!2449 = !DILocation(line: 87, column: 86, scope: !2441)
!2450 = !DILocation(line: 87, column: 204, scope: !2441)
!2451 = !DILocation(line: 87, column: 154, scope: !2441)
!2452 = !DILocation(line: 87, column: 209, scope: !2441)
!2453 = !DILocation(line: 87, column: 151, scope: !2441)
!2454 = !DILocation(line: 87, column: 268, scope: !2441)
!2455 = !DILocation(line: 87, column: 218, scope: !2441)
!2456 = !DILocation(line: 87, column: 215, scope: !2441)
!2457 = !DILocation(line: 88, column: 9, scope: !2441)
!2458 = !DILocation(line: 90, column: 13, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2406, file: !142, line: 89, column: 12)
!2460 = !DILocation(line: 91, column: 46, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !142, line: 90, column: 29)
!2462 = distinct !DILexicalBlock(scope: !2459, file: !142, line: 90, column: 13)
!2463 = !DILocation(line: 91, column: 30, scope: !2461)
!2464 = !DILocation(line: 91, column: 24, scope: !2461)
!2465 = !DILocation(line: 92, column: 9, scope: !2461)
!2466 = !DILocation(line: 93, column: 46, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !142, line: 92, column: 36)
!2468 = distinct !DILexicalBlock(scope: !2462, file: !142, line: 92, column: 20)
!2469 = !DILocation(line: 93, column: 30, scope: !2467)
!2470 = !DILocation(line: 93, column: 24, scope: !2467)
!2471 = !DILocation(line: 93, column: 138, scope: !2467)
!2472 = !DILocation(line: 93, column: 88, scope: !2467)
!2473 = !DILocation(line: 93, column: 143, scope: !2467)
!2474 = !DILocation(line: 93, column: 85, scope: !2467)
!2475 = !DILocation(line: 94, column: 9, scope: !2467)
!2476 = !DILocation(line: 95, column: 46, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !142, line: 94, column: 36)
!2478 = distinct !DILexicalBlock(scope: !2468, file: !142, line: 94, column: 20)
!2479 = !DILocation(line: 95, column: 30, scope: !2477)
!2480 = !DILocation(line: 95, column: 24, scope: !2477)
!2481 = !DILocation(line: 95, column: 138, scope: !2477)
!2482 = !DILocation(line: 95, column: 88, scope: !2477)
!2483 = !DILocation(line: 95, column: 143, scope: !2477)
!2484 = !DILocation(line: 95, column: 85, scope: !2477)
!2485 = !DILocation(line: 95, column: 202, scope: !2477)
!2486 = !DILocation(line: 95, column: 152, scope: !2477)
!2487 = !DILocation(line: 95, column: 207, scope: !2477)
!2488 = !DILocation(line: 95, column: 149, scope: !2477)
!2489 = !DILocation(line: 96, column: 9, scope: !2477)
!2490 = !DILocation(line: 97, column: 46, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !142, line: 96, column: 36)
!2492 = distinct !DILexicalBlock(scope: !2478, file: !142, line: 96, column: 20)
!2493 = !DILocation(line: 97, column: 30, scope: !2491)
!2494 = !DILocation(line: 97, column: 24, scope: !2491)
!2495 = !DILocation(line: 97, column: 138, scope: !2491)
!2496 = !DILocation(line: 97, column: 88, scope: !2491)
!2497 = !DILocation(line: 97, column: 143, scope: !2491)
!2498 = !DILocation(line: 97, column: 85, scope: !2491)
!2499 = !DILocation(line: 97, column: 202, scope: !2491)
!2500 = !DILocation(line: 97, column: 152, scope: !2491)
!2501 = !DILocation(line: 97, column: 207, scope: !2491)
!2502 = !DILocation(line: 97, column: 149, scope: !2491)
!2503 = !DILocation(line: 97, column: 267, scope: !2491)
!2504 = !DILocation(line: 97, column: 217, scope: !2491)
!2505 = !DILocation(line: 97, column: 272, scope: !2491)
!2506 = !DILocation(line: 97, column: 214, scope: !2491)
!2507 = !DILocation(line: 98, column: 9, scope: !2491)
!2508 = !DILocation(line: 100, column: 5, scope: !2395)
!2509 = !DILocation(line: 0, scope: !178)
!2510 = !DILocation(line: 154, column: 24, scope: !178)
!2511 = !DILocation(line: 154, column: 14, scope: !178)
!2512 = !DILocation(line: 155, column: 27, scope: !178)
!2513 = !DILocation(line: 155, column: 17, scope: !178)
!2514 = !DILocation(line: 157, column: 18, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !178, file: !142, line: 157, column: 9)
!2516 = !DILocation(line: 157, column: 9, scope: !178)
!2517 = !DILocation(line: 158, column: 15, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2515, file: !142, line: 157, column: 24)
!2519 = !DILocation(line: 159, column: 9, scope: !2518)
!2520 = !DILocation(line: 162, column: 9, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2515, file: !142, line: 160, column: 12)
!2522 = !DILocation(line: 163, column: 25, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !142, line: 163, column: 9)
!2524 = distinct !DILexicalBlock(scope: !2521, file: !142, line: 163, column: 9)
!2525 = !DILocation(line: 163, column: 23, scope: !2523)
!2526 = !DILocation(line: 163, column: 9, scope: !2524)
!2527 = !DILocation(line: 164, column: 77, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2523, file: !142, line: 163, column: 40)
!2529 = !DILocation(line: 164, column: 73, scope: !2528)
!2530 = !DILocation(line: 164, column: 19, scope: !2528)
!2531 = !DILocation(line: 163, column: 36, scope: !2523)
!2532 = distinct !{!2532, !2526, !2533}
!2533 = !DILocation(line: 165, column: 9, scope: !2524)
!2534 = !DILocation(line: 166, column: 13, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2521, file: !142, line: 166, column: 13)
!2536 = !DILocation(line: 166, column: 23, scope: !2535)
!2537 = !DILocation(line: 166, column: 13, scope: !2521)
!2538 = !DILocation(line: 167, column: 84, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2535, file: !142, line: 166, column: 29)
!2540 = !DILocation(line: 167, column: 73, scope: !2539)
!2541 = !DILocation(line: 167, column: 19, scope: !2539)
!2542 = !DILocation(line: 168, column: 9, scope: !2539)
!2543 = !DILocation(line: 0, scope: !2515)
!2544 = !DILocation(line: 171, column: 1, scope: !178)
!2545 = distinct !DISubprogram(name: "top_xtal_init", scope: !196, file: !196, line: 52, type: !81, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2546)
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "u4RegVal", scope: !2545, file: !196, line: 54, type: !73)
!2548 = !DILocalVariable(name: "reg", scope: !2545, file: !196, line: 55, type: !61)
!2549 = !DILocation(line: 0, scope: !2545)
!2550 = !DILocation(line: 55, column: 25, scope: !2545)
!2551 = !DILocation(line: 56, column: 16, scope: !2545)
!2552 = !DILocation(line: 56, column: 23, scope: !2545)
!2553 = !DILocation(line: 58, column: 16, scope: !2545)
!2554 = !DILocation(line: 61, column: 5, scope: !2545)
!2555 = !DILocation(line: 59, column: 14, scope: !2545)
!2556 = !DILocation(line: 0, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2545, file: !196, line: 61, column: 18)
!2558 = !DILocation(line: 87, column: 38, scope: !2545)
!2559 = !DILocation(line: 88, column: 21, scope: !2545)
!2560 = !DILocation(line: 88, column: 19, scope: !2545)
!2561 = !DILocation(line: 89, column: 5, scope: !2545)
!2562 = !DILocation(line: 90, column: 17, scope: !2545)
!2563 = !DILocation(line: 90, column: 33, scope: !2545)
!2564 = !DILocation(line: 90, column: 5, scope: !2545)
!2565 = !DILocation(line: 91, column: 1, scope: !2545)
!2566 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !196, file: !196, line: 98, type: !2266, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2282)
!2567 = !DILocation(line: 100, column: 12, scope: !2566)
!2568 = !DILocation(line: 100, column: 5, scope: !2566)
!2569 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !196, file: !196, line: 108, type: !2266, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2282)
!2570 = !DILocation(line: 110, column: 12, scope: !2569)
!2571 = !DILocation(line: 110, column: 5, scope: !2569)
!2572 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !196, file: !196, line: 118, type: !81, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2573)
!2573 = !{!2574, !2575}
!2574 = !DILocalVariable(name: "reg", scope: !2572, file: !196, line: 120, type: !72)
!2575 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2572, file: !196, line: 121, type: !71)
!2576 = !DILocation(line: 120, column: 5, scope: !2572)
!2577 = !DILocation(line: 120, column: 23, scope: !2572)
!2578 = !DILocation(line: 0, scope: !2572)
!2579 = !DILocation(line: 123, column: 11, scope: !2572)
!2580 = !DILocation(line: 123, column: 9, scope: !2572)
!2581 = !DILocation(line: 124, column: 12, scope: !2572)
!2582 = !DILocation(line: 124, column: 16, scope: !2572)
!2583 = !DILocation(line: 124, column: 39, scope: !2572)
!2584 = !DILocation(line: 124, column: 9, scope: !2572)
!2585 = !DILocation(line: 126, column: 9, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2572, file: !196, line: 126, column: 9)
!2587 = !DILocation(line: 126, column: 13, scope: !2586)
!2588 = !DILocation(line: 126, column: 9, scope: !2572)
!2589 = !DILocation(line: 127, column: 15, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !196, line: 126, column: 47)
!2591 = !DILocation(line: 127, column: 13, scope: !2590)
!2592 = !DILocation(line: 128, column: 15, scope: !2590)
!2593 = !DILocation(line: 128, column: 19, scope: !2590)
!2594 = !DILocation(line: 128, column: 13, scope: !2590)
!2595 = !DILocation(line: 129, column: 15, scope: !2590)
!2596 = !DILocation(line: 129, column: 19, scope: !2590)
!2597 = !DILocation(line: 129, column: 13, scope: !2590)
!2598 = !DILocation(line: 130, column: 46, scope: !2590)
!2599 = !DILocation(line: 130, column: 9, scope: !2590)
!2600 = !DILocation(line: 132, column: 9, scope: !2590)
!2601 = !DILocation(line: 133, column: 19, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2590, file: !196, line: 132, column: 12)
!2603 = !DILocation(line: 133, column: 17, scope: !2602)
!2604 = !DILocation(line: 134, column: 19, scope: !2602)
!2605 = !DILocation(line: 134, column: 23, scope: !2602)
!2606 = !DILocation(line: 134, column: 17, scope: !2602)
!2607 = !DILocation(line: 135, column: 19, scope: !2590)
!2608 = !DILocation(line: 135, column: 18, scope: !2590)
!2609 = !DILocation(line: 135, column: 9, scope: !2602)
!2610 = distinct !{!2610, !2600, !2611}
!2611 = !DILocation(line: 135, column: 22, scope: !2590)
!2612 = !DILocation(line: 138, column: 1, scope: !2572)
!2613 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2008, file: !2008, line: 176, type: !2009, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2614)
!2614 = !{!2615}
!2615 = !DILocalVariable(name: "Register", arg: 1, scope: !2613, file: !2008, line: 176, type: !2011)
!2616 = !DILocation(line: 0, scope: !2613)
!2617 = !DILocation(line: 178, column: 13, scope: !2613)
!2618 = !DILocation(line: 178, column: 12, scope: !2613)
!2619 = !DILocation(line: 178, column: 5, scope: !2613)
!2620 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2008, file: !2008, line: 171, type: !2621, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !2011, !73}
!2623 = !{!2624, !2625}
!2624 = !DILocalVariable(name: "Register", arg: 1, scope: !2620, file: !2008, line: 171, type: !2011)
!2625 = !DILocalVariable(name: "Value", arg: 2, scope: !2620, file: !2008, line: 171, type: !73)
!2626 = !DILocation(line: 0, scope: !2620)
!2627 = !DILocation(line: 173, column: 6, scope: !2620)
!2628 = !DILocation(line: 173, column: 36, scope: !2620)
!2629 = !DILocation(line: 174, column: 1, scope: !2620)
!2630 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !196, file: !196, line: 145, type: !2631, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !163}
!2633 = !{!2634, !2635, !2636}
!2634 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2630, file: !196, line: 145, type: !163)
!2635 = !DILocalVariable(name: "reg", scope: !2630, file: !196, line: 147, type: !72)
!2636 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2630, file: !196, line: 148, type: !71)
!2637 = !DILocation(line: 0, scope: !2630)
!2638 = !DILocation(line: 147, column: 5, scope: !2630)
!2639 = !DILocation(line: 147, column: 23, scope: !2630)
!2640 = !DILocation(line: 150, column: 11, scope: !2630)
!2641 = !DILocation(line: 150, column: 9, scope: !2630)
!2642 = !DILocation(line: 151, column: 12, scope: !2630)
!2643 = !DILocation(line: 151, column: 16, scope: !2630)
!2644 = !DILocation(line: 151, column: 39, scope: !2630)
!2645 = !DILocation(line: 151, column: 9, scope: !2630)
!2646 = !DILocation(line: 153, column: 9, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2630, file: !196, line: 153, column: 9)
!2648 = !DILocation(line: 153, column: 13, scope: !2647)
!2649 = !DILocation(line: 153, column: 9, scope: !2630)
!2650 = !DILocation(line: 154, column: 15, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2647, file: !196, line: 153, column: 45)
!2652 = !DILocation(line: 154, column: 13, scope: !2651)
!2653 = !DILocation(line: 155, column: 15, scope: !2651)
!2654 = !DILocation(line: 155, column: 19, scope: !2651)
!2655 = !DILocation(line: 155, column: 13, scope: !2651)
!2656 = !DILocation(line: 156, column: 15, scope: !2651)
!2657 = !DILocation(line: 156, column: 19, scope: !2651)
!2658 = !DILocation(line: 156, column: 13, scope: !2651)
!2659 = !DILocation(line: 157, column: 15, scope: !2651)
!2660 = !DILocation(line: 157, column: 13, scope: !2651)
!2661 = !DILocation(line: 158, column: 46, scope: !2651)
!2662 = !DILocation(line: 158, column: 9, scope: !2651)
!2663 = !DILocation(line: 160, column: 15, scope: !2651)
!2664 = !DILocation(line: 160, column: 13, scope: !2651)
!2665 = !DILocation(line: 161, column: 15, scope: !2651)
!2666 = !DILocation(line: 161, column: 19, scope: !2651)
!2667 = !DILocation(line: 161, column: 13, scope: !2651)
!2668 = !DILocation(line: 162, column: 15, scope: !2651)
!2669 = !DILocation(line: 162, column: 19, scope: !2651)
!2670 = !DILocation(line: 162, column: 13, scope: !2651)
!2671 = !DILocation(line: 163, column: 15, scope: !2651)
!2672 = !DILocation(line: 163, column: 19, scope: !2651)
!2673 = !DILocation(line: 163, column: 13, scope: !2651)
!2674 = !DILocation(line: 164, column: 46, scope: !2651)
!2675 = !DILocation(line: 164, column: 9, scope: !2651)
!2676 = !DILocation(line: 166, column: 9, scope: !2651)
!2677 = !DILocation(line: 167, column: 19, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2651, file: !196, line: 166, column: 12)
!2679 = !DILocation(line: 167, column: 17, scope: !2678)
!2680 = !DILocation(line: 168, column: 19, scope: !2678)
!2681 = !DILocation(line: 168, column: 23, scope: !2678)
!2682 = !DILocation(line: 168, column: 17, scope: !2678)
!2683 = !DILocation(line: 169, column: 19, scope: !2651)
!2684 = !DILocation(line: 169, column: 18, scope: !2651)
!2685 = !DILocation(line: 169, column: 9, scope: !2678)
!2686 = distinct !{!2686, !2676, !2687}
!2687 = !DILocation(line: 169, column: 22, scope: !2651)
!2688 = !DILocation(line: 171, column: 15, scope: !2651)
!2689 = !DILocation(line: 171, column: 13, scope: !2651)
!2690 = !DILocation(line: 172, column: 15, scope: !2651)
!2691 = !DILocation(line: 172, column: 19, scope: !2651)
!2692 = !DILocation(line: 172, column: 13, scope: !2651)
!2693 = !DILocation(line: 173, column: 15, scope: !2651)
!2694 = !DILocation(line: 173, column: 19, scope: !2651)
!2695 = !DILocation(line: 173, column: 13, scope: !2651)
!2696 = !DILocation(line: 174, column: 5, scope: !2651)
!2697 = !DILocation(line: 176, column: 11, scope: !2630)
!2698 = !DILocation(line: 176, column: 9, scope: !2630)
!2699 = !DILocation(line: 177, column: 9, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2630, file: !196, line: 177, column: 9)
!2701 = !DILocation(line: 0, scope: !2700)
!2702 = !DILocation(line: 177, column: 9, scope: !2630)
!2703 = !DILocation(line: 178, column: 19, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !196, line: 177, column: 17)
!2705 = !DILocation(line: 178, column: 13, scope: !2704)
!2706 = !DILocation(line: 179, column: 5, scope: !2704)
!2707 = !DILocation(line: 180, column: 13, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2700, file: !196, line: 179, column: 12)
!2709 = !DILocation(line: 182, column: 42, scope: !2630)
!2710 = !DILocation(line: 182, column: 5, scope: !2630)
!2711 = !DILocation(line: 184, column: 1, scope: !2630)
!2712 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !196, file: !196, line: 191, type: !81, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2713)
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "reg", scope: !2712, file: !196, line: 193, type: !72)
!2715 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2712, file: !196, line: 194, type: !71)
!2716 = !DILocation(line: 193, column: 5, scope: !2712)
!2717 = !DILocation(line: 193, column: 23, scope: !2712)
!2718 = !DILocation(line: 0, scope: !2712)
!2719 = !DILocation(line: 196, column: 11, scope: !2712)
!2720 = !DILocation(line: 196, column: 9, scope: !2712)
!2721 = !DILocation(line: 197, column: 11, scope: !2712)
!2722 = !DILocation(line: 197, column: 15, scope: !2712)
!2723 = !DILocation(line: 197, column: 9, scope: !2712)
!2724 = !DILocation(line: 198, column: 11, scope: !2712)
!2725 = !DILocation(line: 198, column: 15, scope: !2712)
!2726 = !DILocation(line: 198, column: 9, scope: !2712)
!2727 = !DILocation(line: 199, column: 11, scope: !2712)
!2728 = !DILocation(line: 199, column: 9, scope: !2712)
!2729 = !DILocation(line: 200, column: 42, scope: !2712)
!2730 = !DILocation(line: 200, column: 5, scope: !2712)
!2731 = !DILocation(line: 202, column: 11, scope: !2712)
!2732 = !DILocation(line: 202, column: 9, scope: !2712)
!2733 = !DILocation(line: 203, column: 11, scope: !2712)
!2734 = !DILocation(line: 203, column: 15, scope: !2712)
!2735 = !DILocation(line: 203, column: 9, scope: !2712)
!2736 = !DILocation(line: 204, column: 11, scope: !2712)
!2737 = !DILocation(line: 204, column: 15, scope: !2712)
!2738 = !DILocation(line: 204, column: 9, scope: !2712)
!2739 = !DILocation(line: 205, column: 11, scope: !2712)
!2740 = !DILocation(line: 205, column: 9, scope: !2712)
!2741 = !DILocation(line: 206, column: 42, scope: !2712)
!2742 = !DILocation(line: 206, column: 5, scope: !2712)
!2743 = !DILocation(line: 209, column: 1, scope: !2712)
!2744 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !196, file: !196, line: 216, type: !81, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2745)
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "reg", scope: !2744, file: !196, line: 218, type: !72)
!2747 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2744, file: !196, line: 219, type: !71)
!2748 = !DILocation(line: 218, column: 5, scope: !2744)
!2749 = !DILocation(line: 218, column: 23, scope: !2744)
!2750 = !DILocation(line: 0, scope: !2744)
!2751 = !DILocation(line: 222, column: 11, scope: !2744)
!2752 = !DILocation(line: 222, column: 9, scope: !2744)
!2753 = !DILocation(line: 223, column: 11, scope: !2744)
!2754 = !DILocation(line: 223, column: 15, scope: !2744)
!2755 = !DILocation(line: 223, column: 9, scope: !2744)
!2756 = !DILocation(line: 224, column: 11, scope: !2744)
!2757 = !DILocation(line: 224, column: 9, scope: !2744)
!2758 = !DILocation(line: 225, column: 39, scope: !2744)
!2759 = !DILocation(line: 225, column: 5, scope: !2744)
!2760 = !DILocation(line: 228, column: 11, scope: !2744)
!2761 = !DILocation(line: 228, column: 9, scope: !2744)
!2762 = !DILocation(line: 229, column: 11, scope: !2744)
!2763 = !DILocation(line: 229, column: 15, scope: !2744)
!2764 = !DILocation(line: 229, column: 9, scope: !2744)
!2765 = !DILocation(line: 230, column: 11, scope: !2744)
!2766 = !DILocation(line: 230, column: 9, scope: !2744)
!2767 = !DILocation(line: 231, column: 39, scope: !2744)
!2768 = !DILocation(line: 231, column: 5, scope: !2744)
!2769 = !DILocation(line: 233, column: 5, scope: !2744)
!2770 = !DILocation(line: 233, column: 12, scope: !2744)
!2771 = !DILocation(line: 233, column: 19, scope: !2744)
!2772 = !DILocation(line: 233, column: 16, scope: !2744)
!2773 = distinct !{!2773, !2769, !2774}
!2774 = !DILocation(line: 233, column: 52, scope: !2744)
!2775 = !DILocation(line: 235, column: 21, scope: !2744)
!2776 = !DILocation(line: 235, column: 19, scope: !2744)
!2777 = !DILocation(line: 236, column: 5, scope: !2744)
!2778 = !DILocation(line: 237, column: 17, scope: !2744)
!2779 = !DILocation(line: 237, column: 33, scope: !2744)
!2780 = !DILocation(line: 237, column: 5, scope: !2744)
!2781 = !DILocation(line: 239, column: 1, scope: !2744)
!2782 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !196, file: !196, line: 246, type: !81, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2783)
!2783 = !{!2784, !2785}
!2784 = !DILocalVariable(name: "reg", scope: !2782, file: !196, line: 248, type: !72)
!2785 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2782, file: !196, line: 249, type: !71)
!2786 = !DILocation(line: 248, column: 5, scope: !2782)
!2787 = !DILocation(line: 248, column: 23, scope: !2782)
!2788 = !DILocation(line: 0, scope: !2782)
!2789 = !DILocation(line: 252, column: 5, scope: !2782)
!2790 = !DILocation(line: 255, column: 11, scope: !2782)
!2791 = !DILocation(line: 255, column: 9, scope: !2782)
!2792 = !DILocation(line: 256, column: 11, scope: !2782)
!2793 = !DILocation(line: 256, column: 15, scope: !2782)
!2794 = !DILocation(line: 256, column: 9, scope: !2782)
!2795 = !DILocation(line: 257, column: 11, scope: !2782)
!2796 = !DILocation(line: 257, column: 15, scope: !2782)
!2797 = !DILocation(line: 257, column: 9, scope: !2782)
!2798 = !DILocation(line: 258, column: 39, scope: !2782)
!2799 = !DILocation(line: 258, column: 5, scope: !2782)
!2800 = !DILocation(line: 260, column: 5, scope: !2782)
!2801 = !DILocation(line: 260, column: 12, scope: !2782)
!2802 = !DILocation(line: 260, column: 19, scope: !2782)
!2803 = !DILocation(line: 260, column: 16, scope: !2782)
!2804 = distinct !{!2804, !2800, !2805}
!2805 = !DILocation(line: 260, column: 52, scope: !2782)
!2806 = !DILocation(line: 263, column: 11, scope: !2782)
!2807 = !DILocation(line: 263, column: 9, scope: !2782)
!2808 = !DILocation(line: 264, column: 11, scope: !2782)
!2809 = !DILocation(line: 264, column: 15, scope: !2782)
!2810 = !DILocation(line: 264, column: 9, scope: !2782)
!2811 = !DILocation(line: 265, column: 11, scope: !2782)
!2812 = !DILocation(line: 265, column: 15, scope: !2782)
!2813 = !DILocation(line: 265, column: 9, scope: !2782)
!2814 = !DILocation(line: 266, column: 39, scope: !2782)
!2815 = !DILocation(line: 266, column: 5, scope: !2782)
!2816 = !DILocation(line: 269, column: 11, scope: !2782)
!2817 = !DILocation(line: 269, column: 9, scope: !2782)
!2818 = !DILocation(line: 270, column: 11, scope: !2782)
!2819 = !DILocation(line: 270, column: 15, scope: !2782)
!2820 = !DILocation(line: 270, column: 9, scope: !2782)
!2821 = !DILocation(line: 271, column: 11, scope: !2782)
!2822 = !DILocation(line: 271, column: 15, scope: !2782)
!2823 = !DILocation(line: 271, column: 9, scope: !2782)
!2824 = !DILocation(line: 272, column: 39, scope: !2782)
!2825 = !DILocation(line: 272, column: 5, scope: !2782)
!2826 = !DILocation(line: 273, column: 19, scope: !2782)
!2827 = !DILocation(line: 274, column: 5, scope: !2782)
!2828 = !DILocation(line: 275, column: 17, scope: !2782)
!2829 = !DILocation(line: 275, column: 33, scope: !2782)
!2830 = !DILocation(line: 275, column: 5, scope: !2782)
!2831 = !DILocation(line: 277, column: 1, scope: !2782)
!2832 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !196, file: !196, line: 284, type: !81, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2833)
!2833 = !{!2834, !2835}
!2834 = !DILocalVariable(name: "reg", scope: !2832, file: !196, line: 286, type: !72)
!2835 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2832, file: !196, line: 287, type: !71)
!2836 = !DILocation(line: 286, column: 5, scope: !2832)
!2837 = !DILocation(line: 286, column: 23, scope: !2832)
!2838 = !DILocation(line: 0, scope: !2832)
!2839 = !DILocation(line: 290, column: 5, scope: !2832)
!2840 = !DILocation(line: 293, column: 11, scope: !2832)
!2841 = !DILocation(line: 293, column: 9, scope: !2832)
!2842 = !DILocation(line: 294, column: 11, scope: !2832)
!2843 = !DILocation(line: 294, column: 15, scope: !2832)
!2844 = !DILocation(line: 294, column: 9, scope: !2832)
!2845 = !DILocation(line: 295, column: 11, scope: !2832)
!2846 = !DILocation(line: 295, column: 15, scope: !2832)
!2847 = !DILocation(line: 295, column: 9, scope: !2832)
!2848 = !DILocation(line: 296, column: 39, scope: !2832)
!2849 = !DILocation(line: 296, column: 5, scope: !2832)
!2850 = !DILocation(line: 298, column: 5, scope: !2832)
!2851 = !DILocation(line: 298, column: 12, scope: !2832)
!2852 = !DILocation(line: 298, column: 19, scope: !2832)
!2853 = !DILocation(line: 298, column: 16, scope: !2832)
!2854 = distinct !{!2854, !2850, !2855}
!2855 = !DILocation(line: 298, column: 52, scope: !2832)
!2856 = !DILocation(line: 301, column: 11, scope: !2832)
!2857 = !DILocation(line: 301, column: 9, scope: !2832)
!2858 = !DILocation(line: 302, column: 11, scope: !2832)
!2859 = !DILocation(line: 302, column: 15, scope: !2832)
!2860 = !DILocation(line: 302, column: 9, scope: !2832)
!2861 = !DILocation(line: 303, column: 11, scope: !2832)
!2862 = !DILocation(line: 303, column: 15, scope: !2832)
!2863 = !DILocation(line: 303, column: 9, scope: !2832)
!2864 = !DILocation(line: 304, column: 39, scope: !2832)
!2865 = !DILocation(line: 304, column: 5, scope: !2832)
!2866 = !DILocation(line: 307, column: 11, scope: !2832)
!2867 = !DILocation(line: 307, column: 9, scope: !2832)
!2868 = !DILocation(line: 308, column: 11, scope: !2832)
!2869 = !DILocation(line: 308, column: 15, scope: !2832)
!2870 = !DILocation(line: 308, column: 9, scope: !2832)
!2871 = !DILocation(line: 309, column: 11, scope: !2832)
!2872 = !DILocation(line: 309, column: 15, scope: !2832)
!2873 = !DILocation(line: 309, column: 9, scope: !2832)
!2874 = !DILocation(line: 310, column: 39, scope: !2832)
!2875 = !DILocation(line: 310, column: 5, scope: !2832)
!2876 = !DILocation(line: 311, column: 19, scope: !2832)
!2877 = !DILocation(line: 312, column: 5, scope: !2832)
!2878 = !DILocation(line: 313, column: 17, scope: !2832)
!2879 = !DILocation(line: 313, column: 33, scope: !2832)
!2880 = !DILocation(line: 313, column: 5, scope: !2832)
!2881 = !DILocation(line: 315, column: 1, scope: !2832)
!2882 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !196, file: !196, line: 323, type: !81, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2883)
!2883 = !{!2884, !2885}
!2884 = !DILocalVariable(name: "reg", scope: !2882, file: !196, line: 325, type: !72)
!2885 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2882, file: !196, line: 326, type: !71)
!2886 = !DILocation(line: 325, column: 5, scope: !2882)
!2887 = !DILocation(line: 325, column: 23, scope: !2882)
!2888 = !DILocation(line: 0, scope: !2882)
!2889 = !DILocation(line: 329, column: 5, scope: !2882)
!2890 = !DILocation(line: 332, column: 11, scope: !2882)
!2891 = !DILocation(line: 332, column: 9, scope: !2882)
!2892 = !DILocation(line: 333, column: 11, scope: !2882)
!2893 = !DILocation(line: 333, column: 15, scope: !2882)
!2894 = !DILocation(line: 333, column: 9, scope: !2882)
!2895 = !DILocation(line: 334, column: 11, scope: !2882)
!2896 = !DILocation(line: 334, column: 9, scope: !2882)
!2897 = !DILocation(line: 335, column: 39, scope: !2882)
!2898 = !DILocation(line: 335, column: 5, scope: !2882)
!2899 = !DILocation(line: 337, column: 5, scope: !2882)
!2900 = !DILocation(line: 337, column: 12, scope: !2882)
!2901 = !DILocation(line: 337, column: 19, scope: !2882)
!2902 = !DILocation(line: 337, column: 16, scope: !2882)
!2903 = distinct !{!2903, !2899, !2904}
!2904 = !DILocation(line: 337, column: 52, scope: !2882)
!2905 = !DILocation(line: 340, column: 11, scope: !2882)
!2906 = !DILocation(line: 340, column: 9, scope: !2882)
!2907 = !DILocation(line: 341, column: 11, scope: !2882)
!2908 = !DILocation(line: 341, column: 15, scope: !2882)
!2909 = !DILocation(line: 341, column: 9, scope: !2882)
!2910 = !DILocation(line: 342, column: 11, scope: !2882)
!2911 = !DILocation(line: 342, column: 15, scope: !2882)
!2912 = !DILocation(line: 342, column: 9, scope: !2882)
!2913 = !DILocation(line: 343, column: 39, scope: !2882)
!2914 = !DILocation(line: 343, column: 5, scope: !2882)
!2915 = !DILocation(line: 344, column: 19, scope: !2882)
!2916 = !DILocation(line: 345, column: 5, scope: !2882)
!2917 = !DILocation(line: 346, column: 17, scope: !2882)
!2918 = !DILocation(line: 346, column: 33, scope: !2882)
!2919 = !DILocation(line: 346, column: 5, scope: !2882)
!2920 = !DILocation(line: 348, column: 1, scope: !2882)
!2921 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !196, file: !196, line: 353, type: !81, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !195, retainedNodes: !2922)
!2922 = !{!2923, !2924}
!2923 = !DILocalVariable(name: "reg", scope: !2921, file: !196, line: 355, type: !63)
!2924 = !DILocalVariable(name: "pTopCfgHclk", scope: !2921, file: !196, line: 356, type: !62)
!2925 = !DILocation(line: 355, column: 5, scope: !2921)
!2926 = !DILocation(line: 355, column: 21, scope: !2921)
!2927 = !DILocation(line: 0, scope: !2921)
!2928 = !DILocation(line: 358, column: 11, scope: !2921)
!2929 = !DILocation(line: 358, column: 9, scope: !2921)
!2930 = !DILocation(line: 359, column: 11, scope: !2921)
!2931 = !DILocation(line: 359, column: 15, scope: !2921)
!2932 = !DILocation(line: 359, column: 9, scope: !2921)
!2933 = !DILocation(line: 360, column: 11, scope: !2921)
!2934 = !DILocation(line: 360, column: 9, scope: !2921)
!2935 = !DILocation(line: 361, column: 37, scope: !2921)
!2936 = !DILocation(line: 361, column: 5, scope: !2921)
!2937 = !DILocation(line: 362, column: 1, scope: !2921)
!2938 = distinct !DISubprogram(name: "getc", scope: !206, file: !206, line: 68, type: !2939, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!7}
!2941 = !{!2942}
!2942 = !DILocalVariable(name: "rc", scope: !2938, file: !206, line: 71, type: !7)
!2943 = !DILocation(line: 71, column: 14, scope: !2938)
!2944 = !DILocation(line: 0, scope: !2938)
!2945 = !DILocation(line: 72, column: 5, scope: !2938)
!2946 = distinct !DISubprogram(name: "getc_nowait", scope: !206, file: !206, line: 80, type: !2939, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2947)
!2947 = !{!2948}
!2948 = !DILocalVariable(name: "c", scope: !2946, file: !206, line: 82, type: !575)
!2949 = !DILocation(line: 84, column: 9, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2946, file: !206, line: 84, column: 9)
!2951 = !DILocation(line: 84, column: 40, scope: !2950)
!2952 = !DILocation(line: 84, column: 9, scope: !2946)
!2953 = !DILocation(line: 85, column: 13, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !206, line: 84, column: 47)
!2955 = !DILocation(line: 86, column: 16, scope: !2954)
!2956 = !DILocation(line: 0, scope: !2946)
!2957 = !DILocation(line: 86, column: 9, scope: !2954)
!2958 = !DILocation(line: 0, scope: !2950)
!2959 = !DILocation(line: 90, column: 1, scope: !2946)
!2960 = distinct !DISubprogram(name: "uart_output_char", scope: !206, file: !206, line: 93, type: !2961, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2964)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{null, !2963, !70}
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !209, line: 75, baseType: !208)
!2964 = !{!2965, !2966, !2967}
!2965 = !DILocalVariable(name: "port_no", arg: 1, scope: !2960, file: !206, line: 93, type: !2963)
!2966 = !DILocalVariable(name: "c", arg: 2, scope: !2960, file: !206, line: 93, type: !70)
!2967 = !DILocalVariable(name: "base", scope: !2960, file: !206, line: 95, type: !53)
!2968 = !DILocation(line: 0, scope: !2960)
!2969 = !DILocation(line: 95, column: 25, scope: !2960)
!2970 = !DILocation(line: 97, column: 5, scope: !2960)
!2971 = !DILocation(line: 97, column: 14, scope: !2960)
!2972 = !DILocation(line: 97, column: 42, scope: !2960)
!2973 = !DILocation(line: 97, column: 12, scope: !2960)
!2974 = distinct !{!2974, !2970, !2975}
!2975 = !DILocation(line: 98, column: 9, scope: !2960)
!2976 = !DILocation(line: 99, column: 35, scope: !2960)
!2977 = !DILocation(line: 99, column: 5, scope: !2960)
!2978 = !DILocation(line: 99, column: 33, scope: !2960)
!2979 = !DILocation(line: 102, column: 1, scope: !2960)
!2980 = distinct !DISubprogram(name: "uart_input_char", scope: !206, file: !206, line: 106, type: !2981, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!163, !2963}
!2983 = !{!2984, !2985, !2986}
!2984 = !DILocalVariable(name: "port_no", arg: 1, scope: !2980, file: !206, line: 106, type: !2963)
!2985 = !DILocalVariable(name: "base", scope: !2980, file: !206, line: 108, type: !53)
!2986 = !DILocalVariable(name: "c", scope: !2980, file: !206, line: 109, type: !575)
!2987 = !DILocation(line: 0, scope: !2980)
!2988 = !DILocation(line: 108, column: 25, scope: !2980)
!2989 = !DILocation(line: 111, column: 5, scope: !2980)
!2990 = !DILocation(line: 111, column: 14, scope: !2980)
!2991 = !DILocation(line: 111, column: 42, scope: !2980)
!2992 = !DILocation(line: 111, column: 12, scope: !2980)
!2993 = distinct !{!2993, !2989, !2994}
!2994 = !DILocation(line: 112, column: 9, scope: !2980)
!2995 = !DILocation(line: 114, column: 9, scope: !2980)
!2996 = !DILocation(line: 116, column: 5, scope: !2980)
!2997 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !206, file: !206, line: 120, type: !2998, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!73, !2963}
!3000 = !{!3001, !3002, !3003}
!3001 = !DILocalVariable(name: "port_no", arg: 1, scope: !2997, file: !206, line: 120, type: !2963)
!3002 = !DILocalVariable(name: "base", scope: !2997, file: !206, line: 122, type: !53)
!3003 = !DILocalVariable(name: "c", scope: !2997, file: !206, line: 123, type: !575)
!3004 = !DILocation(line: 0, scope: !2997)
!3005 = !DILocation(line: 122, column: 25, scope: !2997)
!3006 = !DILocation(line: 125, column: 9, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2997, file: !206, line: 125, column: 9)
!3008 = !DILocation(line: 125, column: 37, scope: !3007)
!3009 = !DILocation(line: 125, column: 9, scope: !2997)
!3010 = !DILocation(line: 126, column: 13, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3007, file: !206, line: 125, column: 44)
!3012 = !DILocation(line: 127, column: 16, scope: !3011)
!3013 = !DILocation(line: 127, column: 9, scope: !3011)
!3014 = !DILocation(line: 0, scope: !3007)
!3015 = !DILocation(line: 131, column: 1, scope: !2997)
!3016 = distinct !DISubprogram(name: "halUART_HWInit", scope: !206, file: !206, line: 136, type: !3017, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3019)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !2963}
!3019 = !{!3020}
!3020 = !DILocalVariable(name: "u_port", arg: 1, scope: !3016, file: !206, line: 136, type: !2963)
!3021 = !DILocation(line: 0, scope: !3016)
!3022 = !DILocation(line: 139, column: 5, scope: !3016)
!3023 = !DILocation(line: 140, column: 9, scope: !3016)
!3024 = !DILocation(line: 153, column: 5, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !206, line: 147, column: 38)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !206, line: 147, column: 16)
!3027 = distinct !DILexicalBlock(scope: !3016, file: !206, line: 140, column: 9)
!3028 = !DILocation(line: 0, scope: !3027)
!3029 = !DILocation(line: 155, column: 1, scope: !3016)
!3030 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !206, file: !206, line: 158, type: !3031, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3035)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !2963, !73, !3033, !3033, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !74, line: 36, baseType: !3034)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !76, line: 57, baseType: !235)
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3051, !3052}
!3036 = !DILocalVariable(name: "u_port", arg: 1, scope: !3030, file: !206, line: 158, type: !2963)
!3037 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3030, file: !206, line: 158, type: !73)
!3038 = !DILocalVariable(name: "databit", arg: 3, scope: !3030, file: !206, line: 158, type: !3033)
!3039 = !DILocalVariable(name: "parity", arg: 4, scope: !3030, file: !206, line: 158, type: !3033)
!3040 = !DILocalVariable(name: "stopbit", arg: 5, scope: !3030, file: !206, line: 158, type: !3033)
!3041 = !DILocalVariable(name: "control_word", scope: !3030, file: !206, line: 160, type: !3033)
!3042 = !DILocalVariable(name: "UART_BASE", scope: !3030, file: !206, line: 161, type: !73)
!3043 = !DILocalVariable(name: "data", scope: !3030, file: !206, line: 162, type: !73)
!3044 = !DILocalVariable(name: "uart_lcr", scope: !3030, file: !206, line: 162, type: !73)
!3045 = !DILocalVariable(name: "high_speed_div", scope: !3030, file: !206, line: 162, type: !73)
!3046 = !DILocalVariable(name: "sample_count", scope: !3030, file: !206, line: 162, type: !73)
!3047 = !DILocalVariable(name: "sample_point", scope: !3030, file: !206, line: 162, type: !73)
!3048 = !DILocalVariable(name: "fraction", scope: !3030, file: !206, line: 162, type: !73)
!3049 = !DILocalVariable(name: "fraction_L_mapping", scope: !3030, file: !206, line: 163, type: !3050)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3033, size: 176, elements: !906)
!3051 = !DILocalVariable(name: "fraction_M_mapping", scope: !3030, file: !206, line: 164, type: !3050)
!3052 = !DILocalVariable(name: "status", scope: !3030, file: !206, line: 165, type: !154)
!3053 = !DILocation(line: 0, scope: !3030)
!3054 = !DILocation(line: 163, column: 15, scope: !3030)
!3055 = !DILocation(line: 164, column: 15, scope: !3030)
!3056 = !DILocation(line: 166, column: 20, scope: !3030)
!3057 = !DILocation(line: 166, column: 18, scope: !3030)
!3058 = !DILocation(line: 168, column: 9, scope: !3030)
!3059 = !DILocation(line: 176, column: 5, scope: !3030)
!3060 = !DILocation(line: 176, column: 44, scope: !3030)
!3061 = !DILocation(line: 177, column: 16, scope: !3030)
!3062 = !DILocation(line: 178, column: 50, scope: !3030)
!3063 = !DILocation(line: 178, column: 38, scope: !3030)
!3064 = !DILocation(line: 179, column: 12, scope: !3030)
!3065 = !DILocation(line: 179, column: 25, scope: !3030)
!3066 = !DILocation(line: 180, column: 28, scope: !3030)
!3067 = !DILocation(line: 180, column: 34, scope: !3030)
!3068 = !DILocation(line: 182, column: 29, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3030, file: !206, line: 181, column: 5)
!3070 = !DILocation(line: 182, column: 46, scope: !3069)
!3071 = !DILocation(line: 183, column: 26, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3069, file: !206, line: 183, column: 13)
!3073 = !DILocation(line: 183, column: 13, scope: !3069)
!3074 = !DILocation(line: 192, column: 30, scope: !3030)
!3075 = !DILocation(line: 192, column: 35, scope: !3030)
!3076 = !DILocation(line: 192, column: 46, scope: !3030)
!3077 = !DILocation(line: 192, column: 74, scope: !3030)
!3078 = !DILocation(line: 192, column: 53, scope: !3030)
!3079 = !DILocation(line: 192, column: 80, scope: !3030)
!3080 = !DILocation(line: 193, column: 56, scope: !3030)
!3081 = !DILocation(line: 193, column: 5, scope: !3030)
!3082 = !DILocation(line: 193, column: 38, scope: !3030)
!3083 = !DILocation(line: 194, column: 57, scope: !3030)
!3084 = !DILocation(line: 194, column: 63, scope: !3030)
!3085 = !DILocation(line: 194, column: 5, scope: !3030)
!3086 = !DILocation(line: 194, column: 38, scope: !3030)
!3087 = !DILocation(line: 195, column: 5, scope: !3030)
!3088 = !DILocation(line: 195, column: 45, scope: !3030)
!3089 = !DILocation(line: 196, column: 5, scope: !3030)
!3090 = !DILocation(line: 196, column: 47, scope: !3030)
!3091 = !DILocation(line: 197, column: 46, scope: !3030)
!3092 = !DILocation(line: 197, column: 5, scope: !3030)
!3093 = !DILocation(line: 197, column: 44, scope: !3030)
!3094 = !DILocation(line: 198, column: 46, scope: !3030)
!3095 = !DILocation(line: 198, column: 5, scope: !3030)
!3096 = !DILocation(line: 198, column: 44, scope: !3030)
!3097 = !DILocation(line: 199, column: 38, scope: !3030)
!3098 = !DILocation(line: 200, column: 5, scope: !3030)
!3099 = !DILocation(line: 200, column: 38, scope: !3030)
!3100 = !DILocation(line: 202, column: 20, scope: !3030)
!3101 = !DILocation(line: 203, column: 18, scope: !3030)
!3102 = !DILocation(line: 205, column: 18, scope: !3030)
!3103 = !DILocation(line: 207, column: 18, scope: !3030)
!3104 = !DILocation(line: 208, column: 18, scope: !3030)
!3105 = !DILocation(line: 209, column: 5, scope: !3030)
!3106 = !DILocation(line: 213, column: 1, scope: !3030)
!3107 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !206, file: !206, line: 215, type: !3108, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3111)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !2963, !154, !3110}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 32)
!3111 = !{!3112, !3113, !3114}
!3112 = !DILocalVariable(name: "u_port", arg: 1, scope: !3107, file: !206, line: 215, type: !2963)
!3113 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3107, file: !206, line: 215, type: !154)
!3114 = !DILocalVariable(name: "length", arg: 3, scope: !3107, file: !206, line: 215, type: !3110)
!3115 = !DILocation(line: 0, scope: !3107)
!3116 = !DILocation(line: 217, column: 16, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3107, file: !206, line: 217, column: 9)
!3118 = !DILocation(line: 0, scope: !3117)
!3119 = !DILocation(line: 217, column: 9, scope: !3107)
!3120 = !DILocation(line: 218, column: 13, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !206, line: 217, column: 31)
!3122 = !DILocation(line: 219, column: 23, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !206, line: 218, column: 20)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !206, line: 218, column: 13)
!3125 = !DILocation(line: 220, column: 9, scope: !3123)
!3126 = !DILocation(line: 221, column: 23, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3124, file: !206, line: 220, column: 16)
!3128 = !DILocation(line: 221, column: 21, scope: !3127)
!3129 = !DILocation(line: 222, column: 24, scope: !3127)
!3130 = !DILocation(line: 222, column: 21, scope: !3127)
!3131 = !DILocation(line: 225, column: 13, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3117, file: !206, line: 224, column: 12)
!3133 = !DILocation(line: 226, column: 23, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !206, line: 225, column: 20)
!3135 = distinct !DILexicalBlock(scope: !3132, file: !206, line: 225, column: 13)
!3136 = !DILocation(line: 227, column: 9, scope: !3134)
!3137 = !DILocation(line: 228, column: 23, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3135, file: !206, line: 227, column: 16)
!3139 = !DILocation(line: 228, column: 21, scope: !3138)
!3140 = !DILocation(line: 229, column: 24, scope: !3138)
!3141 = !DILocation(line: 229, column: 21, scope: !3138)
!3142 = !DILocation(line: 233, column: 5, scope: !3107)
!3143 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !206, file: !206, line: 236, type: !3144, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3146)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{null, !2963, !162, !73}
!3146 = !{!3147, !3148, !3149, !3150}
!3147 = !DILocalVariable(name: "u_port", arg: 1, scope: !3143, file: !206, line: 236, type: !2963)
!3148 = !DILocalVariable(name: "data", arg: 2, scope: !3143, file: !206, line: 236, type: !162)
!3149 = !DILocalVariable(name: "length", arg: 3, scope: !3143, file: !206, line: 236, type: !73)
!3150 = !DILocalVariable(name: "idx", scope: !3143, file: !206, line: 238, type: !64)
!3151 = !DILocation(line: 0, scope: !3143)
!3152 = !DILocation(line: 239, column: 23, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !206, line: 239, column: 5)
!3154 = distinct !DILexicalBlock(scope: !3143, file: !206, line: 239, column: 5)
!3155 = !DILocation(line: 239, column: 5, scope: !3154)
!3156 = !DILocation(line: 240, column: 13, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !206, line: 239, column: 40)
!3158 = !DILocation(line: 244, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !206, line: 242, column: 42)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !206, line: 242, column: 20)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !206, line: 240, column: 13)
!3162 = !DILocation(line: 0, scope: !3161)
!3163 = !DILocation(line: 239, column: 36, scope: !3153)
!3164 = distinct !{!3164, !3155, !3165}
!3165 = !DILocation(line: 246, column: 5, scope: !3154)
!3166 = !DILocation(line: 249, column: 1, scope: !3143)
!3167 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !206, file: !206, line: 251, type: !3168, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3172)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null, !2963, !3170, !73}
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!3172 = !{!3173, !3174, !3175, !3176}
!3173 = !DILocalVariable(name: "u_port", arg: 1, scope: !3167, file: !206, line: 251, type: !2963)
!3174 = !DILocalVariable(name: "data", arg: 2, scope: !3167, file: !206, line: 251, type: !3170)
!3175 = !DILocalVariable(name: "length", arg: 3, scope: !3167, file: !206, line: 251, type: !73)
!3176 = !DILocalVariable(name: "idx", scope: !3167, file: !206, line: 253, type: !64)
!3177 = !DILocation(line: 0, scope: !3167)
!3178 = !DILocation(line: 254, column: 23, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !206, line: 254, column: 5)
!3180 = distinct !DILexicalBlock(scope: !3167, file: !206, line: 254, column: 5)
!3181 = !DILocation(line: 254, column: 5, scope: !3180)
!3182 = !DILocation(line: 255, column: 13, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !206, line: 254, column: 40)
!3184 = !DILocation(line: 256, column: 61, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !206, line: 255, column: 35)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !206, line: 255, column: 13)
!3187 = !DILocation(line: 256, column: 59, scope: !3185)
!3188 = !DILocation(line: 257, column: 9, scope: !3185)
!3189 = !DILocation(line: 258, column: 61, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !206, line: 257, column: 42)
!3191 = distinct !DILexicalBlock(scope: !3186, file: !206, line: 257, column: 20)
!3192 = !DILocation(line: 258, column: 59, scope: !3190)
!3193 = !DILocation(line: 259, column: 9, scope: !3190)
!3194 = !DILocation(line: 254, column: 36, scope: !3179)
!3195 = distinct !{!3195, !3181, !3196}
!3196 = !DILocation(line: 261, column: 5, scope: !3180)
!3197 = !DILocation(line: 264, column: 1, scope: !3167)
!3198 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !206, file: !206, line: 266, type: !3199, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !2963, !162, !73, !73}
!3201 = !{!3202, !3203, !3204, !3205}
!3202 = !DILocalVariable(name: "u_port", arg: 1, scope: !3198, file: !206, line: 266, type: !2963)
!3203 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3198, file: !206, line: 266, type: !162)
!3204 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3198, file: !206, line: 266, type: !73)
!3205 = !DILocalVariable(name: "threshold", arg: 4, scope: !3198, file: !206, line: 266, type: !73)
!3206 = !DILocation(line: 0, scope: !3198)
!3207 = !DILocation(line: 268, column: 9, scope: !3198)
!3208 = !DILocation(line: 274, column: 5, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !206, line: 271, column: 38)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !206, line: 271, column: 16)
!3211 = distinct !DILexicalBlock(scope: !3198, file: !206, line: 268, column: 9)
!3212 = !DILocation(line: 0, scope: !3211)
!3213 = !DILocation(line: 276, column: 1, scope: !3198)
!3214 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !206, file: !206, line: 278, type: !3215, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !2963, !162, !73, !73, !73, !73}
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223}
!3218 = !DILocalVariable(name: "u_port", arg: 1, scope: !3214, file: !206, line: 278, type: !2963)
!3219 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !3214, file: !206, line: 278, type: !162)
!3220 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !3214, file: !206, line: 278, type: !73)
!3221 = !DILocalVariable(name: "alert_length", arg: 4, scope: !3214, file: !206, line: 278, type: !73)
!3222 = !DILocalVariable(name: "threshold", arg: 5, scope: !3214, file: !206, line: 278, type: !73)
!3223 = !DILocalVariable(name: "timeout", arg: 6, scope: !3214, file: !206, line: 278, type: !73)
!3224 = !DILocation(line: 0, scope: !3214)
!3225 = !DILocation(line: 280, column: 9, scope: !3214)
!3226 = !DILocation(line: 286, column: 5, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !206, line: 283, column: 38)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !206, line: 283, column: 16)
!3229 = distinct !DILexicalBlock(scope: !3214, file: !206, line: 280, column: 9)
!3230 = !DILocation(line: 0, scope: !3229)
!3231 = !DILocation(line: 288, column: 1, scope: !3214)
!3232 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !206, file: !206, line: 290, type: !3233, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3235)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{null, !2963, !582}
!3235 = !{!3236, !3237}
!3236 = !DILocalVariable(name: "u_port", arg: 1, scope: !3232, file: !206, line: 290, type: !2963)
!3237 = !DILocalVariable(name: "func", arg: 2, scope: !3232, file: !206, line: 290, type: !582)
!3238 = !DILocation(line: 0, scope: !3232)
!3239 = !DILocation(line: 292, column: 9, scope: !3232)
!3240 = !DILocation(line: 296, column: 5, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3242, file: !206, line: 294, column: 38)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !206, line: 294, column: 16)
!3243 = distinct !DILexicalBlock(scope: !3232, file: !206, line: 292, column: 9)
!3244 = !DILocation(line: 0, scope: !3243)
!3245 = !DILocation(line: 298, column: 1, scope: !3232)
!3246 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !206, file: !206, line: 300, type: !3233, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3247)
!3247 = !{!3248, !3249}
!3248 = !DILocalVariable(name: "u_port", arg: 1, scope: !3246, file: !206, line: 300, type: !2963)
!3249 = !DILocalVariable(name: "func", arg: 2, scope: !3246, file: !206, line: 300, type: !582)
!3250 = !DILocation(line: 0, scope: !3246)
!3251 = !DILocation(line: 302, column: 9, scope: !3246)
!3252 = !DILocation(line: 306, column: 5, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !206, line: 304, column: 38)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !206, line: 304, column: 16)
!3255 = distinct !DILexicalBlock(scope: !3246, file: !206, line: 302, column: 9)
!3256 = !DILocation(line: 0, scope: !3255)
!3257 = !DILocation(line: 308, column: 1, scope: !3246)
!3258 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !206, file: !206, line: 310, type: !3017, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3259)
!3259 = !{!3260, !3261, !3262, !3263}
!3260 = !DILocalVariable(name: "u_port", arg: 1, scope: !3258, file: !206, line: 310, type: !2963)
!3261 = !DILocalVariable(name: "base", scope: !3258, file: !206, line: 312, type: !53)
!3262 = !DILocalVariable(name: "EFR", scope: !3258, file: !206, line: 313, type: !3033)
!3263 = !DILocalVariable(name: "LCR", scope: !3258, file: !206, line: 313, type: !3033)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 312, column: 25, scope: !3258)
!3266 = !DILocation(line: 315, column: 11, scope: !3258)
!3267 = !DILocation(line: 317, column: 33, scope: !3258)
!3268 = !DILocation(line: 318, column: 11, scope: !3258)
!3269 = !DILocation(line: 320, column: 35, scope: !3258)
!3270 = !DILocation(line: 320, column: 33, scope: !3258)
!3271 = !DILocation(line: 322, column: 5, scope: !3258)
!3272 = !DILocation(line: 322, column: 39, scope: !3258)
!3273 = !DILocation(line: 324, column: 33, scope: !3258)
!3274 = !DILocation(line: 325, column: 5, scope: !3258)
!3275 = !DILocation(line: 325, column: 33, scope: !3258)
!3276 = !DILocation(line: 327, column: 35, scope: !3258)
!3277 = !DILocation(line: 327, column: 33, scope: !3258)
!3278 = !DILocation(line: 328, column: 1, scope: !3258)
!3279 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !206, file: !206, line: 330, type: !3280, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !2963, !163, !163, !163}
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289}
!3283 = !DILocalVariable(name: "u_port", arg: 1, scope: !3279, file: !206, line: 330, type: !2963)
!3284 = !DILocalVariable(name: "xon", arg: 2, scope: !3279, file: !206, line: 330, type: !163)
!3285 = !DILocalVariable(name: "xoff", arg: 3, scope: !3279, file: !206, line: 330, type: !163)
!3286 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3279, file: !206, line: 330, type: !163)
!3287 = !DILocalVariable(name: "base", scope: !3279, file: !206, line: 332, type: !53)
!3288 = !DILocalVariable(name: "EFR", scope: !3279, file: !206, line: 333, type: !3033)
!3289 = !DILocalVariable(name: "LCR", scope: !3279, file: !206, line: 333, type: !3033)
!3290 = !DILocation(line: 0, scope: !3279)
!3291 = !DILocation(line: 332, column: 25, scope: !3279)
!3292 = !DILocation(line: 335, column: 11, scope: !3279)
!3293 = !DILocation(line: 337, column: 33, scope: !3279)
!3294 = !DILocation(line: 338, column: 36, scope: !3279)
!3295 = !DILocation(line: 338, column: 5, scope: !3279)
!3296 = !DILocation(line: 338, column: 34, scope: !3279)
!3297 = !DILocation(line: 339, column: 5, scope: !3279)
!3298 = !DILocation(line: 339, column: 34, scope: !3279)
!3299 = !DILocation(line: 340, column: 37, scope: !3279)
!3300 = !DILocation(line: 340, column: 5, scope: !3279)
!3301 = !DILocation(line: 340, column: 35, scope: !3279)
!3302 = !DILocation(line: 341, column: 5, scope: !3279)
!3303 = !DILocation(line: 341, column: 35, scope: !3279)
!3304 = !DILocation(line: 343, column: 11, scope: !3279)
!3305 = !DILocation(line: 345, column: 35, scope: !3279)
!3306 = !DILocation(line: 345, column: 33, scope: !3279)
!3307 = !DILocation(line: 347, column: 35, scope: !3279)
!3308 = !DILocation(line: 347, column: 33, scope: !3279)
!3309 = !DILocation(line: 349, column: 43, scope: !3279)
!3310 = !DILocation(line: 349, column: 5, scope: !3279)
!3311 = !DILocation(line: 349, column: 41, scope: !3279)
!3312 = !DILocation(line: 350, column: 5, scope: !3279)
!3313 = !DILocation(line: 350, column: 39, scope: !3279)
!3314 = !DILocation(line: 351, column: 1, scope: !3279)
!3315 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !206, file: !206, line: 353, type: !3017, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3316)
!3316 = !{!3317, !3318, !3319}
!3317 = !DILocalVariable(name: "u_port", arg: 1, scope: !3315, file: !206, line: 353, type: !2963)
!3318 = !DILocalVariable(name: "base", scope: !3315, file: !206, line: 355, type: !53)
!3319 = !DILocalVariable(name: "LCR", scope: !3315, file: !206, line: 356, type: !3033)
!3320 = !DILocation(line: 0, scope: !3315)
!3321 = !DILocation(line: 355, column: 25, scope: !3315)
!3322 = !DILocation(line: 358, column: 11, scope: !3315)
!3323 = !DILocation(line: 360, column: 33, scope: !3315)
!3324 = !DILocation(line: 362, column: 5, scope: !3315)
!3325 = !DILocation(line: 362, column: 33, scope: !3315)
!3326 = !DILocation(line: 364, column: 33, scope: !3315)
!3327 = !DILocation(line: 366, column: 35, scope: !3315)
!3328 = !DILocation(line: 366, column: 33, scope: !3315)
!3329 = !DILocation(line: 367, column: 1, scope: !3315)
!3330 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !206, file: !206, line: 436, type: !3017, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3331)
!3331 = !{!3332, !3333}
!3332 = !DILocalVariable(name: "u_port", arg: 1, scope: !3330, file: !206, line: 436, type: !2963)
!3333 = !DILocalVariable(name: "base", scope: !3330, file: !206, line: 438, type: !53)
!3334 = !DILocation(line: 0, scope: !3330)
!3335 = !DILocation(line: 438, column: 25, scope: !3330)
!3336 = !DILocation(line: 440, column: 5, scope: !3330)
!3337 = !DILocation(line: 440, column: 33, scope: !3330)
!3338 = !DILocation(line: 441, column: 5, scope: !3330)
!3339 = !DILocation(line: 441, column: 33, scope: !3330)
!3340 = !DILocation(line: 442, column: 5, scope: !3330)
!3341 = !DILocation(line: 442, column: 34, scope: !3330)
!3342 = !DILocation(line: 443, column: 5, scope: !3330)
!3343 = !DILocation(line: 443, column: 35, scope: !3330)
!3344 = !DILocation(line: 445, column: 33, scope: !3330)
!3345 = !DILocation(line: 446, column: 5, scope: !3330)
!3346 = !DILocation(line: 446, column: 33, scope: !3330)
!3347 = !DILocation(line: 447, column: 5, scope: !3330)
!3348 = !DILocation(line: 447, column: 33, scope: !3330)
!3349 = !DILocation(line: 449, column: 33, scope: !3330)
!3350 = !DILocation(line: 450, column: 33, scope: !3330)
!3351 = !DILocation(line: 451, column: 33, scope: !3330)
!3352 = !DILocation(line: 453, column: 33, scope: !3330)
!3353 = !DILocation(line: 454, column: 33, scope: !3330)
!3354 = !DILocation(line: 455, column: 33, scope: !3330)
!3355 = !DILocation(line: 457, column: 33, scope: !3330)
!3356 = !DILocation(line: 458, column: 5, scope: !3330)
!3357 = !DILocation(line: 458, column: 33, scope: !3330)
!3358 = !DILocation(line: 459, column: 5, scope: !3330)
!3359 = !DILocation(line: 459, column: 39, scope: !3330)
!3360 = !DILocation(line: 460, column: 5, scope: !3330)
!3361 = !DILocation(line: 460, column: 40, scope: !3330)
!3362 = !DILocation(line: 461, column: 5, scope: !3330)
!3363 = !DILocation(line: 461, column: 42, scope: !3330)
!3364 = !DILocation(line: 462, column: 5, scope: !3330)
!3365 = !DILocation(line: 462, column: 42, scope: !3330)
!3366 = !DILocation(line: 463, column: 5, scope: !3330)
!3367 = !DILocation(line: 463, column: 35, scope: !3330)
!3368 = !DILocation(line: 464, column: 5, scope: !3330)
!3369 = !DILocation(line: 464, column: 41, scope: !3330)
!3370 = !DILocation(line: 465, column: 5, scope: !3330)
!3371 = !DILocation(line: 465, column: 39, scope: !3330)
!3372 = !DILocation(line: 466, column: 5, scope: !3330)
!3373 = !DILocation(line: 466, column: 38, scope: !3330)
!3374 = !DILocation(line: 467, column: 5, scope: !3330)
!3375 = !DILocation(line: 467, column: 42, scope: !3330)
!3376 = !DILocation(line: 468, column: 5, scope: !3330)
!3377 = !DILocation(line: 468, column: 45, scope: !3330)
!3378 = !DILocation(line: 469, column: 5, scope: !3330)
!3379 = !DILocation(line: 469, column: 39, scope: !3330)
!3380 = !DILocation(line: 470, column: 5, scope: !3330)
!3381 = !DILocation(line: 470, column: 39, scope: !3330)
!3382 = !DILocation(line: 471, column: 5, scope: !3330)
!3383 = !DILocation(line: 471, column: 42, scope: !3330)
!3384 = !DILocation(line: 472, column: 1, scope: !3330)
!3385 = distinct !DISubprogram(name: "uart_query_empty", scope: !206, file: !206, line: 474, type: !3017, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !3386)
!3386 = !{!3387, !3388}
!3387 = !DILocalVariable(name: "u_port", arg: 1, scope: !3385, file: !206, line: 474, type: !2963)
!3388 = !DILocalVariable(name: "base", scope: !3385, file: !206, line: 476, type: !53)
!3389 = !DILocation(line: 0, scope: !3385)
!3390 = !DILocation(line: 476, column: 25, scope: !3385)
!3391 = !DILocation(line: 478, column: 5, scope: !3385)
!3392 = !DILocation(line: 478, column: 14, scope: !3385)
!3393 = !DILocation(line: 478, column: 42, scope: !3385)
!3394 = !DILocation(line: 478, column: 12, scope: !3385)
!3395 = distinct !{!3395, !3391, !3396}
!3396 = !DILocation(line: 478, column: 50, scope: !3385)
!3397 = !DILocation(line: 479, column: 1, scope: !3385)
!3398 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !1047, file: !1047, line: 64, type: !3399, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3401)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{null, !731, !7, !731, null}
!3401 = !{!3402, !3403, !3404, !3405, !3414}
!3402 = !DILocalVariable(name: "func", arg: 1, scope: !3398, file: !1047, line: 64, type: !731)
!3403 = !DILocalVariable(name: "line", arg: 2, scope: !3398, file: !1047, line: 64, type: !7)
!3404 = !DILocalVariable(name: "message", arg: 3, scope: !3398, file: !1047, line: 64, type: !731)
!3405 = !DILocalVariable(name: "ap", scope: !3398, file: !1047, line: 66, type: !3406)
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3407, line: 46, baseType: !3408)
!3407 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3409, line: 32, baseType: !3410)
!3409 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!3410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1047, baseType: !3411)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !3412)
!3412 = !{!3413}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !3411, file: !1047, line: 66, baseType: !68, size: 32)
!3414 = !DILocalVariable(name: "mask", scope: !3398, file: !1047, line: 68, type: !73)
!3415 = !DILocation(line: 0, scope: !3398)
!3416 = !DILocation(line: 66, column: 5, scope: !3398)
!3417 = !DILocation(line: 66, column: 13, scope: !3398)
!3418 = !DILocation(line: 68, column: 5, scope: !3398)
!3419 = !DILocation(line: 69, column: 5, scope: !3398)
!3420 = !DILocation(line: 71, column: 5, scope: !3398)
!3421 = !DILocation(line: 72, column: 5, scope: !3398)
!3422 = !DILocation(line: 73, column: 5, scope: !3398)
!3423 = !DILocation(line: 75, column: 37, scope: !3398)
!3424 = !DILocation(line: 75, column: 5, scope: !3398)
!3425 = !DILocation(line: 77, column: 1, scope: !3398)
!3426 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !1047, file: !1047, line: 78, type: !3399, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432}
!3428 = !DILocalVariable(name: "func", arg: 1, scope: !3426, file: !1047, line: 78, type: !731)
!3429 = !DILocalVariable(name: "line", arg: 2, scope: !3426, file: !1047, line: 78, type: !7)
!3430 = !DILocalVariable(name: "message", arg: 3, scope: !3426, file: !1047, line: 78, type: !731)
!3431 = !DILocalVariable(name: "ap", scope: !3426, file: !1047, line: 80, type: !3406)
!3432 = !DILocalVariable(name: "mask", scope: !3426, file: !1047, line: 82, type: !73)
!3433 = !DILocation(line: 0, scope: !3426)
!3434 = !DILocation(line: 80, column: 5, scope: !3426)
!3435 = !DILocation(line: 80, column: 13, scope: !3426)
!3436 = !DILocation(line: 82, column: 5, scope: !3426)
!3437 = !DILocation(line: 83, column: 5, scope: !3426)
!3438 = !DILocation(line: 85, column: 5, scope: !3426)
!3439 = !DILocation(line: 86, column: 5, scope: !3426)
!3440 = !DILocation(line: 87, column: 5, scope: !3426)
!3441 = !DILocation(line: 89, column: 37, scope: !3426)
!3442 = !DILocation(line: 89, column: 5, scope: !3426)
!3443 = !DILocation(line: 91, column: 1, scope: !3426)
!3444 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !1047, file: !1047, line: 92, type: !3399, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450}
!3446 = !DILocalVariable(name: "func", arg: 1, scope: !3444, file: !1047, line: 92, type: !731)
!3447 = !DILocalVariable(name: "line", arg: 2, scope: !3444, file: !1047, line: 92, type: !7)
!3448 = !DILocalVariable(name: "message", arg: 3, scope: !3444, file: !1047, line: 92, type: !731)
!3449 = !DILocalVariable(name: "ap", scope: !3444, file: !1047, line: 94, type: !3406)
!3450 = !DILocalVariable(name: "mask", scope: !3444, file: !1047, line: 96, type: !73)
!3451 = !DILocation(line: 0, scope: !3444)
!3452 = !DILocation(line: 94, column: 5, scope: !3444)
!3453 = !DILocation(line: 94, column: 13, scope: !3444)
!3454 = !DILocation(line: 96, column: 5, scope: !3444)
!3455 = !DILocation(line: 97, column: 5, scope: !3444)
!3456 = !DILocation(line: 99, column: 5, scope: !3444)
!3457 = !DILocation(line: 100, column: 5, scope: !3444)
!3458 = !DILocation(line: 101, column: 5, scope: !3444)
!3459 = !DILocation(line: 103, column: 37, scope: !3444)
!3460 = !DILocation(line: 103, column: 5, scope: !3444)
!3461 = !DILocation(line: 105, column: 1, scope: !3444)
!3462 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !1047, file: !1047, line: 106, type: !3399, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3463)
!3463 = !{!3464, !3465, !3466, !3467, !3468}
!3464 = !DILocalVariable(name: "func", arg: 1, scope: !3462, file: !1047, line: 106, type: !731)
!3465 = !DILocalVariable(name: "line", arg: 2, scope: !3462, file: !1047, line: 106, type: !7)
!3466 = !DILocalVariable(name: "message", arg: 3, scope: !3462, file: !1047, line: 106, type: !731)
!3467 = !DILocalVariable(name: "ap", scope: !3462, file: !1047, line: 108, type: !3406)
!3468 = !DILocalVariable(name: "mask", scope: !3462, file: !1047, line: 110, type: !73)
!3469 = !DILocation(line: 0, scope: !3462)
!3470 = !DILocation(line: 108, column: 5, scope: !3462)
!3471 = !DILocation(line: 108, column: 13, scope: !3462)
!3472 = !DILocation(line: 110, column: 5, scope: !3462)
!3473 = !DILocation(line: 111, column: 5, scope: !3462)
!3474 = !DILocation(line: 113, column: 5, scope: !3462)
!3475 = !DILocation(line: 114, column: 5, scope: !3462)
!3476 = !DILocation(line: 115, column: 5, scope: !3462)
!3477 = !DILocation(line: 117, column: 37, scope: !3462)
!3478 = !DILocation(line: 117, column: 5, scope: !3462)
!3479 = !DILocation(line: 119, column: 1, scope: !3462)
!3480 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !1047, file: !1047, line: 121, type: !3481, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1046, retainedNodes: !3485)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !731, !7, !731, !3483, !7, null}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 32)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3485 = !{!3486, !3487, !3488, !3489, !3490}
!3486 = !DILocalVariable(name: "func", arg: 1, scope: !3480, file: !1047, line: 121, type: !731)
!3487 = !DILocalVariable(name: "line", arg: 2, scope: !3480, file: !1047, line: 121, type: !7)
!3488 = !DILocalVariable(name: "message", arg: 3, scope: !3480, file: !1047, line: 121, type: !731)
!3489 = !DILocalVariable(name: "data", arg: 4, scope: !3480, file: !1047, line: 121, type: !3483)
!3490 = !DILocalVariable(name: "length", arg: 5, scope: !3480, file: !1047, line: 121, type: !7)
!3491 = !DILocation(line: 0, scope: !3480)
!3492 = !DILocation(line: 123, column: 1, scope: !3480)
!3493 = distinct !DISubprogram(name: "hal_cache_init", scope: !242, file: !242, line: 53, type: !3494, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3497)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !245, line: 172, baseType: !244)
!3497 = !{!3498, !3500}
!3498 = !DILocalVariable(name: "region", scope: !3493, file: !242, line: 55, type: !3499)
!3499 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !245, line: 204, baseType: !255)
!3500 = !DILocalVariable(name: "irq_flag", scope: !3493, file: !242, line: 56, type: !73)
!3501 = !DILocation(line: 59, column: 16, scope: !3493)
!3502 = !DILocation(line: 0, scope: !3493)
!3503 = !DILocation(line: 62, column: 9, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3493, file: !242, line: 62, column: 9)
!3505 = !{i8 0, i8 2}
!3506 = !DILocation(line: 62, column: 9, scope: !3493)
!3507 = !DILocation(line: 64, column: 9, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3504, file: !242, line: 62, column: 39)
!3509 = !DILocation(line: 66, column: 9, scope: !3508)
!3510 = !DILocation(line: 69, column: 24, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3504, file: !242, line: 67, column: 12)
!3512 = !DILocation(line: 72, column: 9, scope: !3511)
!3513 = !DILocation(line: 77, column: 5, scope: !3493)
!3514 = !DILocation(line: 80, column: 22, scope: !3493)
!3515 = !DILocation(line: 81, column: 28, scope: !3493)
!3516 = !DILocation(line: 84, column: 19, scope: !3493)
!3517 = !DILocation(line: 85, column: 23, scope: !3493)
!3518 = !DILocation(line: 88, column: 5, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3493, file: !242, line: 88, column: 5)
!3520 = !DILocation(line: 90, column: 9, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !242, line: 88, column: 81)
!3522 = distinct !DILexicalBlock(scope: !3519, file: !242, line: 88, column: 5)
!3523 = !DILocation(line: 90, column: 38, scope: !3521)
!3524 = !DILocation(line: 91, column: 9, scope: !3521)
!3525 = !DILocation(line: 91, column: 42, scope: !3521)
!3526 = !DILocation(line: 94, column: 45, scope: !3521)
!3527 = !DILocation(line: 94, column: 47, scope: !3521)
!3528 = !DILocation(line: 95, column: 49, scope: !3521)
!3529 = !DILocation(line: 95, column: 51, scope: !3521)
!3530 = !DILocation(line: 88, column: 77, scope: !3522)
!3531 = !DILocation(line: 88, column: 46, scope: !3522)
!3532 = distinct !{!3532, !3518, !3533}
!3533 = !DILocation(line: 96, column: 5, scope: !3519)
!3534 = !DILocation(line: 99, column: 1, scope: !3493)
!3535 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !242, file: !242, line: 327, type: !3494, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3536)
!3536 = !{!3537}
!3537 = !DILocalVariable(name: "irq_flag", scope: !3535, file: !242, line: 329, type: !73)
!3538 = !DILocation(line: 332, column: 16, scope: !3535)
!3539 = !DILocation(line: 0, scope: !3535)
!3540 = !DILocation(line: 335, column: 21, scope: !3535)
!3541 = !DILocation(line: 336, column: 21, scope: !3535)
!3542 = !DILocation(line: 339, column: 21, scope: !3535)
!3543 = !DILocation(line: 340, column: 21, scope: !3535)
!3544 = !DILocation(line: 434, column: 3, scope: !3545, inlinedAt: !3547)
!3545 = distinct !DISubprogram(name: "__ISB", scope: !3546, file: !3546, line: 432, type: !81, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !2282)
!3546 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_master_to_slave/GCC")
!3547 = distinct !DILocation(line: 343, column: 5, scope: !3535)
!3548 = !{i64 296582}
!3549 = !DILocation(line: 346, column: 5, scope: !3535)
!3550 = !DILocation(line: 348, column: 5, scope: !3535)
!3551 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !242, file: !242, line: 101, type: !3494, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3552)
!3552 = !{!3553}
!3553 = !DILocalVariable(name: "region", scope: !3551, file: !242, line: 103, type: !3499)
!3554 = !DILocation(line: 107, column: 5, scope: !3551)
!3555 = !DILocation(line: 110, column: 22, scope: !3551)
!3556 = !DILocation(line: 111, column: 28, scope: !3551)
!3557 = !DILocation(line: 114, column: 19, scope: !3551)
!3558 = !DILocation(line: 115, column: 23, scope: !3551)
!3559 = !DILocation(line: 0, scope: !3551)
!3560 = !DILocation(line: 118, column: 5, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3551, file: !242, line: 118, column: 5)
!3562 = !DILocation(line: 120, column: 9, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !242, line: 118, column: 81)
!3564 = distinct !DILexicalBlock(scope: !3561, file: !242, line: 118, column: 5)
!3565 = !DILocation(line: 120, column: 38, scope: !3563)
!3566 = !DILocation(line: 121, column: 9, scope: !3563)
!3567 = !DILocation(line: 121, column: 42, scope: !3563)
!3568 = !DILocation(line: 124, column: 45, scope: !3563)
!3569 = !DILocation(line: 124, column: 47, scope: !3563)
!3570 = !DILocation(line: 125, column: 49, scope: !3563)
!3571 = !DILocation(line: 125, column: 51, scope: !3563)
!3572 = !DILocation(line: 118, column: 77, scope: !3564)
!3573 = !DILocation(line: 118, column: 46, scope: !3564)
!3574 = distinct !{!3574, !3560, !3575}
!3575 = !DILocation(line: 126, column: 5, scope: !3561)
!3576 = !DILocation(line: 129, column: 20, scope: !3551)
!3577 = !DILocation(line: 131, column: 5, scope: !3551)
!3578 = distinct !DISubprogram(name: "hal_cache_enable", scope: !242, file: !242, line: 134, type: !3494, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !2282)
!3579 = !DILocation(line: 137, column: 45, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3578, file: !242, line: 137, column: 9)
!3581 = !DILocation(line: 137, column: 28, scope: !3580)
!3582 = !DILocation(line: 137, column: 9, scope: !3578)
!3583 = !DILocation(line: 142, column: 22, scope: !3578)
!3584 = !DILocation(line: 145, column: 28, scope: !3578)
!3585 = !DILocation(line: 145, column: 19, scope: !3578)
!3586 = !DILocation(line: 147, column: 5, scope: !3578)
!3587 = !DILocation(line: 0, scope: !3578)
!3588 = !DILocation(line: 148, column: 1, scope: !3578)
!3589 = distinct !DISubprogram(name: "hal_cache_disable", scope: !242, file: !242, line: 150, type: !3494, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3590)
!3590 = !{!3591}
!3591 = !DILocalVariable(name: "irq_flag", scope: !3589, file: !242, line: 152, type: !73)
!3592 = !DILocation(line: 155, column: 16, scope: !3589)
!3593 = !DILocation(line: 0, scope: !3589)
!3594 = !DILocation(line: 158, column: 16, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3589, file: !242, line: 158, column: 9)
!3596 = !DILocation(line: 158, column: 26, scope: !3595)
!3597 = !DILocation(line: 158, column: 9, scope: !3589)
!3598 = !DILocation(line: 160, column: 9, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3595, file: !242, line: 158, column: 49)
!3600 = !DILocation(line: 161, column: 5, scope: !3599)
!3601 = !DILocation(line: 164, column: 22, scope: !3589)
!3602 = !DILocation(line: 167, column: 28, scope: !3589)
!3603 = !DILocation(line: 167, column: 19, scope: !3589)
!3604 = !DILocation(line: 170, column: 5, scope: !3589)
!3605 = !DILocation(line: 172, column: 5, scope: !3589)
!3606 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !242, file: !242, line: 175, type: !3607, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!3496, !3499}
!3609 = !{!3610}
!3610 = !DILocalVariable(name: "region", arg: 1, scope: !3606, file: !242, line: 175, type: !3499)
!3611 = !DILocation(line: 0, scope: !3606)
!3612 = !DILocation(line: 178, column: 16, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !242, line: 178, column: 9)
!3614 = !DILocation(line: 178, column: 9, scope: !3606)
!3615 = !DILocation(line: 183, column: 9, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3606, file: !242, line: 183, column: 9)
!3617 = !DILocation(line: 183, column: 38, scope: !3616)
!3618 = !DILocation(line: 183, column: 9, scope: !3606)
!3619 = !DILocation(line: 184, column: 38, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3616, file: !242, line: 183, column: 62)
!3621 = !DILocation(line: 184, column: 32, scope: !3620)
!3622 = !DILocation(line: 190, column: 32, scope: !3606)
!3623 = !DILocation(line: 190, column: 23, scope: !3606)
!3624 = !DILocation(line: 192, column: 5, scope: !3606)
!3625 = !DILocation(line: 193, column: 1, scope: !3606)
!3626 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !242, file: !242, line: 195, type: !3607, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3627)
!3627 = !{!3628}
!3628 = !DILocalVariable(name: "region", arg: 1, scope: !3626, file: !242, line: 195, type: !3499)
!3629 = !DILocation(line: 0, scope: !3626)
!3630 = !DILocation(line: 198, column: 16, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3626, file: !242, line: 198, column: 9)
!3632 = !DILocation(line: 198, column: 9, scope: !3626)
!3633 = !DILocation(line: 203, column: 35, scope: !3626)
!3634 = !DILocation(line: 203, column: 31, scope: !3626)
!3635 = !DILocation(line: 203, column: 28, scope: !3626)
!3636 = !DILocation(line: 206, column: 32, scope: !3626)
!3637 = !DILocation(line: 206, column: 23, scope: !3626)
!3638 = !DILocation(line: 209, column: 41, scope: !3626)
!3639 = !DILocation(line: 209, column: 43, scope: !3626)
!3640 = !DILocation(line: 210, column: 45, scope: !3626)
!3641 = !DILocation(line: 210, column: 47, scope: !3626)
!3642 = !DILocation(line: 212, column: 5, scope: !3626)
!3643 = !DILocation(line: 213, column: 1, scope: !3626)
!3644 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !242, file: !242, line: 215, type: !3645, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3648)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!3496, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !245, line: 182, baseType: !274)
!3648 = !{!3649}
!3649 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3644, file: !242, line: 215, type: !3647)
!3650 = !DILocation(line: 0, scope: !3644)
!3651 = !DILocation(line: 218, column: 20, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3644, file: !242, line: 218, column: 9)
!3653 = !DILocation(line: 218, column: 9, scope: !3644)
!3654 = !DILocation(line: 223, column: 22, scope: !3644)
!3655 = !DILocation(line: 224, column: 37, scope: !3644)
!3656 = !DILocation(line: 224, column: 22, scope: !3644)
!3657 = !DILocation(line: 227, column: 20, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3644, file: !242, line: 227, column: 9)
!3659 = !DILocation(line: 227, column: 9, scope: !3644)
!3660 = !DILocation(line: 228, column: 26, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3658, file: !242, line: 227, column: 43)
!3662 = !DILocation(line: 229, column: 5, scope: !3661)
!3663 = !DILocation(line: 232, column: 28, scope: !3644)
!3664 = !DILocation(line: 232, column: 19, scope: !3644)
!3665 = !DILocation(line: 234, column: 5, scope: !3644)
!3666 = !DILocation(line: 235, column: 1, scope: !3644)
!3667 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !242, file: !242, line: 237, type: !3668, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3677)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!3496, !3499, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 32)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !245, line: 222, baseType: !3673)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !245, line: 219, size: 64, elements: !3674)
!3674 = !{!3675, !3676}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3673, file: !245, line: 220, baseType: !73, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3673, file: !245, line: 221, baseType: !73, size: 32, offset: 32)
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "region", arg: 1, scope: !3667, file: !242, line: 237, type: !3499)
!3679 = !DILocalVariable(name: "region_config", arg: 2, scope: !3667, file: !242, line: 237, type: !3670)
!3680 = !DILocation(line: 0, scope: !3667)
!3681 = !DILocation(line: 240, column: 16, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3667, file: !242, line: 240, column: 9)
!3683 = !DILocation(line: 240, column: 9, scope: !3667)
!3684 = !DILocation(line: 245, column: 23, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3667, file: !242, line: 245, column: 9)
!3686 = !DILocation(line: 245, column: 9, scope: !3667)
!3687 = !DILocation(line: 250, column: 24, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3667, file: !242, line: 250, column: 9)
!3689 = !DILocation(line: 250, column: 45, scope: !3688)
!3690 = !DILocation(line: 250, column: 9, scope: !3667)
!3691 = !DILocation(line: 251, column: 9, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3688, file: !242, line: 250, column: 81)
!3693 = !DILocation(line: 256, column: 24, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3667, file: !242, line: 256, column: 9)
!3695 = !DILocation(line: 256, column: 42, scope: !3694)
!3696 = !DILocation(line: 256, column: 9, scope: !3667)
!3697 = !DILocation(line: 257, column: 9, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3694, file: !242, line: 256, column: 78)
!3699 = !DILocation(line: 262, column: 5, scope: !3667)
!3700 = !DILocation(line: 262, column: 34, scope: !3667)
!3701 = !DILocation(line: 263, column: 55, scope: !3667)
!3702 = !DILocation(line: 263, column: 93, scope: !3667)
!3703 = !DILocation(line: 263, column: 76, scope: !3667)
!3704 = !DILocation(line: 263, column: 5, scope: !3667)
!3705 = !DILocation(line: 263, column: 38, scope: !3667)
!3706 = !DILocation(line: 266, column: 34, scope: !3667)
!3707 = !DILocation(line: 269, column: 45, scope: !3667)
!3708 = !DILocation(line: 269, column: 41, scope: !3667)
!3709 = !DILocation(line: 269, column: 43, scope: !3667)
!3710 = !DILocation(line: 270, column: 49, scope: !3667)
!3711 = !DILocation(line: 270, column: 45, scope: !3667)
!3712 = !DILocation(line: 270, column: 47, scope: !3667)
!3713 = !DILocation(line: 272, column: 5, scope: !3667)
!3714 = !DILocation(line: 273, column: 1, scope: !3667)
!3715 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !242, file: !242, line: 275, type: !3716, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!3496, !73}
!3718 = !{!3719, !3720}
!3719 = !DILocalVariable(name: "address", arg: 1, scope: !3715, file: !242, line: 275, type: !73)
!3720 = !DILocalVariable(name: "irq_flag", scope: !3715, file: !242, line: 277, type: !73)
!3721 = !DILocation(line: 0, scope: !3715)
!3722 = !DILocation(line: 280, column: 17, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3715, file: !242, line: 280, column: 9)
!3724 = !DILocation(line: 280, column: 9, scope: !3715)
!3725 = !DILocation(line: 284, column: 16, scope: !3715)
!3726 = !DILocation(line: 287, column: 32, scope: !3715)
!3727 = !DILocation(line: 287, column: 21, scope: !3715)
!3728 = !DILocation(line: 288, column: 21, scope: !3715)
!3729 = !DILocation(line: 434, column: 3, scope: !3545, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 291, column: 5, scope: !3715)
!3731 = !DILocation(line: 294, column: 5, scope: !3715)
!3732 = !DILocation(line: 296, column: 5, scope: !3715)
!3733 = !DILocation(line: 297, column: 1, scope: !3715)
!3734 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !242, file: !242, line: 299, type: !3735, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3737)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!3496, !73, !73}
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DILocalVariable(name: "address", arg: 1, scope: !3734, file: !242, line: 299, type: !73)
!3739 = !DILocalVariable(name: "length", arg: 2, scope: !3734, file: !242, line: 299, type: !73)
!3740 = !DILocalVariable(name: "irq_flag", scope: !3734, file: !242, line: 301, type: !73)
!3741 = !DILocalVariable(name: "end_address", scope: !3734, file: !242, line: 302, type: !73)
!3742 = !DILocation(line: 0, scope: !3734)
!3743 = !DILocation(line: 302, column: 36, scope: !3734)
!3744 = !DILocation(line: 305, column: 47, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3734, file: !242, line: 305, column: 9)
!3746 = !DILocation(line: 310, column: 16, scope: !3734)
!3747 = !DILocation(line: 313, column: 20, scope: !3734)
!3748 = !DILocation(line: 313, column: 5, scope: !3734)
!3749 = !DILocation(line: 314, column: 9, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3734, file: !242, line: 313, column: 35)
!3751 = !DILocation(line: 315, column: 17, scope: !3750)
!3752 = distinct !{!3752, !3748, !3753}
!3753 = !DILocation(line: 316, column: 5, scope: !3734)
!3754 = !DILocation(line: 434, column: 3, scope: !3545, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 319, column: 5, scope: !3734)
!3756 = !DILocation(line: 322, column: 5, scope: !3734)
!3757 = !DILocation(line: 324, column: 5, scope: !3734)
!3758 = !DILocation(line: 325, column: 1, scope: !3734)
!3759 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !242, file: !242, line: 351, type: !3716, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3760)
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "address", arg: 1, scope: !3759, file: !242, line: 351, type: !73)
!3762 = !DILocalVariable(name: "irq_flag", scope: !3759, file: !242, line: 353, type: !73)
!3763 = !DILocation(line: 0, scope: !3759)
!3764 = !DILocation(line: 356, column: 17, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3759, file: !242, line: 356, column: 9)
!3766 = !DILocation(line: 356, column: 9, scope: !3759)
!3767 = !DILocation(line: 361, column: 16, scope: !3759)
!3768 = !DILocation(line: 364, column: 32, scope: !3759)
!3769 = !DILocation(line: 364, column: 21, scope: !3759)
!3770 = !DILocation(line: 365, column: 21, scope: !3759)
!3771 = !DILocation(line: 434, column: 3, scope: !3545, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 368, column: 5, scope: !3759)
!3773 = !DILocation(line: 371, column: 5, scope: !3759)
!3774 = !DILocation(line: 373, column: 5, scope: !3759)
!3775 = !DILocation(line: 374, column: 1, scope: !3759)
!3776 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !242, file: !242, line: 376, type: !3735, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3777)
!3777 = !{!3778, !3779, !3780, !3781}
!3778 = !DILocalVariable(name: "address", arg: 1, scope: !3776, file: !242, line: 376, type: !73)
!3779 = !DILocalVariable(name: "length", arg: 2, scope: !3776, file: !242, line: 376, type: !73)
!3780 = !DILocalVariable(name: "irq_flag", scope: !3776, file: !242, line: 378, type: !73)
!3781 = !DILocalVariable(name: "end_address", scope: !3776, file: !242, line: 379, type: !73)
!3782 = !DILocation(line: 0, scope: !3776)
!3783 = !DILocation(line: 379, column: 36, scope: !3776)
!3784 = !DILocation(line: 382, column: 47, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3776, file: !242, line: 382, column: 9)
!3786 = !DILocation(line: 387, column: 16, scope: !3776)
!3787 = !DILocation(line: 390, column: 20, scope: !3776)
!3788 = !DILocation(line: 390, column: 5, scope: !3776)
!3789 = !DILocation(line: 391, column: 9, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3776, file: !242, line: 390, column: 35)
!3791 = !DILocation(line: 392, column: 17, scope: !3790)
!3792 = distinct !{!3792, !3788, !3793}
!3793 = !DILocation(line: 393, column: 5, scope: !3776)
!3794 = !DILocation(line: 434, column: 3, scope: !3545, inlinedAt: !3795)
!3795 = distinct !DILocation(line: 396, column: 5, scope: !3776)
!3796 = !DILocation(line: 399, column: 5, scope: !3776)
!3797 = !DILocation(line: 401, column: 5, scope: !3776)
!3798 = !DILocation(line: 402, column: 1, scope: !3776)
!3799 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !242, file: !242, line: 404, type: !3494, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3800)
!3800 = !{!3801}
!3801 = !DILocalVariable(name: "irq_flag", scope: !3799, file: !242, line: 406, type: !73)
!3802 = !DILocation(line: 409, column: 16, scope: !3799)
!3803 = !DILocation(line: 0, scope: !3799)
!3804 = !DILocation(line: 412, column: 21, scope: !3799)
!3805 = !DILocation(line: 413, column: 21, scope: !3799)
!3806 = !DILocation(line: 434, column: 3, scope: !3545, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 416, column: 5, scope: !3799)
!3808 = !DILocation(line: 419, column: 5, scope: !3799)
!3809 = !DILocation(line: 421, column: 5, scope: !3799)
!3810 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !242, file: !242, line: 424, type: !3811, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !241, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!322, !73}
!3813 = !{!3814, !3815}
!3814 = !DILocalVariable(name: "address", arg: 1, scope: !3810, file: !242, line: 424, type: !73)
!3815 = !DILocalVariable(name: "region", scope: !3810, file: !242, line: 426, type: !3499)
!3816 = !DILocation(line: 0, scope: !3810)
!3817 = !DILocation(line: 429, column: 18, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3810, file: !242, line: 429, column: 9)
!3819 = !DILocation(line: 429, column: 28, scope: !3818)
!3820 = !DILocation(line: 429, column: 9, scope: !3810)
!3821 = !DILocation(line: 435, column: 20, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !242, line: 435, column: 13)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !242, line: 433, column: 81)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !242, line: 433, column: 5)
!3825 = distinct !DILexicalBlock(scope: !3810, file: !242, line: 433, column: 5)
!3826 = !DILocation(line: 435, column: 41, scope: !3822)
!3827 = !DILocation(line: 435, column: 36, scope: !3822)
!3828 = !DILocation(line: 435, column: 13, scope: !3823)
!3829 = !DILocation(line: 436, column: 30, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !242, line: 436, column: 17)
!3831 = distinct !DILexicalBlock(scope: !3822, file: !242, line: 435, column: 53)
!3832 = !DILocation(line: 436, column: 59, scope: !3830)
!3833 = !DILocation(line: 436, column: 26, scope: !3830)
!3834 = !DILocation(line: 436, column: 85, scope: !3830)
!3835 = !DILocation(line: 436, column: 99, scope: !3830)
!3836 = !DILocation(line: 436, column: 97, scope: !3830)
!3837 = !DILocation(line: 436, column: 17, scope: !3831)
!3838 = !DILocation(line: 433, column: 77, scope: !3824)
!3839 = !DILocation(line: 433, column: 46, scope: !3824)
!3840 = !DILocation(line: 433, column: 5, scope: !3825)
!3841 = distinct !{!3841, !3840, !3842}
!3842 = !DILocation(line: 440, column: 5, scope: !3825)
!3843 = !DILocation(line: 442, column: 1, scope: !3810)
!3844 = distinct !DISubprogram(name: "hal_nvic_init", scope: !326, file: !326, line: 60, type: !3845, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2282)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!3847}
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !329, line: 158, baseType: !328)
!3848 = !DILocation(line: 62, column: 5, scope: !3844)
!3849 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !326, file: !326, line: 65, type: !3850, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3852)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!3847, !337}
!3852 = !{!3853, !3854}
!3853 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3849, file: !326, line: 65, type: !337)
!3854 = !DILocalVariable(name: "status", scope: !3849, file: !326, line: 67, type: !3847)
!3855 = !DILocation(line: 0, scope: !3849)
!3856 = !DILocation(line: 69, column: 40, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3849, file: !326, line: 69, column: 9)
!3858 = !DILocation(line: 73, column: 9, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3857, file: !326, line: 72, column: 12)
!3860 = !DILocation(line: 77, column: 5, scope: !3849)
!3861 = !DILocation(line: 78, column: 1, scope: !3849)
!3862 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !341, file: !341, line: 1494, type: !3863, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !338}
!3865 = !{!3866}
!3866 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3862, file: !341, line: 1494, type: !338)
!3867 = !DILocation(line: 0, scope: !3862)
!3868 = !DILocation(line: 1497, column: 91, scope: !3862)
!3869 = !DILocation(line: 1497, column: 61, scope: !3862)
!3870 = !DILocation(line: 1497, column: 40, scope: !3862)
!3871 = !DILocation(line: 1497, column: 3, scope: !3862)
!3872 = !DILocation(line: 1497, column: 46, scope: !3862)
!3873 = !DILocation(line: 1498, column: 1, scope: !3862)
!3874 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !326, file: !326, line: 80, type: !3850, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3875)
!3875 = !{!3876, !3877}
!3876 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3874, file: !326, line: 80, type: !337)
!3877 = !DILocalVariable(name: "status", scope: !3874, file: !326, line: 82, type: !3847)
!3878 = !DILocation(line: 0, scope: !3874)
!3879 = !DILocation(line: 84, column: 40, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3874, file: !326, line: 84, column: 9)
!3881 = !DILocation(line: 88, column: 9, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3880, file: !326, line: 87, column: 12)
!3883 = !DILocation(line: 92, column: 5, scope: !3874)
!3884 = !DILocation(line: 93, column: 1, scope: !3874)
!3885 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !341, file: !341, line: 1507, type: !3863, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3886)
!3886 = !{!3887}
!3887 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3885, file: !341, line: 1507, type: !338)
!3888 = !DILocation(line: 0, scope: !3885)
!3889 = !DILocation(line: 1509, column: 65, scope: !3885)
!3890 = !DILocation(line: 1509, column: 44, scope: !3885)
!3891 = !DILocation(line: 1509, column: 32, scope: !3885)
!3892 = !DILocation(line: 1509, column: 3, scope: !3885)
!3893 = !DILocation(line: 1509, column: 39, scope: !3885)
!3894 = !DILocation(line: 1510, column: 1, scope: !3885)
!3895 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !326, file: !326, line: 95, type: !3896, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!73, !337}
!3898 = !{!3899, !3900}
!3899 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3895, file: !326, line: 95, type: !337)
!3900 = !DILocalVariable(name: "ret", scope: !3895, file: !326, line: 97, type: !73)
!3901 = !DILocation(line: 0, scope: !3895)
!3902 = !DILocation(line: 99, column: 40, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3895, file: !326, line: 99, column: 9)
!3904 = !DILocation(line: 102, column: 15, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3903, file: !326, line: 101, column: 12)
!3906 = !DILocation(line: 105, column: 5, scope: !3895)
!3907 = !DILocation(line: 106, column: 1, scope: !3895)
!3908 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !341, file: !341, line: 1523, type: !3909, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3911)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!73, !338}
!3911 = !{!3912}
!3912 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3908, file: !341, line: 1523, type: !338)
!3913 = !DILocation(line: 0, scope: !3908)
!3914 = !DILocation(line: 1525, column: 51, scope: !3908)
!3915 = !DILocation(line: 1525, column: 23, scope: !3908)
!3916 = !DILocation(line: 1525, column: 83, scope: !3908)
!3917 = !DILocation(line: 1525, column: 22, scope: !3908)
!3918 = !DILocation(line: 1525, column: 3, scope: !3908)
!3919 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !326, file: !326, line: 108, type: !3850, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3920)
!3920 = !{!3921, !3922}
!3921 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3919, file: !326, line: 108, type: !337)
!3922 = !DILocalVariable(name: "status", scope: !3919, file: !326, line: 110, type: !3847)
!3923 = !DILocation(line: 0, scope: !3919)
!3924 = !DILocation(line: 112, column: 40, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3919, file: !326, line: 112, column: 9)
!3926 = !DILocation(line: 116, column: 9, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3925, file: !326, line: 115, column: 12)
!3928 = !DILocation(line: 120, column: 5, scope: !3919)
!3929 = !DILocation(line: 121, column: 1, scope: !3919)
!3930 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !341, file: !341, line: 1535, type: !3863, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3931)
!3931 = !{!3932}
!3932 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3930, file: !341, line: 1535, type: !338)
!3933 = !DILocation(line: 0, scope: !3930)
!3934 = !DILocation(line: 1537, column: 65, scope: !3930)
!3935 = !DILocation(line: 1537, column: 44, scope: !3930)
!3936 = !DILocation(line: 1537, column: 32, scope: !3930)
!3937 = !DILocation(line: 1537, column: 3, scope: !3930)
!3938 = !DILocation(line: 1537, column: 39, scope: !3930)
!3939 = !DILocation(line: 1538, column: 1, scope: !3930)
!3940 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !326, file: !326, line: 123, type: !3850, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3941)
!3941 = !{!3942, !3943}
!3942 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3940, file: !326, line: 123, type: !337)
!3943 = !DILocalVariable(name: "status", scope: !3940, file: !326, line: 125, type: !3847)
!3944 = !DILocation(line: 0, scope: !3940)
!3945 = !DILocation(line: 127, column: 40, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3940, file: !326, line: 127, column: 9)
!3947 = !DILocation(line: 131, column: 9, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3946, file: !326, line: 130, column: 12)
!3949 = !DILocation(line: 135, column: 5, scope: !3940)
!3950 = !DILocation(line: 136, column: 1, scope: !3940)
!3951 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !341, file: !341, line: 1547, type: !3863, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3952)
!3952 = !{!3953}
!3953 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3951, file: !341, line: 1547, type: !338)
!3954 = !DILocation(line: 0, scope: !3951)
!3955 = !DILocation(line: 1549, column: 65, scope: !3951)
!3956 = !DILocation(line: 1549, column: 44, scope: !3951)
!3957 = !DILocation(line: 1549, column: 32, scope: !3951)
!3958 = !DILocation(line: 1549, column: 3, scope: !3951)
!3959 = !DILocation(line: 1549, column: 39, scope: !3951)
!3960 = !DILocation(line: 1550, column: 1, scope: !3951)
!3961 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !326, file: !326, line: 138, type: !3962, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!3847, !337, !73}
!3964 = !{!3965, !3966, !3967}
!3965 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3961, file: !326, line: 138, type: !337)
!3966 = !DILocalVariable(name: "priority", arg: 2, scope: !3961, file: !326, line: 138, type: !73)
!3967 = !DILocalVariable(name: "status", scope: !3961, file: !326, line: 140, type: !3847)
!3968 = !DILocation(line: 0, scope: !3961)
!3969 = !DILocation(line: 142, column: 40, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3961, file: !326, line: 142, column: 9)
!3971 = !DILocation(line: 146, column: 9, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3970, file: !326, line: 145, column: 12)
!3973 = !DILocation(line: 150, column: 5, scope: !3961)
!3974 = !DILocation(line: 151, column: 1, scope: !3961)
!3975 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !341, file: !341, line: 1577, type: !3976, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{null, !338, !73}
!3978 = !{!3979, !3980}
!3979 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3975, file: !341, line: 1577, type: !338)
!3980 = !DILocalVariable(name: "priority", arg: 2, scope: !3975, file: !341, line: 1577, type: !73)
!3981 = !DILocation(line: 0, scope: !3975)
!3982 = !DILocation(line: 1582, column: 34, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3984, file: !341, line: 1581, column: 8)
!3984 = distinct !DILexicalBlock(scope: !3975, file: !341, line: 1579, column: 6)
!3985 = !DILocation(line: 1582, column: 5, scope: !3983)
!3986 = !DILocation(line: 1582, column: 32, scope: !3983)
!3987 = !DILocation(line: 1583, column: 1, scope: !3975)
!3988 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !326, file: !326, line: 153, type: !3896, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !3989)
!3989 = !{!3990, !3991}
!3990 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3988, file: !326, line: 153, type: !337)
!3991 = !DILocalVariable(name: "ret", scope: !3988, file: !326, line: 155, type: !73)
!3992 = !DILocation(line: 0, scope: !3988)
!3993 = !DILocation(line: 157, column: 40, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3988, file: !326, line: 157, column: 9)
!3995 = !DILocation(line: 160, column: 15, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3994, file: !326, line: 159, column: 12)
!3997 = !DILocation(line: 163, column: 5, scope: !3988)
!3998 = !DILocation(line: 164, column: 1, scope: !3988)
!3999 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !341, file: !341, line: 1597, type: !3909, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4000)
!4000 = !{!4001}
!4001 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3999, file: !341, line: 1597, type: !338)
!4002 = !DILocation(line: 0, scope: !3999)
!4003 = !DILocation(line: 1603, column: 23, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !341, line: 1602, column: 8)
!4005 = distinct !DILexicalBlock(scope: !3999, file: !341, line: 1600, column: 6)
!4006 = !DILocation(line: 1603, column: 60, scope: !4004)
!4007 = !DILocation(line: 1604, column: 1, scope: !3999)
!4008 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !326, file: !326, line: 173, type: !81, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2282)
!4009 = !DILocation(line: 175, column: 1, scope: !4008)
!4010 = distinct !DISubprogram(name: "isrC_main", scope: !326, file: !326, line: 178, type: !3845, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4011)
!4011 = !{!4012, !4013}
!4012 = !DILocalVariable(name: "status", scope: !4010, file: !326, line: 180, type: !3847)
!4013 = !DILocalVariable(name: "irq_number", scope: !4010, file: !326, line: 181, type: !337)
!4014 = !DILocation(line: 0, scope: !4010)
!4015 = !DILocation(line: 188, column: 34, scope: !4010)
!4016 = !DILocation(line: 189, column: 24, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4010, file: !326, line: 189, column: 9)
!4018 = !DILocation(line: 192, column: 48, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4017, file: !326, line: 192, column: 16)
!4020 = !DILocation(line: 192, column: 62, scope: !4019)
!4021 = !DILocation(line: 192, column: 16, scope: !4017)
!4022 = !DILocation(line: 194, column: 9, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4019, file: !326, line: 192, column: 71)
!4024 = !DILocation(line: 195, column: 9, scope: !4023)
!4025 = !DILocation(line: 197, column: 55, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4019, file: !326, line: 196, column: 12)
!4027 = !DILocation(line: 197, column: 41, scope: !4026)
!4028 = !DILocation(line: 197, column: 53, scope: !4026)
!4029 = !DILocation(line: 198, column: 41, scope: !4026)
!4030 = !DILocation(line: 198, column: 9, scope: !4026)
!4031 = !DILocation(line: 202, column: 5, scope: !4010)
!4032 = !DILocation(line: 203, column: 1, scope: !4010)
!4033 = distinct !DISubprogram(name: "get_current_irq", scope: !326, file: !326, line: 166, type: !2266, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4034)
!4034 = !{!4035}
!4035 = !DILocalVariable(name: "irq_num", scope: !4033, file: !326, line: 168, type: !73)
!4036 = !DILocation(line: 168, column: 31, scope: !4033)
!4037 = !DILocation(line: 168, column: 36, scope: !4033)
!4038 = !DILocation(line: 0, scope: !4033)
!4039 = !DILocation(line: 169, column: 21, scope: !4033)
!4040 = !DILocation(line: 169, column: 5, scope: !4033)
!4041 = distinct !DISubprogram(name: "get_pending_irq", scope: !326, file: !326, line: 55, type: !2266, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !2282)
!4042 = !DILocation(line: 57, column: 19, scope: !4041)
!4043 = !DILocation(line: 57, column: 51, scope: !4041)
!4044 = !DILocation(line: 57, column: 5, scope: !4041)
!4045 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !326, file: !326, line: 205, type: !4046, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4049)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!3847, !337, !4048}
!4048 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !329, line: 175, baseType: !418)
!4049 = !{!4050, !4051, !4052}
!4050 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4045, file: !326, line: 205, type: !337)
!4051 = !DILocalVariable(name: "callback", arg: 2, scope: !4045, file: !326, line: 205, type: !4048)
!4052 = !DILocalVariable(name: "mask", scope: !4045, file: !326, line: 207, type: !73)
!4053 = !DILocation(line: 0, scope: !4045)
!4054 = !DILocation(line: 209, column: 24, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4045, file: !326, line: 209, column: 9)
!4056 = !DILocation(line: 213, column: 12, scope: !4045)
!4057 = !DILocation(line: 214, column: 5, scope: !4045)
!4058 = !DILocation(line: 215, column: 37, scope: !4045)
!4059 = !DILocation(line: 215, column: 51, scope: !4045)
!4060 = !DILocation(line: 216, column: 37, scope: !4045)
!4061 = !DILocation(line: 216, column: 49, scope: !4045)
!4062 = !DILocation(line: 217, column: 5, scope: !4045)
!4063 = !DILocation(line: 219, column: 5, scope: !4045)
!4064 = !DILocation(line: 220, column: 1, scope: !4045)
!4065 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !326, file: !326, line: 222, type: !4066, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!3847, !3110}
!4068 = !{!4069}
!4069 = !DILocalVariable(name: "mask", arg: 1, scope: !4065, file: !326, line: 222, type: !3110)
!4070 = !DILocation(line: 0, scope: !4065)
!4071 = !DILocation(line: 224, column: 13, scope: !4065)
!4072 = !DILocation(line: 224, column: 11, scope: !4065)
!4073 = !DILocation(line: 225, column: 5, scope: !4065)
!4074 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !326, file: !326, line: 228, type: !4075, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !325, retainedNodes: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!3847, !73}
!4077 = !{!4078}
!4078 = !DILocalVariable(name: "mask", arg: 1, scope: !4074, file: !326, line: 228, type: !73)
!4079 = !DILocation(line: 0, scope: !4074)
!4080 = !DILocation(line: 230, column: 5, scope: !4074)
!4081 = !DILocation(line: 231, column: 5, scope: !4074)
!4082 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !1049, file: !1049, line: 50, type: !4083, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4086)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!4085, !512, !163}
!4085 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !145, line: 238, baseType: !1051)
!4086 = !{!4087, !4088, !4089}
!4087 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4082, file: !1049, line: 50, type: !512)
!4088 = !DILocalVariable(name: "function_index", arg: 2, scope: !4082, file: !1049, line: 50, type: !163)
!4089 = !DILocalVariable(name: "ret_value", scope: !4082, file: !1049, line: 52, type: !154)
!4090 = !DILocation(line: 0, scope: !4082)
!4091 = !DILocation(line: 53, column: 18, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4082, file: !1049, line: 53, column: 9)
!4093 = !DILocation(line: 53, column: 9, scope: !4082)
!4094 = !DILocation(line: 57, column: 24, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4082, file: !1049, line: 57, column: 9)
!4096 = !DILocation(line: 57, column: 9, scope: !4082)
!4097 = !DILocation(line: 57, column: 9, scope: !4095)
!4098 = !DILocation(line: 60, column: 17, scope: !4082)
!4099 = !DILocation(line: 61, column: 12, scope: !4082)
!4100 = !DILocation(line: 61, column: 5, scope: !4082)
!4101 = !DILocation(line: 62, column: 1, scope: !4082)
!4102 = distinct !DISubprogram(name: "hal_gpio_init", scope: !1049, file: !1049, line: 64, type: !4103, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4106)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!4105, !512}
!4105 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !145, line: 229, baseType: !1057)
!4106 = !{!4107}
!4107 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4102, file: !1049, line: 64, type: !512)
!4108 = !DILocation(line: 0, scope: !4102)
!4109 = !DILocation(line: 66, column: 5, scope: !4102)
!4110 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !1049, file: !1049, line: 69, type: !4103, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4111)
!4111 = !{!4112}
!4112 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4110, file: !1049, line: 69, type: !512)
!4113 = !DILocation(line: 0, scope: !4110)
!4114 = !DILocation(line: 71, column: 5, scope: !4110)
!4115 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !1049, file: !1049, line: 74, type: !4116, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4119)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{!4105, !512, !4118}
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 32)
!4119 = !{!4120, !4121, !4122}
!4120 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4115, file: !1049, line: 74, type: !512)
!4121 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4115, file: !1049, line: 74, type: !4118)
!4122 = !DILocalVariable(name: "status", scope: !4115, file: !1049, line: 76, type: !4123)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !120, line: 67, baseType: !4124)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 62, size: 64, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4129}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4124, file: !120, line: 63, baseType: !73, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4124, file: !120, line: 64, baseType: !163, size: 8, offset: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4124, file: !120, line: 65, baseType: !163, size: 8, offset: 40)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4124, file: !120, line: 66, baseType: !163, size: 8, offset: 48)
!4130 = !DILocation(line: 0, scope: !4115)
!4131 = !DILocation(line: 77, column: 14, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4115, file: !1049, line: 77, column: 9)
!4133 = !DILocation(line: 77, column: 9, scope: !4115)
!4134 = !DILocation(line: 81, column: 18, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4115, file: !1049, line: 81, column: 9)
!4136 = !DILocation(line: 81, column: 9, scope: !4115)
!4137 = !DILocation(line: 85, column: 14, scope: !4115)
!4138 = !DILocation(line: 86, column: 18, scope: !4115)
!4139 = !DILocation(line: 86, column: 16, scope: !4115)
!4140 = !DILocation(line: 87, column: 5, scope: !4115)
!4141 = !DILocation(line: 88, column: 1, scope: !4115)
!4142 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !1049, file: !1049, line: 90, type: !4143, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!4105, !512, !1071}
!4145 = !{!4146, !4147, !4148}
!4146 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4142, file: !1049, line: 90, type: !512)
!4147 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4142, file: !1049, line: 90, type: !1071)
!4148 = !DILocalVariable(name: "ret_value", scope: !4142, file: !1049, line: 92, type: !154)
!4149 = !DILocation(line: 0, scope: !4142)
!4150 = !DILocation(line: 93, column: 18, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4142, file: !1049, line: 93, column: 9)
!4152 = !DILocation(line: 93, column: 9, scope: !4142)
!4153 = !DILocation(line: 97, column: 60, scope: !4142)
!4154 = !DILocation(line: 97, column: 17, scope: !4142)
!4155 = !DILocation(line: 98, column: 12, scope: !4142)
!4156 = !DILocation(line: 98, column: 5, scope: !4142)
!4157 = !DILocation(line: 99, column: 1, scope: !4142)
!4158 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !1049, file: !1049, line: 101, type: !4116, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4159)
!4159 = !{!4160, !4161, !4162}
!4160 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4158, file: !1049, line: 101, type: !512)
!4161 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4158, file: !1049, line: 101, type: !4118)
!4162 = !DILocalVariable(name: "status", scope: !4158, file: !1049, line: 103, type: !4123)
!4163 = !DILocation(line: 0, scope: !4158)
!4164 = !DILocation(line: 104, column: 18, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4158, file: !1049, line: 104, column: 9)
!4166 = !DILocation(line: 104, column: 9, scope: !4158)
!4167 = !DILocation(line: 108, column: 14, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4158, file: !1049, line: 108, column: 9)
!4169 = !DILocation(line: 108, column: 9, scope: !4158)
!4170 = !DILocation(line: 112, column: 14, scope: !4158)
!4171 = !DILocation(line: 113, column: 18, scope: !4158)
!4172 = !DILocation(line: 113, column: 16, scope: !4158)
!4173 = !DILocation(line: 114, column: 5, scope: !4158)
!4174 = !DILocation(line: 115, column: 1, scope: !4158)
!4175 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !1049, file: !1049, line: 117, type: !4176, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4179)
!4176 = !DISubroutineType(types: !4177)
!4177 = !{!4105, !512, !4178}
!4178 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !145, line: 213, baseType: !149)
!4179 = !{!4180, !4181, !4182}
!4180 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4175, file: !1049, line: 117, type: !512)
!4181 = !DILocalVariable(name: "direction", arg: 2, scope: !4175, file: !1049, line: 117, type: !4178)
!4182 = !DILocalVariable(name: "ret_value", scope: !4175, file: !1049, line: 119, type: !154)
!4183 = !DILocation(line: 0, scope: !4175)
!4184 = !DILocation(line: 120, column: 18, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4175, file: !1049, line: 120, column: 9)
!4186 = !DILocation(line: 120, column: 9, scope: !4175)
!4187 = !DILocation(line: 123, column: 17, scope: !4175)
!4188 = !DILocation(line: 125, column: 12, scope: !4175)
!4189 = !DILocation(line: 125, column: 5, scope: !4175)
!4190 = !DILocation(line: 126, column: 1, scope: !4175)
!4191 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !1049, file: !1049, line: 128, type: !4192, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4195)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!4105, !512, !4194}
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 32)
!4195 = !{!4196, !4197, !4198}
!4196 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4191, file: !1049, line: 128, type: !512)
!4197 = !DILocalVariable(name: "direction", arg: 2, scope: !4191, file: !1049, line: 128, type: !4194)
!4198 = !DILocalVariable(name: "status", scope: !4191, file: !1049, line: 131, type: !4123)
!4199 = !DILocation(line: 0, scope: !4191)
!4200 = !DILocation(line: 132, column: 18, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4191, file: !1049, line: 132, column: 9)
!4202 = !DILocation(line: 132, column: 9, scope: !4191)
!4203 = !DILocation(line: 136, column: 14, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4191, file: !1049, line: 136, column: 9)
!4205 = !DILocation(line: 136, column: 9, scope: !4191)
!4206 = !DILocation(line: 140, column: 14, scope: !4191)
!4207 = !DILocation(line: 141, column: 18, scope: !4191)
!4208 = !DILocation(line: 141, column: 16, scope: !4191)
!4209 = !DILocation(line: 142, column: 5, scope: !4191)
!4210 = !DILocation(line: 143, column: 1, scope: !4191)
!4211 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !1049, file: !1049, line: 146, type: !4103, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4212)
!4212 = !{!4213, !4214}
!4213 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4211, file: !1049, line: 146, type: !512)
!4214 = !DILocalVariable(name: "status", scope: !4211, file: !1049, line: 148, type: !4123)
!4215 = !DILocation(line: 0, scope: !4211)
!4216 = !DILocation(line: 149, column: 18, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4211, file: !1049, line: 149, column: 9)
!4218 = !DILocation(line: 149, column: 9, scope: !4211)
!4219 = !DILocation(line: 153, column: 14, scope: !4211)
!4220 = !DILocation(line: 154, column: 76, scope: !4211)
!4221 = !DILocation(line: 154, column: 12, scope: !4211)
!4222 = !DILocation(line: 154, column: 5, scope: !4211)
!4223 = !DILocation(line: 155, column: 1, scope: !4211)
!4224 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !1049, file: !1049, line: 157, type: !4103, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4225)
!4225 = !{!4226, !4227}
!4226 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4224, file: !1049, line: 157, type: !512)
!4227 = !DILocalVariable(name: "ret_value", scope: !4224, file: !1049, line: 159, type: !154)
!4228 = !DILocation(line: 0, scope: !4224)
!4229 = !DILocation(line: 160, column: 18, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4224, file: !1049, line: 160, column: 9)
!4231 = !DILocation(line: 160, column: 9, scope: !4224)
!4232 = !DILocation(line: 164, column: 17, scope: !4224)
!4233 = !DILocation(line: 165, column: 19, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4224, file: !1049, line: 165, column: 9)
!4235 = !DILocation(line: 165, column: 9, scope: !4224)
!4236 = !DILocation(line: 168, column: 17, scope: !4224)
!4237 = !DILocation(line: 169, column: 12, scope: !4224)
!4238 = !DILocation(line: 169, column: 5, scope: !4224)
!4239 = !DILocation(line: 170, column: 1, scope: !4224)
!4240 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !1049, file: !1049, line: 172, type: !4103, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4241)
!4241 = !{!4242, !4243}
!4242 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4240, file: !1049, line: 172, type: !512)
!4243 = !DILocalVariable(name: "ret_value", scope: !4240, file: !1049, line: 174, type: !154)
!4244 = !DILocation(line: 0, scope: !4240)
!4245 = !DILocation(line: 175, column: 18, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4240, file: !1049, line: 175, column: 9)
!4247 = !DILocation(line: 175, column: 9, scope: !4240)
!4248 = !DILocation(line: 179, column: 17, scope: !4240)
!4249 = !DILocation(line: 180, column: 19, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4240, file: !1049, line: 180, column: 9)
!4251 = !DILocation(line: 180, column: 9, scope: !4240)
!4252 = !DILocation(line: 183, column: 17, scope: !4240)
!4253 = !DILocation(line: 184, column: 12, scope: !4240)
!4254 = !DILocation(line: 184, column: 5, scope: !4240)
!4255 = !DILocation(line: 185, column: 1, scope: !4240)
!4256 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !1049, file: !1049, line: 187, type: !4103, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4257)
!4257 = !{!4258, !4259}
!4258 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4256, file: !1049, line: 187, type: !512)
!4259 = !DILocalVariable(name: "ret_value", scope: !4256, file: !1049, line: 189, type: !154)
!4260 = !DILocation(line: 0, scope: !4256)
!4261 = !DILocation(line: 191, column: 18, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4256, file: !1049, line: 191, column: 9)
!4263 = !DILocation(line: 191, column: 9, scope: !4256)
!4264 = !DILocation(line: 195, column: 17, scope: !4256)
!4265 = !DILocation(line: 196, column: 12, scope: !4256)
!4266 = !DILocation(line: 196, column: 5, scope: !4256)
!4267 = !DILocation(line: 197, column: 1, scope: !4256)
!4268 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !1049, file: !1049, line: 200, type: !4269, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!4105, !512, !1072}
!4271 = !{!4272, !4273, !4274}
!4272 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4268, file: !1049, line: 200, type: !512)
!4273 = !DILocalVariable(name: "driving", arg: 2, scope: !4268, file: !1049, line: 200, type: !1072)
!4274 = !DILocalVariable(name: "ret_value", scope: !4268, file: !1049, line: 202, type: !154)
!4275 = !DILocation(line: 0, scope: !4268)
!4276 = !DILocation(line: 204, column: 18, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4268, file: !1049, line: 204, column: 9)
!4278 = !DILocation(line: 204, column: 9, scope: !4268)
!4279 = !DILocation(line: 208, column: 64, scope: !4268)
!4280 = !DILocation(line: 208, column: 17, scope: !4268)
!4281 = !DILocation(line: 210, column: 12, scope: !4268)
!4282 = !DILocation(line: 210, column: 5, scope: !4268)
!4283 = !DILocation(line: 211, column: 1, scope: !4268)
!4284 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !1049, file: !1049, line: 214, type: !4285, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1048, retainedNodes: !4288)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!4105, !512, !4287}
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 32)
!4288 = !{!4289, !4290, !4291, !4292}
!4289 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4284, file: !1049, line: 214, type: !512)
!4290 = !DILocalVariable(name: "driving", arg: 2, scope: !4284, file: !1049, line: 214, type: !4287)
!4291 = !DILocalVariable(name: "ret_value", scope: !4284, file: !1049, line: 216, type: !154)
!4292 = !DILocalVariable(name: "value", scope: !4284, file: !1049, line: 217, type: !163)
!4293 = !DILocation(line: 0, scope: !4284)
!4294 = !DILocation(line: 217, column: 5, scope: !4284)
!4295 = !DILocation(line: 219, column: 18, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4284, file: !1049, line: 219, column: 9)
!4297 = !DILocation(line: 219, column: 9, scope: !4284)
!4298 = !DILocation(line: 223, column: 17, scope: !4284)
!4299 = !DILocation(line: 225, column: 44, scope: !4284)
!4300 = !DILocation(line: 225, column: 16, scope: !4284)
!4301 = !DILocation(line: 225, column: 14, scope: !4284)
!4302 = !DILocation(line: 227, column: 12, scope: !4284)
!4303 = !DILocation(line: 227, column: 5, scope: !4284)
!4304 = !DILocation(line: 228, column: 1, scope: !4284)
!4305 = distinct !DISubprogram(name: "hal_spi_master_init", scope: !427, file: !427, line: 132, type: !4306, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4311)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!4308, !4309, !4310}
!4308 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_status_t", file: !430, line: 556, baseType: !429)
!4309 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_port_t", file: !438, line: 462, baseType: !437)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 32)
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4317}
!4312 = !DILocalVariable(name: "master_port", arg: 1, scope: !4305, file: !427, line: 132, type: !4309)
!4313 = !DILocalVariable(name: "spi_config", arg: 2, scope: !4305, file: !427, line: 133, type: !4310)
!4314 = !DILocalVariable(name: "settings", scope: !4305, file: !427, line: 135, type: !73)
!4315 = !DILocalVariable(name: "ret_val", scope: !4305, file: !427, line: 136, type: !154)
!4316 = !DILocalVariable(name: "busy_status", scope: !4305, file: !427, line: 137, type: !4308)
!4317 = !DILocalVariable(name: "saved_mask", scope: !4318, file: !427, line: 150, type: !73)
!4318 = distinct !DILexicalBlock(scope: !4305, file: !427, line: 150, column: 5)
!4319 = !DILocation(line: 0, scope: !4305)
!4320 = !DILocation(line: 138, column: 10, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4305, file: !427, line: 138, column: 9)
!4322 = !DILocation(line: 138, column: 9, scope: !4305)
!4323 = !DILocation(line: 141, column: 14, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4305, file: !427, line: 141, column: 9)
!4325 = !DILocation(line: 141, column: 9, scope: !4305)
!4326 = !DILocation(line: 144, column: 22, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4305, file: !427, line: 144, column: 9)
!4328 = !DILocation(line: 144, column: 76, scope: !4327)
!4329 = !DILocation(line: 150, column: 5, scope: !4318)
!4330 = !DILocation(line: 0, scope: !4318)
!4331 = !DILocation(line: 150, column: 5, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4318, file: !427, line: 150, column: 5)
!4333 = !DILocation(line: 151, column: 9, scope: !4305)
!4334 = !DILocation(line: 150, column: 5, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4332, file: !427, line: 150, column: 5)
!4336 = !DILocation(line: 154, column: 43, scope: !4305)
!4337 = !DILocation(line: 154, column: 5, scope: !4305)
!4338 = !DILocation(line: 156, column: 16, scope: !4305)
!4339 = !DILocation(line: 158, column: 65, scope: !4305)
!4340 = !DILocation(line: 158, column: 25, scope: !4305)
!4341 = !{i32 -2, i32 119999999}
!4342 = !DILocation(line: 157, column: 15, scope: !4305)
!4343 = !DILocation(line: 159, column: 17, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4305, file: !427, line: 159, column: 9)
!4345 = !DILocation(line: 159, column: 9, scope: !4305)
!4346 = !DILocation(line: 162, column: 5, scope: !4305)
!4347 = !DILocation(line: 163, column: 35, scope: !4305)
!4348 = !DILocation(line: 163, column: 5, scope: !4305)
!4349 = !DILocation(line: 169, column: 5, scope: !4305)
!4350 = !DILocation(line: 170, column: 1, scope: !4305)
!4351 = distinct !DISubprogram(name: "hal_spi_master_is_master_port_valid", scope: !427, file: !427, line: 60, type: !4352, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4354)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!322, !4309}
!4354 = !{!4355}
!4355 = !DILocalVariable(name: "master_port", arg: 1, scope: !4351, file: !427, line: 60, type: !4309)
!4356 = !DILocation(line: 0, scope: !4351)
!4357 = !DILocation(line: 62, column: 24, scope: !4351)
!4358 = !DILocation(line: 62, column: 5, scope: !4351)
!4359 = distinct !DISubprogram(name: "hal_spi_master_map_cs_pin", scope: !427, file: !427, line: 100, type: !4360, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4362)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!512, !503}
!4362 = !{!4363}
!4363 = !DILocalVariable(name: "slave_port", arg: 1, scope: !4359, file: !427, line: 100, type: !503)
!4364 = !DILocation(line: 0, scope: !4359)
!4365 = !DILocation(line: 103, column: 32, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4359, file: !427, line: 103, column: 9)
!4367 = !DILocation(line: 103, column: 9, scope: !4359)
!4368 = !DILocation(line: 104, column: 13, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !427, line: 104, column: 13)
!4370 = distinct !DILexicalBlock(scope: !4366, file: !427, line: 103, column: 47)
!4371 = !DILocation(line: 104, column: 13, scope: !4370)
!4372 = !DILocation(line: 105, column: 31, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4369, file: !427, line: 104, column: 35)
!4374 = !DILocation(line: 106, column: 13, scope: !4373)
!4375 = !DILocation(line: 107, column: 9, scope: !4373)
!4376 = !DILocation(line: 107, column: 20, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4369, file: !427, line: 107, column: 20)
!4378 = !DILocation(line: 107, column: 20, scope: !4369)
!4379 = !DILocation(line: 108, column: 31, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4377, file: !427, line: 107, column: 41)
!4381 = !DILocation(line: 109, column: 13, scope: !4380)
!4382 = !DILocation(line: 110, column: 9, scope: !4380)
!4383 = !DILocation(line: 111, column: 13, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4377, file: !427, line: 110, column: 16)
!4385 = !DILocation(line: 112, column: 31, scope: !4384)
!4386 = !DILocation(line: 115, column: 27, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4366, file: !427, line: 114, column: 12)
!4388 = !DILocation(line: 116, column: 9, scope: !4387)
!4389 = !DILocation(line: 118, column: 5, scope: !4359)
!4390 = distinct !DISubprogram(name: "hal_spi_master_build_settings", scope: !427, file: !427, line: 65, type: !4391, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4393)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!73, !4310}
!4393 = !{!4394, !4395}
!4394 = !DILocalVariable(name: "spi_config", arg: 1, scope: !4390, file: !427, line: 65, type: !4310)
!4395 = !DILocalVariable(name: "settings", scope: !4390, file: !427, line: 67, type: !73)
!4396 = !DILocation(line: 0, scope: !4390)
!4397 = !DILocation(line: 68, column: 47, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4390, file: !427, line: 68, column: 9)
!4399 = !DILocation(line: 68, column: 32, scope: !4398)
!4400 = !DILocation(line: 73, column: 49, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4390, file: !427, line: 73, column: 9)
!4402 = !DILocation(line: 73, column: 34, scope: !4401)
!4403 = !DILocation(line: 73, column: 9, scope: !4390)
!4404 = !DILocation(line: 78, column: 55, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4390, file: !427, line: 78, column: 9)
!4406 = !DILocation(line: 78, column: 40, scope: !4405)
!4407 = !DILocation(line: 78, column: 9, scope: !4390)
!4408 = !DILocation(line: 83, column: 52, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4390, file: !427, line: 83, column: 9)
!4410 = !DILocation(line: 83, column: 37, scope: !4409)
!4411 = !DILocation(line: 83, column: 9, scope: !4390)
!4412 = !DILocation(line: 88, column: 5, scope: !4390)
!4413 = !DILocation(line: 0, scope: !515)
!4414 = !DILocation(line: 97, column: 33, scope: !515)
!4415 = !DILocation(line: 97, column: 45, scope: !515)
!4416 = !DILocation(line: 97, column: 5, scope: !515)
!4417 = distinct !DISubprogram(name: "hal_spi_master_deinit", scope: !427, file: !427, line: 172, type: !4418, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!4308, !4309}
!4420 = !{!4421}
!4421 = !DILocalVariable(name: "master_port", arg: 1, scope: !4417, file: !427, line: 172, type: !4309)
!4422 = !DILocation(line: 0, scope: !4417)
!4423 = !DILocation(line: 174, column: 10, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4417, file: !427, line: 174, column: 9)
!4425 = !DILocation(line: 174, column: 9, scope: !4417)
!4426 = !DILocation(line: 177, column: 5, scope: !4417)
!4427 = !DILocation(line: 179, column: 5, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4417, file: !427, line: 179, column: 5)
!4429 = !DILocation(line: 184, column: 5, scope: !4417)
!4430 = !DILocation(line: 185, column: 1, scope: !4417)
!4431 = distinct !DISubprogram(name: "hal_spi_master_send_polling", scope: !427, file: !427, line: 188, type: !4432, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4434)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!4308, !4309, !162, !73}
!4434 = !{!4435, !4436, !4437, !4438}
!4435 = !DILocalVariable(name: "master_port", arg: 1, scope: !4431, file: !427, line: 188, type: !4309)
!4436 = !DILocalVariable(name: "data", arg: 2, scope: !4431, file: !427, line: 189, type: !162)
!4437 = !DILocalVariable(name: "size", arg: 3, scope: !4431, file: !427, line: 190, type: !73)
!4438 = !DILocalVariable(name: "ret_val", scope: !4431, file: !427, line: 192, type: !154)
!4439 = !DILocation(line: 0, scope: !4431)
!4440 = !DILocation(line: 193, column: 10, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4431, file: !427, line: 193, column: 9)
!4442 = !DILocation(line: 193, column: 9, scope: !4431)
!4443 = !DILocation(line: 196, column: 14, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4431, file: !427, line: 196, column: 9)
!4445 = !DILocation(line: 196, column: 9, scope: !4431)
!4446 = !DILocation(line: 201, column: 10, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4431, file: !427, line: 201, column: 9)
!4448 = !DILocation(line: 201, column: 35, scope: !4447)
!4449 = !DILocation(line: 201, column: 51, scope: !4447)
!4450 = !DILocation(line: 201, column: 9, scope: !4431)
!4451 = !DILocation(line: 204, column: 25, scope: !4431)
!4452 = !DILocation(line: 204, column: 5, scope: !4431)
!4453 = !DILocation(line: 208, column: 15, scope: !4431)
!4454 = !DILocation(line: 212, column: 25, scope: !4431)
!4455 = !DILocation(line: 212, column: 5, scope: !4431)
!4456 = !DILocation(line: 213, column: 12, scope: !4431)
!4457 = !DILocation(line: 213, column: 5, scope: !4431)
!4458 = !DILocation(line: 214, column: 1, scope: !4431)
!4459 = distinct !DISubprogram(name: "hal_spi_master_send_and_receive_polling", scope: !427, file: !427, line: 218, type: !4460, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4470)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!4308, !4309, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_send_and_receive_config_t", file: !430, line: 616, baseType: !4464)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 611, size: 128, elements: !4465)
!4465 = !{!4466, !4467, !4468, !4469}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !4464, file: !430, line: 612, baseType: !162, size: 32)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "send_length", scope: !4464, file: !430, line: 613, baseType: !73, size: 32, offset: 32)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buffer", scope: !4464, file: !430, line: 614, baseType: !162, size: 32, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "receive_length", scope: !4464, file: !430, line: 615, baseType: !73, size: 32, offset: 96)
!4470 = !{!4471, !4472, !4473}
!4471 = !DILocalVariable(name: "master_port", arg: 1, scope: !4459, file: !427, line: 218, type: !4309)
!4472 = !DILocalVariable(name: "spi_send_and_receive_config", arg: 2, scope: !4459, file: !427, line: 219, type: !4462)
!4473 = !DILocalVariable(name: "ret_val", scope: !4459, file: !427, line: 221, type: !154)
!4474 = !DILocation(line: 0, scope: !4459)
!4475 = !DILocation(line: 222, column: 10, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4459, file: !427, line: 222, column: 9)
!4477 = !DILocation(line: 222, column: 9, scope: !4459)
!4478 = !DILocation(line: 225, column: 47, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4459, file: !427, line: 225, column: 9)
!4480 = !DILocation(line: 225, column: 14, scope: !4479)
!4481 = !DILocation(line: 225, column: 9, scope: !4459)
!4482 = !DILocation(line: 228, column: 47, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4459, file: !427, line: 228, column: 9)
!4484 = !DILocation(line: 228, column: 14, scope: !4483)
!4485 = !DILocation(line: 228, column: 9, scope: !4459)
!4486 = !DILocation(line: 231, column: 38, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4459, file: !427, line: 231, column: 9)
!4488 = !DILocation(line: 231, column: 50, scope: !4487)
!4489 = !DILocation(line: 231, column: 9, scope: !4459)
!4490 = !DILocation(line: 234, column: 84, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4459, file: !427, line: 234, column: 9)
!4492 = !DILocation(line: 234, column: 52, scope: !4491)
!4493 = !DILocation(line: 234, column: 9, scope: !4459)
!4494 = !DILocation(line: 239, column: 10, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4459, file: !427, line: 239, column: 9)
!4496 = !DILocation(line: 239, column: 35, scope: !4495)
!4497 = !DILocation(line: 239, column: 51, scope: !4495)
!4498 = !DILocation(line: 239, column: 9, scope: !4459)
!4499 = !DILocation(line: 242, column: 25, scope: !4459)
!4500 = !DILocation(line: 242, column: 5, scope: !4459)
!4501 = !DILocation(line: 246, column: 25, scope: !4459)
!4502 = !DILocation(line: 247, column: 54, scope: !4459)
!4503 = !DILocation(line: 248, column: 54, scope: !4459)
!4504 = !DILocation(line: 248, column: 69, scope: !4459)
!4505 = !DILocation(line: 249, column: 54, scope: !4459)
!4506 = !DILocation(line: 249, column: 69, scope: !4459)
!4507 = !DILocation(line: 246, column: 15, scope: !4459)
!4508 = !DILocation(line: 253, column: 25, scope: !4459)
!4509 = !DILocation(line: 253, column: 5, scope: !4459)
!4510 = !DILocation(line: 255, column: 12, scope: !4459)
!4511 = !DILocation(line: 255, column: 5, scope: !4459)
!4512 = !DILocation(line: 256, column: 1, scope: !4459)
!4513 = distinct !DISubprogram(name: "hal_spi_build_op_addr", scope: !427, file: !427, line: 121, type: !4514, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4518)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!73, !4516}
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 32)
!4517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4463)
!4518 = !{!4519, !4520, !4521}
!4519 = !DILocalVariable(name: "config", arg: 1, scope: !4513, file: !427, line: 121, type: !4516)
!4520 = !DILocalVariable(name: "op_addr", scope: !4513, file: !427, line: 123, type: !73)
!4521 = !DILocalVariable(name: "index", scope: !4513, file: !427, line: 124, type: !73)
!4522 = !DILocation(line: 0, scope: !4513)
!4523 = !DILocation(line: 126, column: 27, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !427, line: 126, column: 5)
!4525 = distinct !DILexicalBlock(scope: !4513, file: !427, line: 126, column: 5)
!4526 = !DILocation(line: 126, column: 5, scope: !4525)
!4527 = !DILocation(line: 127, column: 31, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4524, file: !427, line: 126, column: 59)
!4529 = !DILocation(line: 127, column: 89, scope: !4528)
!4530 = !DILocation(line: 127, column: 94, scope: !4528)
!4531 = !DILocation(line: 127, column: 56, scope: !4528)
!4532 = !DILocation(line: 127, column: 17, scope: !4528)
!4533 = !DILocation(line: 126, column: 55, scope: !4524)
!4534 = distinct !{!4534, !4526, !4535}
!4535 = !DILocation(line: 128, column: 5, scope: !4525)
!4536 = !DILocation(line: 129, column: 5, scope: !4513)
!4537 = distinct !DISubprogram(name: "hal_spi_master_get_running_status", scope: !427, file: !427, line: 259, type: !4538, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !4542)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!4308, !4309, !4540}
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_running_status_t", file: !430, line: 563, baseType: !459)
!4542 = !{!4543, !4544}
!4543 = !DILocalVariable(name: "master_port", arg: 1, scope: !4537, file: !427, line: 259, type: !4309)
!4544 = !DILocalVariable(name: "running_status", arg: 2, scope: !4537, file: !427, line: 260, type: !4540)
!4545 = !DILocation(line: 0, scope: !4537)
!4546 = !DILocation(line: 262, column: 10, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4537, file: !427, line: 262, column: 9)
!4548 = !DILocation(line: 262, column: 9, scope: !4537)
!4549 = !DILocation(line: 265, column: 14, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4537, file: !427, line: 265, column: 9)
!4551 = !DILocation(line: 265, column: 9, scope: !4537)
!4552 = !DILocation(line: 269, column: 10, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4537, file: !427, line: 269, column: 9)
!4554 = !DILocation(line: 0, scope: !4553)
!4555 = !DILocation(line: 275, column: 5, scope: !4537)
!4556 = !DILocation(line: 276, column: 1, scope: !4537)
!4557 = distinct !DISubprogram(name: "hal_uart_init", scope: !523, file: !523, line: 234, type: !4558, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4562)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!4560, !583, !4561}
!4560 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !526, line: 351, baseType: !525)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 32)
!4562 = !{!4563, !4564}
!4563 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4557, file: !523, line: 234, type: !583)
!4564 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4557, file: !523, line: 234, type: !4561)
!4565 = !DILocation(line: 0, scope: !4557)
!4566 = !DILocation(line: 236, column: 10, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4557, file: !523, line: 236, column: 9)
!4568 = !DILocation(line: 236, column: 9, scope: !4557)
!4569 = !DILocation(line: 239, column: 41, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4557, file: !523, line: 239, column: 9)
!4571 = !DILocation(line: 239, column: 9, scope: !4557)
!4572 = !DILocation(line: 242, column: 5, scope: !4557)
!4573 = !DILocation(line: 243, column: 45, scope: !4557)
!4574 = !DILocation(line: 243, column: 12, scope: !4557)
!4575 = !DILocation(line: 244, column: 12, scope: !4557)
!4576 = !DILocation(line: 243, column: 5, scope: !4557)
!4577 = !DILocation(line: 245, column: 58, scope: !4557)
!4578 = !DILocation(line: 246, column: 30, scope: !4557)
!4579 = !{i32 0, i32 2}
!4580 = !DILocation(line: 246, column: 5, scope: !4557)
!4581 = !DILocation(line: 247, column: 5, scope: !4557)
!4582 = !DILocation(line: 249, column: 31, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4557, file: !523, line: 249, column: 9)
!4584 = !DILocation(line: 249, column: 28, scope: !4583)
!4585 = !DILocation(line: 261, column: 1, scope: !4557)
!4586 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !523, file: !523, line: 93, type: !4587, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4591)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!322, !583, !4589}
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!4591 = !{!4592, !4593}
!4592 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4586, file: !523, line: 93, type: !583)
!4593 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4586, file: !523, line: 93, type: !4589)
!4594 = !DILocation(line: 0, scope: !4586)
!4595 = !DILocation(line: 95, column: 10, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4586, file: !523, line: 95, column: 9)
!4597 = !DILocation(line: 95, column: 9, scope: !4586)
!4598 = !DILocation(line: 101, column: 23, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4586, file: !523, line: 101, column: 9)
!4600 = !DILocation(line: 101, column: 32, scope: !4599)
!4601 = !DILocation(line: 101, column: 60, scope: !4599)
!4602 = !DILocation(line: 102, column: 27, scope: !4599)
!4603 = !DILocation(line: 102, column: 34, scope: !4599)
!4604 = !DILocation(line: 102, column: 58, scope: !4599)
!4605 = !DILocation(line: 103, column: 27, scope: !4599)
!4606 = !DILocation(line: 103, column: 36, scope: !4599)
!4607 = !DILocation(line: 103, column: 59, scope: !4599)
!4608 = !DILocation(line: 104, column: 27, scope: !4599)
!4609 = !DILocation(line: 104, column: 39, scope: !4599)
!4610 = !DILocation(line: 101, column: 9, scope: !4586)
!4611 = !DILocation(line: 109, column: 1, scope: !4586)
!4612 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !523, file: !523, line: 139, type: !4613, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4615)
!4613 = !DISubroutineType(types: !4614)
!4614 = !{!2963, !583}
!4615 = !{!4616}
!4616 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4612, file: !523, line: 139, type: !583)
!4617 = !DILocation(line: 0, scope: !4612)
!4618 = !DILocation(line: 141, column: 24, scope: !4612)
!4619 = !DILocation(line: 141, column: 12, scope: !4612)
!4620 = !DILocation(line: 141, column: 5, scope: !4612)
!4621 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !523, file: !523, line: 593, type: !4622, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!4560, !583, !4589}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4621, file: !523, line: 593, type: !583)
!4626 = !DILocalVariable(name: "config", arg: 2, scope: !4621, file: !523, line: 593, type: !4589)
!4627 = !DILocation(line: 0, scope: !4621)
!4628 = !DILocation(line: 595, column: 10, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4621, file: !523, line: 595, column: 9)
!4630 = !DILocation(line: 595, column: 9, scope: !4621)
!4631 = !DILocation(line: 598, column: 45, scope: !4621)
!4632 = !DILocation(line: 598, column: 12, scope: !4621)
!4633 = !DILocation(line: 598, column: 59, scope: !4621)
!4634 = !DILocation(line: 598, column: 5, scope: !4621)
!4635 = !DILocation(line: 599, column: 23, scope: !4621)
!4636 = !DILocation(line: 600, column: 59, scope: !4621)
!4637 = !DILocation(line: 600, column: 23, scope: !4621)
!4638 = !DILocation(line: 601, column: 62, scope: !4621)
!4639 = !DILocation(line: 601, column: 23, scope: !4621)
!4640 = !DILocation(line: 602, column: 57, scope: !4621)
!4641 = !DILocation(line: 602, column: 23, scope: !4621)
!4642 = !DILocation(line: 603, column: 58, scope: !4621)
!4643 = !DILocation(line: 603, column: 23, scope: !4621)
!4644 = !DILocation(line: 599, column: 5, scope: !4621)
!4645 = !DILocation(line: 604, column: 5, scope: !4621)
!4646 = !DILocation(line: 605, column: 1, scope: !4621)
!4647 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !523, file: !523, line: 145, type: !4648, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!73, !598}
!4650 = !{!4651, !4652}
!4651 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4647, file: !523, line: 145, type: !598)
!4652 = !DILocalVariable(name: "baudrate_tbl", scope: !4647, file: !523, line: 147, type: !4653)
!4653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 416, elements: !4654)
!4654 = !{!4655}
!4655 = !DISubrange(count: 13)
!4656 = !DILocation(line: 0, scope: !4647)
!4657 = !DILocation(line: 147, column: 14, scope: !4647)
!4658 = !DILocation(line: 151, column: 12, scope: !4647)
!4659 = !DILocation(line: 151, column: 5, scope: !4647)
!4660 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !523, file: !523, line: 155, type: !4661, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4663)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{!3033, !600}
!4663 = !{!4664, !4665}
!4664 = !DILocalVariable(name: "word_length", arg: 1, scope: !4660, file: !523, line: 155, type: !600)
!4665 = !DILocalVariable(name: "databit_tbl", scope: !4660, file: !523, line: 157, type: !4666)
!4666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3033, size: 64, elements: !403)
!4667 = !DILocation(line: 0, scope: !4660)
!4668 = !DILocation(line: 157, column: 14, scope: !4660)
!4669 = !DILocation(line: 160, column: 12, scope: !4660)
!4670 = !DILocation(line: 160, column: 5, scope: !4660)
!4671 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !523, file: !523, line: 164, type: !4672, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4674)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!3033, !604}
!4674 = !{!4675, !4676}
!4675 = !DILocalVariable(name: "parity", arg: 1, scope: !4671, file: !523, line: 164, type: !604)
!4676 = !DILocalVariable(name: "parity_tbl", scope: !4671, file: !523, line: 166, type: !4677)
!4677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3033, size: 80, elements: !407)
!4678 = !DILocation(line: 0, scope: !4671)
!4679 = !DILocation(line: 166, column: 14, scope: !4671)
!4680 = !DILocation(line: 169, column: 12, scope: !4671)
!4681 = !DILocation(line: 169, column: 5, scope: !4671)
!4682 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !523, file: !523, line: 173, type: !4683, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4685)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!3033, !602}
!4685 = !{!4686, !4687}
!4686 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4682, file: !523, line: 173, type: !602)
!4687 = !DILocalVariable(name: "stopbit_tbl", scope: !4682, file: !523, line: 175, type: !4688)
!4688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3033, size: 48, elements: !749)
!4689 = !DILocation(line: 0, scope: !4682)
!4690 = !DILocation(line: 175, column: 14, scope: !4682)
!4691 = !DILocation(line: 178, column: 12, scope: !4682)
!4692 = !DILocation(line: 178, column: 5, scope: !4682)
!4693 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !523, file: !523, line: 87, type: !4694, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4696)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!322, !583}
!4696 = !{!4697}
!4697 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4693, file: !523, line: 87, type: !583)
!4698 = !DILocation(line: 0, scope: !4693)
!4699 = !DILocation(line: 89, column: 23, scope: !4693)
!4700 = !DILocation(line: 89, column: 5, scope: !4693)
!4701 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !523, file: !523, line: 264, type: !4702, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4704)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!4560, !583}
!4704 = !{!4705}
!4705 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4701, file: !523, line: 264, type: !583)
!4706 = !DILocation(line: 0, scope: !4701)
!4707 = !DILocation(line: 266, column: 10, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4701, file: !523, line: 266, column: 9)
!4709 = !DILocation(line: 266, column: 9, scope: !4701)
!4710 = !DILocation(line: 269, column: 41, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4701, file: !523, line: 269, column: 9)
!4712 = !DILocation(line: 269, column: 62, scope: !4711)
!4713 = !DILocation(line: 269, column: 9, scope: !4701)
!4714 = !DILocation(line: 272, column: 5, scope: !4701)
!4715 = !DILocation(line: 275, column: 22, scope: !4701)
!4716 = !DILocation(line: 275, column: 5, scope: !4701)
!4717 = !DILocation(line: 284, column: 5, scope: !4701)
!4718 = !DILocation(line: 286, column: 5, scope: !4701)
!4719 = !DILocation(line: 287, column: 1, scope: !4701)
!4720 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !523, file: !523, line: 290, type: !4721, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4723)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{null, !583, !575}
!4723 = !{!4724, !4725, !4726}
!4724 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4720, file: !523, line: 290, type: !583)
!4725 = !DILocalVariable(name: "byte", arg: 2, scope: !4720, file: !523, line: 290, type: !575)
!4726 = !DILocalVariable(name: "int_no", scope: !4720, file: !523, line: 292, type: !2963)
!4727 = !DILocation(line: 0, scope: !4720)
!4728 = !DILocation(line: 292, column: 26, scope: !4720)
!4729 = !DILocation(line: 294, column: 16, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4720, file: !523, line: 294, column: 9)
!4731 = !DILocation(line: 294, column: 9, scope: !4720)
!4732 = !DILocation(line: 295, column: 9, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4730, file: !523, line: 294, column: 34)
!4734 = !DILocation(line: 296, column: 5, scope: !4733)
!4735 = !DILocation(line: 299, column: 1, scope: !4720)
!4736 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !523, file: !523, line: 302, type: !4737, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4739)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!73, !583, !3170, !73}
!4739 = !{!4740, !4741, !4742, !4743, !4744}
!4740 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4736, file: !523, line: 302, type: !583)
!4741 = !DILocalVariable(name: "data", arg: 2, scope: !4736, file: !523, line: 302, type: !3170)
!4742 = !DILocalVariable(name: "size", arg: 3, scope: !4736, file: !523, line: 302, type: !73)
!4743 = !DILocalVariable(name: "int_no", scope: !4736, file: !523, line: 304, type: !2963)
!4744 = !DILocalVariable(name: "index", scope: !4736, file: !523, line: 305, type: !73)
!4745 = !DILocation(line: 0, scope: !4736)
!4746 = !DILocation(line: 304, column: 26, scope: !4736)
!4747 = !DILocation(line: 307, column: 14, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4736, file: !523, line: 307, column: 9)
!4749 = !DILocation(line: 307, column: 9, scope: !4736)
!4750 = !DILocation(line: 313, column: 53, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4752, file: !523, line: 312, column: 48)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !523, line: 312, column: 9)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !523, line: 312, column: 9)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !523, line: 311, column: 33)
!4755 = distinct !DILexicalBlock(scope: !4736, file: !523, line: 311, column: 9)
!4756 = !DILocation(line: 313, column: 13, scope: !4751)
!4757 = !DILocation(line: 312, column: 44, scope: !4752)
!4758 = !DILocation(line: 312, column: 31, scope: !4752)
!4759 = !DILocation(line: 312, column: 9, scope: !4753)
!4760 = distinct !{!4760, !4759, !4761}
!4761 = !DILocation(line: 314, column: 9, scope: !4753)
!4762 = !DILocation(line: 318, column: 1, scope: !4736)
!4763 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !523, file: !523, line: 320, type: !4737, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4764)
!4764 = !{!4765, !4766, !4767, !4768, !4769, !4770}
!4765 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4763, file: !523, line: 320, type: !583)
!4766 = !DILocalVariable(name: "data", arg: 2, scope: !4763, file: !523, line: 320, type: !3170)
!4767 = !DILocalVariable(name: "size", arg: 3, scope: !4763, file: !523, line: 320, type: !73)
!4768 = !DILocalVariable(name: "actual_space", scope: !4763, file: !523, line: 322, type: !73)
!4769 = !DILocalVariable(name: "send_size", scope: !4763, file: !523, line: 322, type: !73)
!4770 = !DILocalVariable(name: "ch", scope: !4763, file: !523, line: 323, type: !4771)
!4771 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !215, line: 144, baseType: !214)
!4772 = !DILocation(line: 0, scope: !4763)
!4773 = !DILocation(line: 322, column: 5, scope: !4763)
!4774 = !DILocation(line: 328, column: 10, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4763, file: !523, line: 328, column: 9)
!4776 = !DILocation(line: 328, column: 9, scope: !4763)
!4777 = !DILocation(line: 332, column: 15, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4763, file: !523, line: 332, column: 9)
!4779 = !DILocation(line: 332, column: 24, scope: !4778)
!4780 = !DILocation(line: 335, column: 42, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4763, file: !523, line: 335, column: 9)
!4782 = !DILocation(line: 335, column: 9, scope: !4763)
!4783 = !DILocation(line: 349, column: 30, scope: !4763)
!4784 = !DILocation(line: 349, column: 5, scope: !4763)
!4785 = !DILocation(line: 350, column: 9, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4763, file: !523, line: 350, column: 9)
!4787 = !DILocation(line: 350, column: 22, scope: !4786)
!4788 = !DILocation(line: 355, column: 5, scope: !4763)
!4789 = !DILocation(line: 357, column: 22, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4763, file: !523, line: 357, column: 9)
!4791 = !DILocation(line: 357, column: 19, scope: !4790)
!4792 = !DILocation(line: 357, column: 9, scope: !4763)
!4793 = !DILocation(line: 358, column: 14, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4790, file: !523, line: 357, column: 36)
!4795 = !{i32 14, i32 18}
!4796 = !DILocation(line: 359, column: 9, scope: !4794)
!4797 = !DILocation(line: 360, column: 5, scope: !4794)
!4798 = !DILocation(line: 362, column: 1, scope: !4763)
!4799 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !523, file: !523, line: 191, type: !4800, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!4771, !2963, !322}
!4802 = !{!4803, !4804, !4805}
!4803 = !DILocalVariable(name: "port", arg: 1, scope: !4799, file: !523, line: 191, type: !2963)
!4804 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4799, file: !523, line: 191, type: !322)
!4805 = !DILocalVariable(name: "ch", scope: !4799, file: !523, line: 193, type: !4771)
!4806 = !DILocation(line: 0, scope: !4799)
!4807 = !DILocation(line: 195, column: 14, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4799, file: !523, line: 195, column: 9)
!4809 = !DILocation(line: 195, column: 9, scope: !4799)
!4810 = !DILocation(line: 209, column: 5, scope: !4799)
!4811 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !523, file: !523, line: 365, type: !4812, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4814)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!575, !583}
!4814 = !{!4815, !4816}
!4815 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4811, file: !523, line: 365, type: !583)
!4816 = !DILocalVariable(name: "int_no", scope: !4811, file: !523, line: 367, type: !2963)
!4817 = !DILocation(line: 0, scope: !4811)
!4818 = !DILocation(line: 367, column: 26, scope: !4811)
!4819 = !DILocation(line: 369, column: 16, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4811, file: !523, line: 369, column: 9)
!4821 = !DILocation(line: 369, column: 9, scope: !4811)
!4822 = !DILocation(line: 370, column: 22, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4820, file: !523, line: 369, column: 33)
!4824 = !DILocation(line: 370, column: 9, scope: !4823)
!4825 = !DILocation(line: 0, scope: !4820)
!4826 = !DILocation(line: 375, column: 1, scope: !4811)
!4827 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !523, file: !523, line: 377, type: !4828, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4830)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!73, !583}
!4830 = !{!4831, !4832}
!4831 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4827, file: !523, line: 377, type: !583)
!4832 = !DILocalVariable(name: "int_no", scope: !4827, file: !523, line: 379, type: !2963)
!4833 = !DILocation(line: 0, scope: !4827)
!4834 = !DILocation(line: 379, column: 26, scope: !4827)
!4835 = !DILocation(line: 381, column: 16, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4827, file: !523, line: 381, column: 9)
!4837 = !DILocation(line: 381, column: 9, scope: !4827)
!4838 = !DILocation(line: 382, column: 16, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4836, file: !523, line: 381, column: 33)
!4840 = !DILocation(line: 382, column: 9, scope: !4839)
!4841 = !DILocation(line: 0, scope: !4836)
!4842 = !DILocation(line: 387, column: 1, scope: !4827)
!4843 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !523, file: !523, line: 390, type: !4844, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4846)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!73, !583, !162, !73}
!4846 = !{!4847, !4848, !4849, !4850, !4851}
!4847 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4843, file: !523, line: 390, type: !583)
!4848 = !DILocalVariable(name: "buffer", arg: 2, scope: !4843, file: !523, line: 390, type: !162)
!4849 = !DILocalVariable(name: "size", arg: 3, scope: !4843, file: !523, line: 390, type: !73)
!4850 = !DILocalVariable(name: "int_no", scope: !4843, file: !523, line: 392, type: !2963)
!4851 = !DILocalVariable(name: "index", scope: !4843, file: !523, line: 393, type: !73)
!4852 = !DILocation(line: 0, scope: !4843)
!4853 = !DILocation(line: 392, column: 26, scope: !4843)
!4854 = !DILocation(line: 395, column: 16, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4843, file: !523, line: 395, column: 9)
!4856 = !DILocation(line: 395, column: 9, scope: !4843)
!4857 = !DILocation(line: 401, column: 38, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4859, file: !523, line: 400, column: 48)
!4859 = distinct !DILexicalBlock(scope: !4860, file: !523, line: 400, column: 9)
!4860 = distinct !DILexicalBlock(scope: !4861, file: !523, line: 400, column: 9)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !523, line: 399, column: 33)
!4862 = distinct !DILexicalBlock(scope: !4843, file: !523, line: 399, column: 9)
!4863 = !DILocation(line: 401, column: 13, scope: !4858)
!4864 = !DILocation(line: 401, column: 27, scope: !4858)
!4865 = !DILocation(line: 400, column: 44, scope: !4859)
!4866 = !DILocation(line: 400, column: 31, scope: !4859)
!4867 = !DILocation(line: 400, column: 9, scope: !4860)
!4868 = distinct !{!4868, !4867, !4869}
!4869 = !DILocation(line: 402, column: 9, scope: !4860)
!4870 = !DILocation(line: 406, column: 1, scope: !4843)
!4871 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !523, file: !523, line: 408, type: !4844, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4872)
!4872 = !{!4873, !4874, !4875, !4876, !4877, !4878}
!4873 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4871, file: !523, line: 408, type: !583)
!4874 = !DILocalVariable(name: "buffer", arg: 2, scope: !4871, file: !523, line: 408, type: !162)
!4875 = !DILocalVariable(name: "size", arg: 3, scope: !4871, file: !523, line: 408, type: !73)
!4876 = !DILocalVariable(name: "actual_size", scope: !4871, file: !523, line: 410, type: !73)
!4877 = !DILocalVariable(name: "receive_size", scope: !4871, file: !523, line: 410, type: !73)
!4878 = !DILocalVariable(name: "ch", scope: !4871, file: !523, line: 411, type: !4771)
!4879 = !DILocation(line: 0, scope: !4871)
!4880 = !DILocation(line: 410, column: 5, scope: !4871)
!4881 = !DILocation(line: 413, column: 10, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4871, file: !523, line: 413, column: 9)
!4883 = !DILocation(line: 413, column: 9, scope: !4871)
!4884 = !DILocation(line: 417, column: 17, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4871, file: !523, line: 417, column: 9)
!4886 = !DILocation(line: 417, column: 26, scope: !4885)
!4887 = !DILocation(line: 421, column: 30, scope: !4871)
!4888 = !DILocation(line: 421, column: 5, scope: !4871)
!4889 = !DILocation(line: 422, column: 9, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4871, file: !523, line: 422, column: 9)
!4891 = !DILocation(line: 422, column: 21, scope: !4890)
!4892 = !DILocation(line: 427, column: 5, scope: !4871)
!4893 = !DILocation(line: 429, column: 25, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4871, file: !523, line: 429, column: 9)
!4895 = !DILocation(line: 429, column: 22, scope: !4894)
!4896 = !DILocation(line: 429, column: 9, scope: !4871)
!4897 = !DILocation(line: 430, column: 14, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4894, file: !523, line: 429, column: 38)
!4899 = !DILocation(line: 431, column: 9, scope: !4898)
!4900 = !DILocation(line: 432, column: 5, scope: !4898)
!4901 = !DILocation(line: 435, column: 1, scope: !4871)
!4902 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !523, file: !523, line: 438, type: !4828, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4903)
!4903 = !{!4904, !4905}
!4904 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4902, file: !523, line: 438, type: !583)
!4905 = !DILocalVariable(name: "length", scope: !4902, file: !523, line: 440, type: !73)
!4906 = !DILocation(line: 0, scope: !4902)
!4907 = !DILocation(line: 440, column: 5, scope: !4902)
!4908 = !DILocation(line: 440, column: 14, scope: !4902)
!4909 = !DILocation(line: 442, column: 10, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4902, file: !523, line: 442, column: 9)
!4911 = !DILocation(line: 442, column: 9, scope: !4902)
!4912 = !DILocation(line: 446, column: 30, scope: !4902)
!4913 = !DILocation(line: 446, column: 5, scope: !4902)
!4914 = !DILocation(line: 447, column: 12, scope: !4902)
!4915 = !DILocation(line: 447, column: 5, scope: !4902)
!4916 = !DILocation(line: 448, column: 1, scope: !4902)
!4917 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !523, file: !523, line: 451, type: !4828, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4918)
!4918 = !{!4919, !4920}
!4919 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4917, file: !523, line: 451, type: !583)
!4920 = !DILocalVariable(name: "length", scope: !4917, file: !523, line: 453, type: !73)
!4921 = !DILocation(line: 0, scope: !4917)
!4922 = !DILocation(line: 453, column: 5, scope: !4917)
!4923 = !DILocation(line: 453, column: 14, scope: !4917)
!4924 = !DILocation(line: 455, column: 10, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4917, file: !523, line: 455, column: 9)
!4926 = !DILocation(line: 455, column: 9, scope: !4917)
!4927 = !DILocation(line: 459, column: 30, scope: !4917)
!4928 = !DILocation(line: 459, column: 5, scope: !4917)
!4929 = !DILocation(line: 461, column: 12, scope: !4917)
!4930 = !DILocation(line: 461, column: 5, scope: !4917)
!4931 = !DILocation(line: 462, column: 1, scope: !4917)
!4932 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !523, file: !523, line: 543, type: !4933, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4935)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{!4560, !583, !611, !68}
!4935 = !{!4936, !4937, !4938, !4939}
!4936 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4932, file: !523, line: 543, type: !583)
!4937 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4932, file: !523, line: 544, type: !611)
!4938 = !DILocalVariable(name: "user_data", arg: 3, scope: !4932, file: !523, line: 545, type: !68)
!4939 = !DILocalVariable(name: "ch", scope: !4932, file: !523, line: 547, type: !4771)
!4940 = !DILocation(line: 0, scope: !4932)
!4941 = !DILocation(line: 549, column: 10, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4932, file: !523, line: 549, column: 9)
!4943 = !DILocation(line: 549, column: 9, scope: !4932)
!4944 = !DILocation(line: 556, column: 53, scope: !4932)
!4945 = !DILocation(line: 556, column: 62, scope: !4932)
!4946 = !DILocation(line: 557, column: 53, scope: !4932)
!4947 = !DILocation(line: 557, column: 63, scope: !4932)
!4948 = !DILocation(line: 558, column: 37, scope: !4932)
!4949 = !DILocation(line: 558, column: 54, scope: !4932)
!4950 = !DILocation(line: 560, column: 39, scope: !4932)
!4951 = !DILocation(line: 561, column: 39, scope: !4932)
!4952 = !DILocation(line: 560, column: 5, scope: !4932)
!4953 = !DILocation(line: 562, column: 5, scope: !4932)
!4954 = !DILocation(line: 564, column: 44, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4932, file: !523, line: 564, column: 9)
!4956 = !DILocation(line: 564, column: 9, scope: !4932)
!4957 = !DILocation(line: 565, column: 9, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4955, file: !523, line: 564, column: 59)
!4959 = !DILocation(line: 566, column: 5, scope: !4958)
!4960 = !DILocation(line: 567, column: 9, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4955, file: !523, line: 566, column: 12)
!4962 = !DILocation(line: 569, column: 10, scope: !4932)
!4963 = !DILocation(line: 570, column: 5, scope: !4932)
!4964 = !DILocation(line: 578, column: 5, scope: !4932)
!4965 = !DILocation(line: 579, column: 1, scope: !4932)
!4966 = !DILocation(line: 0, scope: !579)
!4967 = !DILocation(line: 539, column: 12, scope: !579)
!4968 = !DILocation(line: 539, column: 5, scope: !579)
!4969 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !523, file: !523, line: 511, type: !81, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4970)
!4970 = !{!4971}
!4971 = !DILocalVariable(name: "callback_context", scope: !4972, file: !523, line: 514, type: !4974)
!4972 = distinct !DILexicalBlock(scope: !4973, file: !523, line: 513, column: 60)
!4973 = distinct !DILexicalBlock(scope: !4969, file: !523, line: 513, column: 9)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 32)
!4975 = !DILocation(line: 513, column: 42, scope: !4973)
!4976 = !DILocation(line: 513, column: 9, scope: !4969)
!4977 = !DILocation(line: 515, column: 39, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4972, file: !523, line: 515, column: 13)
!4979 = !DILocation(line: 515, column: 18, scope: !4978)
!4980 = !DILocation(line: 515, column: 13, scope: !4972)
!4981 = !DILocation(line: 516, column: 89, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4978, file: !523, line: 515, column: 49)
!4983 = !DILocation(line: 516, column: 13, scope: !4982)
!4984 = !DILocation(line: 517, column: 9, scope: !4982)
!4985 = !DILocation(line: 519, column: 32, scope: !4969)
!4986 = !DILocation(line: 519, column: 5, scope: !4969)
!4987 = !DILocation(line: 520, column: 1, scope: !4969)
!4988 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !523, file: !523, line: 523, type: !81, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !4989)
!4989 = !{!4990}
!4990 = !DILocalVariable(name: "callback_context", scope: !4991, file: !523, line: 526, type: !4974)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !523, line: 525, column: 60)
!4992 = distinct !DILexicalBlock(scope: !4988, file: !523, line: 525, column: 9)
!4993 = !DILocation(line: 525, column: 42, scope: !4992)
!4994 = !DILocation(line: 525, column: 9, scope: !4988)
!4995 = !DILocation(line: 527, column: 39, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4991, file: !523, line: 527, column: 13)
!4997 = !DILocation(line: 527, column: 18, scope: !4996)
!4998 = !DILocation(line: 527, column: 13, scope: !4991)
!4999 = !DILocation(line: 528, column: 89, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4996, file: !523, line: 527, column: 49)
!5001 = !DILocation(line: 528, column: 13, scope: !5000)
!5002 = !DILocation(line: 529, column: 9, scope: !5000)
!5003 = !DILocation(line: 531, column: 32, scope: !4988)
!5004 = !DILocation(line: 531, column: 5, scope: !4988)
!5005 = !DILocation(line: 532, column: 1, scope: !4988)
!5006 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !523, file: !523, line: 464, type: !5007, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5009)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{null, !2963, !322}
!5009 = !{!5010, !5011, !5012, !5013, !5014, !5016}
!5010 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5006, file: !523, line: 464, type: !2963)
!5011 = !DILocalVariable(name: "is_rx", arg: 2, scope: !5006, file: !523, line: 464, type: !322)
!5012 = !DILocalVariable(name: "avail_size", scope: !5006, file: !523, line: 466, type: !73)
!5013 = !DILocalVariable(name: "avail_space", scope: !5006, file: !523, line: 466, type: !73)
!5014 = !DILocalVariable(name: "dma_config", scope: !5006, file: !523, line: 467, type: !5015)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 32)
!5016 = !DILocalVariable(name: "ch", scope: !5006, file: !523, line: 468, type: !4771)
!5017 = !DILocation(line: 0, scope: !5006)
!5018 = !DILocation(line: 466, column: 5, scope: !5006)
!5019 = !DILocation(line: 471, column: 9, scope: !5006)
!5020 = !DILocation(line: 472, column: 9, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !523, line: 471, column: 16)
!5022 = distinct !DILexicalBlock(scope: !5006, file: !523, line: 471, column: 9)
!5023 = !DILocation(line: 473, column: 13, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5021, file: !523, line: 473, column: 13)
!5025 = !DILocation(line: 473, column: 39, scope: !5024)
!5026 = !DILocation(line: 473, column: 24, scope: !5024)
!5027 = !DILocation(line: 473, column: 13, scope: !5021)
!5028 = !DILocation(line: 478, column: 9, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5022, file: !523, line: 477, column: 12)
!5030 = !DILocation(line: 479, column: 13, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5029, file: !523, line: 479, column: 13)
!5032 = !DILocation(line: 479, column: 40, scope: !5031)
!5033 = !DILocation(line: 479, column: 77, scope: !5031)
!5034 = !DILocation(line: 479, column: 63, scope: !5031)
!5035 = !DILocation(line: 479, column: 25, scope: !5031)
!5036 = !DILocation(line: 479, column: 13, scope: !5029)
!5037 = !DILocation(line: 0, scope: !5022)
!5038 = !DILocation(line: 484, column: 1, scope: !5006)
!5039 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !523, file: !523, line: 486, type: !81, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5040)
!5040 = !{!5041}
!5041 = !DILocalVariable(name: "callback_context", scope: !5042, file: !523, line: 490, type: !4974)
!5042 = distinct !DILexicalBlock(scope: !5043, file: !523, line: 489, column: 70)
!5043 = distinct !DILexicalBlock(scope: !5039, file: !523, line: 488, column: 9)
!5044 = !DILocation(line: 488, column: 43, scope: !5043)
!5045 = !DILocation(line: 488, column: 61, scope: !5043)
!5046 = !DILocation(line: 489, column: 14, scope: !5043)
!5047 = !DILocation(line: 489, column: 63, scope: !5043)
!5048 = !DILocation(line: 488, column: 9, scope: !5039)
!5049 = !DILocation(line: 491, column: 39, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5042, file: !523, line: 491, column: 13)
!5051 = !DILocation(line: 491, column: 18, scope: !5050)
!5052 = !DILocation(line: 491, column: 13, scope: !5042)
!5053 = !DILocation(line: 492, column: 88, scope: !5054)
!5054 = distinct !DILexicalBlock(scope: !5050, file: !523, line: 491, column: 49)
!5055 = !DILocation(line: 492, column: 13, scope: !5054)
!5056 = !DILocation(line: 493, column: 9, scope: !5054)
!5057 = !DILocation(line: 495, column: 32, scope: !5039)
!5058 = !DILocation(line: 495, column: 5, scope: !5039)
!5059 = !DILocation(line: 496, column: 1, scope: !5039)
!5060 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !523, file: !523, line: 499, type: !81, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5061)
!5061 = !{!5062}
!5062 = !DILocalVariable(name: "callback_context", scope: !5063, file: !523, line: 503, type: !4974)
!5063 = distinct !DILexicalBlock(scope: !5064, file: !523, line: 502, column: 70)
!5064 = distinct !DILexicalBlock(scope: !5060, file: !523, line: 501, column: 9)
!5065 = !DILocation(line: 501, column: 43, scope: !5064)
!5066 = !DILocation(line: 501, column: 61, scope: !5064)
!5067 = !DILocation(line: 502, column: 14, scope: !5064)
!5068 = !DILocation(line: 502, column: 63, scope: !5064)
!5069 = !DILocation(line: 501, column: 9, scope: !5060)
!5070 = !DILocation(line: 504, column: 39, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5063, file: !523, line: 504, column: 13)
!5072 = !DILocation(line: 504, column: 18, scope: !5071)
!5073 = !DILocation(line: 504, column: 13, scope: !5063)
!5074 = !DILocation(line: 505, column: 88, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5071, file: !523, line: 504, column: 49)
!5076 = !DILocation(line: 505, column: 13, scope: !5075)
!5077 = !DILocation(line: 506, column: 9, scope: !5075)
!5078 = !DILocation(line: 508, column: 32, scope: !5060)
!5079 = !DILocation(line: 508, column: 5, scope: !5060)
!5080 = !DILocation(line: 509, column: 1, scope: !5060)
!5081 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !523, file: !523, line: 582, type: !5082, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5084)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!4560, !583, !598}
!5084 = !{!5085, !5086}
!5085 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5081, file: !523, line: 582, type: !583)
!5086 = !DILocalVariable(name: "baudrate", arg: 2, scope: !5081, file: !523, line: 582, type: !598)
!5087 = !DILocation(line: 0, scope: !5081)
!5088 = !DILocation(line: 584, column: 11, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5081, file: !523, line: 584, column: 9)
!5090 = !DILocation(line: 584, column: 46, scope: !5089)
!5091 = !DILocation(line: 588, column: 37, scope: !5081)
!5092 = !DILocation(line: 588, column: 50, scope: !5081)
!5093 = !DILocation(line: 588, column: 59, scope: !5081)
!5094 = !DILocation(line: 589, column: 12, scope: !5081)
!5095 = !DILocation(line: 589, column: 5, scope: !5081)
!5096 = !DILocation(line: 590, column: 1, scope: !5081)
!5097 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !523, file: !523, line: 608, type: !5098, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5102)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!4560, !583, !5100}
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5101, size: 32)
!5101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!5102 = !{!5103, !5104}
!5103 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5097, file: !523, line: 608, type: !583)
!5104 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !5097, file: !523, line: 608, type: !5100)
!5105 = !DILocation(line: 0, scope: !5097)
!5106 = !DILocation(line: 610, column: 10, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5097, file: !523, line: 610, column: 9)
!5108 = !DILocation(line: 610, column: 9, scope: !5097)
!5109 = !DILocation(line: 614, column: 10, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5097, file: !523, line: 614, column: 9)
!5111 = !DILocation(line: 614, column: 9, scope: !5097)
!5112 = !DILocation(line: 618, column: 37, scope: !5097)
!5113 = !DILocation(line: 618, column: 56, scope: !5097)
!5114 = !DILocation(line: 619, column: 45, scope: !5097)
!5115 = !DILocation(line: 619, column: 12, scope: !5097)
!5116 = !DILocation(line: 620, column: 12, scope: !5097)
!5117 = !DILocation(line: 619, column: 5, scope: !5097)
!5118 = !DILocation(line: 621, column: 5, scope: !5097)
!5119 = !DILocation(line: 622, column: 5, scope: !5097)
!5120 = !DILocation(line: 623, column: 33, scope: !5097)
!5121 = !DILocation(line: 624, column: 50, scope: !5097)
!5122 = !DILocation(line: 625, column: 50, scope: !5097)
!5123 = !DILocation(line: 626, column: 50, scope: !5097)
!5124 = !DILocation(line: 627, column: 50, scope: !5097)
!5125 = !DILocation(line: 628, column: 33, scope: !5097)
!5126 = !DILocation(line: 623, column: 5, scope: !5097)
!5127 = !DILocation(line: 630, column: 50, scope: !5097)
!5128 = !DILocation(line: 631, column: 50, scope: !5097)
!5129 = !DILocation(line: 632, column: 50, scope: !5097)
!5130 = !DILocation(line: 629, column: 5, scope: !5097)
!5131 = !DILocation(line: 634, column: 5, scope: !5097)
!5132 = !DILocation(line: 635, column: 1, scope: !5097)
!5133 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !523, file: !523, line: 112, type: !5134, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5136)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!322, !5100}
!5136 = !{!5137}
!5137 = !DILocalVariable(name: "dma_config", arg: 1, scope: !5133, file: !523, line: 112, type: !5100)
!5138 = !DILocation(line: 0, scope: !5133)
!5139 = !DILocation(line: 114, column: 14, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5133, file: !523, line: 114, column: 9)
!5141 = !DILocation(line: 114, column: 9, scope: !5133)
!5142 = !DILocation(line: 117, column: 29, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5133, file: !523, line: 117, column: 9)
!5144 = !DILocation(line: 117, column: 14, scope: !5143)
!5145 = !DILocation(line: 117, column: 9, scope: !5133)
!5146 = !DILocation(line: 120, column: 21, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5133, file: !523, line: 120, column: 9)
!5148 = !DILocation(line: 120, column: 61, scope: !5147)
!5149 = !DILocation(line: 120, column: 47, scope: !5147)
!5150 = !DILocation(line: 120, column: 9, scope: !5133)
!5151 = !DILocation(line: 123, column: 61, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5133, file: !523, line: 123, column: 9)
!5153 = !DILocation(line: 123, column: 47, scope: !5152)
!5154 = !DILocation(line: 123, column: 9, scope: !5133)
!5155 = !DILocation(line: 126, column: 29, scope: !5156)
!5156 = distinct !DILexicalBlock(scope: !5133, file: !523, line: 126, column: 9)
!5157 = !DILocation(line: 126, column: 14, scope: !5156)
!5158 = !DILocation(line: 126, column: 9, scope: !5133)
!5159 = !DILocation(line: 129, column: 21, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5133, file: !523, line: 129, column: 9)
!5161 = !DILocation(line: 129, column: 58, scope: !5160)
!5162 = !DILocation(line: 129, column: 44, scope: !5160)
!5163 = !DILocation(line: 129, column: 9, scope: !5133)
!5164 = !DILocation(line: 136, column: 1, scope: !5133)
!5165 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !523, file: !523, line: 182, type: !516, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5166)
!5166 = !{!5167, !5168}
!5167 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !5165, file: !523, line: 182, type: !73)
!5168 = !DILocalVariable(name: "ticks_per_us", scope: !5165, file: !523, line: 184, type: !73)
!5169 = !DILocation(line: 0, scope: !5165)
!5170 = !DILocation(line: 186, column: 20, scope: !5165)
!5171 = !DILocation(line: 186, column: 39, scope: !5165)
!5172 = !DILocation(line: 188, column: 25, scope: !5165)
!5173 = !DILocation(line: 188, column: 5, scope: !5165)
!5174 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !523, file: !523, line: 637, type: !4702, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5175)
!5175 = !{!5176, !5177}
!5176 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5174, file: !523, line: 637, type: !583)
!5177 = !DILocalVariable(name: "int_no", scope: !5174, file: !523, line: 639, type: !2963)
!5178 = !DILocation(line: 0, scope: !5174)
!5179 = !DILocation(line: 641, column: 10, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5174, file: !523, line: 641, column: 9)
!5181 = !DILocation(line: 641, column: 9, scope: !5174)
!5182 = !DILocation(line: 645, column: 14, scope: !5174)
!5183 = !DILocation(line: 646, column: 5, scope: !5174)
!5184 = !DILocation(line: 648, column: 5, scope: !5174)
!5185 = !DILocation(line: 649, column: 1, scope: !5174)
!5186 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !523, file: !523, line: 651, type: !5187, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5189)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!4560, !583, !163, !163, !163}
!5189 = !{!5190, !5191, !5192, !5193, !5194}
!5190 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5186, file: !523, line: 651, type: !583)
!5191 = !DILocalVariable(name: "xon", arg: 2, scope: !5186, file: !523, line: 652, type: !163)
!5192 = !DILocalVariable(name: "xoff", arg: 3, scope: !5186, file: !523, line: 653, type: !163)
!5193 = !DILocalVariable(name: "escape_character", arg: 4, scope: !5186, file: !523, line: 654, type: !163)
!5194 = !DILocalVariable(name: "int_no", scope: !5186, file: !523, line: 656, type: !2963)
!5195 = !DILocation(line: 0, scope: !5186)
!5196 = !DILocation(line: 658, column: 10, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5186, file: !523, line: 658, column: 9)
!5198 = !DILocation(line: 658, column: 9, scope: !5186)
!5199 = !DILocation(line: 662, column: 14, scope: !5186)
!5200 = !DILocation(line: 663, column: 5, scope: !5186)
!5201 = !DILocation(line: 665, column: 5, scope: !5186)
!5202 = !DILocation(line: 666, column: 1, scope: !5186)
!5203 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !523, file: !523, line: 668, type: !4702, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5204)
!5204 = !{!5205, !5206}
!5205 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5203, file: !523, line: 668, type: !583)
!5206 = !DILocalVariable(name: "int_no", scope: !5203, file: !523, line: 670, type: !2963)
!5207 = !DILocation(line: 0, scope: !5203)
!5208 = !DILocation(line: 672, column: 10, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5203, file: !523, line: 672, column: 9)
!5210 = !DILocation(line: 672, column: 9, scope: !5203)
!5211 = !DILocation(line: 676, column: 14, scope: !5203)
!5212 = !DILocation(line: 677, column: 5, scope: !5203)
!5213 = !DILocation(line: 679, column: 5, scope: !5203)
!5214 = !DILocation(line: 680, column: 1, scope: !5203)
!5215 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !523, file: !523, line: 683, type: !5216, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !522, retainedNodes: !5218)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!4560, !583, !73}
!5218 = !{!5219, !5220}
!5219 = !DILocalVariable(name: "uart_port", arg: 1, scope: !5215, file: !523, line: 683, type: !583)
!5220 = !DILocalVariable(name: "timeout", arg: 2, scope: !5215, file: !523, line: 683, type: !73)
!5221 = !DILocation(line: 0, scope: !5215)
!5222 = !DILocation(line: 685, column: 10, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5215, file: !523, line: 685, column: 9)
!5224 = !DILocation(line: 685, column: 9, scope: !5215)
!5225 = !DILocation(line: 689, column: 19, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5215, file: !523, line: 689, column: 9)
!5227 = !DILocation(line: 0, scope: !5226)
!5228 = !DILocation(line: 696, column: 1, scope: !5215)
!5229 = distinct !DISubprogram(name: "__io_putchar", scope: !1075, file: !1075, line: 90, type: !5230, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5232)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!7, !7}
!5232 = !{!5233}
!5233 = !DILocalVariable(name: "ch", arg: 1, scope: !5229, file: !1075, line: 90, type: !7)
!5234 = !DILocation(line: 0, scope: !5229)
!5235 = !DILocation(line: 97, column: 35, scope: !5229)
!5236 = !DILocation(line: 97, column: 5, scope: !5229)
!5237 = !DILocation(line: 98, column: 5, scope: !5229)
!5238 = distinct !DISubprogram(name: "main", scope: !1075, file: !1075, line: 445, type: !2939, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2282)
!5239 = !DILocation(line: 448, column: 5, scope: !5238)
!5240 = !DILocation(line: 451, column: 5, scope: !5238)
!5241 = !DILocation(line: 319, column: 3, scope: !5242, inlinedAt: !5243)
!5242 = distinct !DISubprogram(name: "__enable_irq", scope: !2272, file: !2272, line: 317, type: !81, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2282)
!5243 = distinct !DILocation(line: 454, column: 5, scope: !5238)
!5244 = !{i64 523946}
!5245 = !DILocation(line: 496, column: 3, scope: !5246, inlinedAt: !5247)
!5246 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !2272, file: !2272, line: 494, type: !81, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2282)
!5247 = distinct !DILocation(line: 455, column: 5, scope: !5238)
!5248 = !{i64 528221}
!5249 = !DILocation(line: 458, column: 5, scope: !5238)
!5250 = !DILocation(line: 460, column: 5, scope: !5238)
!5251 = !DILocation(line: 461, column: 5, scope: !5238)
!5252 = !DILocation(line: 464, column: 5, scope: !5238)
!5253 = !DILocation(line: 466, column: 5, scope: !5238)
!5254 = distinct !{!5254, !5253, !5255}
!5255 = !DILocation(line: 466, column: 14, scope: !5238)
!5256 = distinct !DISubprogram(name: "SystemClock_Config", scope: !1075, file: !1075, line: 129, type: !81, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2282)
!5257 = !DILocation(line: 131, column: 5, scope: !5256)
!5258 = !DILocation(line: 132, column: 1, scope: !5256)
!5259 = distinct !DISubprogram(name: "prvSetupHardware", scope: !1075, file: !1075, line: 139, type: !81, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !2282)
!5260 = !DILocation(line: 142, column: 5, scope: !5259)
!5261 = !DILocation(line: 143, column: 1, scope: !5259)
!5262 = distinct !DISubprogram(name: "spi_master_transfer_data_two_boards_example", scope: !1075, file: !1075, line: 396, type: !81, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5263)
!5263 = !{!5264}
!5264 = !DILocalVariable(name: "spi_config", scope: !5262, file: !1075, line: 398, type: !5265)
!5265 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_config_t", file: !430, line: 580, baseType: !5266)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 574, size: 160, elements: !5267)
!5267 = !{!5268, !5269, !5270, !5271, !5272}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "clock_frequency", scope: !5266, file: !430, line: 575, baseType: !73, size: 32)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "slave_port", scope: !5266, file: !430, line: 576, baseType: !503, size: 32, offset: 32)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "bit_order", scope: !5266, file: !430, line: 577, baseType: !505, size: 32, offset: 64)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !5266, file: !430, line: 578, baseType: !507, size: 32, offset: 96)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !5266, file: !430, line: 579, baseType: !509, size: 32, offset: 128)
!5273 = !DILocation(line: 398, column: 5, scope: !5262)
!5274 = !DILocation(line: 398, column: 29, scope: !5262)
!5275 = !DILocation(line: 400, column: 5, scope: !5262)
!5276 = !DILocation(line: 403, column: 5, scope: !5262)
!5277 = !DILocation(line: 404, column: 5, scope: !5262)
!5278 = !DILocation(line: 405, column: 5, scope: !5262)
!5279 = !DILocation(line: 406, column: 5, scope: !5262)
!5280 = !DILocation(line: 407, column: 5, scope: !5262)
!5281 = !DILocation(line: 408, column: 5, scope: !5262)
!5282 = !DILocation(line: 409, column: 5, scope: !5262)
!5283 = !DILocation(line: 410, column: 5, scope: !5262)
!5284 = !DILocation(line: 413, column: 16, scope: !5262)
!5285 = !DILocation(line: 413, column: 26, scope: !5262)
!5286 = !DILocation(line: 414, column: 16, scope: !5262)
!5287 = !DILocation(line: 414, column: 27, scope: !5262)
!5288 = !DILocation(line: 415, column: 16, scope: !5262)
!5289 = !DILocation(line: 415, column: 32, scope: !5262)
!5290 = !DILocation(line: 416, column: 16, scope: !5262)
!5291 = !DILocation(line: 416, column: 22, scope: !5262)
!5292 = !DILocation(line: 417, column: 16, scope: !5262)
!5293 = !DILocation(line: 417, column: 25, scope: !5262)
!5294 = !DILocation(line: 418, column: 37, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5262, file: !1075, line: 418, column: 9)
!5296 = !DILocation(line: 418, column: 34, scope: !5295)
!5297 = !DILocation(line: 418, column: 9, scope: !5262)
!5298 = !DILocation(line: 422, column: 9, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5295, file: !1075, line: 421, column: 12)
!5300 = !DILocation(line: 426, column: 5, scope: !5262)
!5301 = !DILocation(line: 429, column: 5, scope: !5262)
!5302 = !DILocation(line: 432, column: 37, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5262, file: !1075, line: 432, column: 9)
!5304 = !DILocation(line: 432, column: 34, scope: !5303)
!5305 = !DILocation(line: 432, column: 9, scope: !5262)
!5306 = !DILocation(line: 436, column: 5, scope: !5262)
!5307 = !DILocation(line: 437, column: 5, scope: !5262)
!5308 = !DILocation(line: 438, column: 5, scope: !5262)
!5309 = !DILocation(line: 439, column: 5, scope: !5262)
!5310 = !DILocation(line: 442, column: 1, scope: !5262)
!5311 = !DILocation(line: 0, scope: !5262)
!5312 = distinct !DISubprogram(name: "spim_send_data_to_spis", scope: !1075, file: !1075, line: 311, type: !81, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5313)
!5313 = !{!5314}
!5314 = !DILocalVariable(name: "i", scope: !5312, file: !1075, line: 313, type: !73)
!5315 = !DILocation(line: 315, column: 5, scope: !5312)
!5316 = !DILocation(line: 318, column: 5, scope: !5312)
!5317 = !DILocation(line: 321, column: 5, scope: !5312)
!5318 = !DILocation(line: 322, column: 5, scope: !5312)
!5319 = !DILocation(line: 323, column: 5, scope: !5312)
!5320 = !DILocation(line: 324, column: 5, scope: !5312)
!5321 = !DILocation(line: 325, column: 5, scope: !5312)
!5322 = !DILocation(line: 326, column: 5, scope: !5312)
!5323 = !DILocation(line: 329, column: 5, scope: !5312)
!5324 = !DILocation(line: 0, scope: !5312)
!5325 = !DILocation(line: 330, column: 5, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5312, file: !1075, line: 330, column: 5)
!5327 = !DILocation(line: 331, column: 9, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !1075, line: 330, column: 50)
!5329 = distinct !DILexicalBlock(scope: !5326, file: !1075, line: 330, column: 5)
!5330 = !DILocation(line: 332, column: 9, scope: !5328)
!5331 = !DILocation(line: 333, column: 9, scope: !5328)
!5332 = !DILocation(line: 330, column: 46, scope: !5329)
!5333 = !DILocation(line: 330, column: 19, scope: !5329)
!5334 = distinct !{!5334, !5325, !5335}
!5335 = !DILocation(line: 334, column: 5, scope: !5326)
!5336 = !DILocation(line: 337, column: 5, scope: !5312)
!5337 = !DILocation(line: 338, column: 5, scope: !5312)
!5338 = !DILocation(line: 339, column: 5, scope: !5312)
!5339 = !DILocation(line: 340, column: 5, scope: !5312)
!5340 = !DILocation(line: 341, column: 5, scope: !5312)
!5341 = !DILocation(line: 343, column: 5, scope: !5312)
!5342 = !DILocation(line: 344, column: 1, scope: !5312)
!5343 = distinct !DISubprogram(name: "spim_receive_data_from_spis", scope: !1075, file: !1075, line: 352, type: !81, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5344)
!5344 = !{!5345, !5346}
!5345 = !DILocalVariable(name: "i", scope: !5343, file: !1075, line: 354, type: !73)
!5346 = !DILocalVariable(name: "data", scope: !5343, file: !1075, line: 354, type: !73)
!5347 = !DILocation(line: 356, column: 5, scope: !5343)
!5348 = !DILocation(line: 359, column: 5, scope: !5343)
!5349 = !DILocation(line: 362, column: 5, scope: !5343)
!5350 = !DILocation(line: 363, column: 5, scope: !5343)
!5351 = !DILocation(line: 364, column: 5, scope: !5343)
!5352 = !DILocation(line: 365, column: 5, scope: !5343)
!5353 = !DILocation(line: 366, column: 5, scope: !5343)
!5354 = !DILocation(line: 367, column: 5, scope: !5343)
!5355 = !DILocation(line: 370, column: 5, scope: !5343)
!5356 = !DILocation(line: 0, scope: !5343)
!5357 = !DILocation(line: 371, column: 5, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5343, file: !1075, line: 371, column: 5)
!5359 = !DILocation(line: 372, column: 9, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5361, file: !1075, line: 371, column: 50)
!5361 = distinct !DILexicalBlock(scope: !5358, file: !1075, line: 371, column: 5)
!5362 = !DILocation(line: 373, column: 9, scope: !5360)
!5363 = !DILocation(line: 374, column: 16, scope: !5360)
!5364 = !DILocation(line: 375, column: 18, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5360, file: !1075, line: 375, column: 13)
!5366 = !DILocation(line: 375, column: 13, scope: !5360)
!5367 = !DILocation(line: 376, column: 13, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5365, file: !1075, line: 375, column: 47)
!5369 = !DILocation(line: 377, column: 13, scope: !5368)
!5370 = !DILocation(line: 371, column: 46, scope: !5361)
!5371 = !DILocation(line: 371, column: 19, scope: !5361)
!5372 = distinct !{!5372, !5357, !5373}
!5373 = !DILocation(line: 379, column: 5, scope: !5358)
!5374 = !DILocation(line: 382, column: 5, scope: !5343)
!5375 = !DILocation(line: 383, column: 5, scope: !5343)
!5376 = !DILocation(line: 384, column: 5, scope: !5343)
!5377 = !DILocation(line: 385, column: 5, scope: !5343)
!5378 = !DILocation(line: 386, column: 5, scope: !5343)
!5379 = !DILocation(line: 388, column: 5, scope: !5343)
!5380 = !DILocation(line: 389, column: 1, scope: !5343)
!5381 = distinct !DISubprogram(name: "spim_wait_slave_idle", scope: !1075, file: !1075, line: 150, type: !81, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5382)
!5382 = !{!5383, !5385, !5386}
!5383 = !DILocalVariable(name: "command_buffer", scope: !5381, file: !1075, line: 152, type: !5384)
!5384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 32, elements: !403)
!5385 = !DILocalVariable(name: "temp_buffer", scope: !5381, file: !1075, line: 153, type: !73)
!5386 = !DILocalVariable(name: "spi_send_and_receive_config", scope: !5381, file: !1075, line: 154, type: !5387)
!5387 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_master_send_and_receive_config_t", file: !430, line: 616, baseType: !5388)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 611, size: 128, elements: !5389)
!5389 = !{!5390, !5391, !5392, !5393}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "send_data", scope: !5388, file: !430, line: 612, baseType: !162, size: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "send_length", scope: !5388, file: !430, line: 613, baseType: !73, size: 32, offset: 32)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buffer", scope: !5388, file: !430, line: 614, baseType: !162, size: 32, offset: 64)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "receive_length", scope: !5388, file: !430, line: 615, baseType: !73, size: 32, offset: 96)
!5394 = !DILocation(line: 152, column: 5, scope: !5381)
!5395 = !DILocation(line: 152, column: 13, scope: !5381)
!5396 = !DILocation(line: 153, column: 5, scope: !5381)
!5397 = !DILocation(line: 154, column: 5, scope: !5381)
!5398 = !DILocation(line: 154, column: 46, scope: !5381)
!5399 = !DILocation(line: 156, column: 5, scope: !5381)
!5400 = !DILocation(line: 157, column: 27, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5381, file: !1075, line: 156, column: 8)
!5402 = !DILocation(line: 158, column: 27, scope: !5401)
!5403 = !DILocation(line: 159, column: 47, scope: !5401)
!5404 = !DILocation(line: 160, column: 49, scope: !5401)
!5405 = !DILocation(line: 161, column: 52, scope: !5401)
!5406 = !DILocation(line: 162, column: 52, scope: !5401)
!5407 = !DILocation(line: 163, column: 9, scope: !5401)
!5408 = !DILocation(line: 164, column: 14, scope: !5381)
!5409 = !DILocation(line: 0, scope: !5381)
!5410 = !DILocation(line: 164, column: 26, scope: !5381)
!5411 = !DILocation(line: 164, column: 5, scope: !5401)
!5412 = distinct !{!5412, !5399, !5413}
!5413 = !DILocation(line: 164, column: 38, scope: !5381)
!5414 = !DILocation(line: 165, column: 1, scope: !5381)
!5415 = distinct !DISubprogram(name: "spim_write_slave_address", scope: !1075, file: !1075, line: 172, type: !2246, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5416)
!5416 = !{!5417, !5418, !5419}
!5417 = !DILocalVariable(name: "address", arg: 1, scope: !5415, file: !1075, line: 172, type: !73)
!5418 = !DILocalVariable(name: "write_low_addr", scope: !5415, file: !1075, line: 174, type: !5384)
!5419 = !DILocalVariable(name: "write_high_addr", scope: !5415, file: !1075, line: 175, type: !5384)
!5420 = !DILocation(line: 0, scope: !5415)
!5421 = !DILocation(line: 174, column: 5, scope: !5415)
!5422 = !DILocation(line: 174, column: 13, scope: !5415)
!5423 = !DILocation(line: 175, column: 5, scope: !5415)
!5424 = !DILocation(line: 175, column: 13, scope: !5415)
!5425 = !DILocation(line: 177, column: 23, scope: !5415)
!5426 = !DILocation(line: 178, column: 5, scope: !5415)
!5427 = !DILocation(line: 178, column: 23, scope: !5415)
!5428 = !DILocation(line: 179, column: 5, scope: !5415)
!5429 = !DILocation(line: 179, column: 23, scope: !5415)
!5430 = !DILocation(line: 180, column: 25, scope: !5415)
!5431 = !DILocation(line: 180, column: 5, scope: !5415)
!5432 = !DILocation(line: 180, column: 23, scope: !5415)
!5433 = !DILocation(line: 181, column: 24, scope: !5415)
!5434 = !DILocation(line: 182, column: 5, scope: !5415)
!5435 = !DILocation(line: 182, column: 24, scope: !5415)
!5436 = !DILocation(line: 183, column: 5, scope: !5415)
!5437 = !DILocation(line: 183, column: 24, scope: !5415)
!5438 = !DILocation(line: 184, column: 5, scope: !5415)
!5439 = !DILocation(line: 184, column: 24, scope: !5415)
!5440 = !DILocation(line: 185, column: 5, scope: !5415)
!5441 = !DILocation(line: 186, column: 5, scope: !5415)
!5442 = !DILocation(line: 187, column: 1, scope: !5415)
!5443 = distinct !DISubprogram(name: "spim_write_slave_data", scope: !1075, file: !1075, line: 214, type: !2246, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5444)
!5444 = !{!5445, !5446, !5447}
!5445 = !DILocalVariable(name: "data", arg: 1, scope: !5443, file: !1075, line: 214, type: !73)
!5446 = !DILocalVariable(name: "write_low_data", scope: !5443, file: !1075, line: 216, type: !5384)
!5447 = !DILocalVariable(name: "write_high_data", scope: !5443, file: !1075, line: 217, type: !5384)
!5448 = !DILocation(line: 0, scope: !5443)
!5449 = !DILocation(line: 216, column: 5, scope: !5443)
!5450 = !DILocation(line: 216, column: 13, scope: !5443)
!5451 = !DILocation(line: 217, column: 5, scope: !5443)
!5452 = !DILocation(line: 217, column: 13, scope: !5443)
!5453 = !DILocation(line: 219, column: 23, scope: !5443)
!5454 = !DILocation(line: 220, column: 5, scope: !5443)
!5455 = !DILocation(line: 220, column: 23, scope: !5443)
!5456 = !DILocation(line: 221, column: 31, scope: !5443)
!5457 = !DILocation(line: 221, column: 25, scope: !5443)
!5458 = !DILocation(line: 221, column: 5, scope: !5443)
!5459 = !DILocation(line: 221, column: 23, scope: !5443)
!5460 = !DILocation(line: 222, column: 25, scope: !5443)
!5461 = !DILocation(line: 222, column: 5, scope: !5443)
!5462 = !DILocation(line: 222, column: 23, scope: !5443)
!5463 = !DILocation(line: 223, column: 24, scope: !5443)
!5464 = !DILocation(line: 224, column: 5, scope: !5443)
!5465 = !DILocation(line: 224, column: 24, scope: !5443)
!5466 = !DILocation(line: 225, column: 32, scope: !5443)
!5467 = !DILocation(line: 225, column: 26, scope: !5443)
!5468 = !DILocation(line: 225, column: 5, scope: !5443)
!5469 = !DILocation(line: 225, column: 24, scope: !5443)
!5470 = !DILocation(line: 226, column: 32, scope: !5443)
!5471 = !DILocation(line: 226, column: 26, scope: !5443)
!5472 = !DILocation(line: 226, column: 5, scope: !5443)
!5473 = !DILocation(line: 226, column: 24, scope: !5443)
!5474 = !DILocation(line: 228, column: 5, scope: !5443)
!5475 = !DILocation(line: 229, column: 5, scope: !5443)
!5476 = !DILocation(line: 230, column: 1, scope: !5443)
!5477 = distinct !DISubprogram(name: "spim_write_slave_command", scope: !1075, file: !1075, line: 194, type: !5478, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5480)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{null, !322}
!5480 = !{!5481, !5482}
!5481 = !DILocalVariable(name: "is_read", arg: 1, scope: !5477, file: !1075, line: 194, type: !322)
!5482 = !DILocalVariable(name: "command_buffer", scope: !5477, file: !1075, line: 196, type: !5384)
!5483 = !DILocation(line: 0, scope: !5477)
!5484 = !DILocation(line: 196, column: 5, scope: !5477)
!5485 = !DILocation(line: 196, column: 13, scope: !5477)
!5486 = !DILocation(line: 198, column: 23, scope: !5477)
!5487 = !DILocation(line: 199, column: 5, scope: !5477)
!5488 = !DILocation(line: 199, column: 23, scope: !5477)
!5489 = !DILocation(line: 200, column: 5, scope: !5477)
!5490 = !DILocation(line: 200, column: 23, scope: !5477)
!5491 = !DILocation(line: 201, column: 9, scope: !5477)
!5492 = !DILocation(line: 202, column: 9, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5494, file: !1075, line: 201, column: 26)
!5494 = distinct !DILexicalBlock(scope: !5477, file: !1075, line: 201, column: 9)
!5495 = !DILocation(line: 202, column: 27, scope: !5493)
!5496 = !DILocation(line: 206, column: 5, scope: !5477)
!5497 = !DILocation(line: 207, column: 1, scope: !5477)
!5498 = distinct !DISubprogram(name: "spim_active_slave_irq", scope: !1075, file: !1075, line: 294, type: !81, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5499)
!5499 = !{!5500}
!5500 = !DILocalVariable(name: "command_buffer", scope: !5498, file: !1075, line: 296, type: !5384)
!5501 = !DILocation(line: 296, column: 5, scope: !5498)
!5502 = !DILocation(line: 296, column: 13, scope: !5498)
!5503 = !DILocation(line: 298, column: 23, scope: !5498)
!5504 = !DILocation(line: 299, column: 5, scope: !5498)
!5505 = !DILocation(line: 299, column: 23, scope: !5498)
!5506 = !DILocation(line: 300, column: 5, scope: !5498)
!5507 = !DILocation(line: 300, column: 23, scope: !5498)
!5508 = !DILocation(line: 301, column: 5, scope: !5498)
!5509 = !DILocation(line: 301, column: 23, scope: !5498)
!5510 = !DILocation(line: 302, column: 5, scope: !5498)
!5511 = !DILocation(line: 303, column: 1, scope: !5498)
!5512 = distinct !DISubprogram(name: "spim_wait_slave_ack", scope: !1075, file: !1075, line: 272, type: !81, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5513)
!5513 = !{!5514}
!5514 = !DILocalVariable(name: "ack_flag", scope: !5512, file: !1075, line: 274, type: !73)
!5515 = !DILocation(line: 276, column: 5, scope: !5512)
!5516 = !DILocation(line: 277, column: 9, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5512, file: !1075, line: 276, column: 8)
!5518 = !DILocation(line: 278, column: 9, scope: !5517)
!5519 = !DILocation(line: 279, column: 9, scope: !5517)
!5520 = !DILocation(line: 280, column: 20, scope: !5517)
!5521 = !DILocation(line: 0, scope: !5512)
!5522 = !DILocation(line: 281, column: 23, scope: !5512)
!5523 = !DILocation(line: 281, column: 5, scope: !5517)
!5524 = distinct !{!5524, !5515, !5525}
!5525 = !DILocation(line: 281, column: 43, scope: !5512)
!5526 = !DILocation(line: 283, column: 5, scope: !5512)
!5527 = !DILocation(line: 284, column: 5, scope: !5512)
!5528 = !DILocation(line: 285, column: 5, scope: !5512)
!5529 = !DILocation(line: 286, column: 5, scope: !5512)
!5530 = !DILocation(line: 287, column: 1, scope: !5512)
!5531 = distinct !DISubprogram(name: "spim_read_slave_data", scope: !1075, file: !1075, line: 237, type: !2266, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5532)
!5532 = !{!5533, !5534, !5535, !5536}
!5533 = !DILocalVariable(name: "command_buffer", scope: !5531, file: !1075, line: 239, type: !5384)
!5534 = !DILocalVariable(name: "spi_send_and_receive_config", scope: !5531, file: !1075, line: 240, type: !5387)
!5535 = !DILocalVariable(name: "data", scope: !5531, file: !1075, line: 241, type: !73)
!5536 = !DILocalVariable(name: "temp_buffer", scope: !5531, file: !1075, line: 241, type: !73)
!5537 = !DILocation(line: 239, column: 5, scope: !5531)
!5538 = !DILocation(line: 239, column: 13, scope: !5531)
!5539 = !DILocation(line: 240, column: 5, scope: !5531)
!5540 = !DILocation(line: 240, column: 46, scope: !5531)
!5541 = !DILocation(line: 241, column: 5, scope: !5531)
!5542 = !DILocation(line: 243, column: 23, scope: !5531)
!5543 = !DILocation(line: 244, column: 5, scope: !5531)
!5544 = !DILocation(line: 244, column: 23, scope: !5531)
!5545 = !DILocation(line: 245, column: 33, scope: !5531)
!5546 = !DILocation(line: 245, column: 43, scope: !5531)
!5547 = !DILocation(line: 246, column: 33, scope: !5531)
!5548 = !DILocation(line: 246, column: 45, scope: !5531)
!5549 = !DILocation(line: 247, column: 33, scope: !5531)
!5550 = !DILocation(line: 247, column: 48, scope: !5531)
!5551 = !DILocation(line: 248, column: 33, scope: !5531)
!5552 = !DILocation(line: 248, column: 48, scope: !5531)
!5553 = !DILocation(line: 249, column: 5, scope: !5531)
!5554 = !DILocation(line: 251, column: 13, scope: !5531)
!5555 = !DILocation(line: 0, scope: !5531)
!5556 = !DILocation(line: 251, column: 25, scope: !5531)
!5557 = !DILocation(line: 252, column: 26, scope: !5531)
!5558 = !DILocation(line: 252, column: 32, scope: !5531)
!5559 = !DILocation(line: 252, column: 10, scope: !5531)
!5560 = !DILocation(line: 253, column: 23, scope: !5531)
!5561 = !DILocation(line: 254, column: 23, scope: !5531)
!5562 = !DILocation(line: 255, column: 43, scope: !5531)
!5563 = !DILocation(line: 256, column: 45, scope: !5531)
!5564 = !DILocation(line: 257, column: 48, scope: !5531)
!5565 = !DILocation(line: 258, column: 48, scope: !5531)
!5566 = !DILocation(line: 259, column: 5, scope: !5531)
!5567 = !DILocation(line: 261, column: 14, scope: !5531)
!5568 = !DILocation(line: 261, column: 26, scope: !5531)
!5569 = !DILocation(line: 261, column: 32, scope: !5531)
!5570 = !DILocation(line: 261, column: 10, scope: !5531)
!5571 = !DILocation(line: 262, column: 26, scope: !5531)
!5572 = !DILocation(line: 262, column: 32, scope: !5531)
!5573 = !DILocation(line: 262, column: 10, scope: !5531)
!5574 = !DILocation(line: 265, column: 1, scope: !5531)
!5575 = !DILocation(line: 264, column: 5, scope: !5531)
!5576 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !1075, file: !1075, line: 106, type: !81, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5577)
!5577 = !{!5578}
!5578 = !DILocalVariable(name: "uart_config", scope: !5576, file: !1075, line: 108, type: !5579)
!5579 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !526, line: 378, baseType: !5580)
!5580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !526, line: 373, size: 128, elements: !5581)
!5581 = !{!5582, !5583, !5584, !5585}
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5580, file: !526, line: 374, baseType: !598, size: 32)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5580, file: !526, line: 375, baseType: !600, size: 32, offset: 32)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5580, file: !526, line: 376, baseType: !602, size: 32, offset: 64)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5580, file: !526, line: 377, baseType: !604, size: 32, offset: 96)
!5586 = !DILocation(line: 108, column: 5, scope: !5576)
!5587 = !DILocation(line: 108, column: 23, scope: !5576)
!5588 = !DILocation(line: 111, column: 5, scope: !5576)
!5589 = !DILocation(line: 112, column: 5, scope: !5576)
!5590 = !DILocation(line: 113, column: 5, scope: !5576)
!5591 = !DILocation(line: 114, column: 5, scope: !5576)
!5592 = !DILocation(line: 117, column: 17, scope: !5576)
!5593 = !DILocation(line: 117, column: 26, scope: !5576)
!5594 = !DILocation(line: 118, column: 17, scope: !5576)
!5595 = !DILocation(line: 118, column: 29, scope: !5576)
!5596 = !DILocation(line: 119, column: 17, scope: !5576)
!5597 = !DILocation(line: 119, column: 26, scope: !5576)
!5598 = !DILocation(line: 120, column: 17, scope: !5576)
!5599 = !DILocation(line: 120, column: 24, scope: !5576)
!5600 = !DILocation(line: 121, column: 5, scope: !5576)
!5601 = !DILocation(line: 122, column: 1, scope: !5576)
!5602 = distinct !DISubprogram(name: "SysTick_Set", scope: !632, file: !632, line: 70, type: !516, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !5603)
!5603 = !{!5604, !5605}
!5604 = !DILocalVariable(name: "ticks", arg: 1, scope: !5602, file: !632, line: 70, type: !73)
!5605 = !DILocalVariable(name: "val", scope: !5602, file: !632, line: 72, type: !73)
!5606 = !DILocation(line: 0, scope: !5602)
!5607 = !DILocation(line: 74, column: 16, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5602, file: !632, line: 74, column: 9)
!5609 = !DILocation(line: 74, column: 21, scope: !5608)
!5610 = !DILocation(line: 74, column: 9, scope: !5602)
!5611 = !DILocation(line: 78, column: 20, scope: !5602)
!5612 = !DILocation(line: 80, column: 19, scope: !5602)
!5613 = !DILocation(line: 83, column: 20, scope: !5602)
!5614 = !DILocation(line: 84, column: 20, scope: !5602)
!5615 = !DILocation(line: 86, column: 19, scope: !5602)
!5616 = !DILocation(line: 88, column: 5, scope: !5602)
!5617 = !DILocation(line: 89, column: 1, scope: !5602)
!5618 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !632, file: !632, line: 98, type: !81, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2282)
!5619 = !DILocation(line: 100, column: 28, scope: !5618)
!5620 = !DILocation(line: 101, column: 1, scope: !5618)
!5621 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !632, file: !632, line: 110, type: !2266, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2282)
!5622 = !DILocation(line: 112, column: 12, scope: !5621)
!5623 = !DILocation(line: 112, column: 5, scope: !5621)
!5624 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !632, file: !632, line: 122, type: !81, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2282)
!5625 = !DILocation(line: 124, column: 23, scope: !5624)
!5626 = !DILocation(line: 124, column: 21, scope: !5624)
!5627 = !DILocation(line: 125, column: 1, scope: !5624)
!5628 = distinct !DISubprogram(name: "SystemInit", scope: !632, file: !632, line: 136, type: !81, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2282)
!5629 = !DILocation(line: 140, column: 16, scope: !5628)
!5630 = !DILocation(line: 144, column: 16, scope: !5628)
!5631 = !DILocation(line: 147, column: 16, scope: !5628)
!5632 = !DILocation(line: 150, column: 1, scope: !5628)
!5633 = distinct !DISubprogram(name: "CachePreInit", scope: !632, file: !632, line: 158, type: !81, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !631, retainedNodes: !2282)
!5634 = !DILocation(line: 161, column: 22, scope: !5633)
!5635 = !DILocation(line: 164, column: 21, scope: !5633)
!5636 = !DILocation(line: 167, column: 21, scope: !5633)
!5637 = !DILocation(line: 170, column: 29, scope: !5633)
!5638 = !DILocation(line: 171, column: 33, scope: !5633)
!5639 = !DILocation(line: 173, column: 28, scope: !5633)
!5640 = !DILocation(line: 178, column: 30, scope: !5633)
!5641 = !DILocation(line: 192, column: 1, scope: !5633)
!5642 = distinct !DISubprogram(name: "_close", scope: !692, file: !692, line: 11, type: !5230, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5643)
!5643 = !{!5644}
!5644 = !DILocalVariable(name: "file", arg: 1, scope: !5642, file: !692, line: 11, type: !7)
!5645 = !DILocation(line: 0, scope: !5642)
!5646 = !DILocation(line: 13, column: 5, scope: !5642)
!5647 = distinct !DISubprogram(name: "_fstat", scope: !692, file: !692, line: 16, type: !5648, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5696)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!7, !7, !5650}
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 32)
!5651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5652, line: 27, size: 704, elements: !5653)
!5652 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5653 = !{!5654, !5657, !5660, !5663, !5666, !5669, !5672, !5673, !5676, !5686, !5687, !5688, !5691, !5694}
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5651, file: !5652, line: 29, baseType: !5655, size: 16)
!5655 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !696, line: 161, baseType: !5656)
!5656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !738, line: 56, baseType: !713)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5651, file: !5652, line: 30, baseType: !5658, size: 16, offset: 16)
!5658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !696, line: 139, baseType: !5659)
!5659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !738, line: 75, baseType: !235)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5651, file: !5652, line: 31, baseType: !5661, size: 32, offset: 32)
!5661 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !696, line: 189, baseType: !5662)
!5662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !738, line: 90, baseType: !75)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5651, file: !5652, line: 32, baseType: !5664, size: 16, offset: 64)
!5664 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !696, line: 194, baseType: !5665)
!5665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !738, line: 209, baseType: !235)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5651, file: !5652, line: 33, baseType: !5667, size: 16, offset: 80)
!5667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !696, line: 165, baseType: !5668)
!5668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !738, line: 60, baseType: !235)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5651, file: !5652, line: 34, baseType: !5670, size: 16, offset: 96)
!5670 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !696, line: 169, baseType: !5671)
!5671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !738, line: 63, baseType: !235)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5651, file: !5652, line: 35, baseType: !5655, size: 16, offset: 112)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5651, file: !5652, line: 36, baseType: !5674, size: 32, offset: 128)
!5674 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !696, line: 157, baseType: !5675)
!5675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !738, line: 102, baseType: !756)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5651, file: !5652, line: 42, baseType: !5677, size: 128, offset: 192)
!5677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5678, line: 47, size: 128, elements: !5679)
!5678 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5679 = !{!5680, !5685}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5677, file: !5678, line: 48, baseType: !5681, size: 64)
!5681 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5682, line: 42, baseType: !5683)
!5682 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !76, line: 200, baseType: !5684)
!5684 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5677, file: !5678, line: 49, baseType: !739, size: 32, offset: 64)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5651, file: !5652, line: 43, baseType: !5677, size: 128, offset: 320)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5651, file: !5652, line: 44, baseType: !5677, size: 128, offset: 448)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5651, file: !5652, line: 45, baseType: !5689, size: 32, offset: 576)
!5689 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !696, line: 102, baseType: !5690)
!5690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !738, line: 34, baseType: !739)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5651, file: !5652, line: 46, baseType: !5692, size: 32, offset: 608)
!5692 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !696, line: 97, baseType: !5693)
!5693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !738, line: 30, baseType: !739)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5651, file: !5652, line: 48, baseType: !5695, size: 64, offset: 640)
!5695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 64, elements: !397)
!5696 = !{!5697, !5698}
!5697 = !DILocalVariable(name: "file", arg: 1, scope: !5647, file: !692, line: 16, type: !7)
!5698 = !DILocalVariable(name: "st", arg: 2, scope: !5647, file: !692, line: 16, type: !5650)
!5699 = !DILocation(line: 0, scope: !5647)
!5700 = !DILocation(line: 18, column: 5, scope: !5647)
!5701 = distinct !DISubprogram(name: "_isatty", scope: !692, file: !692, line: 22, type: !5230, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5702)
!5702 = !{!5703}
!5703 = !DILocalVariable(name: "file", arg: 1, scope: !5701, file: !692, line: 22, type: !7)
!5704 = !DILocation(line: 0, scope: !5701)
!5705 = !DILocation(line: 24, column: 5, scope: !5701)
!5706 = distinct !DISubprogram(name: "_lseek", scope: !692, file: !692, line: 27, type: !5707, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5709)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!7, !7, !7, !7}
!5709 = !{!5710, !5711, !5712}
!5710 = !DILocalVariable(name: "file", arg: 1, scope: !5706, file: !692, line: 27, type: !7)
!5711 = !DILocalVariable(name: "ptr", arg: 2, scope: !5706, file: !692, line: 27, type: !7)
!5712 = !DILocalVariable(name: "dir", arg: 3, scope: !5706, file: !692, line: 27, type: !7)
!5713 = !DILocation(line: 0, scope: !5706)
!5714 = !DILocation(line: 29, column: 5, scope: !5706)
!5715 = distinct !DISubprogram(name: "_open", scope: !692, file: !692, line: 32, type: !5716, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5718)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!7, !731, !7, !7}
!5718 = !{!5719, !5720, !5721}
!5719 = !DILocalVariable(name: "name", arg: 1, scope: !5715, file: !692, line: 32, type: !731)
!5720 = !DILocalVariable(name: "flags", arg: 2, scope: !5715, file: !692, line: 32, type: !7)
!5721 = !DILocalVariable(name: "mode", arg: 3, scope: !5715, file: !692, line: 32, type: !7)
!5722 = !DILocation(line: 0, scope: !5715)
!5723 = !DILocation(line: 34, column: 5, scope: !5715)
!5724 = distinct !DISubprogram(name: "_read", scope: !692, file: !692, line: 37, type: !5725, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5727)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{!7, !7, !697, !7}
!5727 = !{!5728, !5729, !5730}
!5728 = !DILocalVariable(name: "file", arg: 1, scope: !5724, file: !692, line: 37, type: !7)
!5729 = !DILocalVariable(name: "ptr", arg: 2, scope: !5724, file: !692, line: 37, type: !697)
!5730 = !DILocalVariable(name: "len", arg: 3, scope: !5724, file: !692, line: 37, type: !7)
!5731 = !DILocation(line: 0, scope: !5724)
!5732 = !DILocation(line: 39, column: 5, scope: !5724)
!5733 = distinct !DISubprogram(name: "_write", scope: !692, file: !692, line: 52, type: !5725, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5734)
!5734 = !{!5735, !5736, !5737, !5738}
!5735 = !DILocalVariable(name: "file", arg: 1, scope: !5733, file: !692, line: 52, type: !7)
!5736 = !DILocalVariable(name: "ptr", arg: 2, scope: !5733, file: !692, line: 52, type: !697)
!5737 = !DILocalVariable(name: "len", arg: 3, scope: !5733, file: !692, line: 52, type: !7)
!5738 = !DILocalVariable(name: "i", scope: !5733, file: !692, line: 54, type: !7)
!5739 = !DILocation(line: 0, scope: !5733)
!5740 = !DILocation(line: 56, column: 19, scope: !5741)
!5741 = distinct !DILexicalBlock(scope: !5742, file: !692, line: 56, column: 5)
!5742 = distinct !DILexicalBlock(scope: !5733, file: !692, line: 56, column: 5)
!5743 = !DILocation(line: 56, column: 5, scope: !5742)
!5744 = !DILocation(line: 57, column: 26, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5741, file: !692, line: 56, column: 31)
!5746 = !DILocation(line: 57, column: 22, scope: !5745)
!5747 = !DILocation(line: 57, column: 9, scope: !5745)
!5748 = !DILocation(line: 56, column: 27, scope: !5741)
!5749 = distinct !{!5749, !5743, !5750}
!5750 = !DILocation(line: 58, column: 5, scope: !5742)
!5751 = !DILocation(line: 60, column: 5, scope: !5733)
!5752 = !DILocation(line: 0, scope: !691)
!5753 = !DILocation(line: 70, column: 5, scope: !691)
!5754 = !{i64 1109}
!5755 = !DILocation(line: 72, column: 14, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !691, file: !692, line: 72, column: 9)
!5757 = !DILocation(line: 72, column: 11, scope: !5756)
!5758 = !DILocation(line: 72, column: 9, scope: !691)
!5759 = !DILocation(line: 78, column: 32, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !691, file: !692, line: 78, column: 9)
!5761 = !DILocation(line: 78, column: 15, scope: !5760)
!5762 = !DILocation(line: 89, column: 1, scope: !691)
!5763 = !DILocation(line: 78, column: 9, scope: !691)
!5764 = distinct !DISubprogram(name: "_exit", scope: !692, file: !692, line: 91, type: !840, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5765)
!5765 = !{!5766}
!5766 = !DILocalVariable(name: "__status", arg: 1, scope: !5764, file: !692, line: 91, type: !7)
!5767 = !DILocation(line: 0, scope: !5764)
!5768 = !DILocation(line: 93, column: 5, scope: !5764)
!5769 = !DILocation(line: 94, column: 5, scope: !5764)
!5770 = distinct !{!5770, !5769, !5771}
!5771 = !DILocation(line: 96, column: 5, scope: !5764)
!5772 = distinct !DISubprogram(name: "_kill", scope: !692, file: !692, line: 100, type: !5773, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !5775)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!7, !7, !7}
!5775 = !{!5776, !5777}
!5776 = !DILocalVariable(name: "pid", arg: 1, scope: !5772, file: !692, line: 100, type: !7)
!5777 = !DILocalVariable(name: "sig", arg: 2, scope: !5772, file: !692, line: 100, type: !7)
!5778 = !DILocation(line: 0, scope: !5772)
!5779 = !DILocation(line: 102, column: 5, scope: !5772)
!5780 = !DILocation(line: 103, column: 5, scope: !5772)
!5781 = distinct !DISubprogram(name: "_getpid", scope: !692, file: !692, line: 107, type: !5782, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !888, retainedNodes: !2282)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{!5784}
!5784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !696, line: 174, baseType: !5785)
!5785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !738, line: 52, baseType: !7)
!5786 = !DILocation(line: 109, column: 5, scope: !5781)
!5787 = !DILocation(line: 110, column: 5, scope: !5781)
