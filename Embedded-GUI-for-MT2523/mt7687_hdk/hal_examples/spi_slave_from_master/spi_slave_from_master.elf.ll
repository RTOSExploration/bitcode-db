; ModuleID = './build/spi_slave_from_master.elf.bc'
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
@.str = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !145
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_spis_callback = internal unnamed_addr global void (i8*)* null, align 4, !dbg !295
@g_spis_user_data = internal unnamed_addr global i8* null, align 4, !dbg !324
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !330
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !387
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.7 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [60 x i8] c"---spi_slave_transfer_data_two_boards_example begins---\0D\0A\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"hal_spi_slave_init fail\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"hal_spi_slave_init pass\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"hal_spi_slave_register_callback fail\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"hal_spi_slave_register_callback pass\0D\0A\00", align 1
@slaver_data_buffer = internal global [20488 x i8] zeroinitializer, section ".spi_section", align 1, !dbg !443
@transfer_data_finished = internal global i8 0, align 1, !dbg !481
@.str.7.10 = private unnamed_addr constant [63 x i8] c"SPI slaver is ready and waiting for master to write and read\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"---spi_slave_transfer_data_two_boards_example ends---\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Test fail: dst_data_buffer[%d]=%x\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"spis_user_callback detect error command\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !486
@System_Initialize_Done = internal global i32 0, align 4, !dbg !544
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !546
@end = external dso_local global i8, align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.18 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.19 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:57 GMT +00:00\00", align 1, !dbg !755
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !760
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !766

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !995 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1000, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8 %1, metadata !1001, metadata !DIExpression()), !dbg !1005
  %3 = lshr i32 %0, 5, !dbg !1006
  call void @llvm.dbg.value(metadata i32 %3, metadata !1002, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1005
  %4 = trunc i32 %0 to i16, !dbg !1007
  %5 = and i16 %4, 31, !dbg !1007
  call void @llvm.dbg.value(metadata i16 %4, metadata !1004, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1005
  %6 = trunc i32 %3 to i16, !dbg !1008
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !1008

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !1009
  %9 = zext i16 %5 to i32, !dbg !1012
  %10 = icmp ult i16 %5, 27, !dbg !1012
  br i1 %8, label %11, label %46, !dbg !1013

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !1014

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !1016
  %14 = xor i32 %13, -1, !dbg !1019
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1020
  %16 = and i32 %15, %14, !dbg !1020
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1020
  br label %44, !dbg !1021

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1022
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1022

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1023
  %21 = and i32 %20, -3, !dbg !1023
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1023
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1026
  %23 = or i32 %22, 2048, !dbg !1026
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1026
  br label %44, !dbg !1027

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1028
  %26 = and i32 %25, -3, !dbg !1028
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1028
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1031
  %28 = or i32 %27, 2048, !dbg !1031
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1031
  br label %44, !dbg !1032

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1033
  %31 = and i32 %30, -3, !dbg !1033
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1033
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1036
  %33 = or i32 %32, 2048, !dbg !1036
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1036
  br label %44, !dbg !1037

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1038
  %36 = and i32 %35, -3, !dbg !1038
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1038
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1041
  %38 = or i32 %37, 2048, !dbg !1041
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1041
  br label %44, !dbg !1042

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1043
  %41 = and i32 %40, -3, !dbg !1043
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1043
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1046
  %43 = or i32 %42, 2048, !dbg !1046
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1046
  br label %44, !dbg !1047

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1048
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1048
  br label %97, !dbg !1049

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1050

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1052
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1055
  %50 = or i32 %49, %48, !dbg !1055
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1055
  br label %68, !dbg !1056

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1057
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1057

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1058
  %55 = or i32 %54, 2050, !dbg !1058
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1058
  br label %68, !dbg !1061

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1062
  %58 = or i32 %57, 2050, !dbg !1062
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1062
  br label %68, !dbg !1065

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1066
  %61 = or i32 %60, 2050, !dbg !1066
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1066
  br label %68, !dbg !1069

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1070
  %64 = or i32 %63, 2050, !dbg !1070
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1070
  br label %68, !dbg !1073

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1074
  %67 = or i32 %66, 2050, !dbg !1074
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1074
  br label %68, !dbg !1077

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1078
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1078
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1079
  %72 = zext i16 %5 to i32, !dbg !1081
  %73 = icmp eq i16 %5, 0, !dbg !1081
  br i1 %71, label %74, label %87, !dbg !1082

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1083

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1085
  %77 = xor i32 %76, -1, !dbg !1088
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1089
  %79 = and i32 %78, %77, !dbg !1089
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1089
  br label %85, !dbg !1090

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1091
  %82 = and i32 %81, -3, !dbg !1091
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1091
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1093
  %84 = or i32 %83, 2048, !dbg !1093
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1093
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1094
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1094
  br label %97, !dbg !1095

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1096

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1098
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1101
  %91 = or i32 %90, %89, !dbg !1101
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1101
  br label %95, !dbg !1102

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1103
  %94 = or i32 %93, 2050, !dbg !1103
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1103
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1105
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1105
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !1005
  ret i32 %98, !dbg !1106
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1107 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1109, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %1, metadata !1110, metadata !DIExpression()), !dbg !1113
  %3 = lshr i32 %0, 5, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %3, metadata !1111, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1113
  %4 = trunc i32 %0 to i16, !dbg !1115
  %5 = and i16 %4, 31, !dbg !1115
  call void @llvm.dbg.value(metadata i16 %5, metadata !1112, metadata !DIExpression()), !dbg !1113
  %6 = trunc i32 %3 to i16, !dbg !1116
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1116

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1117
  %9 = zext i16 %5 to i32, !dbg !1120
  %10 = shl nuw i32 1, %9, !dbg !1120
  br i1 %8, label %12, label %11, !dbg !1121

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1122
  br label %19, !dbg !1124

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1125
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1127
  %15 = zext i16 %5 to i32, !dbg !1129
  %16 = shl nuw i32 1, %15, !dbg !1129
  br i1 %14, label %18, label %17, !dbg !1130

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1131
  br label %19, !dbg !1133

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1134
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1113
  ret i32 %20, !dbg !1136
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1141, metadata !DIExpression()), !dbg !1145
  %2 = lshr i32 %0, 5, !dbg !1146
  call void @llvm.dbg.value(metadata i32 %2, metadata !1142, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1145
  %3 = and i32 %0, 31, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %0, metadata !1143, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1145
  call void @llvm.dbg.value(metadata i8 0, metadata !1144, metadata !DIExpression()), !dbg !1145
  %4 = trunc i32 %2 to i16, !dbg !1148
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1148

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1144, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1145
  br label %6, !dbg !1149

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1151
  %9 = lshr i32 %8, %3, !dbg !1151
  %10 = trunc i32 %9 to i8, !dbg !1151
  %11 = and i8 %10, 1, !dbg !1151
  call void @llvm.dbg.value(metadata i8 %11, metadata !1144, metadata !DIExpression()), !dbg !1145
  br label %12, !dbg !1152

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1145
  ret i8 %13, !dbg !1153
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1154 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1156, metadata !DIExpression()), !dbg !1160
  %2 = lshr i32 %0, 5, !dbg !1161
  call void @llvm.dbg.value(metadata i32 %2, metadata !1157, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1160
  %3 = and i32 %0, 31, !dbg !1162
  call void @llvm.dbg.value(metadata i32 %0, metadata !1158, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1160
  call void @llvm.dbg.value(metadata i8 0, metadata !1159, metadata !DIExpression()), !dbg !1160
  %4 = trunc i32 %2 to i16, !dbg !1163
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1163

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1159, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1160
  br label %6, !dbg !1164

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1166
  %9 = lshr i32 %8, %3, !dbg !1166
  %10 = trunc i32 %9 to i8, !dbg !1166
  %11 = and i8 %10, 1, !dbg !1166
  call void @llvm.dbg.value(metadata i8 %11, metadata !1159, metadata !DIExpression()), !dbg !1160
  br label %12, !dbg !1167

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1160
  ret i8 %13, !dbg !1168
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1169 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1171, metadata !DIExpression()), !dbg !1175
  %2 = lshr i32 %0, 5, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %2, metadata !1172, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1175
  %3 = and i32 %0, 31, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %0, metadata !1173, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1175
  call void @llvm.dbg.value(metadata i8 0, metadata !1174, metadata !DIExpression()), !dbg !1175
  %4 = trunc i32 %2 to i16, !dbg !1178
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1178

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1174, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1175
  br label %6, !dbg !1179

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1181
  %9 = lshr i32 %8, %3, !dbg !1181
  %10 = trunc i32 %9 to i8, !dbg !1181
  %11 = and i8 %10, 1, !dbg !1181
  call void @llvm.dbg.value(metadata i8 %11, metadata !1174, metadata !DIExpression()), !dbg !1175
  br label %12, !dbg !1182

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1175
  ret i8 %13, !dbg !1183
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1184 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1188, metadata !DIExpression()), !dbg !1191
  %2 = lshr i32 %0, 5, !dbg !1192
  call void @llvm.dbg.value(metadata i32 %2, metadata !1189, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1191
  %3 = trunc i32 %0 to i16, !dbg !1193
  %4 = and i16 %3, 31, !dbg !1193
  call void @llvm.dbg.value(metadata i16 %3, metadata !1190, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1191
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #14, !dbg !1194
  %6 = trunc i32 %2 to i16, !dbg !1195
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1195

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1196
  br i1 %8, label %9, label %12, !dbg !1199

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1200
  %11 = shl nuw nsw i32 1, %10, !dbg !1201
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1201
  br label %49, !dbg !1203

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1204
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1204

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1205
  %16 = and i32 %15, -29, !dbg !1205
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1205
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1208
  %18 = or i32 %17, 2052, !dbg !1208
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1208
  br label %49, !dbg !1209

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1210
  %21 = and i32 %20, -29, !dbg !1210
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1210
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1213
  %23 = or i32 %22, 2052, !dbg !1213
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1213
  br label %49, !dbg !1214

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1215
  %26 = and i32 %25, -29, !dbg !1215
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1215
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1218
  %28 = or i32 %27, 2052, !dbg !1218
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1218
  br label %49, !dbg !1219

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1220
  %31 = and i32 %30, -29, !dbg !1220
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1220
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1223
  %33 = or i32 %32, 2052, !dbg !1223
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1223
  br label %49, !dbg !1224

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1225
  %36 = and i32 %35, -29, !dbg !1225
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1225
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1228
  %38 = or i32 %37, 2052, !dbg !1228
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1228
  br label %49, !dbg !1229

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1230
  br i1 %40, label %41, label %46, !dbg !1232

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1233
  %43 = and i32 %42, -29, !dbg !1233
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1233
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1235
  %45 = or i32 %44, 2052, !dbg !1235
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1235
  br label %49, !dbg !1236

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1237
  %48 = shl nuw i32 1, %47, !dbg !1237
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1237
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1191
  ret i32 %50, !dbg !1239
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1242, metadata !DIExpression()), !dbg !1245
  %2 = lshr i32 %0, 5, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %2, metadata !1243, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1245
  %3 = trunc i32 %0 to i16, !dbg !1247
  %4 = and i16 %3, 31, !dbg !1247
  call void @llvm.dbg.value(metadata i16 %3, metadata !1244, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1245
  %5 = trunc i32 %2 to i16, !dbg !1248
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1248

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1249
  br i1 %7, label %8, label %11, !dbg !1252

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1253
  %10 = shl nuw nsw i32 1, %9, !dbg !1254
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1254
  br label %48, !dbg !1256

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1257
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1257

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1258
  %15 = and i32 %14, -29, !dbg !1258
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1258
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1261
  %17 = or i32 %16, 2048, !dbg !1261
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1261
  br label %48, !dbg !1262

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1263
  %20 = and i32 %19, -29, !dbg !1263
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1263
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1266
  %22 = or i32 %21, 2048, !dbg !1266
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1266
  br label %48, !dbg !1267

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1268
  %25 = and i32 %24, -29, !dbg !1268
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1268
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1271
  %27 = or i32 %26, 2048, !dbg !1271
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1271
  br label %48, !dbg !1272

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1273
  %30 = and i32 %29, -29, !dbg !1273
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1273
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1276
  %32 = or i32 %31, 2048, !dbg !1276
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1276
  br label %48, !dbg !1277

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1278
  %35 = and i32 %34, -29, !dbg !1278
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1278
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1281
  %37 = or i32 %36, 2048, !dbg !1281
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1281
  br label %48, !dbg !1282

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1283
  br i1 %39, label %40, label %45, !dbg !1285

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1286
  %42 = and i32 %41, -29, !dbg !1286
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1286
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1288
  %44 = or i32 %43, 2048, !dbg !1288
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1288
  br label %48, !dbg !1289

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1290
  %47 = shl nuw i32 1, %46, !dbg !1290
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1290
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1245
  ret i32 %49, !dbg !1292
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1295, metadata !DIExpression()), !dbg !1298
  %2 = lshr i32 %0, 5, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %2, metadata !1296, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1298
  %3 = trunc i32 %0 to i16, !dbg !1300
  %4 = and i16 %3, 31, !dbg !1300
  call void @llvm.dbg.value(metadata i16 %3, metadata !1297, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1298
  %5 = trunc i32 %2 to i16, !dbg !1301
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1301

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1302
  br i1 %7, label %8, label %11, !dbg !1305

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1306
  %10 = shl nuw nsw i32 1, %9, !dbg !1307
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1307
  br label %48, !dbg !1309

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1310
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1310

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1311
  %15 = and i32 %14, -29, !dbg !1311
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1311
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1314
  %17 = or i32 %16, 2048, !dbg !1314
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1314
  br label %48, !dbg !1315

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1316
  %20 = and i32 %19, -29, !dbg !1316
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1316
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1319
  %22 = or i32 %21, 2048, !dbg !1319
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1319
  br label %48, !dbg !1320

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1321
  %25 = and i32 %24, -29, !dbg !1321
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1321
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1324
  %27 = or i32 %26, 2048, !dbg !1324
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1324
  br label %48, !dbg !1325

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1326
  %30 = and i32 %29, -29, !dbg !1326
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1326
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1329
  %32 = or i32 %31, 2048, !dbg !1329
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1329
  br label %48, !dbg !1330

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1331
  %35 = and i32 %34, -29, !dbg !1331
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1331
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1334
  %37 = or i32 %36, 2048, !dbg !1334
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1334
  br label %48, !dbg !1335

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1336
  br i1 %39, label %40, label %45, !dbg !1338

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1339
  %42 = and i32 %41, -29, !dbg !1339
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1339
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1341
  %44 = or i32 %43, 2048, !dbg !1341
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1341
  br label %48, !dbg !1342

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1343
  %47 = shl nuw i32 1, %46, !dbg !1343
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1343
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1298
  ret i32 %49, !dbg !1345
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1346 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1348, metadata !DIExpression()), !dbg !1351
  %2 = lshr i32 %0, 5, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %2, metadata !1349, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1351
  %3 = trunc i32 %0 to i16, !dbg !1353
  %4 = and i16 %3, 31, !dbg !1353
  call void @llvm.dbg.value(metadata i16 %3, metadata !1350, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1351
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #14, !dbg !1354
  %6 = trunc i32 %2 to i16, !dbg !1355
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1355

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1356
  br i1 %8, label %9, label %12, !dbg !1359

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1360
  %11 = shl nuw nsw i32 1, %10, !dbg !1361
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1361
  br label %49, !dbg !1363

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1364
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1364

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1365
  %16 = and i32 %15, -29, !dbg !1365
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1365
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1368
  %18 = or i32 %17, 2068, !dbg !1368
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1368
  br label %49, !dbg !1369

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1370
  %21 = and i32 %20, -29, !dbg !1370
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1370
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1373
  %23 = or i32 %22, 2068, !dbg !1373
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1373
  br label %49, !dbg !1374

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1375
  %26 = and i32 %25, -29, !dbg !1375
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1375
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1378
  %28 = or i32 %27, 2068, !dbg !1378
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1378
  br label %49, !dbg !1379

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1380
  %31 = and i32 %30, -29, !dbg !1380
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1380
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1383
  %33 = or i32 %32, 2068, !dbg !1383
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1383
  br label %49, !dbg !1384

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1385
  %36 = and i32 %35, -29, !dbg !1385
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1385
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1388
  %38 = or i32 %37, 2068, !dbg !1388
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1388
  br label %49, !dbg !1389

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1390
  br i1 %40, label %41, label %46, !dbg !1392

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1393
  %43 = and i32 %42, -29, !dbg !1393
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1393
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1395
  %45 = or i32 %44, 2068, !dbg !1395
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1395
  br label %49, !dbg !1396

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1397
  %48 = shl nuw i32 1, %47, !dbg !1397
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1397
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1351
  ret i32 %50, !dbg !1399
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1400 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1402, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata i8 %1, metadata !1403, metadata !DIExpression()), !dbg !1406
  %3 = lshr i32 %0, 4, !dbg !1407
  call void @llvm.dbg.value(metadata i32 %3, metadata !1404, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1406
  %4 = trunc i32 %0 to i16, !dbg !1408
  %5 = and i16 %4, 15, !dbg !1408
  call void @llvm.dbg.value(metadata i16 %4, metadata !1405, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1406
  %6 = trunc i32 %3 to i16, !dbg !1409
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1409

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1410
  %9 = zext i16 %8 to i32, !dbg !1410
  %10 = shl nuw i32 3, %9, !dbg !1412
  %11 = xor i32 %10, -1, !dbg !1413
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1414
  %13 = and i32 %12, %11, !dbg !1414
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1414
  %14 = lshr i8 %1, 2, !dbg !1415
  %15 = zext i8 %14 to i32, !dbg !1415
  %16 = add nsw i32 %15, -1, !dbg !1416
  %17 = shl i32 %16, %9, !dbg !1417
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1418
  %19 = or i32 %18, %17, !dbg !1418
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1418
  br label %131, !dbg !1419

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1420
  br i1 %21, label %22, label %35, !dbg !1422

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1423
  %24 = zext i16 %23 to i32, !dbg !1423
  %25 = shl nuw nsw i32 3, %24, !dbg !1425
  %26 = xor i32 %25, -1, !dbg !1426
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1427
  %28 = and i32 %27, %26, !dbg !1427
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1427
  %29 = lshr i8 %1, 2, !dbg !1428
  %30 = zext i8 %29 to i32, !dbg !1428
  %31 = add nsw i32 %30, -1, !dbg !1429
  %32 = shl nsw i32 %31, %24, !dbg !1430
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1431
  %34 = or i32 %33, %32, !dbg !1431
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1431
  br label %131, !dbg !1432

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1433
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1433

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1434
  %39 = and i32 %38, -449, !dbg !1434
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1434
  %40 = lshr i8 %1, 1, !dbg !1437
  %41 = zext i8 %40 to i32, !dbg !1437
  %42 = shl nuw nsw i32 %41, 6, !dbg !1438
  %43 = add nsw i32 %42, -64, !dbg !1438
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1439
  %45 = or i32 %44, %43, !dbg !1439
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1439
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1440
  %47 = or i32 %46, 2048, !dbg !1440
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1440
  br label %131, !dbg !1441

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1442
  %50 = and i32 %49, -449, !dbg !1442
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1442
  %51 = lshr i8 %1, 1, !dbg !1445
  %52 = zext i8 %51 to i32, !dbg !1445
  %53 = shl nuw nsw i32 %52, 6, !dbg !1446
  %54 = add nsw i32 %53, -64, !dbg !1446
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1447
  %56 = or i32 %55, %54, !dbg !1447
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1447
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1448
  %58 = or i32 %57, 2048, !dbg !1448
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1448
  br label %131, !dbg !1449

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1450
  %61 = and i32 %60, -449, !dbg !1450
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1450
  %62 = lshr i8 %1, 1, !dbg !1453
  %63 = zext i8 %62 to i32, !dbg !1453
  %64 = shl nuw nsw i32 %63, 6, !dbg !1454
  %65 = add nsw i32 %64, -64, !dbg !1454
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1455
  %67 = or i32 %66, %65, !dbg !1455
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1455
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1456
  %69 = or i32 %68, 2048, !dbg !1456
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1456
  br label %131, !dbg !1457

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1458
  %72 = and i32 %71, -449, !dbg !1458
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1458
  %73 = lshr i8 %1, 1, !dbg !1461
  %74 = zext i8 %73 to i32, !dbg !1461
  %75 = shl nuw nsw i32 %74, 6, !dbg !1462
  %76 = add nsw i32 %75, -64, !dbg !1462
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1463
  %78 = or i32 %77, %76, !dbg !1463
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1463
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1464
  %80 = or i32 %79, 2048, !dbg !1464
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1464
  br label %131, !dbg !1465

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1466
  %83 = and i32 %82, -449, !dbg !1466
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1466
  %84 = lshr i8 %1, 1, !dbg !1469
  %85 = zext i8 %84 to i32, !dbg !1469
  %86 = shl nuw nsw i32 %85, 6, !dbg !1470
  %87 = add nsw i32 %86, -64, !dbg !1470
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1471
  %89 = or i32 %88, %87, !dbg !1471
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1471
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1472
  %91 = or i32 %90, 2048, !dbg !1472
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1472
  br label %131, !dbg !1473

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1474
  br i1 %93, label %94, label %105, !dbg !1476

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1477
  %96 = and i32 %95, -449, !dbg !1477
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1477
  %97 = lshr i8 %1, 1, !dbg !1479
  %98 = zext i8 %97 to i32, !dbg !1479
  %99 = shl nuw nsw i32 %98, 6, !dbg !1480
  %100 = add nsw i32 %99, -64, !dbg !1480
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1481
  %102 = or i32 %101, %100, !dbg !1481
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1481
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1482
  %104 = or i32 %103, 2048, !dbg !1482
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1482
  br label %131, !dbg !1483

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1484
  %107 = zext i16 %106 to i32, !dbg !1484
  %108 = shl nuw i32 3, %107, !dbg !1486
  %109 = xor i32 %108, -1, !dbg !1487
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1488
  %111 = and i32 %110, %109, !dbg !1488
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1488
  %112 = lshr i8 %1, 2, !dbg !1489
  %113 = zext i8 %112 to i32, !dbg !1489
  %114 = add nsw i32 %113, -1, !dbg !1490
  %115 = shl i32 %114, %107, !dbg !1491
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1492
  %117 = or i32 %116, %115, !dbg !1492
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1492
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1493
  %120 = zext i16 %119 to i32, !dbg !1493
  %121 = shl nuw i32 3, %120, !dbg !1494
  %122 = xor i32 %121, -1, !dbg !1495
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1496
  %124 = and i32 %123, %122, !dbg !1496
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1496
  %125 = lshr i8 %1, 2, !dbg !1497
  %126 = zext i8 %125 to i32, !dbg !1497
  %127 = add nsw i32 %126, -1, !dbg !1498
  %128 = shl i32 %127, %120, !dbg !1499
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1500
  %130 = or i32 %129, %128, !dbg !1500
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1500
  br label %131, !dbg !1501

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1406
  ret i32 %132, !dbg !1502
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1508, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i8* %1, metadata !1509, metadata !DIExpression()), !dbg !1513
  %3 = lshr i32 %0, 4, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %3, metadata !1510, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1513
  %4 = trunc i32 %0 to i16, !dbg !1515
  %5 = and i16 %4, 15, !dbg !1515
  call void @llvm.dbg.value(metadata i16 %4, metadata !1511, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1513
  %6 = trunc i32 %3 to i16, !dbg !1516
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1516

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %8, metadata !1512, metadata !DIExpression()), !dbg !1513
  %9 = shl nuw nsw i16 %5, 1, !dbg !1519
  %10 = zext i16 %9 to i32, !dbg !1519
  %11 = shl nuw i32 3, %10, !dbg !1520
  %12 = and i32 %8, %11, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %12, metadata !1512, metadata !DIExpression()), !dbg !1513
  %13 = lshr i32 %12, %10, !dbg !1522
  %14 = trunc i32 %13 to i8, !dbg !1523
  %15 = shl i8 %14, 2, !dbg !1523
  %16 = add i8 %15, 4, !dbg !1523
  br label %89, !dbg !1524

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1525
  br i1 %18, label %19, label %29, !dbg !1527

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %20, metadata !1512, metadata !DIExpression()), !dbg !1513
  %21 = shl nuw nsw i16 %5, 1, !dbg !1530
  %22 = zext i16 %21 to i32, !dbg !1530
  %23 = shl nuw nsw i32 3, %22, !dbg !1531
  %24 = and i32 %20, %23, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %24, metadata !1512, metadata !DIExpression()), !dbg !1513
  %25 = lshr i32 %24, %22, !dbg !1533
  %26 = trunc i32 %25 to i8, !dbg !1534
  %27 = shl i8 %26, 2, !dbg !1534
  %28 = add i8 %27, 4, !dbg !1534
  br label %89, !dbg !1535

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1536
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1536

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %32, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %32, metadata !1512, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1513
  %33 = lshr i32 %32, 5, !dbg !1540
  %34 = trunc i32 %33 to i8, !dbg !1541
  %35 = and i8 %34, 14, !dbg !1541
  %36 = add nuw nsw i8 %35, 2, !dbg !1541
  br label %89, !dbg !1542

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %38, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %38, metadata !1512, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1513
  %39 = lshr i32 %38, 5, !dbg !1546
  %40 = trunc i32 %39 to i8, !dbg !1547
  %41 = and i8 %40, 14, !dbg !1547
  %42 = add nuw nsw i8 %41, 2, !dbg !1547
  br label %89, !dbg !1548

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %44, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %44, metadata !1512, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1513
  %45 = lshr i32 %44, 5, !dbg !1552
  %46 = trunc i32 %45 to i8, !dbg !1553
  %47 = and i8 %46, 14, !dbg !1553
  %48 = add nuw nsw i8 %47, 2, !dbg !1553
  br label %89, !dbg !1554

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %50, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %50, metadata !1512, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1513
  %51 = lshr i32 %50, 5, !dbg !1558
  %52 = trunc i32 %51 to i8, !dbg !1559
  %53 = and i8 %52, 14, !dbg !1559
  %54 = add nuw nsw i8 %53, 2, !dbg !1559
  br label %89, !dbg !1560

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1561
  call void @llvm.dbg.value(metadata i32 %56, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %56, metadata !1512, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1513
  %57 = lshr i32 %56, 5, !dbg !1564
  %58 = trunc i32 %57 to i8, !dbg !1565
  %59 = and i8 %58, 14, !dbg !1565
  %60 = add nuw nsw i8 %59, 2, !dbg !1565
  br label %89, !dbg !1566

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1567
  br i1 %62, label %63, label %69, !dbg !1569

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %64, metadata !1512, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %64, metadata !1512, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1513
  %65 = lshr i32 %64, 5, !dbg !1572
  %66 = trunc i32 %65 to i8, !dbg !1573
  %67 = and i8 %66, 14, !dbg !1573
  %68 = add nuw nsw i8 %67, 2, !dbg !1573
  br label %89, !dbg !1574

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %70, metadata !1512, metadata !DIExpression()), !dbg !1513
  %71 = shl nuw nsw i16 %5, 1, !dbg !1577
  %72 = zext i16 %71 to i32, !dbg !1577
  %73 = shl nuw i32 3, %72, !dbg !1578
  %74 = and i32 %70, %73, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %74, metadata !1512, metadata !DIExpression()), !dbg !1513
  %75 = lshr i32 %74, %72, !dbg !1580
  %76 = trunc i32 %75 to i8, !dbg !1581
  %77 = shl i8 %76, 2, !dbg !1581
  %78 = add i8 %77, 4, !dbg !1581
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %80, metadata !1512, metadata !DIExpression()), !dbg !1513
  %81 = shl nuw nsw i16 %5, 1, !dbg !1583
  %82 = zext i16 %81 to i32, !dbg !1583
  %83 = shl nuw i32 3, %82, !dbg !1584
  %84 = and i32 %80, %83, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %84, metadata !1512, metadata !DIExpression()), !dbg !1513
  %85 = lshr i32 %84, %82, !dbg !1586
  %86 = trunc i32 %85 to i8, !dbg !1587
  %87 = shl i8 %86, 2, !dbg !1587
  %88 = add i8 %87, 4, !dbg !1587
  br label %89, !dbg !1588

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1589
  br label %91, !dbg !1590

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1513
  ret i32 %92, !dbg !1590
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1591 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1596, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.value(metadata i32 %1, metadata !1597, metadata !DIExpression()), !dbg !1600
  %3 = lshr i32 %0, 5, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %3, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1600
  %4 = trunc i32 %0 to i16, !dbg !1602
  %5 = and i16 %4, 31, !dbg !1602
  call void @llvm.dbg.value(metadata i16 %5, metadata !1599, metadata !DIExpression()), !dbg !1600
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1603

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1598, metadata !DIExpression()), !dbg !1600
  %7 = trunc i32 %3 to i16, !dbg !1604
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1604

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1607
  %10 = shl nuw i32 1, %9, !dbg !1609
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1610
  %12 = or i32 %11, %10, !dbg !1610
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1610
  br label %32, !dbg !1611

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1612
  %15 = shl nuw i32 1, %14, !dbg !1613
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1614
  %17 = or i32 %16, %15, !dbg !1614
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1614
  br label %32, !dbg !1615

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1616
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1616

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1619
  %22 = shl nuw i32 1, %21, !dbg !1621
  %23 = xor i32 %22, -1, !dbg !1622
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1623
  %25 = and i32 %24, %23, !dbg !1623
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1623
  br label %32, !dbg !1624

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1625
  %28 = shl nuw i32 1, %27, !dbg !1626
  %29 = xor i32 %28, -1, !dbg !1627
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1628
  %31 = and i32 %30, %29, !dbg !1628
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1628
  br label %32, !dbg !1629

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1630
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1631 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1637, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 %1, metadata !1638, metadata !DIExpression()), !dbg !1640
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
  ], !dbg !1641

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %4, metadata !1639, metadata !DIExpression()), !dbg !1640
  %5 = and i32 %4, -16, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %5, metadata !1639, metadata !DIExpression()), !dbg !1640
  %6 = zext i8 %1 to i32, !dbg !1645
  %7 = or i32 %5, %6, !dbg !1646
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1647
  br label %187, !dbg !1648

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %9, metadata !1639, metadata !DIExpression()), !dbg !1640
  %10 = and i32 %9, -241, !dbg !1650
  call void @llvm.dbg.value(metadata i32 %10, metadata !1639, metadata !DIExpression()), !dbg !1640
  %11 = zext i8 %1 to i32, !dbg !1651
  %12 = shl nuw nsw i32 %11, 4, !dbg !1652
  %13 = or i32 %10, %12, !dbg !1653
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1654
  br label %187, !dbg !1655

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1656
  call void @llvm.dbg.value(metadata i32 %15, metadata !1639, metadata !DIExpression()), !dbg !1640
  %16 = and i32 %15, -3841, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %16, metadata !1639, metadata !DIExpression()), !dbg !1640
  %17 = zext i8 %1 to i32, !dbg !1658
  %18 = shl nuw nsw i32 %17, 8, !dbg !1659
  %19 = or i32 %16, %18, !dbg !1660
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1661
  br label %187, !dbg !1662

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %21, metadata !1639, metadata !DIExpression()), !dbg !1640
  %22 = and i32 %21, -61441, !dbg !1664
  call void @llvm.dbg.value(metadata i32 %22, metadata !1639, metadata !DIExpression()), !dbg !1640
  %23 = zext i8 %1 to i32, !dbg !1665
  %24 = shl nuw nsw i32 %23, 12, !dbg !1666
  %25 = or i32 %22, %24, !dbg !1667
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1668
  br label %187, !dbg !1669

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %27, metadata !1639, metadata !DIExpression()), !dbg !1640
  %28 = and i32 %27, -983041, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %28, metadata !1639, metadata !DIExpression()), !dbg !1640
  %29 = zext i8 %1 to i32, !dbg !1672
  %30 = shl nuw nsw i32 %29, 16, !dbg !1673
  %31 = or i32 %28, %30, !dbg !1674
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1675
  br label %187, !dbg !1676

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %33, metadata !1639, metadata !DIExpression()), !dbg !1640
  %34 = and i32 %33, -15728641, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %34, metadata !1639, metadata !DIExpression()), !dbg !1640
  %35 = zext i8 %1 to i32, !dbg !1679
  %36 = shl nuw nsw i32 %35, 20, !dbg !1680
  %37 = or i32 %34, %36, !dbg !1681
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1682
  br label %187, !dbg !1683

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %39, metadata !1639, metadata !DIExpression()), !dbg !1640
  %40 = and i32 %39, -251658241, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %40, metadata !1639, metadata !DIExpression()), !dbg !1640
  %41 = zext i8 %1 to i32, !dbg !1686
  %42 = shl nuw i32 %41, 24, !dbg !1687
  %43 = or i32 %40, %42, !dbg !1688
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1689
  br label %187, !dbg !1690

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1691
  call void @llvm.dbg.value(metadata i32 %45, metadata !1639, metadata !DIExpression()), !dbg !1640
  %46 = and i32 %45, 268435455, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %46, metadata !1639, metadata !DIExpression()), !dbg !1640
  %47 = zext i8 %1 to i32, !dbg !1693
  %48 = shl i32 %47, 28, !dbg !1694
  %49 = or i32 %46, %48, !dbg !1695
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1696
  br label %187, !dbg !1697

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %51, metadata !1639, metadata !DIExpression()), !dbg !1640
  %52 = and i32 %51, -16, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %52, metadata !1639, metadata !DIExpression()), !dbg !1640
  %53 = zext i8 %1 to i32, !dbg !1700
  %54 = or i32 %52, %53, !dbg !1701
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1702
  br label %187, !dbg !1703

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %56, metadata !1639, metadata !DIExpression()), !dbg !1640
  %57 = and i32 %56, -241, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %57, metadata !1639, metadata !DIExpression()), !dbg !1640
  %58 = zext i8 %1 to i32, !dbg !1706
  %59 = shl nuw nsw i32 %58, 4, !dbg !1707
  %60 = or i32 %57, %59, !dbg !1708
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1709
  br label %187, !dbg !1710

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %62, metadata !1639, metadata !DIExpression()), !dbg !1640
  %63 = and i32 %62, -3841, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %63, metadata !1639, metadata !DIExpression()), !dbg !1640
  %64 = zext i8 %1 to i32, !dbg !1713
  %65 = shl nuw nsw i32 %64, 8, !dbg !1714
  %66 = or i32 %63, %65, !dbg !1715
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1716
  br label %187, !dbg !1717

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %68, metadata !1639, metadata !DIExpression()), !dbg !1640
  %69 = and i32 %68, -61441, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %69, metadata !1639, metadata !DIExpression()), !dbg !1640
  %70 = zext i8 %1 to i32, !dbg !1720
  %71 = shl nuw nsw i32 %70, 12, !dbg !1721
  %72 = or i32 %69, %71, !dbg !1722
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1723
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1724

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #15, !dbg !1726
  br label %187, !dbg !1728

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %76, metadata !1639, metadata !DIExpression()), !dbg !1640
  %77 = and i32 %76, -983041, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %77, metadata !1639, metadata !DIExpression()), !dbg !1640
  %78 = zext i8 %1 to i32, !dbg !1731
  %79 = shl nuw nsw i32 %78, 16, !dbg !1732
  %80 = or i32 %77, %79, !dbg !1733
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1734
  %81 = and i8 %1, -2, !dbg !1735
  %82 = icmp eq i8 %81, 4, !dbg !1735
  br i1 %82, label %83, label %187, !dbg !1735

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #15, !dbg !1737
  br label %187, !dbg !1739

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %86, metadata !1639, metadata !DIExpression()), !dbg !1640
  %87 = and i32 %86, -15728641, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %87, metadata !1639, metadata !DIExpression()), !dbg !1640
  %88 = zext i8 %1 to i32, !dbg !1742
  %89 = shl nuw nsw i32 %88, 20, !dbg !1743
  %90 = or i32 %87, %89, !dbg !1744
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1745
  %91 = icmp eq i8 %1, 6, !dbg !1746
  br i1 %91, label %92, label %187, !dbg !1748

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #15, !dbg !1749
  br label %187, !dbg !1751

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %95, metadata !1639, metadata !DIExpression()), !dbg !1640
  %96 = and i32 %95, -251658241, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %96, metadata !1639, metadata !DIExpression()), !dbg !1640
  %97 = zext i8 %1 to i32, !dbg !1754
  %98 = shl nuw i32 %97, 24, !dbg !1755
  %99 = or i32 %96, %98, !dbg !1756
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1757
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1758

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #15, !dbg !1760
  br label %187, !dbg !1762

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %103, metadata !1639, metadata !DIExpression()), !dbg !1640
  %104 = and i32 %103, 268435455, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %104, metadata !1639, metadata !DIExpression()), !dbg !1640
  %105 = zext i8 %1 to i32, !dbg !1765
  %106 = shl i32 %105, 28, !dbg !1766
  %107 = or i32 %104, %106, !dbg !1767
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1768
  %108 = and i8 %1, -3, !dbg !1769
  %109 = icmp eq i8 %108, 4, !dbg !1769
  br i1 %109, label %110, label %187, !dbg !1769

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #15, !dbg !1771
  br label %187, !dbg !1773

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %113, metadata !1639, metadata !DIExpression()), !dbg !1640
  %114 = and i32 %113, -16, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %114, metadata !1639, metadata !DIExpression()), !dbg !1640
  %115 = zext i8 %1 to i32, !dbg !1776
  %116 = or i32 %114, %115, !dbg !1777
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1778
  %117 = and i8 %1, -3, !dbg !1779
  %118 = icmp eq i8 %117, 4, !dbg !1779
  br i1 %118, label %119, label %187, !dbg !1779

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #15, !dbg !1781
  br label %187, !dbg !1783

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %122, metadata !1639, metadata !DIExpression()), !dbg !1640
  %123 = and i32 %122, -241, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %123, metadata !1639, metadata !DIExpression()), !dbg !1640
  %124 = zext i8 %1 to i32, !dbg !1786
  %125 = shl nuw nsw i32 %124, 4, !dbg !1787
  %126 = or i32 %123, %125, !dbg !1788
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1789
  br label %187, !dbg !1790

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %128, metadata !1639, metadata !DIExpression()), !dbg !1640
  %129 = and i32 %128, -3841, !dbg !1792
  call void @llvm.dbg.value(metadata i32 %129, metadata !1639, metadata !DIExpression()), !dbg !1640
  %130 = zext i8 %1 to i32, !dbg !1793
  %131 = shl nuw nsw i32 %130, 8, !dbg !1794
  %132 = or i32 %129, %131, !dbg !1795
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1796
  br label %187, !dbg !1797

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %134, metadata !1639, metadata !DIExpression()), !dbg !1640
  %135 = and i32 %134, -61441, !dbg !1799
  call void @llvm.dbg.value(metadata i32 %135, metadata !1639, metadata !DIExpression()), !dbg !1640
  %136 = zext i8 %1 to i32, !dbg !1800
  %137 = shl nuw nsw i32 %136, 12, !dbg !1801
  %138 = or i32 %135, %137, !dbg !1802
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1803
  br label %187, !dbg !1804

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %140, metadata !1639, metadata !DIExpression()), !dbg !1640
  %141 = and i32 %140, -983041, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %141, metadata !1639, metadata !DIExpression()), !dbg !1640
  %142 = zext i8 %1 to i32, !dbg !1807
  %143 = shl nuw nsw i32 %142, 16, !dbg !1808
  %144 = or i32 %141, %143, !dbg !1809
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1810
  br label %187, !dbg !1811

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %146, metadata !1639, metadata !DIExpression()), !dbg !1640
  %147 = and i32 %146, -15728641, !dbg !1813
  call void @llvm.dbg.value(metadata i32 %147, metadata !1639, metadata !DIExpression()), !dbg !1640
  %148 = zext i8 %1 to i32, !dbg !1814
  %149 = shl nuw nsw i32 %148, 20, !dbg !1815
  %150 = or i32 %147, %149, !dbg !1816
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1817
  br label %187, !dbg !1818

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %152, metadata !1639, metadata !DIExpression()), !dbg !1640
  %153 = and i32 %152, -251658241, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %153, metadata !1639, metadata !DIExpression()), !dbg !1640
  %154 = zext i8 %1 to i32, !dbg !1821
  %155 = shl nuw i32 %154, 24, !dbg !1822
  %156 = or i32 %153, %155, !dbg !1823
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1824
  br label %187, !dbg !1825

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %158, metadata !1639, metadata !DIExpression()), !dbg !1640
  %159 = and i32 %158, 268435455, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %159, metadata !1639, metadata !DIExpression()), !dbg !1640
  %160 = zext i8 %1 to i32, !dbg !1828
  %161 = shl i32 %160, 28, !dbg !1829
  %162 = or i32 %159, %161, !dbg !1830
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1831
  br label %187, !dbg !1832

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1833
  call void @llvm.dbg.value(metadata i32 %164, metadata !1639, metadata !DIExpression()), !dbg !1640
  %165 = and i32 %164, -241, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %165, metadata !1639, metadata !DIExpression()), !dbg !1640
  %166 = zext i8 %1 to i32, !dbg !1835
  %167 = shl nuw nsw i32 %166, 4, !dbg !1836
  %168 = or i32 %165, %167, !dbg !1837
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1838
  br label %187, !dbg !1839

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %170, metadata !1639, metadata !DIExpression()), !dbg !1640
  %171 = and i32 %170, -3841, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %171, metadata !1639, metadata !DIExpression()), !dbg !1640
  %172 = zext i8 %1 to i32, !dbg !1842
  %173 = shl nuw nsw i32 %172, 8, !dbg !1843
  %174 = or i32 %171, %173, !dbg !1844
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1845
  br label %187, !dbg !1846

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %176, metadata !1639, metadata !DIExpression()), !dbg !1640
  %177 = and i32 %176, -61441, !dbg !1848
  call void @llvm.dbg.value(metadata i32 %177, metadata !1639, metadata !DIExpression()), !dbg !1640
  %178 = zext i8 %1 to i32, !dbg !1849
  %179 = shl nuw nsw i32 %178, 12, !dbg !1850
  %180 = or i32 %177, %179, !dbg !1851
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1852
  br label %187, !dbg !1853

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %182, metadata !1639, metadata !DIExpression()), !dbg !1640
  %183 = and i32 %182, -983041, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %183, metadata !1639, metadata !DIExpression()), !dbg !1640
  %184 = zext i8 %1 to i32, !dbg !1856
  %185 = shl nuw nsw i32 %184, 16, !dbg !1857
  %186 = or i32 %183, %185, !dbg !1858
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1859
  br label %187, !dbg !1860

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1861
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !1862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1866, metadata !DIExpression()), !dbg !1867
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !1868
  tail call void asm sideeffect "dsb", ""() #16, !dbg !1869, !srcloc !1870
  tail call void asm sideeffect "isb", ""() #16, !dbg !1871, !srcloc !1872
  ret void, !dbg !1873
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !1874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1878, metadata !DIExpression()), !dbg !1879
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !1880
  ret void, !dbg !1881
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !1882 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #16, !dbg !1887, !srcloc !1894
  call void @llvm.dbg.value(metadata i32 %1, metadata !1891, metadata !DIExpression()) #16, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %1, metadata !1886, metadata !DIExpression()), !dbg !1896
  tail call void asm sideeffect "cpsid i", "~{memory}"() #16, !dbg !1897, !srcloc !1901
  ret i32 %1, !dbg !1902
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !1903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1905, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i32 %0, metadata !1907, metadata !DIExpression()) #16, !dbg !1910
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #16, !dbg !1913, !srcloc !1914
  ret void, !dbg !1915
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1920, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i32 %1, metadata !1921, metadata !DIExpression()), !dbg !1923
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
  ], !dbg !1924

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !1922, metadata !DIExpression()), !dbg !1923
  %4 = trunc i32 %1 to i8, !dbg !1925
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #15, !dbg !1926
  br label %5, !dbg !1927

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !1923
  ret i32 %6, !dbg !1928
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !1929 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1931, metadata !DIExpression()), !dbg !1933
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %1, metadata !1932, metadata !DIExpression()), !dbg !1933
  %2 = lshr i32 %1, 13, !dbg !1935
  %3 = and i32 %2, 7, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %3, metadata !1932, metadata !DIExpression()), !dbg !1933
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %4, metadata !1931, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i32 %4, metadata !1931, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !1933
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !1938
  %6 = load i32, i32* %5, align 4, !dbg !1938
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !1938
  %8 = load i32, i32* %7, align 4, !dbg !1938
  %9 = and i32 %4, -2048, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %9, metadata !1931, metadata !DIExpression()), !dbg !1933
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !1940
  %10 = or i32 %9, %8, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %10, metadata !1931, metadata !DIExpression()), !dbg !1933
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1942
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !1943
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !1944
  tail call void @SystemCoreClockUpdate() #15, !dbg !1945
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !1946
  %13 = udiv i32 %12, 1000, !dbg !1947
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #15, !dbg !1948
  ret void, !dbg !1949
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #4 !dbg !1950 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !1951
  ret i32 %1, !dbg !1952
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #4 !dbg !1953 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !1954
  ret i32 %1, !dbg !1955
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #5 !dbg !1956 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1960
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1960
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1958, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1959, metadata !DIExpression()), !dbg !1962
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !1963
  store volatile i32 %3, i32* %1, align 4, !dbg !1964
  %4 = load volatile i32, i32* %1, align 4, !dbg !1965
  %5 = lshr i32 %4, 28, !dbg !1966
  %6 = and i32 %5, 3, !dbg !1967
  store volatile i32 %6, i32* %1, align 4, !dbg !1968
  %7 = load volatile i32, i32* %1, align 4, !dbg !1969
  %8 = icmp eq i32 %7, 0, !dbg !1971
  br i1 %8, label %9, label %22, !dbg !1972

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !1973
  store volatile i32 %10, i32* %1, align 4, !dbg !1975
  %11 = load volatile i32, i32* %1, align 4, !dbg !1976
  %12 = and i32 %11, -16777217, !dbg !1977
  store volatile i32 %12, i32* %1, align 4, !dbg !1978
  %13 = load volatile i32, i32* %1, align 4, !dbg !1979
  %14 = or i32 %13, 536870912, !dbg !1980
  store volatile i32 %14, i32* %1, align 4, !dbg !1981
  %15 = load volatile i32, i32* %1, align 4, !dbg !1982
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #14, !dbg !1983
  br label %16, !dbg !1984

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !1985
  store volatile i32 %17, i32* %1, align 4, !dbg !1987
  %18 = load volatile i32, i32* %1, align 4, !dbg !1988
  %19 = and i32 %18, 134217728, !dbg !1989
  store volatile i32 %19, i32* %1, align 4, !dbg !1990
  %20 = load volatile i32, i32* %1, align 4, !dbg !1991
  %21 = icmp eq i32 %20, 0, !dbg !1992
  br i1 %21, label %16, label %22, !dbg !1993, !llvm.loop !1994

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !1996
  ret void, !dbg !1996
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #2 !dbg !1997 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2004, metadata !DIExpression()), !dbg !2005
  %2 = bitcast i8* %0 to i32*, !dbg !2006
  %3 = load volatile i32, i32* %2, align 4, !dbg !2007
  ret i32 %3, !dbg !2008
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2009 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2013, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %1, metadata !2014, metadata !DIExpression()), !dbg !2015
  %3 = bitcast i8* %0 to i32*, !dbg !2016
  store volatile i32 %1, i32* %3, align 4, !dbg !2017
  ret void, !dbg !2018
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #5 !dbg !2019 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2023, metadata !DIExpression()), !dbg !2026
  %3 = bitcast i32* %2 to i8*, !dbg !2027
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2027
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2024, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2025, metadata !DIExpression()), !dbg !2026
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2029
  store volatile i32 %4, i32* %2, align 4, !dbg !2030
  %5 = load volatile i32, i32* %2, align 4, !dbg !2031
  %6 = lshr i32 %5, 28, !dbg !2032
  %7 = and i32 %6, 3, !dbg !2033
  store volatile i32 %7, i32* %2, align 4, !dbg !2034
  %8 = load volatile i32, i32* %2, align 4, !dbg !2035
  %9 = icmp eq i32 %8, 3, !dbg !2037
  br i1 %9, label %38, label %10, !dbg !2038

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2039
  store volatile i32 %11, i32* %2, align 4, !dbg !2041
  %12 = load volatile i32, i32* %2, align 4, !dbg !2042
  %13 = and i32 %12, -262145, !dbg !2043
  store volatile i32 %13, i32* %2, align 4, !dbg !2044
  %14 = load volatile i32, i32* %2, align 4, !dbg !2045
  %15 = and i32 %14, -16777217, !dbg !2046
  store volatile i32 %15, i32* %2, align 4, !dbg !2047
  %16 = load volatile i32, i32* %2, align 4, !dbg !2048
  store volatile i32 %16, i32* %2, align 4, !dbg !2049
  %17 = load volatile i32, i32* %2, align 4, !dbg !2050
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #14, !dbg !2051
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2052
  store volatile i32 %18, i32* %2, align 4, !dbg !2053
  %19 = load volatile i32, i32* %2, align 4, !dbg !2054
  %20 = and i32 %19, -805306369, !dbg !2055
  store volatile i32 %20, i32* %2, align 4, !dbg !2056
  %21 = load volatile i32, i32* %2, align 4, !dbg !2057
  %22 = and i32 %21, -16777217, !dbg !2058
  store volatile i32 %22, i32* %2, align 4, !dbg !2059
  %23 = load volatile i32, i32* %2, align 4, !dbg !2060
  %24 = or i32 %23, 805306368, !dbg !2061
  store volatile i32 %24, i32* %2, align 4, !dbg !2062
  %25 = load volatile i32, i32* %2, align 4, !dbg !2063
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #14, !dbg !2064
  br label %26, !dbg !2065

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2066
  store volatile i32 %27, i32* %2, align 4, !dbg !2068
  %28 = load volatile i32, i32* %2, align 4, !dbg !2069
  %29 = and i32 %28, 67108864, !dbg !2070
  store volatile i32 %29, i32* %2, align 4, !dbg !2071
  %30 = load volatile i32, i32* %2, align 4, !dbg !2072
  %31 = icmp eq i32 %30, 0, !dbg !2073
  br i1 %31, label %26, label %32, !dbg !2074, !llvm.loop !2075

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2077
  store volatile i32 %33, i32* %2, align 4, !dbg !2078
  %34 = load volatile i32, i32* %2, align 4, !dbg !2079
  %35 = and i32 %34, -262145, !dbg !2080
  store volatile i32 %35, i32* %2, align 4, !dbg !2081
  %36 = load volatile i32, i32* %2, align 4, !dbg !2082
  %37 = and i32 %36, -16777217, !dbg !2083
  store volatile i32 %37, i32* %2, align 4, !dbg !2084
  br label %38, !dbg !2085

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2086
  store volatile i32 %39, i32* %2, align 4, !dbg !2087
  %40 = icmp eq i8 %0, 0, !dbg !2088
  %41 = load volatile i32, i32* %2, align 4, !dbg !2090
  br i1 %40, label %44, label %42, !dbg !2091

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2092
  store volatile i32 %43, i32* %2, align 4, !dbg !2094
  br label %45, !dbg !2095

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2096
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2098
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #14, !dbg !2099
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2100
  ret void, !dbg !2100
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #5 !dbg !2101 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2105
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2105
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2103, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2104, metadata !DIExpression()), !dbg !2107
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2108
  store volatile i32 %3, i32* %1, align 4, !dbg !2109
  %4 = load volatile i32, i32* %1, align 4, !dbg !2110
  %5 = and i32 %4, -805306369, !dbg !2111
  store volatile i32 %5, i32* %1, align 4, !dbg !2112
  %6 = load volatile i32, i32* %1, align 4, !dbg !2113
  %7 = and i32 %6, -16777217, !dbg !2114
  store volatile i32 %7, i32* %1, align 4, !dbg !2115
  %8 = load volatile i32, i32* %1, align 4, !dbg !2116
  store volatile i32 %8, i32* %1, align 4, !dbg !2117
  %9 = load volatile i32, i32* %1, align 4, !dbg !2118
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #14, !dbg !2119
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #14, !dbg !2120
  store volatile i32 %10, i32* %1, align 4, !dbg !2121
  %11 = load volatile i32, i32* %1, align 4, !dbg !2122
  %12 = and i32 %11, -262145, !dbg !2123
  store volatile i32 %12, i32* %1, align 4, !dbg !2124
  %13 = load volatile i32, i32* %1, align 4, !dbg !2125
  %14 = and i32 %13, -16777217, !dbg !2126
  store volatile i32 %14, i32* %1, align 4, !dbg !2127
  %15 = load volatile i32, i32* %1, align 4, !dbg !2128
  store volatile i32 %15, i32* %1, align 4, !dbg !2129
  %16 = load volatile i32, i32* %1, align 4, !dbg !2130
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #14, !dbg !2131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2132
  ret void, !dbg !2132
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2133 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2137
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2135, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2136, metadata !DIExpression()), !dbg !2139
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2140
  store volatile i32 %3, i32* %1, align 4, !dbg !2141
  %4 = load volatile i32, i32* %1, align 4, !dbg !2142
  %5 = and i32 %4, -8, !dbg !2143
  store volatile i32 %5, i32* %1, align 4, !dbg !2144
  %6 = load volatile i32, i32* %1, align 4, !dbg !2145
  store volatile i32 %6, i32* %1, align 4, !dbg !2146
  %7 = load volatile i32, i32* %1, align 4, !dbg !2147
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2148
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2149
  store volatile i32 %8, i32* %1, align 4, !dbg !2150
  %9 = load volatile i32, i32* %1, align 4, !dbg !2151
  %10 = and i32 %9, -49153, !dbg !2152
  store volatile i32 %10, i32* %1, align 4, !dbg !2153
  %11 = load volatile i32, i32* %1, align 4, !dbg !2154
  store volatile i32 %11, i32* %1, align 4, !dbg !2155
  %12 = load volatile i32, i32* %1, align 4, !dbg !2156
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #14, !dbg !2157
  br label %13, !dbg !2158

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2159
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2160
  %16 = icmp eq i32 %14, %15, !dbg !2161
  br i1 %16, label %17, label %13, !dbg !2158, !llvm.loop !2162

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #14, !dbg !2164
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2165
  tail call void @SystemCoreClockUpdate() #15, !dbg !2166
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2167
  %20 = udiv i32 %19, 1000, !dbg !2168
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2169
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2170
  ret void, !dbg !2170
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2171 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2175
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2173, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2174, metadata !DIExpression()), !dbg !2177
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #14, !dbg !2178
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2179
  store volatile i32 %3, i32* %1, align 4, !dbg !2180
  %4 = load volatile i32, i32* %1, align 4, !dbg !2181
  %5 = and i32 %4, -49153, !dbg !2182
  store volatile i32 %5, i32* %1, align 4, !dbg !2183
  %6 = load volatile i32, i32* %1, align 4, !dbg !2184
  %7 = or i32 %6, 16384, !dbg !2185
  store volatile i32 %7, i32* %1, align 4, !dbg !2186
  %8 = load volatile i32, i32* %1, align 4, !dbg !2187
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2188
  br label %9, !dbg !2189

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2190
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2191
  %12 = icmp eq i32 %10, %11, !dbg !2192
  br i1 %12, label %13, label %9, !dbg !2189, !llvm.loop !2193

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2195
  store volatile i32 %14, i32* %1, align 4, !dbg !2196
  %15 = load volatile i32, i32* %1, align 4, !dbg !2197
  %16 = and i32 %15, -1009, !dbg !2198
  store volatile i32 %16, i32* %1, align 4, !dbg !2199
  %17 = load volatile i32, i32* %1, align 4, !dbg !2200
  %18 = or i32 %17, 128, !dbg !2201
  store volatile i32 %18, i32* %1, align 4, !dbg !2202
  %19 = load volatile i32, i32* %1, align 4, !dbg !2203
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2204
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2205
  store volatile i32 %20, i32* %1, align 4, !dbg !2206
  %21 = load volatile i32, i32* %1, align 4, !dbg !2207
  %22 = and i32 %21, -8, !dbg !2208
  store volatile i32 %22, i32* %1, align 4, !dbg !2209
  %23 = load volatile i32, i32* %1, align 4, !dbg !2210
  %24 = or i32 %23, 4, !dbg !2211
  store volatile i32 %24, i32* %1, align 4, !dbg !2212
  %25 = load volatile i32, i32* %1, align 4, !dbg !2213
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2214
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2215
  tail call void @SystemCoreClockUpdate() #15, !dbg !2216
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2217
  %27 = udiv i32 %26, 1000, !dbg !2218
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2219
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2220
  ret void, !dbg !2220
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2221 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2225
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2225
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2223, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2224, metadata !DIExpression()), !dbg !2227
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #14, !dbg !2228
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2229
  store volatile i32 %3, i32* %1, align 4, !dbg !2230
  %4 = load volatile i32, i32* %1, align 4, !dbg !2231
  %5 = and i32 %4, -49153, !dbg !2232
  store volatile i32 %5, i32* %1, align 4, !dbg !2233
  %6 = load volatile i32, i32* %1, align 4, !dbg !2234
  %7 = or i32 %6, 32768, !dbg !2235
  store volatile i32 %7, i32* %1, align 4, !dbg !2236
  %8 = load volatile i32, i32* %1, align 4, !dbg !2237
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #14, !dbg !2238
  br label %9, !dbg !2239

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2240
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2241
  %12 = icmp eq i32 %10, %11, !dbg !2242
  br i1 %12, label %13, label %9, !dbg !2239, !llvm.loop !2243

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2245
  store volatile i32 %14, i32* %1, align 4, !dbg !2246
  %15 = load volatile i32, i32* %1, align 4, !dbg !2247
  %16 = and i32 %15, -1009, !dbg !2248
  store volatile i32 %16, i32* %1, align 4, !dbg !2249
  %17 = load volatile i32, i32* %1, align 4, !dbg !2250
  %18 = or i32 %17, 32, !dbg !2251
  store volatile i32 %18, i32* %1, align 4, !dbg !2252
  %19 = load volatile i32, i32* %1, align 4, !dbg !2253
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #14, !dbg !2254
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2255
  store volatile i32 %20, i32* %1, align 4, !dbg !2256
  %21 = load volatile i32, i32* %1, align 4, !dbg !2257
  %22 = and i32 %21, -8, !dbg !2258
  store volatile i32 %22, i32* %1, align 4, !dbg !2259
  %23 = load volatile i32, i32* %1, align 4, !dbg !2260
  %24 = or i32 %23, 4, !dbg !2261
  store volatile i32 %24, i32* %1, align 4, !dbg !2262
  %25 = load volatile i32, i32* %1, align 4, !dbg !2263
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #14, !dbg !2264
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2265
  tail call void @SystemCoreClockUpdate() #15, !dbg !2266
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2267
  %27 = udiv i32 %26, 1000, !dbg !2268
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #15, !dbg !2269
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2270
  ret void, !dbg !2270
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2271 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2275
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2275
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2274, metadata !DIExpression()), !dbg !2277
  tail call void @cmnPLL1ON() #14, !dbg !2278
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2279
  store volatile i32 %3, i32* %1, align 4, !dbg !2280
  %4 = load volatile i32, i32* %1, align 4, !dbg !2281
  %5 = and i32 %4, -49153, !dbg !2282
  store volatile i32 %5, i32* %1, align 4, !dbg !2283
  %6 = load volatile i32, i32* %1, align 4, !dbg !2284
  store volatile i32 %6, i32* %1, align 4, !dbg !2285
  %7 = load volatile i32, i32* %1, align 4, !dbg !2286
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #14, !dbg !2287
  br label %8, !dbg !2288

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2289
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2290
  %11 = icmp eq i32 %9, %10, !dbg !2291
  br i1 %11, label %12, label %8, !dbg !2288, !llvm.loop !2292

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #14, !dbg !2294
  store volatile i32 %13, i32* %1, align 4, !dbg !2295
  %14 = load volatile i32, i32* %1, align 4, !dbg !2296
  %15 = and i32 %14, -8, !dbg !2297
  store volatile i32 %15, i32* %1, align 4, !dbg !2298
  %16 = load volatile i32, i32* %1, align 4, !dbg !2299
  %17 = or i32 %16, 2, !dbg !2300
  store volatile i32 %17, i32* %1, align 4, !dbg !2301
  %18 = load volatile i32, i32* %1, align 4, !dbg !2302
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #14, !dbg !2303
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2304
  tail call void @SystemCoreClockUpdate() #15, !dbg !2305
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2306
  %20 = udiv i32 %19, 1000, !dbg !2307
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #15, !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2309
  ret void, !dbg !2309
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #5 section ".ramTEXT" !dbg !2310 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2314
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2314
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2313, metadata !DIExpression()), !dbg !2316
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #14, !dbg !2317
  store volatile i32 %3, i32* %1, align 4, !dbg !2318
  %4 = load volatile i32, i32* %1, align 4, !dbg !2319
  %5 = and i32 %4, -24577, !dbg !2320
  store volatile i32 %5, i32* %1, align 4, !dbg !2321
  %6 = load volatile i32, i32* %1, align 4, !dbg !2322
  store volatile i32 %6, i32* %1, align 4, !dbg !2323
  %7 = load volatile i32, i32* %1, align 4, !dbg !2324
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #14, !dbg !2325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2326
  ret void, !dbg !2326
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2327 {
  %1 = tail call i32 @getc_nowait() #14, !dbg !2332
  call void @llvm.dbg.value(metadata i32 %1, metadata !2331, metadata !DIExpression()), !dbg !2333
  ret i32 %1, !dbg !2334
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2335 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2338
  %2 = and i32 %1, 1, !dbg !2340
  %3 = icmp eq i32 %2, 0, !dbg !2340
  br i1 %3, label %7, label %4, !dbg !2341

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2342
  %6 = and i32 %5, 255, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %5, metadata !2337, metadata !DIExpression()), !dbg !2345
  br label %7, !dbg !2346

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2347
  ret i32 %8, !dbg !2348
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2349 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2354, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8 %1, metadata !2355, metadata !DIExpression()), !dbg !2357
  %3 = icmp eq i32 %0, 0, !dbg !2358
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %4, metadata !2356, metadata !DIExpression()), !dbg !2357
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2359

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2360
  %9 = and i32 %8, 32, !dbg !2361
  %10 = icmp eq i32 %9, 0, !dbg !2362
  br i1 %10, label %7, label %11, !dbg !2359, !llvm.loop !2363

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2365
  %13 = inttoptr i32 %4 to i32*, !dbg !2366
  store volatile i32 %12, i32* %13, align 65536, !dbg !2367
  ret void, !dbg !2368
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2376
  %2 = icmp eq i32 %0, 0, !dbg !2377
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %3, metadata !2374, metadata !DIExpression()), !dbg !2376
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2378

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2379
  %8 = and i32 %7, 1, !dbg !2380
  %9 = icmp eq i32 %8, 0, !dbg !2381
  br i1 %9, label %6, label %10, !dbg !2378, !llvm.loop !2382

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2384
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2384
  %13 = trunc i32 %12 to i8, !dbg !2384
  call void @llvm.dbg.value(metadata i8 %13, metadata !2375, metadata !DIExpression()), !dbg !2376
  ret i8 %13, !dbg !2385
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2386 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2393
  %2 = icmp eq i32 %0, 0, !dbg !2394
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %3, metadata !2391, metadata !DIExpression()), !dbg !2393
  %4 = or i32 %3, 20, !dbg !2395
  %5 = inttoptr i32 %4 to i32*, !dbg !2395
  %6 = load volatile i32, i32* %5, align 4, !dbg !2395
  %7 = and i32 %6, 1, !dbg !2397
  %8 = icmp eq i32 %7, 0, !dbg !2397
  br i1 %8, label %13, label %9, !dbg !2398

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2399
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2399
  %12 = and i32 %11, 255, !dbg !2401
  call void @llvm.dbg.value(metadata i32 %11, metadata !2392, metadata !DIExpression()), !dbg !2393
  br label %13, !dbg !2402

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2403
  ret i32 %14, !dbg !2404
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !2405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression()), !dbg !2410
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #14, !dbg !2411
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2412

2:                                                ; preds = %1
  br label %3, !dbg !2413

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2417
  %6 = or i32 %5, 1, !dbg !2417
  store volatile i32 %6, i32* %4, align 4, !dbg !2417
  br label %7, !dbg !2418

7:                                                ; preds = %3, %1
  ret void, !dbg !2418
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !2419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 %1, metadata !2426, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i16 %2, metadata !2427, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i16 %3, metadata !2428, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i16 %4, metadata !2429, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2431, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2438, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 0, metadata !2441, metadata !DIExpression()), !dbg !2442
  %6 = tail call i32 @top_xtal_freq_get() #15, !dbg !2445
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2446
  %7 = icmp eq i32 %0, 1, !dbg !2447
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2447
  call void @llvm.dbg.value(metadata i32 %8, metadata !2431, metadata !DIExpression()), !dbg !2442
  %9 = or i32 %8, 36, !dbg !2448
  %10 = inttoptr i32 %9 to i32*, !dbg !2448
  store volatile i32 3, i32* %10, align 4, !dbg !2449
  %11 = or i32 %8, 12, !dbg !2450
  %12 = inttoptr i32 %11 to i32*, !dbg !2450
  %13 = load volatile i32, i32* %12, align 4, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %13, metadata !2433, metadata !DIExpression()), !dbg !2442
  %14 = or i32 %13, 128, !dbg !2451
  store volatile i32 %14, i32* %12, align 4, !dbg !2452
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2453
  %16 = udiv i32 %15, %1, !dbg !2454
  call void @llvm.dbg.value(metadata i32 %16, metadata !2432, metadata !DIExpression()), !dbg !2442
  %17 = lshr i32 %16, 8, !dbg !2455
  %18 = add nuw nsw i32 %17, 1, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %18, metadata !2434, metadata !DIExpression()), !dbg !2442
  %19 = udiv i32 %16, %18, !dbg !2457
  %20 = add i32 %19, -1, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %20, metadata !2435, metadata !DIExpression()), !dbg !2442
  %21 = icmp eq i32 %20, 3, !dbg !2460
  %22 = lshr i32 %20, 1, !dbg !2462
  %23 = add nsw i32 %22, -1, !dbg !2462
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %24, metadata !2436, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 undef, metadata !2441, metadata !DIExpression()), !dbg !2442
  %25 = mul i32 %15, 10, !dbg !2463
  %26 = udiv i32 %25, %1, !dbg !2464
  %27 = udiv i32 %26, %16, !dbg !2465
  %28 = mul i32 %19, -10, !dbg !2466
  %29 = add i32 %27, %28, !dbg !2467
  %30 = urem i32 %29, 10, !dbg !2468
  call void @llvm.dbg.value(metadata i32 %30, metadata !2437, metadata !DIExpression()), !dbg !2442
  %31 = and i32 %18, 255, !dbg !2469
  %32 = inttoptr i32 %8 to i32*, !dbg !2470
  store volatile i32 %31, i32* %32, align 65536, !dbg !2471
  %33 = lshr i32 %18, 8, !dbg !2472
  %34 = and i32 %33, 255, !dbg !2473
  %35 = or i32 %8, 4, !dbg !2474
  %36 = inttoptr i32 %35 to i32*, !dbg !2474
  store volatile i32 %34, i32* %36, align 4, !dbg !2475
  %37 = or i32 %8, 40, !dbg !2476
  %38 = inttoptr i32 %37 to i32*, !dbg !2476
  store volatile i32 %20, i32* %38, align 8, !dbg !2477
  %39 = or i32 %8, 44, !dbg !2478
  %40 = inttoptr i32 %39 to i32*, !dbg !2478
  store volatile i32 %24, i32* %40, align 4, !dbg !2479
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2480
  %42 = load i16, i16* %41, align 2, !dbg !2480
  %43 = zext i16 %42 to i32, !dbg !2480
  %44 = or i32 %8, 88, !dbg !2481
  %45 = inttoptr i32 %44 to i32*, !dbg !2481
  store volatile i32 %43, i32* %45, align 8, !dbg !2482
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2483
  %47 = load i16, i16* %46, align 2, !dbg !2483
  %48 = zext i16 %47 to i32, !dbg !2483
  %49 = or i32 %8, 84, !dbg !2484
  %50 = inttoptr i32 %49 to i32*, !dbg !2484
  store volatile i32 %48, i32* %50, align 4, !dbg !2485
  store volatile i32 %13, i32* %12, align 4, !dbg !2486
  %51 = or i32 %8, 8, !dbg !2487
  %52 = inttoptr i32 %51 to i32*, !dbg !2487
  store volatile i32 71, i32* %52, align 8, !dbg !2488
  %53 = inttoptr i32 %11 to i16*, !dbg !2489
  %54 = load volatile i16, i16* %53, align 4, !dbg !2489
  call void @llvm.dbg.value(metadata i16 %54, metadata !2430, metadata !DIExpression()), !dbg !2442
  %55 = and i16 %54, -64, !dbg !2490
  call void @llvm.dbg.value(metadata i16 %54, metadata !2430, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2442
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2430, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2442
  %56 = and i16 %2, -61, !dbg !2491
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2430, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2442
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2430, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2442
  %57 = and i16 %4, -57, !dbg !2492
  call void @llvm.dbg.value(metadata i16 undef, metadata !2430, metadata !DIExpression()), !dbg !2442
  %58 = or i16 %56, %3, !dbg !2491
  %59 = or i16 %58, %57, !dbg !2492
  %60 = or i16 %59, %55, !dbg !2493
  call void @llvm.dbg.value(metadata i16 %60, metadata !2430, metadata !DIExpression()), !dbg !2442
  store volatile i16 %60, i16* %53, align 4, !dbg !2494
  ret void, !dbg !2495
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !2496 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %1, metadata !2501, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32* %2, metadata !2502, metadata !DIExpression()), !dbg !2503
  %4 = icmp eq i32 %0, 0, !dbg !2504
  %5 = icmp eq i32 %1, 0, !dbg !2506
  br i1 %4, label %6, label %16, !dbg !2507

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2508

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2510
  %9 = zext i16 %8 to i32, !dbg !2510
  br label %26, !dbg !2513

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2514
  %12 = zext i16 %11 to i32, !dbg !2514
  store i32 %12, i32* %2, align 4, !dbg !2516
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2517
  %14 = zext i16 %13 to i32, !dbg !2517
  %15 = sub nsw i32 %12, %14, !dbg !2518
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2519

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2521
  %19 = zext i16 %18 to i32, !dbg !2521
  br label %26, !dbg !2524

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2525
  %22 = zext i16 %21 to i32, !dbg !2525
  store i32 %22, i32* %2, align 4, !dbg !2527
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2528
  %24 = zext i16 %23 to i32, !dbg !2528
  %25 = sub nsw i32 %22, %24, !dbg !2529
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2506
  ret void, !dbg !2530
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2535, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 %2, metadata !2537, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2539
  %4 = icmp eq i32 %2, 0, !dbg !2540
  br i1 %4, label %15, label %5, !dbg !2543

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2538, metadata !DIExpression()), !dbg !2539
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2544

7:                                                ; preds = %5
  br label %8, !dbg !2546

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2550
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2550
  store i8 %10, i8* %11, align 1, !dbg !2550
  br label %12, !dbg !2551

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %13, metadata !2538, metadata !DIExpression()), !dbg !2539
  %14 = icmp eq i32 %13, %2, !dbg !2540
  br i1 %14, label %15, label %5, !dbg !2543, !llvm.loop !2552

15:                                               ; preds = %12, %3
  ret void, !dbg !2554
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2561, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8* %1, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %2, metadata !2563, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()), !dbg !2565
  %4 = icmp eq i32 %2, 0, !dbg !2566
  br i1 %4, label %16, label %5, !dbg !2569

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2564, metadata !DIExpression()), !dbg !2565
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2570

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2572
  %9 = load i8, i8* %8, align 1, !dbg !2572
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2575
  br label %13, !dbg !2576

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2577
  %12 = load i8, i8* %11, align 1, !dbg !2577
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2580
  br label %13, !dbg !2581

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2582
  call void @llvm.dbg.value(metadata i32 %14, metadata !2564, metadata !DIExpression()), !dbg !2565
  %15 = icmp eq i32 %14, %2, !dbg !2566
  br i1 %15, label %16, label %5, !dbg !2569, !llvm.loop !2583

16:                                               ; preds = %13, %3
  ret void, !dbg !2585
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !2586 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2590, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8* %1, metadata !2591, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i32 %2, metadata !2592, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i32 %3, metadata !2593, metadata !DIExpression()), !dbg !2594
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2595

5:                                                ; preds = %4
  br label %6, !dbg !2596

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2600
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #15, !dbg !2600
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #15, !dbg !2600
  br label %9, !dbg !2601

9:                                                ; preds = %6, %4
  ret void, !dbg !2601
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !2602 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8* %1, metadata !2607, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %2, metadata !2608, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %3, metadata !2609, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %4, metadata !2610, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %5, metadata !2611, metadata !DIExpression()), !dbg !2612
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2613

7:                                                ; preds = %6
  br label %8, !dbg !2614

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2618
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #15, !dbg !2618
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #15, !dbg !2618
  br label %11, !dbg !2619

11:                                               ; preds = %8, %6
  ret void, !dbg !2619
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2620 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2625, metadata !DIExpression()), !dbg !2626
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2627

3:                                                ; preds = %2
  br label %4, !dbg !2628

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !2632
  br label %6, !dbg !2633

6:                                                ; preds = %4, %2
  ret void, !dbg !2633
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2634 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2637, metadata !DIExpression()), !dbg !2638
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2639

3:                                                ; preds = %2
  br label %4, !dbg !2640

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #15, !dbg !2644
  br label %6, !dbg !2645

6:                                                ; preds = %4, %2
  ret void, !dbg !2645
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2648, metadata !DIExpression()), !dbg !2652
  %2 = icmp eq i32 %0, 0, !dbg !2653
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %3, metadata !2649, metadata !DIExpression()), !dbg !2652
  %4 = or i32 %3, 12, !dbg !2654
  %5 = inttoptr i32 %4 to i32*, !dbg !2654
  %6 = load volatile i32, i32* %5, align 4, !dbg !2654
  call void @llvm.dbg.value(metadata i32 %6, metadata !2651, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2652
  store volatile i32 191, i32* %5, align 4, !dbg !2655
  %7 = or i32 %3, 8, !dbg !2656
  %8 = inttoptr i32 %7 to i32*, !dbg !2656
  %9 = load volatile i32, i32* %8, align 8, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %9, metadata !2650, metadata !DIExpression()), !dbg !2652
  %10 = and i32 %9, 65327, !dbg !2657
  %11 = or i32 %10, 208, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %9, metadata !2650, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2652
  store volatile i32 %11, i32* %8, align 8, !dbg !2658
  %12 = or i32 %3, 68, !dbg !2659
  %13 = inttoptr i32 %12 to i32*, !dbg !2659
  store volatile i32 0, i32* %13, align 4, !dbg !2660
  store volatile i32 0, i32* %5, align 4, !dbg !2661
  %14 = or i32 %3, 16, !dbg !2662
  %15 = inttoptr i32 %14 to i32*, !dbg !2662
  store volatile i32 2, i32* %15, align 16, !dbg !2663
  %16 = and i32 %6, 65535, !dbg !2664
  store volatile i32 %16, i32* %5, align 4, !dbg !2665
  ret void, !dbg !2666
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2667 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2671, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %1, metadata !2672, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %2, metadata !2673, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %3, metadata !2674, metadata !DIExpression()), !dbg !2678
  %5 = icmp eq i32 %0, 0, !dbg !2679
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %6, metadata !2675, metadata !DIExpression()), !dbg !2678
  %7 = or i32 %6, 12, !dbg !2680
  %8 = inttoptr i32 %7 to i32*, !dbg !2680
  %9 = load volatile i32, i32* %8, align 4, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %9, metadata !2677, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2678
  store volatile i32 191, i32* %8, align 4, !dbg !2681
  %10 = zext i8 %1 to i32, !dbg !2682
  %11 = or i32 %6, 16, !dbg !2683
  %12 = inttoptr i32 %11 to i32*, !dbg !2683
  store volatile i32 %10, i32* %12, align 16, !dbg !2684
  %13 = or i32 %6, 20, !dbg !2685
  %14 = inttoptr i32 %13 to i32*, !dbg !2685
  store volatile i32 %10, i32* %14, align 4, !dbg !2686
  %15 = zext i8 %2 to i32, !dbg !2687
  %16 = or i32 %6, 24, !dbg !2688
  %17 = inttoptr i32 %16 to i32*, !dbg !2688
  store volatile i32 %15, i32* %17, align 8, !dbg !2689
  %18 = or i32 %6, 28, !dbg !2690
  %19 = inttoptr i32 %18 to i32*, !dbg !2690
  store volatile i32 %15, i32* %19, align 4, !dbg !2691
  %20 = or i32 %6, 8, !dbg !2692
  %21 = inttoptr i32 %20 to i32*, !dbg !2692
  %22 = load volatile i32, i32* %21, align 8, !dbg !2692
  call void @llvm.dbg.value(metadata i32 %22, metadata !2676, metadata !DIExpression()), !dbg !2678
  %23 = and i32 %22, 65525, !dbg !2693
  %24 = or i32 %23, 10, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %22, metadata !2676, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2678
  store volatile i32 %24, i32* %21, align 8, !dbg !2694
  %25 = and i32 %9, 65535, !dbg !2695
  store volatile i32 %25, i32* %8, align 4, !dbg !2696
  %26 = zext i8 %3 to i32, !dbg !2697
  %27 = or i32 %6, 64, !dbg !2698
  %28 = inttoptr i32 %27 to i32*, !dbg !2698
  store volatile i32 %26, i32* %28, align 64, !dbg !2699
  %29 = or i32 %6, 68, !dbg !2700
  %30 = inttoptr i32 %29 to i32*, !dbg !2700
  store volatile i32 1, i32* %30, align 4, !dbg !2701
  ret void, !dbg !2702
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2703 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2705, metadata !DIExpression()), !dbg !2708
  %2 = icmp eq i32 %0, 0, !dbg !2709
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2709
  call void @llvm.dbg.value(metadata i32 %3, metadata !2706, metadata !DIExpression()), !dbg !2708
  %4 = or i32 %3, 12, !dbg !2710
  %5 = inttoptr i32 %4 to i32*, !dbg !2710
  %6 = load volatile i32, i32* %5, align 4, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %6, metadata !2707, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2708
  store volatile i32 191, i32* %5, align 4, !dbg !2711
  %7 = or i32 %3, 8, !dbg !2712
  %8 = inttoptr i32 %7 to i32*, !dbg !2712
  store volatile i32 0, i32* %8, align 8, !dbg !2713
  store volatile i32 0, i32* %5, align 4, !dbg !2714
  %9 = and i32 %6, 65535, !dbg !2715
  store volatile i32 %9, i32* %5, align 4, !dbg !2716
  ret void, !dbg !2717
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !2718 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2720, metadata !DIExpression()), !dbg !2722
  %2 = icmp eq i32 %0, 0, !dbg !2723
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2723
  call void @llvm.dbg.value(metadata i32 %3, metadata !2721, metadata !DIExpression()), !dbg !2722
  %4 = or i32 %3, 12, !dbg !2724
  %5 = inttoptr i32 %4 to i32*, !dbg !2724
  store volatile i32 191, i32* %5, align 4, !dbg !2725
  %6 = or i32 %3, 8, !dbg !2726
  %7 = inttoptr i32 %6 to i32*, !dbg !2726
  store volatile i32 16, i32* %7, align 8, !dbg !2727
  %8 = or i32 %3, 16, !dbg !2728
  %9 = inttoptr i32 %8 to i32*, !dbg !2728
  store volatile i32 0, i32* %9, align 16, !dbg !2729
  %10 = or i32 %3, 24, !dbg !2730
  %11 = inttoptr i32 %10 to i32*, !dbg !2730
  store volatile i32 0, i32* %11, align 8, !dbg !2731
  store volatile i32 128, i32* %5, align 4, !dbg !2732
  %12 = inttoptr i32 %3 to i32*, !dbg !2733
  store volatile i32 0, i32* %12, align 65536, !dbg !2734
  %13 = or i32 %3, 4, !dbg !2735
  %14 = inttoptr i32 %13 to i32*, !dbg !2735
  store volatile i32 0, i32* %14, align 4, !dbg !2736
  store volatile i32 0, i32* %5, align 4, !dbg !2737
  store volatile i32 0, i32* %14, align 4, !dbg !2738
  store volatile i32 0, i32* %7, align 8, !dbg !2739
  store volatile i32 191, i32* %5, align 4, !dbg !2740
  store volatile i32 0, i32* %7, align 8, !dbg !2741
  store volatile i32 0, i32* %5, align 4, !dbg !2742
  store volatile i32 0, i32* %9, align 16, !dbg !2743
  %15 = or i32 %3, 28, !dbg !2744
  %16 = inttoptr i32 %15 to i32*, !dbg !2744
  store volatile i32 0, i32* %16, align 4, !dbg !2745
  %17 = or i32 %3, 36, !dbg !2746
  %18 = inttoptr i32 %17 to i32*, !dbg !2746
  store volatile i32 0, i32* %18, align 4, !dbg !2747
  %19 = or i32 %3, 40, !dbg !2748
  %20 = inttoptr i32 %19 to i32*, !dbg !2748
  store volatile i32 0, i32* %20, align 8, !dbg !2749
  %21 = or i32 %3, 44, !dbg !2750
  %22 = inttoptr i32 %21 to i32*, !dbg !2750
  store volatile i32 0, i32* %22, align 4, !dbg !2751
  %23 = or i32 %3, 52, !dbg !2752
  %24 = inttoptr i32 %23 to i32*, !dbg !2752
  store volatile i32 0, i32* %24, align 4, !dbg !2753
  %25 = or i32 %3, 60, !dbg !2754
  %26 = inttoptr i32 %25 to i32*, !dbg !2754
  store volatile i32 0, i32* %26, align 4, !dbg !2755
  %27 = or i32 %3, 64, !dbg !2756
  %28 = inttoptr i32 %27 to i32*, !dbg !2756
  store volatile i32 0, i32* %28, align 64, !dbg !2757
  %29 = or i32 %3, 68, !dbg !2758
  %30 = inttoptr i32 %29 to i32*, !dbg !2758
  store volatile i32 0, i32* %30, align 4, !dbg !2759
  %31 = or i32 %3, 72, !dbg !2760
  %32 = inttoptr i32 %31 to i32*, !dbg !2760
  store volatile i32 0, i32* %32, align 8, !dbg !2761
  %33 = or i32 %3, 76, !dbg !2762
  %34 = inttoptr i32 %33 to i32*, !dbg !2762
  store volatile i32 0, i32* %34, align 4, !dbg !2763
  %35 = or i32 %3, 80, !dbg !2764
  %36 = inttoptr i32 %35 to i32*, !dbg !2764
  store volatile i32 0, i32* %36, align 16, !dbg !2765
  %37 = or i32 %3, 84, !dbg !2766
  %38 = inttoptr i32 %37 to i32*, !dbg !2766
  store volatile i32 0, i32* %38, align 4, !dbg !2767
  %39 = or i32 %3, 88, !dbg !2768
  %40 = inttoptr i32 %39 to i32*, !dbg !2768
  store volatile i32 0, i32* %40, align 8, !dbg !2769
  %41 = or i32 %3, 96, !dbg !2770
  %42 = inttoptr i32 %41 to i32*, !dbg !2770
  store volatile i32 0, i32* %42, align 32, !dbg !2771
  ret void, !dbg !2772
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !2773 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2775, metadata !DIExpression()), !dbg !2777
  %2 = icmp eq i32 %0, 0, !dbg !2778
  call void @llvm.dbg.value(metadata i32 undef, metadata !2776, metadata !DIExpression()), !dbg !2777
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !2779

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !2780
  %7 = and i32 %6, 64, !dbg !2781
  %8 = icmp eq i32 %7, 0, !dbg !2782
  br i1 %8, label %5, label %9, !dbg !2779, !llvm.loop !2783

9:                                                ; preds = %5
  ret void, !dbg !2785
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2786 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2790, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i32 %1, metadata !2791, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i8* %2, metadata !2792, metadata !DIExpression()), !dbg !2803
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2804
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !2804
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2793, metadata !DIExpression()), !dbg !2805
  %7 = bitcast i32* %5 to i8*, !dbg !2806
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !2806
  call void @llvm.dbg.value(metadata i32* %5, metadata !2802, metadata !DIExpression(DW_OP_deref)), !dbg !2803
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !2807
  call void @llvm.va_start(i8* nonnull %6), !dbg !2808
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2809
  %10 = load i32, i32* %9, align 4, !dbg !2809
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2809
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !2809
  call void @llvm.va_end(i8* nonnull %6), !dbg !2810
  %13 = load i32, i32* %5, align 4, !dbg !2811
  call void @llvm.dbg.value(metadata i32 %13, metadata !2802, metadata !DIExpression()), !dbg !2803
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !2813
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !2813
  ret void, !dbg !2813
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2814 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 %1, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i8* %2, metadata !2818, metadata !DIExpression()), !dbg !2821
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2822
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !2822
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2819, metadata !DIExpression()), !dbg !2823
  %7 = bitcast i32* %5 to i8*, !dbg !2824
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !2824
  call void @llvm.dbg.value(metadata i32* %5, metadata !2820, metadata !DIExpression(DW_OP_deref)), !dbg !2821
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !2825
  call void @llvm.va_start(i8* nonnull %6), !dbg !2826
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2827
  %10 = load i32, i32* %9, align 4, !dbg !2827
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2827
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !2827
  call void @llvm.va_end(i8* nonnull %6), !dbg !2828
  %13 = load i32, i32* %5, align 4, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %13, metadata !2820, metadata !DIExpression()), !dbg !2821
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !2830
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !2831
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !2831
  ret void, !dbg !2831
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2832 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2834, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i32 %1, metadata !2835, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i8* %2, metadata !2836, metadata !DIExpression()), !dbg !2839
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2840
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !2840
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2837, metadata !DIExpression()), !dbg !2841
  %7 = bitcast i32* %5 to i8*, !dbg !2842
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !2842
  call void @llvm.dbg.value(metadata i32* %5, metadata !2838, metadata !DIExpression(DW_OP_deref)), !dbg !2839
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !2843
  call void @llvm.va_start(i8* nonnull %6), !dbg !2844
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2845
  %10 = load i32, i32* %9, align 4, !dbg !2845
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2845
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !2845
  call void @llvm.va_end(i8* nonnull %6), !dbg !2846
  %13 = load i32, i32* %5, align 4, !dbg !2847
  call void @llvm.dbg.value(metadata i32 %13, metadata !2838, metadata !DIExpression()), !dbg !2839
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !2848
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !2849
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !2849
  ret void, !dbg !2849
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2850 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i32 %1, metadata !2853, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8* %2, metadata !2854, metadata !DIExpression()), !dbg !2857
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2858
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !2858
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2855, metadata !DIExpression()), !dbg !2859
  %7 = bitcast i32* %5 to i8*, !dbg !2860
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #16, !dbg !2860
  call void @llvm.dbg.value(metadata i32* %5, metadata !2856, metadata !DIExpression(DW_OP_deref)), !dbg !2857
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #15, !dbg !2861
  call void @llvm.va_start(i8* nonnull %6), !dbg !2862
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2863
  %10 = load i32, i32* %9, align 4, !dbg !2863
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2863
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #15, !dbg !2863
  call void @llvm.va_end(i8* nonnull %6), !dbg !2864
  %13 = load i32, i32* %5, align 4, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %13, metadata !2856, metadata !DIExpression()), !dbg !2857
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #15, !dbg !2866
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #16, !dbg !2867
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !2867
  ret void, !dbg !2867
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !2868 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %1, metadata !2875, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %2, metadata !2876, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %3, metadata !2877, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %4, metadata !2878, metadata !DIExpression()), !dbg !2879
  ret void, !dbg !2880
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !2881 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %1, metadata !2888, metadata !DIExpression()), !dbg !2890
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !2891, !range !2893
  %3 = icmp eq i8 %2, 0, !dbg !2891
  br i1 %3, label %5, label %4, !dbg !2894

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !2895
  br label %15, !dbg !2897

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !2898
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !2900
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !2901
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2902
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !2903
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !2904
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !2905
  call void @llvm.dbg.value(metadata i32 0, metadata !2886, metadata !DIExpression()), !dbg !2890
  br label %7, !dbg !2906

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !2886, metadata !DIExpression()), !dbg !2890
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !2908
  store volatile i32 0, i32* %9, align 4, !dbg !2911
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !2912
  store volatile i32 0, i32* %10, align 4, !dbg !2913
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !2914
  store i32 0, i32* %11, align 4, !dbg !2915
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !2916
  store i32 0, i32* %12, align 4, !dbg !2917
  %13 = add nuw nsw i32 %8, 1, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %13, metadata !2886, metadata !DIExpression()), !dbg !2890
  %14 = icmp eq i32 %13, 16, !dbg !2919
  br i1 %14, label %15, label %7, !dbg !2906, !llvm.loop !2920

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !2890
  ret i32 %16, !dbg !2922
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !2923 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %1, metadata !2925, metadata !DIExpression()), !dbg !2927
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !2928
  %3 = and i32 %2, -31, !dbg !2928
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !2928
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !2929
  %5 = or i32 %4, 19, !dbg !2929
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !2929
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !2930
  %7 = and i32 %6, -31, !dbg !2930
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !2930
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !2931
  %9 = or i32 %8, 3, !dbg !2931
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !2931
  tail call void asm sideeffect "isb", ""() #16, !dbg !2932, !srcloc !2936
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !2937
  ret i32 0, !dbg !2938
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !2939 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !2942
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2943
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !2944
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !2945
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !2946
  call void @llvm.dbg.value(metadata i32 0, metadata !2941, metadata !DIExpression()), !dbg !2947
  br label %2, !dbg !2948

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !2941, metadata !DIExpression()), !dbg !2947
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !2950
  store volatile i32 0, i32* %4, align 4, !dbg !2953
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !2954
  store volatile i32 0, i32* %5, align 4, !dbg !2955
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !2956
  store i32 0, i32* %6, align 4, !dbg !2957
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !2958
  store i32 0, i32* %7, align 4, !dbg !2959
  %8 = add nuw nsw i32 %3, 1, !dbg !2960
  call void @llvm.dbg.value(metadata i32 %8, metadata !2941, metadata !DIExpression()), !dbg !2947
  %9 = icmp eq i32 %8, 16, !dbg !2961
  br i1 %9, label %10, label %2, !dbg !2948, !llvm.loop !2962

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !2964
  ret i32 0, !dbg !2965
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #0 !dbg !2966 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !2967
  %2 = and i32 %1, 768, !dbg !2969
  %3 = icmp eq i32 %2, 0, !dbg !2969
  br i1 %3, label %8, label %4, !dbg !2970

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2971
  %6 = or i32 %5, 13, !dbg !2971
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2971
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2972
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !2973
  br label %8, !dbg !2974

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !2975
  ret i32 %9, !dbg !2976
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !2977 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %1, metadata !2979, metadata !DIExpression()), !dbg !2981
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2982
  %3 = and i32 %2, 1, !dbg !2984
  %4 = icmp eq i32 %3, 0, !dbg !2984
  br i1 %4, label %7, label %5, !dbg !2985

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #14, !dbg !2986
  br label %7, !dbg !2988

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2989
  %9 = and i32 %8, -2, !dbg !2989
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2989
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !2990
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !2991
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !2992
  ret i32 0, !dbg !2993
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !2994 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2998, metadata !DIExpression()), !dbg !2999
  %2 = icmp ugt i32 %0, 15, !dbg !3000
  br i1 %2, label %13, label %3, !dbg !3002

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3003
  %5 = load volatile i32, i32* %4, align 4, !dbg !3003
  %6 = and i32 %5, 256, !dbg !3005
  %7 = icmp eq i32 %6, 0, !dbg !3005
  br i1 %7, label %13, label %8, !dbg !3006

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3007
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3009
  %11 = or i32 %10, %9, !dbg !3009
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3009
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3010
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3011
  br label %13, !dbg !3012

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !2999
  ret i32 %14, !dbg !3013
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !3014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3016, metadata !DIExpression()), !dbg !3017
  %2 = icmp ugt i32 %0, 15, !dbg !3018
  br i1 %2, label %11, label %3, !dbg !3020

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3021
  %5 = xor i32 %4, -1, !dbg !3022
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3023
  %7 = and i32 %6, %5, !dbg !3023
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3023
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3024
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3025
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3026
  store i32 0, i32* %9, align 4, !dbg !3027
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3028
  store i32 0, i32* %10, align 4, !dbg !3029
  br label %11, !dbg !3030

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3017
  ret i32 %12, !dbg !3031
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #0 !dbg !3032 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3037, metadata !DIExpression()), !dbg !3038
  %2 = icmp ugt i32 %0, 3, !dbg !3039
  br i1 %2, label %13, label %3, !dbg !3041

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3042
  %5 = and i32 %4, -769, !dbg !3042
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3042
  %6 = shl nuw nsw i32 %0, 8, !dbg !3043
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3044
  %8 = or i32 %7, %6, !dbg !3044
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3044
  %9 = icmp eq i32 %0, 0, !dbg !3045
  br i1 %9, label %10, label %11, !dbg !3047

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3048
  br label %11, !dbg !3050

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3051
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3052
  br label %13, !dbg !3053

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3038
  ret i32 %14, !dbg !3054
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #3 !dbg !3055 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3067, metadata !DIExpression()), !dbg !3068
  %3 = icmp ugt i32 %0, 15, !dbg !3069
  br i1 %3, label %30, label %4, !dbg !3071

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !3072
  br i1 %5, label %30, label %6, !dbg !3074

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3075
  %8 = load i32, i32* %7, align 4, !dbg !3075
  %9 = and i32 %8, 4095, !dbg !3077
  %10 = icmp eq i32 %9, 0, !dbg !3077
  br i1 %10, label %12, label %11, !dbg !3078

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3079
  unreachable, !dbg !3079

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3081
  %14 = load i32, i32* %13, align 4, !dbg !3081
  %15 = and i32 %14, 4095, !dbg !3083
  %16 = icmp eq i32 %15, 0, !dbg !3083
  br i1 %16, label %18, label %17, !dbg !3084

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)) #17, !dbg !3085
  unreachable, !dbg !3085

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3087
  store volatile i32 %8, i32* %19, align 4, !dbg !3088
  %20 = load i32, i32* %7, align 4, !dbg !3089
  %21 = load i32, i32* %13, align 4, !dbg !3090
  %22 = add i32 %21, %20, !dbg !3091
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3092
  store volatile i32 %22, i32* %23, align 4, !dbg !3093
  %24 = load volatile i32, i32* %19, align 4, !dbg !3094
  %25 = or i32 %24, 256, !dbg !3094
  store volatile i32 %25, i32* %19, align 4, !dbg !3094
  %26 = load volatile i32, i32* %19, align 4, !dbg !3095
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3096
  store i32 %26, i32* %27, align 4, !dbg !3097
  %28 = load volatile i32, i32* %23, align 4, !dbg !3098
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3099
  store i32 %28, i32* %29, align 4, !dbg !3100
  br label %30, !dbg !3101

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3068
  ret i32 %31, !dbg !3102
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3103 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  %2 = and i32 %0, 31, !dbg !3110
  %3 = icmp eq i32 %2, 0, !dbg !3110
  br i1 %3, label %4, label %9, !dbg !3112

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %5, metadata !3108, metadata !DIExpression()), !dbg !3109
  %6 = and i32 %0, -32, !dbg !3114
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3115
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3116
  %8 = or i32 %7, 5, !dbg !3116
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3116
  tail call void asm sideeffect "isb", ""() #16, !dbg !3117, !srcloc !2936
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3119
  br label %9, !dbg !3120

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3109
  ret i32 %10, !dbg !3121
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3122 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3126, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %1, metadata !3127, metadata !DIExpression()), !dbg !3130
  %3 = add i32 %1, %0, !dbg !3131
  call void @llvm.dbg.value(metadata i32 %3, metadata !3129, metadata !DIExpression()), !dbg !3130
  %4 = or i32 %1, %0, !dbg !3132
  %5 = and i32 %4, 31, !dbg !3132
  %6 = icmp eq i32 %5, 0, !dbg !3132
  br i1 %6, label %7, label %16, !dbg !3132

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3134
  call void @llvm.dbg.value(metadata i32 %8, metadata !3128, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i32 %0, metadata !3126, metadata !DIExpression()), !dbg !3130
  %9 = icmp ugt i32 %3, %0, !dbg !3135
  br i1 %9, label %10, label %15, !dbg !3136

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3126, metadata !DIExpression()), !dbg !3130
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #14, !dbg !3137
  %13 = add i32 %11, 32, !dbg !3139
  call void @llvm.dbg.value(metadata i32 %13, metadata !3126, metadata !DIExpression()), !dbg !3130
  %14 = icmp ult i32 %13, %3, !dbg !3135
  br i1 %14, label %10, label %15, !dbg !3136, !llvm.loop !3140

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3142, !srcloc !2936
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3144
  br label %16, !dbg !3145

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3130
  ret i32 %17, !dbg !3146
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3147 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3149, metadata !DIExpression()), !dbg !3151
  %2 = and i32 %0, 31, !dbg !3152
  %3 = icmp eq i32 %2, 0, !dbg !3152
  br i1 %3, label %4, label %9, !dbg !3154

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3155
  call void @llvm.dbg.value(metadata i32 %5, metadata !3150, metadata !DIExpression()), !dbg !3151
  %6 = and i32 %0, -32, !dbg !3156
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3157
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3158
  %8 = or i32 %7, 21, !dbg !3158
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3158
  tail call void asm sideeffect "isb", ""() #16, !dbg !3159, !srcloc !2936
  tail call void @restore_interrupt_mask(i32 noundef %5) #15, !dbg !3161
  br label %9, !dbg !3162

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3151
  ret i32 %10, !dbg !3163
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3166, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 %1, metadata !3167, metadata !DIExpression()), !dbg !3170
  %3 = add i32 %1, %0, !dbg !3171
  call void @llvm.dbg.value(metadata i32 %3, metadata !3169, metadata !DIExpression()), !dbg !3170
  %4 = or i32 %1, %0, !dbg !3172
  %5 = and i32 %4, 31, !dbg !3172
  %6 = icmp eq i32 %5, 0, !dbg !3172
  br i1 %6, label %7, label %16, !dbg !3172

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %8, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 %0, metadata !3166, metadata !DIExpression()), !dbg !3170
  %9 = icmp ugt i32 %3, %0, !dbg !3175
  br i1 %9, label %10, label %15, !dbg !3176

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3166, metadata !DIExpression()), !dbg !3170
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #14, !dbg !3177
  %13 = add i32 %11, 32, !dbg !3179
  call void @llvm.dbg.value(metadata i32 %13, metadata !3166, metadata !DIExpression()), !dbg !3170
  %14 = icmp ult i32 %13, %3, !dbg !3175
  br i1 %14, label %10, label %15, !dbg !3176, !llvm.loop !3180

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #16, !dbg !3182, !srcloc !2936
  tail call void @restore_interrupt_mask(i32 noundef %8) #15, !dbg !3184
  br label %16, !dbg !3185

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3170
  ret i32 %17, !dbg !3186
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3187 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3190
  call void @llvm.dbg.value(metadata i32 %1, metadata !3189, metadata !DIExpression()), !dbg !3191
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3192
  %3 = and i32 %2, -31, !dbg !3192
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3192
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3193
  %5 = or i32 %4, 19, !dbg !3193
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3193
  tail call void asm sideeffect "isb", ""() #16, !dbg !3194, !srcloc !2936
  tail call void @restore_interrupt_mask(i32 noundef %1) #15, !dbg !3196
  ret i32 0, !dbg !3197
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #0 !dbg !3198 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3202, metadata !DIExpression()), !dbg !3204
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3205
  %3 = and i32 %2, 8, !dbg !3207
  %4 = icmp eq i32 %3, 0, !dbg !3207
  br i1 %4, label %23, label %5, !dbg !3208

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3203, metadata !DIExpression()), !dbg !3204
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3209
  %8 = shl nuw nsw i32 1, %6, !dbg !3214
  %9 = and i32 %7, %8, !dbg !3215
  %10 = icmp eq i32 %9, 0, !dbg !3215
  br i1 %10, label %20, label %11, !dbg !3216

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3217
  %13 = load volatile i32, i32* %12, align 4, !dbg !3217
  %14 = and i32 %13, -257, !dbg !3220
  %15 = icmp ugt i32 %14, %0, !dbg !3221
  br i1 %15, label %20, label %16, !dbg !3222

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3223
  %18 = load volatile i32, i32* %17, align 4, !dbg !3223
  %19 = icmp ugt i32 %18, %0, !dbg !3224
  br i1 %19, label %23, label %20, !dbg !3225

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3226
  call void @llvm.dbg.value(metadata i32 %21, metadata !3203, metadata !DIExpression()), !dbg !3204
  %22 = icmp eq i32 %21, 16, !dbg !3227
  br i1 %22, label %23, label %5, !dbg !3228, !llvm.loop !3229

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3204
  ret i1 %24, !dbg !3231
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !3232 {
  ret i32 0, !dbg !3236
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3241, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 -1, metadata !3242, metadata !DIExpression()), !dbg !3243
  %2 = icmp ugt i32 %0, 95, !dbg !3244
  br i1 %2, label %4, label %3, !dbg !3244

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #14, !dbg !3246
  call void @llvm.dbg.value(metadata i32 0, metadata !3242, metadata !DIExpression()), !dbg !3243
  br label %4, !dbg !3248

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3243
  ret i32 %5, !dbg !3249
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3254, metadata !DIExpression()), !dbg !3255
  %2 = and i32 %0, 31, !dbg !3256
  %3 = shl nuw i32 1, %2, !dbg !3257
  %4 = lshr i32 %0, 5, !dbg !3258
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3259
  store volatile i32 %3, i32* %5, align 4, !dbg !3260
  ret void, !dbg !3261
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3264, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i32 -1, metadata !3265, metadata !DIExpression()), !dbg !3266
  %2 = icmp ugt i32 %0, 95, !dbg !3267
  br i1 %2, label %4, label %3, !dbg !3267

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #14, !dbg !3269
  call void @llvm.dbg.value(metadata i32 0, metadata !3265, metadata !DIExpression()), !dbg !3266
  br label %4, !dbg !3271

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3266
  ret i32 %5, !dbg !3272
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3275, metadata !DIExpression()), !dbg !3276
  %2 = and i32 %0, 31, !dbg !3277
  %3 = shl nuw i32 1, %2, !dbg !3278
  %4 = lshr i32 %0, 5, !dbg !3279
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3280
  store volatile i32 %3, i32* %5, align 4, !dbg !3281
  ret void, !dbg !3282
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3283 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3287, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 255, metadata !3288, metadata !DIExpression()), !dbg !3289
  %2 = icmp ugt i32 %0, 95, !dbg !3290
  br i1 %2, label %5, label %3, !dbg !3290

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #14, !dbg !3292
  call void @llvm.dbg.value(metadata i32 %4, metadata !3288, metadata !DIExpression()), !dbg !3289
  br label %5, !dbg !3294

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3289
  ret i32 %6, !dbg !3295
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3300, metadata !DIExpression()), !dbg !3301
  %2 = lshr i32 %0, 5, !dbg !3302
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3303
  %4 = load volatile i32, i32* %3, align 4, !dbg !3303
  %5 = and i32 %0, 31, !dbg !3304
  %6 = lshr i32 %4, %5, !dbg !3305
  %7 = and i32 %6, 1, !dbg !3305
  ret i32 %7, !dbg !3306
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3309, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i32 -1, metadata !3310, metadata !DIExpression()), !dbg !3311
  %2 = icmp ugt i32 %0, 95, !dbg !3312
  br i1 %2, label %4, label %3, !dbg !3312

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #14, !dbg !3314
  call void @llvm.dbg.value(metadata i32 0, metadata !3310, metadata !DIExpression()), !dbg !3311
  br label %4, !dbg !3316

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3311
  ret i32 %5, !dbg !3317
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3318 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3320, metadata !DIExpression()), !dbg !3321
  %2 = and i32 %0, 31, !dbg !3322
  %3 = shl nuw i32 1, %2, !dbg !3323
  %4 = lshr i32 %0, 5, !dbg !3324
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3325
  store volatile i32 %3, i32* %5, align 4, !dbg !3326
  ret void, !dbg !3327
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 -1, metadata !3331, metadata !DIExpression()), !dbg !3332
  %2 = icmp ugt i32 %0, 95, !dbg !3333
  br i1 %2, label %4, label %3, !dbg !3333

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3335
  call void @llvm.dbg.value(metadata i32 0, metadata !3331, metadata !DIExpression()), !dbg !3332
  br label %4, !dbg !3337

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3332
  ret i32 %5, !dbg !3338
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3339 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3341, metadata !DIExpression()), !dbg !3342
  %2 = and i32 %0, 31, !dbg !3343
  %3 = shl nuw i32 1, %2, !dbg !3344
  %4 = lshr i32 %0, 5, !dbg !3345
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3346
  store volatile i32 %3, i32* %5, align 4, !dbg !3347
  ret void, !dbg !3348
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3349 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3353, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 %1, metadata !3354, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i32 -1, metadata !3355, metadata !DIExpression()), !dbg !3356
  %3 = icmp ugt i32 %0, 95, !dbg !3357
  br i1 %3, label %5, label %4, !dbg !3357

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #14, !dbg !3359
  call void @llvm.dbg.value(metadata i32 0, metadata !3355, metadata !DIExpression()), !dbg !3356
  br label %5, !dbg !3361

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3356
  ret i32 %6, !dbg !3362
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3367, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i32 %1, metadata !3368, metadata !DIExpression()), !dbg !3369
  %3 = trunc i32 %1 to i8, !dbg !3370
  %4 = shl i8 %3, 5, !dbg !3370
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3373
  store volatile i8 %4, i8* %5, align 1, !dbg !3374
  ret void, !dbg !3375
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3378, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 68, metadata !3379, metadata !DIExpression()), !dbg !3380
  %2 = icmp ugt i32 %0, 95, !dbg !3381
  br i1 %2, label %5, label %3, !dbg !3381

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #14, !dbg !3383
  call void @llvm.dbg.value(metadata i32 %4, metadata !3379, metadata !DIExpression()), !dbg !3380
  br label %5, !dbg !3385

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3380
  ret i32 %6, !dbg !3386
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !3387 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()), !dbg !3390
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3391
  %3 = load volatile i8, i8* %2, align 1, !dbg !3391
  %4 = lshr i8 %3, 5, !dbg !3394
  %5 = zext i8 %4 to i32, !dbg !3394
  ret i32 %5, !dbg !3395
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !3396 {
  ret void, !dbg !3397
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !3398 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3400, metadata !DIExpression()), !dbg !3402
  %1 = tail call fastcc i32 @get_current_irq() #14, !dbg !3403
  call void @llvm.dbg.value(metadata i32 %1, metadata !3401, metadata !DIExpression()), !dbg !3402
  %2 = icmp ugt i32 %1, 95, !dbg !3404
  br i1 %2, label %12, label %3, !dbg !3404

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3406
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3406
  %6 = icmp eq void (i32)* %5, null, !dbg !3408
  br i1 %6, label %7, label %8, !dbg !3409

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3400, metadata !DIExpression()), !dbg !3402
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0)) #15, !dbg !3410
  br label %12, !dbg !3412

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #14, !dbg !3413
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3415
  store i32 %9, i32* %10, align 4, !dbg !3416
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3417
  tail call void %11(i32 noundef %1) #15, !dbg !3418
  call void @llvm.dbg.value(metadata i32 0, metadata !3400, metadata !DIExpression()), !dbg !3402
  br label %12, !dbg !3419

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3402
  ret i32 %13, !dbg !3420
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !3421 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3424
  %2 = and i32 %1, 511, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %2, metadata !3423, metadata !DIExpression()), !dbg !3426
  %3 = add nsw i32 %2, -16, !dbg !3427
  ret i32 %3, !dbg !3428
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !3429 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3430
  %2 = lshr i32 %1, 22, !dbg !3431
  %3 = and i32 %2, 1, !dbg !3431
  ret i32 %3, !dbg !3432
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !3433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3438, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3439, metadata !DIExpression()), !dbg !3441
  %3 = icmp ugt i32 %0, 95, !dbg !3442
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3442
  br i1 %5, label %10, label %6, !dbg !3442

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3444
  call void @llvm.dbg.value(metadata i32 %7, metadata !3440, metadata !DIExpression()), !dbg !3441
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #14, !dbg !3445
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3446
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3447
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3448
  store i32 0, i32* %9, align 4, !dbg !3449
  tail call void @restore_interrupt_mask(i32 noundef %7) #15, !dbg !3450
  br label %10, !dbg !3451

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3441
  ret i32 %11, !dbg !3452
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !3453 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3457, metadata !DIExpression()), !dbg !3458
  %2 = tail call i32 @save_and_set_interrupt_mask() #15, !dbg !3459
  store i32 %2, i32* %0, align 4, !dbg !3460
  ret i32 0, !dbg !3461
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !3462 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3466, metadata !DIExpression()), !dbg !3467
  tail call void @restore_interrupt_mask(i32 noundef %0) #15, !dbg !3468
  ret i32 0, !dbg !3469
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3476, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i8 %1, metadata !3477, metadata !DIExpression()), !dbg !3479
  %3 = icmp ugt i32 %0, 60, !dbg !3480
  br i1 %3, label %11, label %4, !dbg !3482

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3483
  br i1 %5, label %11, label %6, !dbg !3485

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3486
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #15, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %8, metadata !3478, metadata !DIExpression()), !dbg !3479
  %9 = icmp slt i32 %8, 0, !dbg !3488
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3488
  br label %11, !dbg !3489

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3479
  ret i32 %12, !dbg !3490
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !3491 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3496, metadata !DIExpression()), !dbg !3497
  ret i32 0, !dbg !3498
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !3499 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3501, metadata !DIExpression()), !dbg !3502
  ret i32 0, !dbg !3503
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3504 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3509, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i32* %1, metadata !3510, metadata !DIExpression()), !dbg !3519
  %4 = icmp eq i32* %1, null, !dbg !3520
  br i1 %4, label %12, label %5, !dbg !3522

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3523
  br i1 %6, label %12, label %7, !dbg !3525

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3526
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !3526
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !3526
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3526
  %10 = load i8, i8* %9, align 1, !dbg !3526
  call void @llvm.dbg.value(metadata i8 %10, metadata !3511, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3519
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !3526
  %11 = zext i8 %10 to i32, !dbg !3527
  store i32 %11, i32* %1, align 4, !dbg !3528
  br label %12, !dbg !3529

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3519
  ret i32 %13, !dbg !3530
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3531 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3535, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i32 %1, metadata !3536, metadata !DIExpression()), !dbg !3538
  %3 = icmp ugt i32 %0, 60, !dbg !3539
  br i1 %3, label %9, label %4, !dbg !3541

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3542
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %6, metadata !3537, metadata !DIExpression()), !dbg !3538
  %7 = icmp slt i32 %6, 0, !dbg !3544
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3544
  br label %9, !dbg !3545

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3538
  ret i32 %10, !dbg !3546
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3547 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3549, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata i32* %1, metadata !3550, metadata !DIExpression()), !dbg !3552
  %4 = icmp ugt i32 %0, 60, !dbg !3553
  br i1 %4, label %12, label %5, !dbg !3555

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3556
  br i1 %6, label %12, label %7, !dbg !3558

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3559
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !3559
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !3559
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3559
  %10 = load i8, i8* %9, align 2, !dbg !3559
  call void @llvm.dbg.value(metadata i8 %10, metadata !3551, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3552
  call void @llvm.dbg.value(metadata i8 undef, metadata !3551, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3552
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !3559
  %11 = zext i8 %10 to i32, !dbg !3560
  store i32 %11, i32* %1, align 4, !dbg !3561
  br label %12, !dbg !3562

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3552
  ret i32 %13, !dbg !3563
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3569, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i32 %1, metadata !3570, metadata !DIExpression()), !dbg !3572
  %3 = icmp ugt i32 %0, 60, !dbg !3573
  br i1 %3, label %8, label %4, !dbg !3575

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #15, !dbg !3576
  call void @llvm.dbg.value(metadata i32 %5, metadata !3571, metadata !DIExpression()), !dbg !3572
  %6 = icmp slt i32 %5, 0, !dbg !3577
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3577
  br label %8, !dbg !3578

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3572
  ret i32 %9, !dbg !3579
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3580 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3585, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.value(metadata i32* %1, metadata !3586, metadata !DIExpression()), !dbg !3588
  %4 = icmp ugt i32 %0, 60, !dbg !3589
  br i1 %4, label %13, label %5, !dbg !3591

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3592
  br i1 %6, label %13, label %7, !dbg !3594

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3595
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #16, !dbg !3595
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #15, !dbg !3595
  call void @llvm.dbg.value(metadata i32 undef, metadata !3587, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3588
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3595
  %10 = load i8, i8* %9, align 4, !dbg !3595
  call void @llvm.dbg.value(metadata i8 %10, metadata !3587, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3588
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #16, !dbg !3595
  %11 = icmp ne i8 %10, 0, !dbg !3596
  %12 = zext i1 %11 to i32, !dbg !3596
  store i32 %12, i32* %1, align 4, !dbg !3597
  br label %13, !dbg !3598

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3588
  ret i32 %14, !dbg !3599
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !3600 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3602, metadata !DIExpression()), !dbg !3604
  %3 = icmp ugt i32 %0, 60, !dbg !3605
  br i1 %3, label %11, label %4, !dbg !3607

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3608
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #16, !dbg !3608
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #15, !dbg !3608
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3608
  %7 = load i8, i8* %6, align 2, !dbg !3608
  call void @llvm.dbg.value(metadata i8 %7, metadata !3603, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3604
  call void @llvm.dbg.value(metadata i8 undef, metadata !3603, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3604
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #16, !dbg !3608
  %8 = xor i8 %7, 1, !dbg !3609
  %9 = zext i8 %8 to i32, !dbg !3609
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #14, !dbg !3610
  br label %11, !dbg !3611

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3604
  ret i32 %12, !dbg !3612
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !3613 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3615, metadata !DIExpression()), !dbg !3617
  %2 = icmp ugt i32 %0, 60, !dbg !3618
  br i1 %2, label %10, label %3, !dbg !3620

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !3621
  call void @llvm.dbg.value(metadata i32 %4, metadata !3616, metadata !DIExpression()), !dbg !3617
  %5 = icmp slt i32 %4, 0, !dbg !3622
  br i1 %5, label %10, label %6, !dbg !3624

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #15, !dbg !3625
  call void @llvm.dbg.value(metadata i32 %7, metadata !3616, metadata !DIExpression()), !dbg !3617
  %8 = icmp slt i32 %7, 0, !dbg !3626
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3626
  br label %10, !dbg !3627

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3617
  ret i32 %11, !dbg !3628
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !3629 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3631, metadata !DIExpression()), !dbg !3633
  %2 = icmp ugt i32 %0, 60, !dbg !3634
  br i1 %2, label %10, label %3, !dbg !3636

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !3637
  call void @llvm.dbg.value(metadata i32 %4, metadata !3632, metadata !DIExpression()), !dbg !3633
  %5 = icmp slt i32 %4, 0, !dbg !3638
  br i1 %5, label %10, label %6, !dbg !3640

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #15, !dbg !3641
  call void @llvm.dbg.value(metadata i32 %7, metadata !3632, metadata !DIExpression()), !dbg !3633
  %8 = icmp slt i32 %7, 0, !dbg !3642
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3642
  br label %10, !dbg !3643

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3633
  ret i32 %11, !dbg !3644
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !3645 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3647, metadata !DIExpression()), !dbg !3649
  %2 = icmp ugt i32 %0, 60, !dbg !3650
  br i1 %2, label %7, label %3, !dbg !3652

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #15, !dbg !3653
  call void @llvm.dbg.value(metadata i32 %4, metadata !3648, metadata !DIExpression()), !dbg !3649
  %5 = icmp slt i32 %4, 0, !dbg !3654
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3654
  br label %7, !dbg !3655

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3649
  ret i32 %8, !dbg !3656
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3661, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i32 %1, metadata !3662, metadata !DIExpression()), !dbg !3664
  %3 = icmp ugt i32 %0, 60, !dbg !3665
  br i1 %3, label %9, label %4, !dbg !3667

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3668
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #15, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %6, metadata !3663, metadata !DIExpression()), !dbg !3664
  %7 = icmp slt i32 %6, 0, !dbg !3670
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3670
  br label %9, !dbg !3671

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3664
  ret i32 %10, !dbg !3672
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !3673 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3678, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i32* %1, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #16, !dbg !3683
  %4 = icmp ugt i32 %0, 60, !dbg !3684
  br i1 %4, label %11, label %5, !dbg !3686

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3681, metadata !DIExpression(DW_OP_deref)), !dbg !3682
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #15, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %6, metadata !3680, metadata !DIExpression()), !dbg !3682
  %7 = load i8, i8* %3, align 1, !dbg !3688
  call void @llvm.dbg.value(metadata i8 %7, metadata !3681, metadata !DIExpression()), !dbg !3682
  %8 = zext i8 %7 to i32, !dbg !3689
  store i32 %8, i32* %1, align 4, !dbg !3690
  %9 = icmp slt i32 %6, 0, !dbg !3691
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3691
  br label %11, !dbg !3692

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3682
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #16, !dbg !3693
  ret i32 %12, !dbg !3693
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn
define dso_local i32 @hal_spi_slave_init(i32 noundef %0, %struct.hal_cache_region_config_t* nocapture noundef readonly %1) local_unnamed_addr #11 !dbg !3694 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3708, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3709, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 0, metadata !3710, metadata !DIExpression()), !dbg !3711
  %3 = icmp eq i32 %0, 0, !dbg !3712
  br i1 %3, label %4, label %26, !dbg !3714

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @is_slave_config(%struct.hal_cache_region_config_t* noundef %1) #14, !dbg !3715
  br i1 %5, label %6, label %26, !dbg !3717

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3718
  %8 = load i32, i32* %7, align 4, !dbg !3718
  %9 = shl i32 %8, 1, !dbg !3719
  %10 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3720
  %11 = load i32, i32* %10, align 4, !dbg !3720
  %12 = or i32 %9, %11, !dbg !3721
  call void @llvm.dbg.value(metadata i32 %12, metadata !3710, metadata !DIExpression()), !dbg !3711
  %13 = and i32 %12, 3, !dbg !3722
  store i32 %13, i32* inttoptr (i32 553649984 to i32*), align 64, !dbg !3722
  %14 = load i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3722
  %15 = or i32 %14, 32, !dbg !3722
  store i32 %15, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3722
  switch i32 %13, label %19 [
    i32 0, label %16
    i32 3, label %16
  ], !dbg !3724

16:                                               ; preds = %6, %6
  %17 = load i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3726
  %18 = and i32 %17, -33, !dbg !3726
  br label %22, !dbg !3726

19:                                               ; preds = %6
  %20 = load i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3728
  %21 = or i32 %20, 32, !dbg !3728
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %21, %19 ], [ %18, %16 ], !dbg !3730
  store i32 %23, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3730
  %24 = load i32, i32* inttoptr (i32 553649944 to i32*), align 8, !dbg !3731
  %25 = or i32 %24, 64, !dbg !3731
  store i32 %25, i32* inttoptr (i32 553649944 to i32*), align 8, !dbg !3731
  br label %26, !dbg !3732

26:                                               ; preds = %4, %2, %22
  %27 = phi i32 [ 0, %22 ], [ -2, %2 ], [ -1, %4 ], !dbg !3711
  ret i32 %27, !dbg !3733
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @is_slave_config(%struct.hal_cache_region_config_t* nocapture noundef readonly %0) unnamed_addr #4 !dbg !3734 {
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %0, metadata !3740, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8 1, metadata !3741, metadata !DIExpression()), !dbg !3742
  %2 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %0, i32 0, i32 0, !dbg !3743
  %3 = load i32, i32* %2, align 4, !dbg !3743
  call void @llvm.dbg.value(metadata i1 undef, metadata !3741, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3742
  %4 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %0, i32 0, i32 1, !dbg !3744
  %5 = load i32, i32* %4, align 4, !dbg !3744
  call void @llvm.dbg.value(metadata i1 undef, metadata !3741, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3742
  %6 = or i32 %5, %3, !dbg !3745
  %7 = icmp ult i32 %6, 2, !dbg !3745
  call void @llvm.dbg.value(metadata i1 %7, metadata !3741, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3742
  ret i1 %7, !dbg !3746
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_spi_slave_register_callback(i32 noundef %0, void (i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !3747 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3751, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata void (i8*)* %1, metadata !3752, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i8* %2, metadata !3753, metadata !DIExpression()), !dbg !3754
  %4 = icmp eq i32 %0, 0, !dbg !3755
  br i1 %4, label %5, label %11, !dbg !3757

5:                                                ; preds = %3
  %6 = icmp eq void (i8*)* %1, null, !dbg !3758
  br i1 %6, label %11, label %7, !dbg !3760

7:                                                ; preds = %5
  store void (i8*)* %1, void (i8*)** @g_spis_callback, align 4, !dbg !3761
  store i8* %2, i8** @g_spis_user_data, align 4, !dbg !3762
  %8 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 12, void (i32)* noundef nonnull @hal_spi_slave_isr) #15, !dbg !3763
  %9 = tail call i32 @hal_nvic_set_priority(i32 noundef 12, i32 noundef 5) #15, !dbg !3764
  %10 = tail call i32 @hal_nvic_enable_irq(i32 noundef 12) #15, !dbg !3765
  br label %11, !dbg !3766

11:                                               ; preds = %5, %3, %7
  %12 = phi i32 [ 0, %7 ], [ -2, %3 ], [ -1, %5 ], !dbg !3754
  ret i32 %12, !dbg !3767
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_spi_slave_isr(i32 noundef %0) #3 !dbg !3768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i32 1, i32* inttoptr (i32 553649940 to i32*), align 4, !dbg !3772
  %2 = load void (i8*)*, void (i8*)** @g_spis_callback, align 4, !dbg !3773
  %3 = load i8*, i8** @g_spis_user_data, align 4, !dbg !3774
  tail call void %2(i8* noundef %3) #15, !dbg !3773
  ret void, !dbg !3775
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3783, metadata !DIExpression()), !dbg !3784
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !3785
  br i1 %3, label %4, label %18, !dbg !3787

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3788
  %6 = load i8, i8* %5, align 4, !dbg !3788, !range !2893
  %7 = icmp eq i8 %6, 0, !dbg !3788
  br i1 %7, label %8, label %18, !dbg !3790

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #15, !dbg !3791
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3792
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !3793
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3794
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #15, !dbg !3795
  store i8 1, i8* %5, align 4, !dbg !3796
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !3797, !range !3798
  tail call void @uart_reset_default_value(i32 noundef %14) #15, !dbg !3799
  tail call void @halUART_HWInit(i32 noundef %14) #15, !dbg !3800
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !3801
  %16 = icmp eq i32 %15, 0, !dbg !3803
  %17 = select i1 %16, i32 0, i32 -4, !dbg !3784
  br label %18, !dbg !3784

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !3784
  ret i32 %19, !dbg !3804
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #4 !dbg !3805 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3811, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3812, metadata !DIExpression()), !dbg !3813
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !3814
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !3816
  br i1 %5, label %6, label %22, !dbg !3816

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3817
  %8 = load i32, i32* %7, align 4, !dbg !3817
  %9 = icmp ugt i32 %8, 12, !dbg !3819
  br i1 %9, label %22, label %10, !dbg !3820

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3821
  %12 = load i32, i32* %11, align 4, !dbg !3821
  %13 = icmp ugt i32 %12, 2, !dbg !3822
  br i1 %13, label %22, label %14, !dbg !3823

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3824
  %16 = load i32, i32* %15, align 4, !dbg !3824
  %17 = icmp ugt i32 %16, 1, !dbg !3825
  br i1 %17, label %22, label %18, !dbg !3826

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3827
  %20 = load i32, i32* %19, align 4, !dbg !3827
  %21 = icmp ult i32 %20, 4, !dbg !3828
  br label %22, !dbg !3829

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !3813
  ret i1 %23, !dbg !3830
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !3831 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3835, metadata !DIExpression()), !dbg !3836
  %2 = icmp ne i32 %0, 0, !dbg !3837
  %3 = zext i1 %2 to i32, !dbg !3838
  ret i32 %3, !dbg !3839
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3840 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3844, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3845, metadata !DIExpression()), !dbg !3846
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #14, !dbg !3847
  br i1 %3, label %4, label %22, !dbg !3849

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3850
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !3851
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3852
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #15, !dbg !3853
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !3854
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3855
  %11 = load i32, i32* %10, align 4, !dbg !3855
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #14, !dbg !3856
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3857
  %14 = load i32, i32* %13, align 4, !dbg !3857
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #14, !dbg !3858
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3859
  %17 = load i32, i32* %16, align 4, !dbg !3859
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #14, !dbg !3860
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3861
  %20 = load i32, i32* %19, align 4, !dbg !3861
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #14, !dbg !3862
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #15, !dbg !3863
  br label %22, !dbg !3864

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !3846
  ret i32 %23, !dbg !3865
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !3866 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3870, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !3871, metadata !DIExpression()), !dbg !3876
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !3877
  %3 = load i32, i32* %2, align 4, !dbg !3877
  ret i32 %3, !dbg !3878
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !3879 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !3884, metadata !DIExpression()), !dbg !3887
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !3888
  %3 = load i16, i16* %2, align 2, !dbg !3888
  ret i16 %3, !dbg !3889
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !3890 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !3895, metadata !DIExpression()), !dbg !3898
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !3899
  %3 = load i16, i16* %2, align 2, !dbg !3899
  ret i16 %3, !dbg !3900
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !3901 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3905, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !3906, metadata !DIExpression()), !dbg !3909
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !3910
  %3 = load i16, i16* %2, align 2, !dbg !3910
  ret i16 %3, !dbg !3911
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !3912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3916, metadata !DIExpression()), !dbg !3917
  %2 = icmp ult i32 %0, 2, !dbg !3918
  ret i1 %2, !dbg !3919
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !3920 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3924, metadata !DIExpression()), !dbg !3925
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !3926
  br i1 %2, label %3, label %10, !dbg !3928

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3929
  %5 = load i8, i8* %4, align 4, !dbg !3929, !range !2893
  %6 = icmp eq i8 %5, 0, !dbg !3931
  br i1 %6, label %10, label %7, !dbg !3932

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #15, !dbg !3933
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !3934, !range !3798
  tail call void @uart_query_empty(i32 noundef %9) #15, !dbg !3935
  tail call void @uart_reset_default_value(i32 noundef %9) #15, !dbg !3936
  br label %10, !dbg !3937

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !3925
  ret i32 %11, !dbg !3938
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3939 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3943, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i8 %1, metadata !3944, metadata !DIExpression()), !dbg !3946
  %3 = icmp eq i32 %0, 0, !dbg !3947
  %4 = icmp eq i32 %0, 1, !dbg !3947
  %5 = select i1 %4, i32 1, i32 2, !dbg !3947
  %6 = select i1 %3, i32 0, i32 %5, !dbg !3947
  call void @llvm.dbg.value(metadata i32 %6, metadata !3945, metadata !DIExpression()), !dbg !3946
  %7 = icmp eq i32 %6, 2, !dbg !3948
  br i1 %7, label %9, label %8, !dbg !3950

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #15, !dbg !3951
  br label %9, !dbg !3953

9:                                                ; preds = %2, %8
  ret void, !dbg !3954
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3955 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3959, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i8* %1, metadata !3960, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 %2, metadata !3961, metadata !DIExpression()), !dbg !3964
  %4 = icmp eq i32 %0, 0, !dbg !3965
  %5 = icmp eq i32 %0, 1, !dbg !3965
  %6 = select i1 %5, i32 1, i32 2, !dbg !3965
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3965
  call void @llvm.dbg.value(metadata i32 %7, metadata !3962, metadata !DIExpression()), !dbg !3964
  %8 = icmp eq i8* %1, null, !dbg !3966
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !3968
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3968
  call void @llvm.dbg.value(metadata i32 0, metadata !3963, metadata !DIExpression()), !dbg !3964
  br i1 %12, label %19, label %13, !dbg !3968

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3963, metadata !DIExpression()), !dbg !3964
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !3969
  %16 = load i8, i8* %15, align 1, !dbg !3969
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #15, !dbg !3975
  %17 = add nuw i32 %14, 1, !dbg !3976
  call void @llvm.dbg.value(metadata i32 %17, metadata !3963, metadata !DIExpression()), !dbg !3964
  %18 = icmp eq i32 %17, %2, !dbg !3977
  br i1 %18, label %19, label %13, !dbg !3978, !llvm.loop !3979

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !3964
  ret i32 %20, !dbg !3981
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3982 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3984, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i8* %1, metadata !3985, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 %2, metadata !3986, metadata !DIExpression()), !dbg !3991
  %5 = bitcast i32* %4 to i8*, !dbg !3992
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !3992
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !3993
  br i1 %6, label %7, label %24, !dbg !3995

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !3996
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !3998
  br i1 %10, label %24, label %11, !dbg !3998

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !3999
  %13 = load i8, i8* %12, align 4, !dbg !3999, !range !2893
  %14 = icmp eq i8 %13, 0, !dbg !3999
  br i1 %14, label %24, label %15, !dbg !4001

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4002, !range !3798
  call void @llvm.dbg.value(metadata i32* %4, metadata !3987, metadata !DIExpression(DW_OP_deref)), !dbg !3991
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !4003
  %17 = load i32, i32* %4, align 4, !dbg !4004
  call void @llvm.dbg.value(metadata i32 %17, metadata !3987, metadata !DIExpression()), !dbg !3991
  %18 = icmp ult i32 %17, %2, !dbg !4006
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !3988, metadata !DIExpression()), !dbg !3991
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #15, !dbg !4007
  %20 = load i32, i32* %4, align 4, !dbg !4008
  call void @llvm.dbg.value(metadata i32 %20, metadata !3987, metadata !DIExpression()), !dbg !3991
  %21 = icmp eq i32 %19, %20, !dbg !4010
  br i1 %21, label %22, label %24, !dbg !4011

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #14, !dbg !4012, !range !4014
  call void @llvm.dbg.value(metadata i32 %23, metadata !3989, metadata !DIExpression()), !dbg !3991
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #15, !dbg !4015
  br label %24, !dbg !4016

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !3991
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4017
  ret i32 %25, !dbg !4017
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !4018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4022, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i1 %1, metadata !4023, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4025
  %3 = icmp eq i32 %0, 0, !dbg !4026
  %4 = select i1 %1, i32 15, i32 14, !dbg !4028
  %5 = select i1 %1, i32 17, i32 16, !dbg !4028
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4028
  call void @llvm.dbg.value(metadata i32 %6, metadata !4024, metadata !DIExpression()), !dbg !4025
  ret i32 %6, !dbg !4029
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4034, metadata !DIExpression()), !dbg !4036
  %2 = icmp eq i32 %0, 0, !dbg !4037
  %3 = icmp eq i32 %0, 1, !dbg !4037
  %4 = select i1 %3, i32 1, i32 2, !dbg !4037
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4037
  call void @llvm.dbg.value(metadata i32 %5, metadata !4035, metadata !DIExpression()), !dbg !4036
  %6 = icmp ult i32 %5, 2, !dbg !4038
  br i1 %6, label %7, label %9, !dbg !4040

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #15, !dbg !4041
  br label %9, !dbg !4043

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4044
  ret i8 %10, !dbg !4045
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4046 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4050, metadata !DIExpression()), !dbg !4052
  %2 = icmp eq i32 %0, 0, !dbg !4053
  %3 = icmp eq i32 %0, 1, !dbg !4053
  %4 = select i1 %3, i32 1, i32 2, !dbg !4053
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4053
  call void @llvm.dbg.value(metadata i32 %5, metadata !4051, metadata !DIExpression()), !dbg !4052
  %6 = icmp ult i32 %5, 2, !dbg !4054
  br i1 %6, label %7, label %9, !dbg !4056

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #15, !dbg !4057
  br label %9, !dbg !4059

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4060
  ret i32 %10, !dbg !4061
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4062 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4066, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i8* %1, metadata !4067, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 %2, metadata !4068, metadata !DIExpression()), !dbg !4071
  %4 = icmp eq i32 %0, 0, !dbg !4072
  %5 = icmp eq i32 %0, 1, !dbg !4072
  %6 = select i1 %5, i32 1, i32 2, !dbg !4072
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4072
  call void @llvm.dbg.value(metadata i32 %7, metadata !4069, metadata !DIExpression()), !dbg !4071
  %8 = icmp eq i8* %1, null, !dbg !4073
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4075
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4075
  call void @llvm.dbg.value(metadata i32 0, metadata !4070, metadata !DIExpression()), !dbg !4071
  br i1 %12, label %19, label %13, !dbg !4075

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4070, metadata !DIExpression()), !dbg !4071
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #15, !dbg !4076
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4082
  store i8 %15, i8* %16, align 1, !dbg !4083
  %17 = add nuw i32 %14, 1, !dbg !4084
  call void @llvm.dbg.value(metadata i32 %17, metadata !4070, metadata !DIExpression()), !dbg !4071
  %18 = icmp eq i32 %17, %2, !dbg !4085
  br i1 %18, label %19, label %13, !dbg !4086, !llvm.loop !4087

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4071
  ret i32 %20, !dbg !4089
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4090 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4092, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %1, metadata !4093, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i32 %2, metadata !4094, metadata !DIExpression()), !dbg !4098
  %5 = bitcast i32* %4 to i8*, !dbg !4099
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4099
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4100
  br i1 %6, label %7, label %20, !dbg !4102

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4103
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4105
  br i1 %10, label %20, label %11, !dbg !4105

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4106, !range !3798
  call void @llvm.dbg.value(metadata i32* %4, metadata !4095, metadata !DIExpression(DW_OP_deref)), !dbg !4098
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #15, !dbg !4107
  %13 = load i32, i32* %4, align 4, !dbg !4108
  call void @llvm.dbg.value(metadata i32 %13, metadata !4095, metadata !DIExpression()), !dbg !4098
  %14 = icmp ult i32 %13, %2, !dbg !4110
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #15, !dbg !4111
  %16 = load i32, i32* %4, align 4, !dbg !4112
  call void @llvm.dbg.value(metadata i32 %16, metadata !4095, metadata !DIExpression()), !dbg !4098
  %17 = icmp eq i32 %15, %16, !dbg !4114
  br i1 %17, label %18, label %20, !dbg !4115

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4116, !range !4014
  call void @llvm.dbg.value(metadata i32 %19, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #15, !dbg !4118
  br label %20, !dbg !4119

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4098
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4120
  ret i32 %21, !dbg !4120
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4121 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4123, metadata !DIExpression()), !dbg !4125
  %3 = bitcast i32* %2 to i8*, !dbg !4126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4126
  call void @llvm.dbg.value(metadata i32 0, metadata !4124, metadata !DIExpression()), !dbg !4125
  store i32 0, i32* %2, align 4, !dbg !4127
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4128
  br i1 %4, label %5, label %8, !dbg !4130

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4131, !range !3798
  call void @llvm.dbg.value(metadata i32* %2, metadata !4124, metadata !DIExpression(DW_OP_deref)), !dbg !4125
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #15, !dbg !4132
  %7 = load i32, i32* %2, align 4, !dbg !4133
  call void @llvm.dbg.value(metadata i32 %7, metadata !4124, metadata !DIExpression()), !dbg !4125
  br label %8, !dbg !4134

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4135
  ret i32 %9, !dbg !4135
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4136 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4138, metadata !DIExpression()), !dbg !4140
  %3 = bitcast i32* %2 to i8*, !dbg !4141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4141
  call void @llvm.dbg.value(metadata i32 0, metadata !4139, metadata !DIExpression()), !dbg !4140
  store i32 0, i32* %2, align 4, !dbg !4142
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4143
  br i1 %4, label %5, label %8, !dbg !4145

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4146, !range !3798
  call void @llvm.dbg.value(metadata i32* %2, metadata !4139, metadata !DIExpression(DW_OP_deref)), !dbg !4140
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #15, !dbg !4147
  %7 = load i32, i32* %2, align 4, !dbg !4148
  call void @llvm.dbg.value(metadata i32 %7, metadata !4139, metadata !DIExpression()), !dbg !4140
  br label %8, !dbg !4149

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #16, !dbg !4150
  ret i32 %9, !dbg !4150
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4151 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4155, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4156, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i8* %2, metadata !4157, metadata !DIExpression()), !dbg !4159
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4160
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4162
  br i1 %6, label %7, label %18, !dbg !4162

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4163
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4164
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4165
  store i8* %2, i8** %9, align 4, !dbg !4166
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4167
  store i8 1, i8* %10, align 4, !dbg !4168
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4169
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #14, !dbg !4170
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4171
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #15, !dbg !4172
  %13 = icmp eq i32 %11, 0, !dbg !4173
  br i1 %13, label %14, label %15, !dbg !4175

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #15, !dbg !4176
  br label %16, !dbg !4178

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #15, !dbg !4179
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #14, !dbg !4181, !range !4014
  call void @llvm.dbg.value(metadata i32 %17, metadata !4158, metadata !DIExpression()), !dbg !4159
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #15, !dbg !4182
  br label %18, !dbg !4183

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4159
  ret i32 %19, !dbg !4184
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !389 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !398, metadata !DIExpression()), !dbg !4185
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4186
  %3 = load void ()*, void ()** %2, align 4, !dbg !4186
  ret void ()* %3, !dbg !4187
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !4188 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4194, !range !2893
  %2 = icmp eq i8 %1, 0, !dbg !4194
  br i1 %2, label %8, label %3, !dbg !4195

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4196
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4198
  br i1 %5, label %8, label %6, !dbg !4199

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4200
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !4202
  br label %8, !dbg !4203

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4204, !range !3798
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4205
  ret void, !dbg !4206
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !4207 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4212, !range !2893
  %2 = icmp eq i8 %1, 0, !dbg !4212
  br i1 %2, label %8, label %3, !dbg !4213

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4214
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4216
  br i1 %5, label %8, label %6, !dbg !4217

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4218
  tail call void %4(i32 noundef 2, i8* noundef %7) #15, !dbg !4220
  br label %8, !dbg !4221

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4222, !range !3798
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #14, !dbg !4223
  ret void, !dbg !4224
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !4225 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4229, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i1 %1, metadata !4230, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4236
  %5 = bitcast i32* %3 to i8*, !dbg !4237
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4237
  %6 = bitcast i32* %4 to i8*, !dbg !4237
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #16, !dbg !4237
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4233, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4236
  br i1 %1, label %7, label %12, !dbg !4238

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4233, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4236
  call void @llvm.dbg.value(metadata i32* %3, metadata !4231, metadata !DIExpression(DW_OP_deref)), !dbg !4236
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #15, !dbg !4239
  %8 = load i32, i32* %3, align 4, !dbg !4242
  call void @llvm.dbg.value(metadata i32 %8, metadata !4231, metadata !DIExpression()), !dbg !4236
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4244
  %10 = load i32, i32* %9, align 4, !dbg !4244
  %11 = icmp ult i32 %8, %10, !dbg !4245
  br i1 %11, label %22, label %20, !dbg !4246

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4232, metadata !DIExpression(DW_OP_deref)), !dbg !4236
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #15, !dbg !4247
  %13 = load i32, i32* %4, align 4, !dbg !4249
  call void @llvm.dbg.value(metadata i32 %13, metadata !4232, metadata !DIExpression()), !dbg !4236
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4251
  %15 = load i32, i32* %14, align 4, !dbg !4251
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4252
  %17 = load i32, i32* %16, align 4, !dbg !4252
  %18 = sub i32 %15, %17, !dbg !4253
  %19 = icmp ult i32 %13, %18, !dbg !4254
  br i1 %19, label %22, label %20, !dbg !4255

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #14, !dbg !4256, !range !4014
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #15, !dbg !4256
  br label %22, !dbg !4257

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #16, !dbg !4257
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #16, !dbg !4257
  ret void, !dbg !4257
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !4258 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4263, !range !2893
  %2 = icmp eq i8 %1, 0, !dbg !4263
  br i1 %2, label %11, label %3, !dbg !4264

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #14, !dbg !4265
  %5 = icmp eq i32 %4, 0, !dbg !4266
  br i1 %5, label %11, label %6, !dbg !4267

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4268
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4270
  br i1 %8, label %11, label %9, !dbg !4271

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4272
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !4274
  br label %11, !dbg !4275

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #14, !dbg !4276, !range !3798
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4277
  ret void, !dbg !4278
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !4279 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4284, !range !2893
  %2 = icmp eq i8 %1, 0, !dbg !4284
  br i1 %2, label %11, label %3, !dbg !4285

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #14, !dbg !4286
  %5 = icmp eq i32 %4, 0, !dbg !4287
  br i1 %5, label %11, label %6, !dbg !4288

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4289
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4291
  br i1 %8, label %11, label %9, !dbg !4292

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4293
  tail call void %7(i32 noundef 1, i8* noundef %10) #15, !dbg !4295
  br label %11, !dbg !4296

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #14, !dbg !4297, !range !3798
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #14, !dbg !4298
  ret void, !dbg !4299
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4300 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4304, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 %1, metadata !4305, metadata !DIExpression()), !dbg !4306
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4307
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4309
  br i1 %5, label %6, label %10, !dbg !4309

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4310
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4311
  store i32 %1, i32* %8, align 4, !dbg !4312
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #14, !dbg !4313
  br label %10, !dbg !4314

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4306
  ret i32 %11, !dbg !4315
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !4316 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4322, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4323, metadata !DIExpression()), !dbg !4324
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4325
  br i1 %3, label %4, label %28, !dbg !4327

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #14, !dbg !4328
  br i1 %5, label %6, label %28, !dbg !4330

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4331
  store i8 1, i8* %7, align 4, !dbg !4332
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4333
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4334
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4335
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #15, !dbg !4336
  tail call void @DMA_Init() #15, !dbg !4337
  tail call void @DMA_Vfifo_init() #15, !dbg !4338
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #14, !dbg !4339
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4340
  %14 = load i8*, i8** %13, align 4, !dbg !4340
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4341
  %16 = load i32, i32* %15, align 4, !dbg !4341
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4342
  %18 = load i32, i32* %17, align 4, !dbg !4342
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4343
  %20 = load i32, i32* %19, align 4, !dbg !4343
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #14, !dbg !4344
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #15, !dbg !4345
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4346
  %23 = load i8*, i8** %22, align 4, !dbg !4346
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4347
  %25 = load i32, i32* %24, align 4, !dbg !4347
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4348
  %27 = load i32, i32* %26, align 4, !dbg !4348
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #15, !dbg !4349
  br label %28, !dbg !4350

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4324
  ret i32 %29, !dbg !4351
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #4 !dbg !4352 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4356, metadata !DIExpression()), !dbg !4357
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4358
  br i1 %2, label %27, label %3, !dbg !4360

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4361
  %5 = load i8*, i8** %4, align 4, !dbg !4361
  %6 = icmp eq i8* %5, null, !dbg !4363
  br i1 %6, label %27, label %7, !dbg !4364

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4365
  %9 = load i32, i32* %8, align 4, !dbg !4365
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4367
  %11 = load i32, i32* %10, align 4, !dbg !4367
  %12 = icmp ult i32 %9, %11, !dbg !4368
  br i1 %12, label %27, label %13, !dbg !4369

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4370
  %15 = load i32, i32* %14, align 4, !dbg !4370
  %16 = icmp ult i32 %9, %15, !dbg !4372
  br i1 %16, label %27, label %17, !dbg !4373

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4374
  %19 = load i8*, i8** %18, align 4, !dbg !4374
  %20 = icmp eq i8* %19, null, !dbg !4376
  br i1 %20, label %27, label %21, !dbg !4377

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4378
  %23 = load i32, i32* %22, align 4, !dbg !4378
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4380
  %25 = load i32, i32* %24, align 4, !dbg !4380
  %26 = icmp uge i32 %23, %25, !dbg !4381
  br label %27, !dbg !4382

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4357
  ret i1 %28, !dbg !4383
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !4384 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4388, metadata !DIExpression()), !dbg !4390
  %2 = tail call i32 @top_mcu_freq_get() #15, !dbg !4391
  %3 = udiv i32 %2, 1000000, !dbg !4392
  call void @llvm.dbg.value(metadata i32 %3, metadata !4389, metadata !DIExpression()), !dbg !4390
  %4 = mul i32 %3, %0, !dbg !4393
  ret i32 %4, !dbg !4394
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4395 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4397, metadata !DIExpression()), !dbg !4399
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4400
  br i1 %2, label %3, label %8, !dbg !4402

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4403
  %5 = icmp eq i32 %0, 1, !dbg !4403
  %6 = select i1 %5, i32 1, i32 2, !dbg !4403
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %7, metadata !4398, metadata !DIExpression()), !dbg !4399
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #15, !dbg !4404
  br label %8, !dbg !4405

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4399
  ret i32 %9, !dbg !4406
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !4407 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4411, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i8 %1, metadata !4412, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i8 %2, metadata !4413, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i8 %3, metadata !4414, metadata !DIExpression()), !dbg !4416
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4417
  br i1 %5, label %6, label %11, !dbg !4419

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4420
  %8 = icmp eq i32 %0, 1, !dbg !4420
  %9 = select i1 %8, i32 1, i32 2, !dbg !4420
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4420
  call void @llvm.dbg.value(metadata i32 %10, metadata !4415, metadata !DIExpression()), !dbg !4416
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #15, !dbg !4421
  br label %11, !dbg !4422

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4416
  ret i32 %12, !dbg !4423
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4424 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4426, metadata !DIExpression()), !dbg !4428
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4429
  br i1 %2, label %3, label %8, !dbg !4431

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4432
  %5 = icmp eq i32 %0, 1, !dbg !4432
  %6 = select i1 %5, i32 1, i32 2, !dbg !4432
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4432
  call void @llvm.dbg.value(metadata i32 %7, metadata !4427, metadata !DIExpression()), !dbg !4428
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #15, !dbg !4433
  br label %8, !dbg !4434

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4428
  ret i32 %9, !dbg !4435
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4440, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %1, metadata !4441, metadata !DIExpression()), !dbg !4442
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #14, !dbg !4443
  br i1 %3, label %4, label %8, !dbg !4445

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4446
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #14, !dbg !4448
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #15, !dbg !4448
  br label %8, !dbg !4449

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4442
  ret i32 %9, !dbg !4449
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !4450 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4454, metadata !DIExpression()), !dbg !4455
  %2 = trunc i32 %0 to i8, !dbg !4456
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #15, !dbg !4457
  ret i32 %0, !dbg !4458
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #12 !dbg !4459 {
  tail call fastcc void @SystemClock_Config() #14, !dbg !4460
  tail call fastcc void @prvSetupHardware() #14, !dbg !4461
  tail call void asm sideeffect "cpsie i", "~{memory}"() #16, !dbg !4462, !srcloc !4465
  tail call void asm sideeffect "cpsie f", "~{memory}"() #16, !dbg !4466, !srcloc !4469
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #15, !dbg !4470
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.8, i32 0, i32 0)) #15, !dbg !4471
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)) #15, !dbg !4472
  tail call fastcc void @spi_slave_transfer_data_two_boards_example() #14, !dbg !4473
  br label %4, !dbg !4474

4:                                                ; preds = %0, %4
  br label %4, !dbg !4474, !llvm.loop !4475
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !4477 {
  tail call void @top_xtal_init() #15, !dbg !4478
  ret void, !dbg !4479
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !4480 {
  tail call fastcc void @plain_log_uart_init() #14, !dbg !4481
  ret void, !dbg !4482
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc void @spi_slave_transfer_data_two_boards_example() unnamed_addr #3 !dbg !4483 {
  %1 = alloca %struct.hal_cache_region_config_t, align 4
  %2 = bitcast %struct.hal_cache_region_config_t* %1 to i8*, !dbg !4491
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #16, !dbg !4491
  call void @llvm.dbg.declare(metadata %struct.hal_cache_region_config_t* %1, metadata !4485, metadata !DIExpression()), !dbg !4492
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2.9, i32 0, i32 0)) #15, !dbg !4493
  %4 = tail call i32 @hal_gpio_init(i32 noundef 32) #15, !dbg !4494
  %5 = tail call i32 @hal_gpio_init(i32 noundef 31) #15, !dbg !4495
  %6 = tail call i32 @hal_gpio_init(i32 noundef 29) #15, !dbg !4496
  %7 = tail call i32 @hal_gpio_init(i32 noundef 30) #15, !dbg !4497
  %8 = tail call i32 @hal_pinmux_set_function(i32 noundef 32, i8 noundef zeroext 6) #15, !dbg !4498
  %9 = tail call i32 @hal_pinmux_set_function(i32 noundef 31, i8 noundef zeroext 6) #15, !dbg !4499
  %10 = tail call i32 @hal_pinmux_set_function(i32 noundef 29, i8 noundef zeroext 6) #15, !dbg !4500
  %11 = tail call i32 @hal_pinmux_set_function(i32 noundef 30, i8 noundef zeroext 6) #15, !dbg !4501
  %12 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !4502
  store i32 0, i32* %12, align 4, !dbg !4503
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !4504
  store i32 0, i32* %13, align 4, !dbg !4505
  %14 = call i32 @hal_spi_slave_init(i32 noundef 0, %struct.hal_cache_region_config_t* noundef nonnull %1) #15, !dbg !4506
  %15 = icmp eq i32 %14, 0, !dbg !4508
  br i1 %15, label %16, label %32, !dbg !4509

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #15, !dbg !4510
  %18 = call i32 @hal_spi_slave_register_callback(i32 noundef 0, void (i8*)* noundef nonnull @spis_user_callback, i8* noundef null) #15, !dbg !4512
  %19 = icmp eq i32 %18, 0, !dbg !4514
  br i1 %19, label %20, label %32, !dbg !4515

20:                                               ; preds = %16
  %21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i32 0, i32 0)) #15, !dbg !4516
  %22 = call i8* @memset(i8* noundef getelementptr inbounds ([20488 x i8], [20488 x i8]* @slaver_data_buffer, i32 0, i32 0), i32 noundef 0, i32 noundef 20488) #15, !dbg !4518
  store volatile i8 0, i8* @transfer_data_finished, align 1, !dbg !4519
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7.10, i32 0, i32 0)) #15, !dbg !4520
  br label %24, !dbg !4521

24:                                               ; preds = %24, %20
  %25 = load volatile i8, i8* @transfer_data_finished, align 1, !dbg !4522, !range !2893
  %26 = icmp eq i8 %25, 0, !dbg !4523
  br i1 %26, label %24, label %27, !dbg !4521, !llvm.loop !4524

27:                                               ; preds = %24
  %28 = call i32 @hal_gpio_deinit(i32 noundef 32) #15, !dbg !4526
  %29 = call i32 @hal_gpio_deinit(i32 noundef 31) #15, !dbg !4527
  %30 = call i32 @hal_gpio_deinit(i32 noundef 29) #15, !dbg !4528
  %31 = call i32 @hal_gpio_deinit(i32 noundef 30) #15, !dbg !4529
  br label %32, !dbg !4530

32:                                               ; preds = %16, %0, %27
  %33 = phi i8* [ getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0), %27 ], [ getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), %0 ], [ getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), %16 ]
  %34 = call i32 (i8*, ...) @printf(i8* noundef %33) #15, !dbg !4531
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #16, !dbg !4530
  ret void, !dbg !4530
}

; Function Attrs: noinline nounwind optsize
define internal void @spis_user_callback(i8* nocapture noundef readnone %0) #3 !dbg !4532 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4534, metadata !DIExpression()), !dbg !4537
  %2 = load i8, i8* getelementptr inbounds ([20488 x i8], [20488 x i8]* @slaver_data_buffer, i32 0, i32 0), align 1, !dbg !4538
  switch i8 %2, label %23 [
    i8 85, label %3
    i8 -86, label %5
    i8 10, label %16
    i8 -96, label %22
  ], !dbg !4539

3:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32* bitcast (i8* getelementptr inbounds ([20488 x i8], [20488 x i8]* @slaver_data_buffer, i32 0, i32 8) to i32*), metadata !4535, metadata !DIExpression()), !dbg !4537
  %4 = tail call i8* @memset(i8* noundef getelementptr inbounds ([20488 x i8], [20488 x i8]* @slaver_data_buffer, i32 0, i32 8), i32 noundef 0, i32 noundef 20480) #15, !dbg !4540
  tail call fastcc void @spis_notice_spim() #14, !dbg !4542
  br label %25, !dbg !4543

5:                                                ; preds = %1, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4536, metadata !DIExpression()), !dbg !4537
  %7 = getelementptr inbounds i32, i32* bitcast (i8* getelementptr inbounds ([20488 x i8], [20488 x i8]* @slaver_data_buffer, i32 0, i32 8) to i32*), i32 %6, !dbg !4544
  %8 = load i32, i32* %7, align 4, !dbg !4544
  %9 = icmp eq i32 %8, 19088743, !dbg !4549
  br i1 %9, label %12, label %10, !dbg !4550

10:                                               ; preds = %5
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0), i32 noundef %6, i32 noundef %8) #15, !dbg !4551
  br label %25, !dbg !4553

12:                                               ; preds = %5
  %13 = add nuw nsw i32 %6, 1, !dbg !4554
  call void @llvm.dbg.value(metadata i32 %13, metadata !4536, metadata !DIExpression()), !dbg !4537
  %14 = icmp eq i32 %13, 5120, !dbg !4555
  br i1 %14, label %15, label %5, !dbg !4556, !llvm.loop !4557

15:                                               ; preds = %12
  tail call fastcc void @spis_notice_spim() #14, !dbg !4559
  br label %25, !dbg !4560

16:                                               ; preds = %1, %16
  %17 = phi i32 [ %19, %16 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !4536, metadata !DIExpression()), !dbg !4537
  %18 = getelementptr inbounds i32, i32* bitcast (i8* getelementptr inbounds ([20488 x i8], [20488 x i8]* @slaver_data_buffer, i32 0, i32 8) to i32*), i32 %17, !dbg !4561
  store i32 -1985229329, i32* %18, align 4, !dbg !4565
  %19 = add nuw nsw i32 %17, 1, !dbg !4566
  call void @llvm.dbg.value(metadata i32 %19, metadata !4536, metadata !DIExpression()), !dbg !4537
  %20 = icmp eq i32 %19, 5120, !dbg !4567
  br i1 %20, label %21, label %16, !dbg !4568, !llvm.loop !4569

21:                                               ; preds = %16
  tail call fastcc void @spis_notice_spim() #14, !dbg !4571
  br label %25, !dbg !4572

22:                                               ; preds = %1
  store volatile i8 1, i8* @transfer_data_finished, align 1, !dbg !4573
  br label %25, !dbg !4574

23:                                               ; preds = %1
  %24 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0)) #15, !dbg !4575
  br label %25, !dbg !4576

25:                                               ; preds = %3, %15, %21, %22, %23, %10
  ret void, !dbg !4577
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define internal fastcc void @spis_notice_spim() unnamed_addr #13 !dbg !4578 {
  store i8 90, i8* getelementptr inbounds ([20488 x i8], [20488 x i8]* @slaver_data_buffer, i32 0, i32 4), align 1, !dbg !4579
  ret void, !dbg !4580
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @plain_log_uart_init() unnamed_addr #3 !dbg !4581 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4591
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #16, !dbg !4591
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4583, metadata !DIExpression()), !dbg !4592
  %3 = tail call i32 @hal_gpio_init(i32 noundef 2) #15, !dbg !4593
  %4 = tail call i32 @hal_gpio_init(i32 noundef 3) #15, !dbg !4594
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #15, !dbg !4595
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #15, !dbg !4596
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4597
  store i32 9, i32* %7, align 4, !dbg !4598
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4599
  store i32 3, i32* %8, align 4, !dbg !4600
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4601
  store i32 0, i32* %9, align 4, !dbg !4602
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4603
  store i32 0, i32* %10, align 4, !dbg !4604
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #15, !dbg !4605
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #16, !dbg !4606
  ret void, !dbg !4606
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !4607 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4609, metadata !DIExpression()), !dbg !4611
  %2 = add i32 %0, -1, !dbg !4612
  %3 = icmp ugt i32 %2, 16777215, !dbg !4614
  br i1 %3, label %8, label %4, !dbg !4615

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4616
  call void @llvm.dbg.value(metadata i32 %5, metadata !4610, metadata !DIExpression()), !dbg !4611
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4617
  %7 = and i32 %6, -4, !dbg !4617
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4617
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4618
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4619
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4620
  br label %8, !dbg !4621

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4611
  ret i32 %9, !dbg !4622
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !4623 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4624
  ret void, !dbg !4625
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !4626 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4627
  ret i32 %1, !dbg !4628
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !4629 {
  %1 = tail call i32 @top_mcu_freq_get() #15, !dbg !4630
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4631
  ret void, !dbg !4632
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !4633 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4634
  %2 = or i32 %1, 15728640, !dbg !4634
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4634
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4635
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4636
  %4 = or i32 %3, 458752, !dbg !4636
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4636
  ret void, !dbg !4637
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !4638 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4639
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4640
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4641
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4642
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !4643
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4644
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4645
  ret void, !dbg !4646
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !4647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4649, metadata !DIExpression()), !dbg !4650
  ret i32 0, !dbg !4651
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !4652 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4702, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !4703, metadata !DIExpression()), !dbg !4704
  ret i32 0, !dbg !4705
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !4706 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4708, metadata !DIExpression()), !dbg !4709
  ret i32 1, !dbg !4710
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4715, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.value(metadata i32 %1, metadata !4716, metadata !DIExpression()), !dbg !4718
  call void @llvm.dbg.value(metadata i32 %2, metadata !4717, metadata !DIExpression()), !dbg !4718
  ret i32 0, !dbg !4719
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4720 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4724, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i32 %1, metadata !4725, metadata !DIExpression()), !dbg !4727
  call void @llvm.dbg.value(metadata i32 %2, metadata !4726, metadata !DIExpression()), !dbg !4727
  ret i32 -1, !dbg !4728
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4733, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i8* %1, metadata !4734, metadata !DIExpression()), !dbg !4736
  call void @llvm.dbg.value(metadata i32 %2, metadata !4735, metadata !DIExpression()), !dbg !4736
  ret i32 0, !dbg !4737
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !4738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4740, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i8* %1, metadata !4741, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 %2, metadata !4742, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i32 0, metadata !4743, metadata !DIExpression()), !dbg !4744
  %4 = icmp sgt i32 %2, 0, !dbg !4745
  br i1 %4, label %5, label %14, !dbg !4748

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4743, metadata !DIExpression()), !dbg !4744
  call void @llvm.dbg.value(metadata i8* %7, metadata !4741, metadata !DIExpression()), !dbg !4744
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !4749
  call void @llvm.dbg.value(metadata i8* %8, metadata !4741, metadata !DIExpression()), !dbg !4744
  %9 = load i8, i8* %7, align 1, !dbg !4751
  %10 = zext i8 %9 to i32, !dbg !4751
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #15, !dbg !4752
  %12 = add nuw nsw i32 %6, 1, !dbg !4753
  call void @llvm.dbg.value(metadata i32 %12, metadata !4743, metadata !DIExpression()), !dbg !4744
  %13 = icmp eq i32 %12, %2, !dbg !4745
  br i1 %13, label %14, label %5, !dbg !4748, !llvm.loop !4754

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !4756
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !548 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !751, metadata !DIExpression()), !dbg !4757
  call void @llvm.dbg.value(metadata i32 %1, metadata !752, metadata !DIExpression()), !dbg !4757
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #16, !dbg !4758, !srcloc !4759
  call void @llvm.dbg.value(metadata i8* %3, metadata !754, metadata !DIExpression()), !dbg !4757
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !4760
  %5 = icmp eq i8* %4, null, !dbg !4762
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !4763
  call void @llvm.dbg.value(metadata i8* %6, metadata !753, metadata !DIExpression()), !dbg !4757
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !4764
  %8 = icmp ult i8* %3, %7, !dbg !4766
  %9 = xor i1 %8, true, !dbg !4767
  %10 = or i1 %5, %9, !dbg !4767
  br i1 %10, label %11, label %13, !dbg !4767

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !4768
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !4767
  br label %13, !dbg !4767

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !4768
  ret i8* %14, !dbg !4767
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #12 !dbg !4769 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4771, metadata !DIExpression()), !dbg !4772
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #15, !dbg !4773
  br label %3, !dbg !4774

3:                                                ; preds = %1, %3
  br label %3, !dbg !4774, !llvm.loop !4775
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4781, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i32 %1, metadata !4782, metadata !DIExpression()), !dbg !4783
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.18, i32 0, i32 0), i32 noundef %1) #15, !dbg !4784
  ret i32 -1, !dbg !4785
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !4786 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.19, i32 0, i32 0)) #15, !dbg !4791
  ret i32 0, !dbg !4792
}

attributes #0 = { nofree noinline norecurse nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #3 = { noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #5 = { nofree noinline nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
attributes #7 = { optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #8 = { nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #10 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #12 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { nobuiltin optsize "no-builtins" }
attributes #15 = { nobuiltin nounwind optsize "no-builtins" }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!771, !783, !864, !909, !2, !23, !943, !61, !147, !945, !297, !332, !445, !488, !746, !757}
!llvm.ident = !{!985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985, !985}
!llvm.module.flags = !{!986, !987, !988, !989, !990, !991, !992, !993, !994}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !2, file: !3, line: 43, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!4 = !{!5, !8, !10, !16}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !9, line: 62, baseType: !7)
!9 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
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
!24 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!25 = !{!26, !32}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 71, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "UART_PORT0", value: 0)
!30 = !DIEnumerator(name: "UART_PORT1", value: 1)
!31 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 129, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
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
!62 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!63 = !{!64, !76, !95, !102}
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 163, baseType: !66, size: 32, elements: !67)
!65 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
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
!103 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
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
!114 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
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
!148 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!149 = !{!150, !158}
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !151, line: 152, baseType: !66, size: 32, elements: !152)
!151 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!152 = !{!153, !154, !155, !156, !157}
!153 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!154 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!155 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!156 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!157 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !159, line: 47, baseType: !66, size: 32, elements: !160)
!159 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
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
!210 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
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
!296 = distinct !DIGlobalVariable(name: "g_spis_callback", scope: !297, file: !298, line: 42, type: !326, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !299, retainedTypes: !321, globals: !323, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_spi_slave.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!299 = !{!300, !308, !313, !317, !158}
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 528, baseType: !66, size: 32, elements: !302)
!301 = !DIFile(filename: "../../../../../driver/chip/inc/hal_spi_slave.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!302 = !{!303, !304, !305, !306, !307}
!303 = !DIEnumerator(name: "HAL_SPI_SLAVE_STATUS_ERROR", value: -4)
!304 = !DIEnumerator(name: "HAL_SPI_SLAVE_STATUS_ERROR_BUSY", value: -3)
!305 = !DIEnumerator(name: "HAL_SPI_SLAVE_STATUS_ERROR_PORT", value: -2)
!306 = !DIEnumerator(name: "HAL_SPI_SLAVE_STATUS_INVALID_PARAMETER", value: -1)
!307 = !DIEnumerator(name: "HAL_SPI_SLAVE_STATUS_OK", value: 0)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 518, baseType: !7, size: 32, elements: !310)
!309 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!310 = !{!311, !312}
!311 = !DIEnumerator(name: "HAL_SPI_SLAVE_0", value: 0)
!312 = !DIEnumerator(name: "HAL_SPI_SLAVE_MAX", value: 1)
!313 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 524, baseType: !7, size: 32, elements: !314)
!314 = !{!315, !316}
!315 = !DIEnumerator(name: "HAL_SPI_SLAVE_CLOCK_POLARITY0", value: 0)
!316 = !DIEnumerator(name: "HAL_SPI_SLAVE_CLOCK_POLARITY1", value: 1)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 531, baseType: !7, size: 32, elements: !318)
!318 = !{!319, !320}
!319 = !DIEnumerator(name: "HAL_SPI_SLAVE_CLOCK_PHASE0", value: 0)
!320 = !DIEnumerator(name: "HAL_SPI_SLAVE_CLOCK_PHASE1", value: 1)
!321 = !{!322, !12, !141}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!323 = !{!295, !324}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "g_spis_user_data", scope: !297, file: !298, line: 43, type: !141, isLocal: true, isDefinition: true)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_slave_callback_t", file: !301, line: 590, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 32)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !141}
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !332, file: !333, line: 77, type: !401, isLocal: true, isDefinition: true)
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !334, retainedTypes: !384, globals: !386, splitDebugInlining: false, nameTableKind: None)
!333 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!334 = !{!335, !343, !348, !364, !370, !374, !26, !32, !379}
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 345, baseType: !66, size: 32, elements: !337)
!336 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!337 = !{!338, !339, !340, !341, !342}
!338 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!339 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!340 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!341 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!342 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 109, baseType: !7, size: 32, elements: !344)
!344 = !{!345, !346, !347}
!345 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!346 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!347 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 302, baseType: !7, size: 32, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363}
!350 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!351 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!352 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!353 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!354 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!355 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!356 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!357 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!358 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!359 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!360 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!361 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!362 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!363 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 321, baseType: !7, size: 32, elements: !365)
!365 = !{!366, !367, !368, !369}
!366 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!367 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!368 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!369 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 330, baseType: !7, size: 32, elements: !371)
!371 = !{!372, !373}
!372 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!373 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 337, baseType: !7, size: 32, elements: !375)
!375 = !{!376, !377, !378}
!376 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!377 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!378 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!379 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !336, line: 355, baseType: !66, size: 32, elements: !380)
!380 = !{!381, !382, !383}
!381 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!382 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!383 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!384 = !{!7, !141, !55, !385, !235}
!385 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !{!330, !387}
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "func_tbl", scope: !389, file: !333, line: 536, type: !399, isLocal: true, isDefinition: true)
!389 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !333, file: !333, line: 534, type: !390, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !397)
!390 = !DISubroutineType(types: !391)
!391 = !{!392, !396}
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !33, line: 197, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 32)
!394 = !DISubroutineType(types: !395)
!395 = !{null}
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !309, line: 113, baseType: !343)
!397 = !{!398}
!398 = !DILocalVariable(name: "uart_port", arg: 1, scope: !389, file: !333, line: 534, type: !396)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 64, elements: !268)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 1024, elements: !268)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !333, line: 75, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 68, size: 512, elements: !404)
!404 = !{!405, !406, !418, !419, !430, !431}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !403, file: !333, line: 69, baseType: !144, size: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !403, file: !333, line: 70, baseType: !407, size: 128, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !336, line: 378, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 373, size: 128, elements: !409)
!409 = !{!410, !412, !414, !416}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !408, file: !336, line: 374, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !336, line: 317, baseType: !348)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !408, file: !336, line: 375, baseType: !413, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !336, line: 326, baseType: !364)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !408, file: !336, line: 376, baseType: !415, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !336, line: 333, baseType: !370)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !408, file: !336, line: 377, baseType: !417, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !336, line: 341, baseType: !374)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !403, file: !333, line: 71, baseType: !144, size: 8, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !403, file: !333, line: 72, baseType: !420, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !333, line: 66, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 63, size: 64, elements: !422)
!422 = !{!423, !429}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !421, file: !333, line: 64, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !336, line: 410, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 32)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428, !141}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !336, line: 359, baseType: !379)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !421, file: !333, line: 65, baseType: !141, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !403, file: !333, line: 73, baseType: !144, size: 8, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !403, file: !333, line: 74, baseType: !432, size: 224, offset: 288)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !336, line: 390, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 382, size: 224, elements: !434)
!434 = !{!435, !437, !438, !439, !440, !441, !442}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !433, file: !336, line: 383, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !433, file: !336, line: 384, baseType: !12, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !433, file: !336, line: 385, baseType: !12, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !433, file: !336, line: 386, baseType: !436, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !433, file: !336, line: 387, baseType: !12, size: 32, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !433, file: !336, line: 388, baseType: !12, size: 32, offset: 160)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !433, file: !336, line: 389, baseType: !12, size: 32, offset: 192)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "slaver_data_buffer", scope: !445, file: !446, line: 91, type: !483, isLocal: true, isDefinition: true)
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !447, retainedTypes: !479, globals: !480, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_slave_from_master/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!447 = !{!343, !348, !364, !370, !374, !448, !313, !317, !300, !308}
!448 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 249, baseType: !7, size: 32, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!450 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!451 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!452 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!453 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!454 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!455 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!456 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!457 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!458 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!459 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!460 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!461 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!462 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!463 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!464 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!465 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!466 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!467 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!468 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!469 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!470 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!471 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!472 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!473 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!474 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!475 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!476 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!477 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!478 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!479 = !{!141, !322, !66, !7}
!480 = !{!443, !481}
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "transfer_data_finished", scope: !445, file: !446, line: 70, type: !143, isLocal: true, isDefinition: true)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 163904, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 20488)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !488, file: !489, line: 59, type: !12, isLocal: false, isDefinition: true)
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !490, globals: !543, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_slave_from_master/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!490 = !{!491, !499, !524}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !210, line: 656, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 650, size: 128, elements: !494)
!494 = !{!495, !496, !497, !498}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !493, file: !210, line: 652, baseType: !11, size: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !493, file: !210, line: 653, baseType: !11, size: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !493, file: !210, line: 654, baseType: !11, size: 32, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !493, file: !210, line: 655, baseType: !249, size: 32, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !502)
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !501, file: !210, line: 397, baseType: !249, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !501, file: !210, line: 398, baseType: !11, size: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !501, file: !210, line: 399, baseType: !11, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !501, file: !210, line: 400, baseType: !11, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !501, file: !210, line: 401, baseType: !11, size: 32, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !501, file: !210, line: 402, baseType: !11, size: 32, offset: 160)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !501, file: !210, line: 403, baseType: !256, size: 96, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !501, file: !210, line: 404, baseType: !11, size: 32, offset: 288)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !501, file: !210, line: 405, baseType: !11, size: 32, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !501, file: !210, line: 406, baseType: !11, size: 32, offset: 352)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !501, file: !210, line: 407, baseType: !11, size: 32, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !501, file: !210, line: 408, baseType: !11, size: 32, offset: 416)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !501, file: !210, line: 409, baseType: !11, size: 32, offset: 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !501, file: !210, line: 410, baseType: !11, size: 32, offset: 480)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !501, file: !210, line: 411, baseType: !267, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !501, file: !210, line: 412, baseType: !249, size: 32, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !501, file: !210, line: 413, baseType: !249, size: 32, offset: 608)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !501, file: !210, line: 414, baseType: !273, size: 128, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !501, file: !210, line: 415, baseType: !277, size: 160, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !501, file: !210, line: 416, baseType: !281, size: 160, offset: 928)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !501, file: !210, line: 417, baseType: !11, size: 32, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !114, line: 72, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 56, size: 525312, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !526, file: !114, line: 57, baseType: !11, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !526, file: !114, line: 58, baseType: !11, size: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !526, file: !114, line: 59, baseType: !11, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !526, file: !114, line: 60, baseType: !11, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !526, file: !114, line: 61, baseType: !11, size: 32, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !526, file: !114, line: 62, baseType: !11, size: 32, offset: 160)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !526, file: !114, line: 63, baseType: !11, size: 32, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !526, file: !114, line: 64, baseType: !11, size: 32, offset: 224)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !526, file: !114, line: 65, baseType: !11, size: 32, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !526, file: !114, line: 66, baseType: !11, size: 32, offset: 288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !526, file: !114, line: 67, baseType: !128, size: 32, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !526, file: !114, line: 68, baseType: !11, size: 32, offset: 352)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !526, file: !114, line: 69, baseType: !133, size: 523904, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !526, file: !114, line: 70, baseType: !137, size: 512, offset: 524288)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !526, file: !114, line: 71, baseType: !137, size: 512, offset: 524800)
!543 = !{!486, !544}
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !488, file: !489, line: 61, type: !11, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "heap_end", scope: !548, file: !549, line: 66, type: !554, isLocal: true, isDefinition: true)
!548 = distinct !DISubprogram(name: "_sbrk_r", scope: !549, file: !549, line: 63, type: !550, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !750)
!549 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!550 = !DISubroutineType(types: !551)
!551 = !{!552, !555, !745}
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !553, line: 123, baseType: !554)
!553 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 32)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !557, line: 377, size: 1920, elements: !558)
!557 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!558 = !{!559, !560, !634, !635, !636, !637, !638, !639, !640, !643, !664, !668, !669, !670, !671, !681, !694, !695, !700, !719, !720, !727, !728, !744}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !556, file: !557, line: 381, baseType: !66, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !556, file: !557, line: 386, baseType: !561, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !557, line: 292, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !557, line: 186, size: 832, elements: !564)
!564 = !{!565, !567, !568, !569, !571, !572, !577, !578, !579, !580, !584, !590, !597, !601, !602, !603, !604, !608, !610, !611, !612, !614, !620, !633}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !563, file: !557, line: 187, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !563, file: !557, line: 188, baseType: !66, size: 32, offset: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !563, file: !557, line: 189, baseType: !66, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !563, file: !557, line: 190, baseType: !570, size: 16, offset: 96)
!570 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !563, file: !557, line: 191, baseType: !570, size: 16, offset: 112)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !563, file: !557, line: 192, baseType: !573, size: 64, offset: 128)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !557, line: 122, size: 64, elements: !574)
!574 = !{!575, !576}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !573, file: !557, line: 123, baseType: !566, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !573, file: !557, line: 124, baseType: !66, size: 32, offset: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !563, file: !557, line: 193, baseType: !66, size: 32, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !563, file: !557, line: 196, baseType: !555, size: 32, offset: 224)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !563, file: !557, line: 200, baseType: !141, size: 32, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !563, file: !557, line: 202, baseType: !581, size: 32, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 32)
!582 = !DISubroutineType(types: !583)
!583 = !{!66, !555, !141, !554, !66}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !563, file: !557, line: 204, baseType: !585, size: 32, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 32)
!586 = !DISubroutineType(types: !587)
!587 = !{!66, !555, !141, !588, !66}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !563, file: !557, line: 207, baseType: !591, size: 32, offset: 352)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 32)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !555, !141, !594, !66}
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !595, line: 116, baseType: !596)
!595 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!596 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !563, file: !557, line: 208, baseType: !598, size: 32, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 32)
!599 = !DISubroutineType(types: !600)
!600 = !{!66, !555, !141}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !563, file: !557, line: 211, baseType: !573, size: 64, offset: 416)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !563, file: !557, line: 212, baseType: !566, size: 32, offset: 480)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !563, file: !557, line: 213, baseType: !66, size: 32, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !563, file: !557, line: 216, baseType: !605, size: 24, offset: 544)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 24, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 3)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !563, file: !557, line: 217, baseType: !609, size: 8, offset: 568)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !129)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !563, file: !557, line: 220, baseType: !573, size: 64, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !563, file: !557, line: 223, baseType: !66, size: 32, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !563, file: !557, line: 224, baseType: !613, size: 32, offset: 672)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !595, line: 46, baseType: !596)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !563, file: !557, line: 231, baseType: !615, size: 32, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !557, line: 35, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !617, line: 34, baseType: !618)
!617 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 32)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !617, line: 33, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !563, file: !557, line: 233, baseType: !621, size: 64, offset: 736)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !595, line: 170, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !595, line: 162, size: 64, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !622, file: !595, line: 164, baseType: !66, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !622, file: !595, line: 169, baseType: !626, size: 32, offset: 32)
!626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !622, file: !595, line: 165, size: 32, elements: !627)
!627 = !{!628, !631}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !626, file: !595, line: 167, baseType: !629, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !630, line: 116, baseType: !66)
!630 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!631 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !626, file: !595, line: 168, baseType: !632, size: 32)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !274)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !563, file: !557, line: 234, baseType: !66, size: 32, offset: 800)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !556, file: !557, line: 386, baseType: !561, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !556, file: !557, line: 386, baseType: !561, size: 32, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !556, file: !557, line: 388, baseType: !66, size: 32, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !556, file: !557, line: 390, baseType: !554, size: 32, offset: 160)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !556, file: !557, line: 392, baseType: !66, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !556, file: !557, line: 394, baseType: !66, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !556, file: !557, line: 395, baseType: !641, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 32)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !557, line: 45, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !556, file: !557, line: 397, baseType: !644, size: 32, offset: 288)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 32)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !557, line: 349, size: 128, elements: !646)
!646 = !{!647, !660, !661, !662}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !645, file: !557, line: 352, baseType: !648, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 32)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !557, line: 52, size: 192, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !649, file: !557, line: 54, baseType: !648, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !649, file: !557, line: 55, baseType: !66, size: 32, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !649, file: !557, line: 55, baseType: !66, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !649, file: !557, line: 55, baseType: !66, size: 32, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !649, file: !557, line: 55, baseType: !66, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !649, file: !557, line: 56, baseType: !657, size: 32, offset: 160)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !658, size: 32, elements: !129)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !557, line: 22, baseType: !659)
!659 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !645, file: !557, line: 353, baseType: !66, size: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !645, file: !557, line: 354, baseType: !648, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !645, file: !557, line: 355, baseType: !663, size: 32, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !556, file: !557, line: 399, baseType: !665, size: 32, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 32)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !555}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !556, file: !557, line: 401, baseType: !66, size: 32, offset: 352)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !556, file: !557, line: 404, baseType: !66, size: 32, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !556, file: !557, line: 405, baseType: !554, size: 32, offset: 416)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !556, file: !557, line: 407, baseType: !672, size: 32, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 32)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !557, line: 324, size: 192, elements: !674)
!674 = !{!675, !677, !678, !679}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !673, file: !557, line: 325, baseType: !676, size: 48)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !606)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !673, file: !557, line: 326, baseType: !676, size: 48, offset: 48)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !673, file: !557, line: 327, baseType: !53, size: 16, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !673, file: !557, line: 330, baseType: !680, size: 64, offset: 128)
!680 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !556, file: !557, line: 408, baseType: !682, size: 32, offset: 480)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 32)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !557, line: 60, size: 288, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !683, file: !557, line: 62, baseType: !66, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !683, file: !557, line: 63, baseType: !66, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !683, file: !557, line: 64, baseType: !66, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !683, file: !557, line: 65, baseType: !66, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !683, file: !557, line: 66, baseType: !66, size: 32, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !683, file: !557, line: 67, baseType: !66, size: 32, offset: 160)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !683, file: !557, line: 68, baseType: !66, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !683, file: !557, line: 69, baseType: !66, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !683, file: !557, line: 70, baseType: !66, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !556, file: !557, line: 409, baseType: !554, size: 32, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !556, file: !557, line: 412, baseType: !696, size: 32, offset: 544)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 32)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !66}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !556, file: !557, line: 416, baseType: !701, size: 32, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 32)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !557, line: 90, size: 1120, elements: !703)
!703 = !{!704, !705, !706, !710}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !702, file: !557, line: 91, baseType: !701, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !702, file: !557, line: 92, baseType: !66, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !702, file: !557, line: 93, baseType: !707, size: 1024, offset: 64)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 1024, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !702, file: !557, line: 94, baseType: !711, size: 32, offset: 1088)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 32)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !557, line: 79, size: 2112, elements: !713)
!713 = !{!714, !716, !717, !718}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !712, file: !557, line: 80, baseType: !715, size: 1024)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 1024, elements: !708)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !712, file: !557, line: 81, baseType: !715, size: 1024, offset: 1024)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !712, file: !557, line: 83, baseType: !658, size: 32, offset: 2048)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !712, file: !557, line: 86, baseType: !658, size: 32, offset: 2080)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !556, file: !557, line: 417, baseType: !702, size: 1120, offset: 608)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !556, file: !557, line: 420, baseType: !721, size: 96, offset: 1728)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !557, line: 296, size: 96, elements: !722)
!722 = !{!723, !725, !726}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !721, file: !557, line: 298, baseType: !724, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !721, file: !557, line: 299, baseType: !66, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !721, file: !557, line: 300, baseType: !561, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !556, file: !557, line: 421, baseType: !561, size: 32, offset: 1824)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !556, file: !557, line: 422, baseType: !729, size: 32, offset: 1856)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 32)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !557, line: 359, size: 640, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !738, !739, !740, !741, !742, !743}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !730, file: !557, line: 362, baseType: !554, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !730, file: !557, line: 363, baseType: !621, size: 64, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !730, file: !557, line: 364, baseType: !621, size: 64, offset: 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !730, file: !557, line: 365, baseType: !621, size: 64, offset: 160)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !730, file: !557, line: 366, baseType: !737, size: 64, offset: 224)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 64, elements: !215)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !730, file: !557, line: 367, baseType: !66, size: 32, offset: 288)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !730, file: !557, line: 368, baseType: !621, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !730, file: !557, line: 369, baseType: !621, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !730, file: !557, line: 370, baseType: !621, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !730, file: !557, line: 371, baseType: !621, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !730, file: !557, line: 372, baseType: !621, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !556, file: !557, line: 423, baseType: !554, size: 32, offset: 1888)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !630, line: 46, baseType: !7)
!746 = distinct !DICompileUnit(language: DW_LANG_C99, file: !747, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !748, globals: !749, splitDebugInlining: false, nameTableKind: None)
!747 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!748 = !{!554, !552}
!749 = !{!546}
!750 = !{!751, !752, !753, !754}
!751 = !DILocalVariable(name: "r", arg: 1, scope: !548, file: !549, line: 63, type: !555)
!752 = !DILocalVariable(name: "nbytes", arg: 2, scope: !548, file: !549, line: 63, type: !745)
!753 = !DILocalVariable(name: "prev_heap_end", scope: !548, file: !549, line: 67, type: !554)
!754 = !DILocalVariable(name: "stack", scope: !548, file: !549, line: 68, type: !554)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !757, file: !762, line: 4, type: !768, isLocal: false, isDefinition: true)
!757 = distinct !DICompileUnit(language: DW_LANG_C99, file: !758, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !759, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!759 = !{!755, !760, !766}
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !757, file: !762, line: 5, type: !763, isLocal: false, isDefinition: true)
!762 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 88, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 11)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !757, file: !762, line: 6, type: !763, isLocal: false, isDefinition: true)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 248, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 31)
!771 = distinct !DICompileUnit(language: DW_LANG_C99, file: !772, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !773, retainedTypes: !779, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!773 = !{!774}
!774 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !775, line: 1209, baseType: !7, size: 32, elements: !776)
!775 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!776 = !{!777, !778}
!777 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!778 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!779 = !{!780, !782}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !9, line: 116, baseType: !7)
!783 = distinct !DICompileUnit(language: DW_LANG_C99, file: !784, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !785, retainedTypes: !863, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!785 = !{!786}
!786 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !787, line: 150, baseType: !7, size: 32, elements: !788)
!787 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862}
!789 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!790 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!791 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!792 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!793 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!794 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!795 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!796 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!797 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!798 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!799 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!800 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!801 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!802 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!803 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!804 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!805 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!806 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!807 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!808 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!809 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!810 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!811 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!812 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!813 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!814 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!815 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!816 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!817 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!818 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!819 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!820 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!821 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!822 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!823 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!824 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!825 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!826 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!827 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!828 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!829 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!830 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!831 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!832 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!833 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!834 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!835 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!836 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!837 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!838 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!839 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!840 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!841 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!842 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!843 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!844 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!845 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!846 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!847 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!848 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!849 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!850 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!851 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!852 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!853 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!854 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!855 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!856 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!857 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!858 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!859 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!860 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!861 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!862 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!863 = !{!780, !8}
!864 = distinct !DICompileUnit(language: DW_LANG_C99, file: !865, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !866, splitDebugInlining: false, nameTableKind: None)
!865 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!866 = !{!867, !892}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !210, line: 418, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 395, size: 1120, elements: !870)
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !869, file: !210, line: 397, baseType: !249, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !869, file: !210, line: 398, baseType: !11, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !869, file: !210, line: 399, baseType: !11, size: 32, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !869, file: !210, line: 400, baseType: !11, size: 32, offset: 96)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !869, file: !210, line: 401, baseType: !11, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !869, file: !210, line: 402, baseType: !11, size: 32, offset: 160)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !869, file: !210, line: 403, baseType: !256, size: 96, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !869, file: !210, line: 404, baseType: !11, size: 32, offset: 288)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !869, file: !210, line: 405, baseType: !11, size: 32, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !869, file: !210, line: 406, baseType: !11, size: 32, offset: 352)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !869, file: !210, line: 407, baseType: !11, size: 32, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !869, file: !210, line: 408, baseType: !11, size: 32, offset: 416)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !869, file: !210, line: 409, baseType: !11, size: 32, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !869, file: !210, line: 410, baseType: !11, size: 32, offset: 480)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !869, file: !210, line: 411, baseType: !267, size: 64, offset: 512)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !869, file: !210, line: 412, baseType: !249, size: 32, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !869, file: !210, line: 413, baseType: !249, size: 32, offset: 608)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !869, file: !210, line: 414, baseType: !273, size: 128, offset: 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !869, file: !210, line: 415, baseType: !277, size: 160, offset: 768)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !869, file: !210, line: 416, baseType: !281, size: 160, offset: 928)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !869, file: !210, line: 417, baseType: !11, size: 32, offset: 1088)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !210, line: 378, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 363, size: 28704, elements: !895)
!895 = !{!896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !894, file: !210, line: 365, baseType: !214, size: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !894, file: !210, line: 366, baseType: !218, size: 768, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !894, file: !210, line: 367, baseType: !214, size: 256, offset: 1024)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !894, file: !210, line: 368, baseType: !218, size: 768, offset: 1280)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !894, file: !210, line: 369, baseType: !214, size: 256, offset: 2048)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !894, file: !210, line: 370, baseType: !218, size: 768, offset: 2304)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !894, file: !210, line: 371, baseType: !214, size: 256, offset: 3072)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !894, file: !210, line: 372, baseType: !218, size: 768, offset: 3328)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !894, file: !210, line: 373, baseType: !214, size: 256, offset: 4096)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !894, file: !210, line: 374, baseType: !229, size: 1792, offset: 4352)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !894, file: !210, line: 375, baseType: !233, size: 1920, offset: 6144)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !894, file: !210, line: 376, baseType: !240, size: 20608, offset: 8064)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !894, file: !210, line: 377, baseType: !11, size: 32, offset: 28672)
!909 = distinct !DICompileUnit(language: DW_LANG_C99, file: !910, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !911, splitDebugInlining: false, nameTableKind: None)
!910 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!911 = !{!912, !786}
!912 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !913, line: 55, baseType: !7, size: 32, elements: !914)
!913 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942}
!915 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!916 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!917 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!918 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!919 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!920 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!921 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!922 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!923 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!924 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!925 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!926 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!927 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!928 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!929 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!930 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!931 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!932 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!933 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!934 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!935 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!936 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!937 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!938 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!939 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!940 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!941 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!942 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!943 = distinct !DICompileUnit(language: DW_LANG_C99, file: !944, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!944 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!945 = distinct !DICompileUnit(language: DW_LANG_C99, file: !946, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !947, retainedTypes: !980, splitDebugInlining: false, nameTableKind: None)
!946 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!947 = !{!948, !448, !912, !955, !961, !965, !969, !975}
!948 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !949, line: 233, baseType: !66, size: 32, elements: !950)
!949 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!950 = !{!951, !952, !953, !954}
!951 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!952 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!953 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!954 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!955 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !949, line: 224, baseType: !66, size: 32, elements: !956)
!956 = !{!957, !958, !959, !960}
!957 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!958 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!959 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!960 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!961 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !949, line: 217, baseType: !7, size: 32, elements: !962)
!962 = !{!963, !964}
!963 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!964 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!965 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !949, line: 210, baseType: !7, size: 32, elements: !966)
!966 = !{!967, !968}
!967 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!968 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!969 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !949, line: 242, baseType: !7, size: 32, elements: !970)
!970 = !{!971, !972, !973, !974}
!971 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!972 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!973 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!974 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!975 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !976, line: 57, baseType: !7, size: 32, elements: !977)
!976 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!977 = !{!978, !979}
!978 = !DIEnumerator(name: "eDirection_IN", value: 0)
!979 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!980 = !{!981, !141, !982, !235, !983, !984}
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !913, line: 87, baseType: !912)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !949, line: 220, baseType: !961)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !949, line: 247, baseType: !969)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !976, line: 60, baseType: !975)
!985 = !{!"Ubuntu clang version 14.0.6"}
!986 = !{i32 7, !"Dwarf Version", i32 2}
!987 = !{i32 2, !"Debug Info Version", i32 3}
!988 = !{i32 1, !"wchar_size", i32 4}
!989 = !{i32 1, !"min_enum_size", i32 4}
!990 = !{i32 1, !"branch-target-enforcement", i32 0}
!991 = !{i32 1, !"sign-return-address", i32 0}
!992 = !{i32 1, !"sign-return-address-all", i32 0}
!993 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!994 = !{i32 7, !"frame-pointer", i32 2}
!995 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !772, file: !772, line: 54, type: !996, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !999)
!996 = !DISubroutineType(types: !997)
!997 = !{!998, !8, !54}
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !9, line: 56, baseType: !66)
!999 = !{!1000, !1001, !1002, !1004}
!1000 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !995, file: !772, line: 54, type: !8)
!1001 = !DILocalVariable(name: "outEnable", arg: 2, scope: !995, file: !772, line: 54, type: !54)
!1002 = !DILocalVariable(name: "no", scope: !995, file: !772, line: 57, type: !1003)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !9, line: 60, baseType: !53)
!1004 = !DILocalVariable(name: "remainder", scope: !995, file: !772, line: 58, type: !1003)
!1005 = !DILocation(line: 0, scope: !995)
!1006 = !DILocation(line: 59, column: 19, scope: !995)
!1007 = !DILocation(line: 60, column: 17, scope: !995)
!1008 = !DILocation(line: 61, column: 5, scope: !995)
!1009 = !DILocation(line: 65, column: 27, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !772, line: 65, column: 17)
!1011 = distinct !DILexicalBlock(scope: !995, file: !772, line: 61, column: 17)
!1012 = !DILocation(line: 0, scope: !1010)
!1013 = !DILocation(line: 65, column: 17, scope: !1011)
!1014 = !DILocation(line: 66, column: 21, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !772, line: 65, column: 33)
!1016 = !DILocation(line: 67, column: 73, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !772, line: 66, column: 38)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !772, line: 66, column: 21)
!1019 = !DILocation(line: 67, column: 69, scope: !1017)
!1020 = !DILocation(line: 67, column: 66, scope: !1017)
!1021 = !DILocation(line: 68, column: 17, scope: !1017)
!1022 = !DILocation(line: 68, column: 28, scope: !1018)
!1023 = !DILocation(line: 69, column: 77, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !772, line: 68, column: 45)
!1025 = distinct !DILexicalBlock(scope: !1018, file: !772, line: 68, column: 28)
!1026 = !DILocation(line: 70, column: 77, scope: !1024)
!1027 = !DILocation(line: 71, column: 17, scope: !1024)
!1028 = !DILocation(line: 72, column: 77, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !772, line: 71, column: 45)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !772, line: 71, column: 28)
!1031 = !DILocation(line: 73, column: 77, scope: !1029)
!1032 = !DILocation(line: 74, column: 17, scope: !1029)
!1033 = !DILocation(line: 75, column: 79, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !772, line: 74, column: 45)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !772, line: 74, column: 28)
!1036 = !DILocation(line: 76, column: 79, scope: !1034)
!1037 = !DILocation(line: 77, column: 17, scope: !1034)
!1038 = !DILocation(line: 78, column: 79, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !772, line: 77, column: 45)
!1040 = distinct !DILexicalBlock(scope: !1035, file: !772, line: 77, column: 28)
!1041 = !DILocation(line: 79, column: 79, scope: !1039)
!1042 = !DILocation(line: 80, column: 17, scope: !1039)
!1043 = !DILocation(line: 81, column: 79, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !772, line: 80, column: 45)
!1045 = distinct !DILexicalBlock(scope: !1040, file: !772, line: 80, column: 28)
!1046 = !DILocation(line: 82, column: 79, scope: !1044)
!1047 = !DILocation(line: 83, column: 17, scope: !1044)
!1048 = !DILocation(line: 85, column: 17, scope: !1015)
!1049 = !DILocation(line: 86, column: 13, scope: !1015)
!1050 = !DILocation(line: 88, column: 21, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1010, file: !772, line: 86, column: 20)
!1052 = !DILocation(line: 89, column: 72, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !772, line: 88, column: 38)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !772, line: 88, column: 21)
!1055 = !DILocation(line: 89, column: 66, scope: !1053)
!1056 = !DILocation(line: 90, column: 17, scope: !1053)
!1057 = !DILocation(line: 90, column: 28, scope: !1054)
!1058 = !DILocation(line: 91, column: 77, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !772, line: 90, column: 45)
!1060 = distinct !DILexicalBlock(scope: !1054, file: !772, line: 90, column: 28)
!1061 = !DILocation(line: 92, column: 17, scope: !1059)
!1062 = !DILocation(line: 93, column: 77, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !772, line: 92, column: 45)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !772, line: 92, column: 28)
!1065 = !DILocation(line: 94, column: 17, scope: !1063)
!1066 = !DILocation(line: 95, column: 79, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !772, line: 94, column: 45)
!1068 = distinct !DILexicalBlock(scope: !1064, file: !772, line: 94, column: 28)
!1069 = !DILocation(line: 96, column: 17, scope: !1067)
!1070 = !DILocation(line: 97, column: 79, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !772, line: 96, column: 45)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !772, line: 96, column: 28)
!1073 = !DILocation(line: 98, column: 17, scope: !1071)
!1074 = !DILocation(line: 99, column: 79, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !772, line: 98, column: 45)
!1076 = distinct !DILexicalBlock(scope: !1072, file: !772, line: 98, column: 28)
!1077 = !DILocation(line: 100, column: 17, scope: !1075)
!1078 = !DILocation(line: 103, column: 17, scope: !1051)
!1079 = !DILocation(line: 109, column: 27, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1011, file: !772, line: 109, column: 17)
!1081 = !DILocation(line: 0, scope: !1080)
!1082 = !DILocation(line: 109, column: 17, scope: !1011)
!1083 = !DILocation(line: 110, column: 21, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !772, line: 109, column: 33)
!1085 = !DILocation(line: 111, column: 73, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !772, line: 110, column: 36)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !772, line: 110, column: 21)
!1088 = !DILocation(line: 111, column: 69, scope: !1086)
!1089 = !DILocation(line: 111, column: 66, scope: !1086)
!1090 = !DILocation(line: 112, column: 17, scope: !1086)
!1091 = !DILocation(line: 113, column: 79, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !772, line: 112, column: 24)
!1093 = !DILocation(line: 114, column: 79, scope: !1092)
!1094 = !DILocation(line: 117, column: 17, scope: !1084)
!1095 = !DILocation(line: 118, column: 13, scope: !1084)
!1096 = !DILocation(line: 120, column: 21, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1080, file: !772, line: 118, column: 20)
!1098 = !DILocation(line: 121, column: 72, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !772, line: 120, column: 36)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !772, line: 120, column: 21)
!1101 = !DILocation(line: 121, column: 66, scope: !1099)
!1102 = !DILocation(line: 122, column: 17, scope: !1099)
!1103 = !DILocation(line: 123, column: 79, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !772, line: 122, column: 24)
!1105 = !DILocation(line: 126, column: 17, scope: !1097)
!1106 = !DILocation(line: 133, column: 1, scope: !995)
!1107 = distinct !DISubprogram(name: "halGPO_Write", scope: !772, file: !772, line: 136, type: !996, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1108)
!1108 = !{!1109, !1110, !1111, !1112}
!1109 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1107, file: !772, line: 136, type: !8)
!1110 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1107, file: !772, line: 136, type: !54)
!1111 = !DILocalVariable(name: "no", scope: !1107, file: !772, line: 138, type: !1003)
!1112 = !DILocalVariable(name: "remainder", scope: !1107, file: !772, line: 139, type: !1003)
!1113 = !DILocation(line: 0, scope: !1107)
!1114 = !DILocation(line: 140, column: 19, scope: !1107)
!1115 = !DILocation(line: 141, column: 17, scope: !1107)
!1116 = !DILocation(line: 142, column: 5, scope: !1107)
!1117 = !DILocation(line: 145, column: 17, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !772, line: 145, column: 17)
!1119 = distinct !DILexicalBlock(scope: !1107, file: !772, line: 142, column: 17)
!1120 = !DILocation(line: 0, scope: !1118)
!1121 = !DILocation(line: 145, column: 17, scope: !1119)
!1122 = !DILocation(line: 146, column: 17, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !772, line: 145, column: 29)
!1124 = !DILocation(line: 147, column: 13, scope: !1123)
!1125 = !DILocation(line: 148, column: 17, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1118, file: !772, line: 147, column: 20)
!1127 = !DILocation(line: 153, column: 17, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1119, file: !772, line: 153, column: 17)
!1129 = !DILocation(line: 0, scope: !1128)
!1130 = !DILocation(line: 153, column: 17, scope: !1119)
!1131 = !DILocation(line: 154, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !772, line: 153, column: 29)
!1133 = !DILocation(line: 155, column: 13, scope: !1132)
!1134 = !DILocation(line: 156, column: 17, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1128, file: !772, line: 155, column: 20)
!1136 = !DILocation(line: 163, column: 1, scope: !1107)
!1137 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !772, file: !772, line: 169, type: !1138, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!54, !8}
!1140 = !{!1141, !1142, !1143, !1144}
!1141 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1137, file: !772, line: 169, type: !8)
!1142 = !DILocalVariable(name: "no", scope: !1137, file: !772, line: 171, type: !1003)
!1143 = !DILocalVariable(name: "remainder", scope: !1137, file: !772, line: 172, type: !1003)
!1144 = !DILocalVariable(name: "dout", scope: !1137, file: !772, line: 175, type: !54)
!1145 = !DILocation(line: 0, scope: !1137)
!1146 = !DILocation(line: 173, column: 19, scope: !1137)
!1147 = !DILocation(line: 174, column: 17, scope: !1137)
!1148 = !DILocation(line: 177, column: 5, scope: !1137)
!1149 = !DILocation(line: 183, column: 13, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1137, file: !772, line: 177, column: 17)
!1151 = !DILocation(line: 0, scope: !1150)
!1152 = !DILocation(line: 187, column: 5, scope: !1137)
!1153 = !DILocation(line: 188, column: 1, scope: !1137)
!1154 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !772, file: !772, line: 189, type: !1138, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1155)
!1155 = !{!1156, !1157, !1158, !1159}
!1156 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1154, file: !772, line: 189, type: !8)
!1157 = !DILocalVariable(name: "no", scope: !1154, file: !772, line: 191, type: !1003)
!1158 = !DILocalVariable(name: "remainder", scope: !1154, file: !772, line: 192, type: !1003)
!1159 = !DILocalVariable(name: "din", scope: !1154, file: !772, line: 195, type: !54)
!1160 = !DILocation(line: 0, scope: !1154)
!1161 = !DILocation(line: 193, column: 19, scope: !1154)
!1162 = !DILocation(line: 194, column: 17, scope: !1154)
!1163 = !DILocation(line: 196, column: 5, scope: !1154)
!1164 = !DILocation(line: 203, column: 13, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1154, file: !772, line: 196, column: 17)
!1166 = !DILocation(line: 0, scope: !1165)
!1167 = !DILocation(line: 208, column: 5, scope: !1154)
!1168 = !DILocation(line: 209, column: 1, scope: !1154)
!1169 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !772, file: !772, line: 210, type: !1138, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1170)
!1170 = !{!1171, !1172, !1173, !1174}
!1171 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1169, file: !772, line: 210, type: !8)
!1172 = !DILocalVariable(name: "no", scope: !1169, file: !772, line: 212, type: !1003)
!1173 = !DILocalVariable(name: "remainder", scope: !1169, file: !772, line: 213, type: !1003)
!1174 = !DILocalVariable(name: "outEnable", scope: !1169, file: !772, line: 216, type: !54)
!1175 = !DILocation(line: 0, scope: !1169)
!1176 = !DILocation(line: 214, column: 19, scope: !1169)
!1177 = !DILocation(line: 215, column: 17, scope: !1169)
!1178 = !DILocation(line: 218, column: 5, scope: !1169)
!1179 = !DILocation(line: 224, column: 13, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1169, file: !772, line: 218, column: 17)
!1181 = !DILocation(line: 0, scope: !1180)
!1182 = !DILocation(line: 228, column: 5, scope: !1169)
!1183 = !DILocation(line: 229, column: 1, scope: !1169)
!1184 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !772, file: !772, line: 232, type: !1185, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!998, !8}
!1187 = !{!1188, !1189, !1190}
!1188 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1184, file: !772, line: 232, type: !8)
!1189 = !DILocalVariable(name: "no", scope: !1184, file: !772, line: 234, type: !1003)
!1190 = !DILocalVariable(name: "remainder", scope: !1184, file: !772, line: 235, type: !1003)
!1191 = !DILocation(line: 0, scope: !1184)
!1192 = !DILocation(line: 236, column: 19, scope: !1184)
!1193 = !DILocation(line: 237, column: 17, scope: !1184)
!1194 = !DILocation(line: 238, column: 5, scope: !1184)
!1195 = !DILocation(line: 239, column: 5, scope: !1184)
!1196 = !DILocation(line: 241, column: 27, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !772, line: 241, column: 17)
!1198 = distinct !DILexicalBlock(scope: !1184, file: !772, line: 239, column: 17)
!1199 = !DILocation(line: 241, column: 17, scope: !1198)
!1200 = !DILocation(line: 241, column: 17, scope: !1197)
!1201 = !DILocation(line: 242, column: 17, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !772, line: 241, column: 34)
!1203 = !DILocation(line: 243, column: 13, scope: !1202)
!1204 = !DILocation(line: 243, column: 24, scope: !1197)
!1205 = !DILocation(line: 244, column: 73, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !772, line: 243, column: 41)
!1207 = distinct !DILexicalBlock(scope: !1197, file: !772, line: 243, column: 24)
!1208 = !DILocation(line: 245, column: 73, scope: !1206)
!1209 = !DILocation(line: 246, column: 13, scope: !1206)
!1210 = !DILocation(line: 247, column: 73, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !772, line: 246, column: 41)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !772, line: 246, column: 24)
!1213 = !DILocation(line: 248, column: 73, scope: !1211)
!1214 = !DILocation(line: 249, column: 13, scope: !1211)
!1215 = !DILocation(line: 250, column: 75, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !772, line: 249, column: 41)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !772, line: 249, column: 24)
!1218 = !DILocation(line: 251, column: 75, scope: !1216)
!1219 = !DILocation(line: 252, column: 13, scope: !1216)
!1220 = !DILocation(line: 253, column: 75, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !772, line: 252, column: 41)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !772, line: 252, column: 24)
!1223 = !DILocation(line: 254, column: 75, scope: !1221)
!1224 = !DILocation(line: 255, column: 13, scope: !1221)
!1225 = !DILocation(line: 256, column: 75, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !772, line: 255, column: 41)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !772, line: 255, column: 24)
!1228 = !DILocation(line: 257, column: 75, scope: !1226)
!1229 = !DILocation(line: 258, column: 13, scope: !1226)
!1230 = !DILocation(line: 261, column: 18, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1198, file: !772, line: 261, column: 17)
!1232 = !DILocation(line: 261, column: 17, scope: !1198)
!1233 = !DILocation(line: 262, column: 75, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !772, line: 261, column: 29)
!1235 = !DILocation(line: 263, column: 75, scope: !1234)
!1236 = !DILocation(line: 264, column: 13, scope: !1234)
!1237 = !DILocation(line: 265, column: 17, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1231, file: !772, line: 264, column: 20)
!1239 = !DILocation(line: 272, column: 1, scope: !1184)
!1240 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !772, file: !772, line: 359, type: !1185, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1241)
!1241 = !{!1242, !1243, !1244}
!1242 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1240, file: !772, line: 359, type: !8)
!1243 = !DILocalVariable(name: "no", scope: !1240, file: !772, line: 362, type: !1003)
!1244 = !DILocalVariable(name: "remainder", scope: !1240, file: !772, line: 363, type: !1003)
!1245 = !DILocation(line: 0, scope: !1240)
!1246 = !DILocation(line: 364, column: 19, scope: !1240)
!1247 = !DILocation(line: 365, column: 17, scope: !1240)
!1248 = !DILocation(line: 367, column: 5, scope: !1240)
!1249 = !DILocation(line: 369, column: 27, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !772, line: 369, column: 17)
!1251 = distinct !DILexicalBlock(scope: !1240, file: !772, line: 367, column: 17)
!1252 = !DILocation(line: 369, column: 17, scope: !1251)
!1253 = !DILocation(line: 369, column: 17, scope: !1250)
!1254 = !DILocation(line: 370, column: 17, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !772, line: 369, column: 34)
!1256 = !DILocation(line: 371, column: 13, scope: !1255)
!1257 = !DILocation(line: 371, column: 24, scope: !1250)
!1258 = !DILocation(line: 372, column: 73, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !772, line: 371, column: 41)
!1260 = distinct !DILexicalBlock(scope: !1250, file: !772, line: 371, column: 24)
!1261 = !DILocation(line: 373, column: 73, scope: !1259)
!1262 = !DILocation(line: 374, column: 13, scope: !1259)
!1263 = !DILocation(line: 375, column: 73, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !772, line: 374, column: 41)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !772, line: 374, column: 24)
!1266 = !DILocation(line: 376, column: 73, scope: !1264)
!1267 = !DILocation(line: 377, column: 13, scope: !1264)
!1268 = !DILocation(line: 378, column: 75, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !772, line: 377, column: 41)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !772, line: 377, column: 24)
!1271 = !DILocation(line: 379, column: 75, scope: !1269)
!1272 = !DILocation(line: 380, column: 13, scope: !1269)
!1273 = !DILocation(line: 381, column: 75, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !772, line: 380, column: 41)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !772, line: 380, column: 24)
!1276 = !DILocation(line: 382, column: 75, scope: !1274)
!1277 = !DILocation(line: 383, column: 13, scope: !1274)
!1278 = !DILocation(line: 384, column: 75, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !772, line: 383, column: 41)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !772, line: 383, column: 24)
!1281 = !DILocation(line: 385, column: 75, scope: !1279)
!1282 = !DILocation(line: 386, column: 13, scope: !1279)
!1283 = !DILocation(line: 389, column: 18, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1251, file: !772, line: 389, column: 17)
!1285 = !DILocation(line: 389, column: 17, scope: !1251)
!1286 = !DILocation(line: 390, column: 75, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !772, line: 389, column: 29)
!1288 = !DILocation(line: 391, column: 75, scope: !1287)
!1289 = !DILocation(line: 392, column: 13, scope: !1287)
!1290 = !DILocation(line: 393, column: 17, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1284, file: !772, line: 392, column: 20)
!1292 = !DILocation(line: 401, column: 1, scope: !1240)
!1293 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !772, file: !772, line: 274, type: !1185, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1294)
!1294 = !{!1295, !1296, !1297}
!1295 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1293, file: !772, line: 274, type: !8)
!1296 = !DILocalVariable(name: "no", scope: !1293, file: !772, line: 276, type: !1003)
!1297 = !DILocalVariable(name: "remainder", scope: !1293, file: !772, line: 277, type: !1003)
!1298 = !DILocation(line: 0, scope: !1293)
!1299 = !DILocation(line: 278, column: 19, scope: !1293)
!1300 = !DILocation(line: 279, column: 17, scope: !1293)
!1301 = !DILocation(line: 281, column: 5, scope: !1293)
!1302 = !DILocation(line: 283, column: 27, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !772, line: 283, column: 17)
!1304 = distinct !DILexicalBlock(scope: !1293, file: !772, line: 281, column: 17)
!1305 = !DILocation(line: 283, column: 17, scope: !1304)
!1306 = !DILocation(line: 283, column: 17, scope: !1303)
!1307 = !DILocation(line: 284, column: 17, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !772, line: 283, column: 34)
!1309 = !DILocation(line: 285, column: 13, scope: !1308)
!1310 = !DILocation(line: 285, column: 24, scope: !1303)
!1311 = !DILocation(line: 286, column: 73, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !772, line: 285, column: 41)
!1313 = distinct !DILexicalBlock(scope: !1303, file: !772, line: 285, column: 24)
!1314 = !DILocation(line: 287, column: 73, scope: !1312)
!1315 = !DILocation(line: 288, column: 13, scope: !1312)
!1316 = !DILocation(line: 289, column: 73, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !772, line: 288, column: 41)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !772, line: 288, column: 24)
!1319 = !DILocation(line: 290, column: 73, scope: !1317)
!1320 = !DILocation(line: 291, column: 13, scope: !1317)
!1321 = !DILocation(line: 292, column: 75, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !772, line: 291, column: 41)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !772, line: 291, column: 24)
!1324 = !DILocation(line: 293, column: 75, scope: !1322)
!1325 = !DILocation(line: 294, column: 13, scope: !1322)
!1326 = !DILocation(line: 295, column: 75, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !772, line: 294, column: 41)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !772, line: 294, column: 24)
!1329 = !DILocation(line: 296, column: 75, scope: !1327)
!1330 = !DILocation(line: 297, column: 13, scope: !1327)
!1331 = !DILocation(line: 298, column: 75, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !772, line: 297, column: 41)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !772, line: 297, column: 24)
!1334 = !DILocation(line: 299, column: 75, scope: !1332)
!1335 = !DILocation(line: 300, column: 13, scope: !1332)
!1336 = !DILocation(line: 303, column: 18, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1304, file: !772, line: 303, column: 17)
!1338 = !DILocation(line: 303, column: 17, scope: !1304)
!1339 = !DILocation(line: 304, column: 75, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1337, file: !772, line: 303, column: 29)
!1341 = !DILocation(line: 305, column: 75, scope: !1340)
!1342 = !DILocation(line: 306, column: 13, scope: !1340)
!1343 = !DILocation(line: 307, column: 17, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1337, file: !772, line: 306, column: 20)
!1345 = !DILocation(line: 314, column: 1, scope: !1293)
!1346 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !772, file: !772, line: 316, type: !1185, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1347)
!1347 = !{!1348, !1349, !1350}
!1348 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1346, file: !772, line: 316, type: !8)
!1349 = !DILocalVariable(name: "no", scope: !1346, file: !772, line: 318, type: !1003)
!1350 = !DILocalVariable(name: "remainder", scope: !1346, file: !772, line: 319, type: !1003)
!1351 = !DILocation(line: 0, scope: !1346)
!1352 = !DILocation(line: 320, column: 19, scope: !1346)
!1353 = !DILocation(line: 321, column: 17, scope: !1346)
!1354 = !DILocation(line: 322, column: 5, scope: !1346)
!1355 = !DILocation(line: 323, column: 5, scope: !1346)
!1356 = !DILocation(line: 325, column: 27, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !772, line: 325, column: 17)
!1358 = distinct !DILexicalBlock(scope: !1346, file: !772, line: 323, column: 17)
!1359 = !DILocation(line: 325, column: 17, scope: !1358)
!1360 = !DILocation(line: 325, column: 17, scope: !1357)
!1361 = !DILocation(line: 326, column: 17, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !772, line: 325, column: 34)
!1363 = !DILocation(line: 327, column: 13, scope: !1362)
!1364 = !DILocation(line: 327, column: 24, scope: !1357)
!1365 = !DILocation(line: 328, column: 73, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !772, line: 327, column: 41)
!1367 = distinct !DILexicalBlock(scope: !1357, file: !772, line: 327, column: 24)
!1368 = !DILocation(line: 329, column: 73, scope: !1366)
!1369 = !DILocation(line: 330, column: 13, scope: !1366)
!1370 = !DILocation(line: 331, column: 73, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !772, line: 330, column: 41)
!1372 = distinct !DILexicalBlock(scope: !1367, file: !772, line: 330, column: 24)
!1373 = !DILocation(line: 332, column: 73, scope: !1371)
!1374 = !DILocation(line: 333, column: 13, scope: !1371)
!1375 = !DILocation(line: 334, column: 75, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !772, line: 333, column: 41)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !772, line: 333, column: 24)
!1378 = !DILocation(line: 335, column: 75, scope: !1376)
!1379 = !DILocation(line: 336, column: 13, scope: !1376)
!1380 = !DILocation(line: 337, column: 75, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !772, line: 336, column: 41)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !772, line: 336, column: 24)
!1383 = !DILocation(line: 338, column: 75, scope: !1381)
!1384 = !DILocation(line: 339, column: 13, scope: !1381)
!1385 = !DILocation(line: 340, column: 75, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !772, line: 339, column: 41)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !772, line: 339, column: 24)
!1388 = !DILocation(line: 341, column: 75, scope: !1386)
!1389 = !DILocation(line: 342, column: 13, scope: !1386)
!1390 = !DILocation(line: 345, column: 18, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1358, file: !772, line: 345, column: 17)
!1392 = !DILocation(line: 345, column: 17, scope: !1358)
!1393 = !DILocation(line: 346, column: 75, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !772, line: 345, column: 29)
!1395 = !DILocation(line: 347, column: 75, scope: !1394)
!1396 = !DILocation(line: 348, column: 13, scope: !1394)
!1397 = !DILocation(line: 349, column: 17, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !772, line: 348, column: 20)
!1399 = !DILocation(line: 357, column: 1, scope: !1346)
!1400 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !772, file: !772, line: 404, type: !996, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1401)
!1401 = !{!1402, !1403, !1404, !1405}
!1402 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1400, file: !772, line: 404, type: !8)
!1403 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1400, file: !772, line: 404, type: !54)
!1404 = !DILocalVariable(name: "no", scope: !1400, file: !772, line: 406, type: !1003)
!1405 = !DILocalVariable(name: "remainder", scope: !1400, file: !772, line: 407, type: !1003)
!1406 = !DILocation(line: 0, scope: !1400)
!1407 = !DILocation(line: 408, column: 19, scope: !1400)
!1408 = !DILocation(line: 409, column: 17, scope: !1400)
!1409 = !DILocation(line: 411, column: 5, scope: !1400)
!1410 = !DILocation(line: 413, column: 84, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1400, file: !772, line: 411, column: 17)
!1412 = !DILocation(line: 413, column: 70, scope: !1411)
!1413 = !DILocation(line: 413, column: 64, scope: !1411)
!1414 = !DILocation(line: 413, column: 61, scope: !1411)
!1415 = !DILocation(line: 414, column: 79, scope: !1411)
!1416 = !DILocation(line: 414, column: 83, scope: !1411)
!1417 = !DILocation(line: 414, column: 88, scope: !1411)
!1418 = !DILocation(line: 414, column: 61, scope: !1411)
!1419 = !DILocation(line: 415, column: 13, scope: !1411)
!1420 = !DILocation(line: 417, column: 27, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1411, file: !772, line: 417, column: 17)
!1422 = !DILocation(line: 417, column: 17, scope: !1411)
!1423 = !DILocation(line: 418, column: 88, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !772, line: 417, column: 33)
!1425 = !DILocation(line: 418, column: 74, scope: !1424)
!1426 = !DILocation(line: 418, column: 68, scope: !1424)
!1427 = !DILocation(line: 418, column: 65, scope: !1424)
!1428 = !DILocation(line: 419, column: 83, scope: !1424)
!1429 = !DILocation(line: 419, column: 87, scope: !1424)
!1430 = !DILocation(line: 419, column: 92, scope: !1424)
!1431 = !DILocation(line: 419, column: 65, scope: !1424)
!1432 = !DILocation(line: 420, column: 13, scope: !1424)
!1433 = !DILocation(line: 420, column: 24, scope: !1421)
!1434 = !DILocation(line: 421, column: 73, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !772, line: 420, column: 41)
!1436 = distinct !DILexicalBlock(scope: !1421, file: !772, line: 420, column: 24)
!1437 = !DILocation(line: 422, column: 91, scope: !1435)
!1438 = !DILocation(line: 422, column: 100, scope: !1435)
!1439 = !DILocation(line: 422, column: 73, scope: !1435)
!1440 = !DILocation(line: 423, column: 73, scope: !1435)
!1441 = !DILocation(line: 424, column: 13, scope: !1435)
!1442 = !DILocation(line: 425, column: 73, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !772, line: 424, column: 41)
!1444 = distinct !DILexicalBlock(scope: !1436, file: !772, line: 424, column: 24)
!1445 = !DILocation(line: 426, column: 91, scope: !1443)
!1446 = !DILocation(line: 426, column: 100, scope: !1443)
!1447 = !DILocation(line: 426, column: 73, scope: !1443)
!1448 = !DILocation(line: 427, column: 73, scope: !1443)
!1449 = !DILocation(line: 428, column: 13, scope: !1443)
!1450 = !DILocation(line: 429, column: 75, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !772, line: 428, column: 41)
!1452 = distinct !DILexicalBlock(scope: !1444, file: !772, line: 428, column: 24)
!1453 = !DILocation(line: 430, column: 93, scope: !1451)
!1454 = !DILocation(line: 430, column: 102, scope: !1451)
!1455 = !DILocation(line: 430, column: 75, scope: !1451)
!1456 = !DILocation(line: 431, column: 75, scope: !1451)
!1457 = !DILocation(line: 432, column: 13, scope: !1451)
!1458 = !DILocation(line: 433, column: 75, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !772, line: 432, column: 41)
!1460 = distinct !DILexicalBlock(scope: !1452, file: !772, line: 432, column: 24)
!1461 = !DILocation(line: 434, column: 93, scope: !1459)
!1462 = !DILocation(line: 434, column: 102, scope: !1459)
!1463 = !DILocation(line: 434, column: 75, scope: !1459)
!1464 = !DILocation(line: 435, column: 75, scope: !1459)
!1465 = !DILocation(line: 436, column: 13, scope: !1459)
!1466 = !DILocation(line: 437, column: 75, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !772, line: 436, column: 41)
!1468 = distinct !DILexicalBlock(scope: !1460, file: !772, line: 436, column: 24)
!1469 = !DILocation(line: 438, column: 93, scope: !1467)
!1470 = !DILocation(line: 438, column: 102, scope: !1467)
!1471 = !DILocation(line: 438, column: 75, scope: !1467)
!1472 = !DILocation(line: 439, column: 75, scope: !1467)
!1473 = !DILocation(line: 440, column: 13, scope: !1467)
!1474 = !DILocation(line: 443, column: 18, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1411, file: !772, line: 443, column: 17)
!1476 = !DILocation(line: 443, column: 17, scope: !1411)
!1477 = !DILocation(line: 444, column: 75, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !772, line: 443, column: 29)
!1479 = !DILocation(line: 445, column: 93, scope: !1478)
!1480 = !DILocation(line: 445, column: 102, scope: !1478)
!1481 = !DILocation(line: 445, column: 75, scope: !1478)
!1482 = !DILocation(line: 446, column: 75, scope: !1478)
!1483 = !DILocation(line: 447, column: 13, scope: !1478)
!1484 = !DILocation(line: 448, column: 88, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1475, file: !772, line: 447, column: 20)
!1486 = !DILocation(line: 448, column: 74, scope: !1485)
!1487 = !DILocation(line: 448, column: 68, scope: !1485)
!1488 = !DILocation(line: 448, column: 65, scope: !1485)
!1489 = !DILocation(line: 449, column: 83, scope: !1485)
!1490 = !DILocation(line: 449, column: 87, scope: !1485)
!1491 = !DILocation(line: 449, column: 92, scope: !1485)
!1492 = !DILocation(line: 449, column: 65, scope: !1485)
!1493 = !DILocation(line: 453, column: 84, scope: !1411)
!1494 = !DILocation(line: 453, column: 70, scope: !1411)
!1495 = !DILocation(line: 453, column: 64, scope: !1411)
!1496 = !DILocation(line: 453, column: 61, scope: !1411)
!1497 = !DILocation(line: 454, column: 79, scope: !1411)
!1498 = !DILocation(line: 454, column: 83, scope: !1411)
!1499 = !DILocation(line: 454, column: 88, scope: !1411)
!1500 = !DILocation(line: 454, column: 61, scope: !1411)
!1501 = !DILocation(line: 455, column: 13, scope: !1411)
!1502 = !DILocation(line: 460, column: 1, scope: !1400)
!1503 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !772, file: !772, line: 463, type: !1504, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1507)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!998, !8, !1506}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!1507 = !{!1508, !1509, !1510, !1511, !1512}
!1508 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1503, file: !772, line: 463, type: !8)
!1509 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1503, file: !772, line: 463, type: !1506)
!1510 = !DILocalVariable(name: "no", scope: !1503, file: !772, line: 465, type: !1003)
!1511 = !DILocalVariable(name: "remainder", scope: !1503, file: !772, line: 466, type: !1003)
!1512 = !DILocalVariable(name: "temp", scope: !1503, file: !772, line: 467, type: !8)
!1513 = !DILocation(line: 0, scope: !1503)
!1514 = !DILocation(line: 468, column: 19, scope: !1503)
!1515 = !DILocation(line: 469, column: 17, scope: !1503)
!1516 = !DILocation(line: 471, column: 5, scope: !1503)
!1517 = !DILocation(line: 473, column: 20, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1503, file: !772, line: 471, column: 17)
!1519 = !DILocation(line: 474, column: 40, scope: !1518)
!1520 = !DILocation(line: 474, column: 26, scope: !1518)
!1521 = !DILocation(line: 474, column: 18, scope: !1518)
!1522 = !DILocation(line: 475, column: 40, scope: !1518)
!1523 = !DILocation(line: 475, column: 29, scope: !1518)
!1524 = !DILocation(line: 476, column: 13, scope: !1518)
!1525 = !DILocation(line: 478, column: 27, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1518, file: !772, line: 478, column: 17)
!1527 = !DILocation(line: 478, column: 17, scope: !1518)
!1528 = !DILocation(line: 479, column: 24, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1526, file: !772, line: 478, column: 33)
!1530 = !DILocation(line: 480, column: 44, scope: !1529)
!1531 = !DILocation(line: 480, column: 30, scope: !1529)
!1532 = !DILocation(line: 480, column: 22, scope: !1529)
!1533 = !DILocation(line: 481, column: 44, scope: !1529)
!1534 = !DILocation(line: 481, column: 33, scope: !1529)
!1535 = !DILocation(line: 482, column: 13, scope: !1529)
!1536 = !DILocation(line: 482, column: 24, scope: !1526)
!1537 = !DILocation(line: 483, column: 24, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !772, line: 482, column: 41)
!1539 = distinct !DILexicalBlock(scope: !1526, file: !772, line: 482, column: 24)
!1540 = !DILocation(line: 485, column: 53, scope: !1538)
!1541 = !DILocation(line: 485, column: 33, scope: !1538)
!1542 = !DILocation(line: 486, column: 13, scope: !1538)
!1543 = !DILocation(line: 487, column: 24, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !772, line: 486, column: 41)
!1545 = distinct !DILexicalBlock(scope: !1539, file: !772, line: 486, column: 24)
!1546 = !DILocation(line: 489, column: 53, scope: !1544)
!1547 = !DILocation(line: 489, column: 33, scope: !1544)
!1548 = !DILocation(line: 490, column: 13, scope: !1544)
!1549 = !DILocation(line: 491, column: 24, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !772, line: 490, column: 41)
!1551 = distinct !DILexicalBlock(scope: !1545, file: !772, line: 490, column: 24)
!1552 = !DILocation(line: 493, column: 53, scope: !1550)
!1553 = !DILocation(line: 493, column: 33, scope: !1550)
!1554 = !DILocation(line: 494, column: 13, scope: !1550)
!1555 = !DILocation(line: 495, column: 24, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !772, line: 494, column: 41)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !772, line: 494, column: 24)
!1558 = !DILocation(line: 497, column: 53, scope: !1556)
!1559 = !DILocation(line: 497, column: 33, scope: !1556)
!1560 = !DILocation(line: 498, column: 13, scope: !1556)
!1561 = !DILocation(line: 499, column: 24, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !772, line: 498, column: 41)
!1563 = distinct !DILexicalBlock(scope: !1557, file: !772, line: 498, column: 24)
!1564 = !DILocation(line: 501, column: 53, scope: !1562)
!1565 = !DILocation(line: 501, column: 33, scope: !1562)
!1566 = !DILocation(line: 502, column: 13, scope: !1562)
!1567 = !DILocation(line: 505, column: 18, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1518, file: !772, line: 505, column: 17)
!1569 = !DILocation(line: 505, column: 17, scope: !1518)
!1570 = !DILocation(line: 506, column: 24, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !772, line: 505, column: 29)
!1572 = !DILocation(line: 508, column: 53, scope: !1571)
!1573 = !DILocation(line: 508, column: 33, scope: !1571)
!1574 = !DILocation(line: 509, column: 13, scope: !1571)
!1575 = !DILocation(line: 510, column: 24, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1568, file: !772, line: 509, column: 20)
!1577 = !DILocation(line: 511, column: 44, scope: !1576)
!1578 = !DILocation(line: 511, column: 30, scope: !1576)
!1579 = !DILocation(line: 511, column: 22, scope: !1576)
!1580 = !DILocation(line: 512, column: 44, scope: !1576)
!1581 = !DILocation(line: 512, column: 33, scope: !1576)
!1582 = !DILocation(line: 516, column: 20, scope: !1518)
!1583 = !DILocation(line: 517, column: 40, scope: !1518)
!1584 = !DILocation(line: 517, column: 26, scope: !1518)
!1585 = !DILocation(line: 517, column: 18, scope: !1518)
!1586 = !DILocation(line: 518, column: 40, scope: !1518)
!1587 = !DILocation(line: 518, column: 29, scope: !1518)
!1588 = !DILocation(line: 519, column: 13, scope: !1518)
!1589 = !DILocation(line: 0, scope: !1518)
!1590 = !DILocation(line: 524, column: 1, scope: !1503)
!1591 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !772, file: !772, line: 526, type: !1592, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !1595)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !8, !1594}
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !775, line: 1212, baseType: !774)
!1595 = !{!1596, !1597, !1598, !1599}
!1596 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1591, file: !772, line: 526, type: !8)
!1597 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1591, file: !772, line: 526, type: !1594)
!1598 = !DILocalVariable(name: "no", scope: !1591, file: !772, line: 529, type: !1003)
!1599 = !DILocalVariable(name: "remainder", scope: !1591, file: !772, line: 530, type: !1003)
!1600 = !DILocation(line: 0, scope: !1591)
!1601 = !DILocation(line: 531, column: 19, scope: !1591)
!1602 = !DILocation(line: 532, column: 17, scope: !1591)
!1603 = !DILocation(line: 534, column: 9, scope: !1591)
!1604 = !DILocation(line: 536, column: 9, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !772, line: 534, column: 45)
!1606 = distinct !DILexicalBlock(scope: !1591, file: !772, line: 534, column: 9)
!1607 = !DILocation(line: 538, column: 56, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !772, line: 536, column: 21)
!1609 = !DILocation(line: 538, column: 53, scope: !1608)
!1610 = !DILocation(line: 538, column: 47, scope: !1608)
!1611 = !DILocation(line: 539, column: 17, scope: !1608)
!1612 = !DILocation(line: 541, column: 56, scope: !1608)
!1613 = !DILocation(line: 541, column: 53, scope: !1608)
!1614 = !DILocation(line: 541, column: 47, scope: !1608)
!1615 = !DILocation(line: 542, column: 17, scope: !1608)
!1616 = !DILocation(line: 548, column: 9, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !772, line: 547, column: 51)
!1618 = distinct !DILexicalBlock(scope: !1606, file: !772, line: 547, column: 16)
!1619 = !DILocation(line: 550, column: 57, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !772, line: 548, column: 21)
!1621 = !DILocation(line: 550, column: 54, scope: !1620)
!1622 = !DILocation(line: 550, column: 50, scope: !1620)
!1623 = !DILocation(line: 550, column: 47, scope: !1620)
!1624 = !DILocation(line: 551, column: 17, scope: !1620)
!1625 = !DILocation(line: 553, column: 57, scope: !1620)
!1626 = !DILocation(line: 553, column: 54, scope: !1620)
!1627 = !DILocation(line: 553, column: 50, scope: !1620)
!1628 = !DILocation(line: 553, column: 47, scope: !1620)
!1629 = !DILocation(line: 554, column: 17, scope: !1620)
!1630 = !DILocation(line: 560, column: 1, scope: !1591)
!1631 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !784, file: !784, line: 85, type: !1632, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !1636)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1634, !1635, !54}
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !9, line: 79, baseType: null)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !787, line: 225, baseType: !786)
!1636 = !{!1637, !1638, !1639}
!1637 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1631, file: !784, line: 85, type: !1635)
!1638 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1631, file: !784, line: 85, type: !54)
!1639 = !DILocalVariable(name: "temp", scope: !1631, file: !784, line: 87, type: !12)
!1640 = !DILocation(line: 0, scope: !1631)
!1641 = !DILocation(line: 88, column: 5, scope: !1631)
!1642 = !DILocation(line: 91, column: 20, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1631, file: !784, line: 88, column: 24)
!1644 = !DILocation(line: 92, column: 18, scope: !1643)
!1645 = !DILocation(line: 93, column: 66, scope: !1643)
!1646 = !DILocation(line: 93, column: 63, scope: !1643)
!1647 = !DILocation(line: 93, column: 56, scope: !1643)
!1648 = !DILocation(line: 94, column: 13, scope: !1643)
!1649 = !DILocation(line: 97, column: 20, scope: !1643)
!1650 = !DILocation(line: 98, column: 18, scope: !1643)
!1651 = !DILocation(line: 99, column: 67, scope: !1643)
!1652 = !DILocation(line: 99, column: 74, scope: !1643)
!1653 = !DILocation(line: 99, column: 64, scope: !1643)
!1654 = !DILocation(line: 99, column: 56, scope: !1643)
!1655 = !DILocation(line: 100, column: 13, scope: !1643)
!1656 = !DILocation(line: 103, column: 20, scope: !1643)
!1657 = !DILocation(line: 104, column: 18, scope: !1643)
!1658 = !DILocation(line: 105, column: 67, scope: !1643)
!1659 = !DILocation(line: 105, column: 74, scope: !1643)
!1660 = !DILocation(line: 105, column: 64, scope: !1643)
!1661 = !DILocation(line: 105, column: 56, scope: !1643)
!1662 = !DILocation(line: 106, column: 13, scope: !1643)
!1663 = !DILocation(line: 109, column: 20, scope: !1643)
!1664 = !DILocation(line: 110, column: 18, scope: !1643)
!1665 = !DILocation(line: 111, column: 67, scope: !1643)
!1666 = !DILocation(line: 111, column: 74, scope: !1643)
!1667 = !DILocation(line: 111, column: 64, scope: !1643)
!1668 = !DILocation(line: 111, column: 56, scope: !1643)
!1669 = !DILocation(line: 112, column: 13, scope: !1643)
!1670 = !DILocation(line: 115, column: 20, scope: !1643)
!1671 = !DILocation(line: 116, column: 18, scope: !1643)
!1672 = !DILocation(line: 117, column: 67, scope: !1643)
!1673 = !DILocation(line: 117, column: 74, scope: !1643)
!1674 = !DILocation(line: 117, column: 64, scope: !1643)
!1675 = !DILocation(line: 117, column: 56, scope: !1643)
!1676 = !DILocation(line: 118, column: 13, scope: !1643)
!1677 = !DILocation(line: 121, column: 20, scope: !1643)
!1678 = !DILocation(line: 122, column: 18, scope: !1643)
!1679 = !DILocation(line: 123, column: 67, scope: !1643)
!1680 = !DILocation(line: 123, column: 74, scope: !1643)
!1681 = !DILocation(line: 123, column: 64, scope: !1643)
!1682 = !DILocation(line: 123, column: 56, scope: !1643)
!1683 = !DILocation(line: 124, column: 13, scope: !1643)
!1684 = !DILocation(line: 127, column: 20, scope: !1643)
!1685 = !DILocation(line: 128, column: 18, scope: !1643)
!1686 = !DILocation(line: 129, column: 67, scope: !1643)
!1687 = !DILocation(line: 129, column: 74, scope: !1643)
!1688 = !DILocation(line: 129, column: 64, scope: !1643)
!1689 = !DILocation(line: 129, column: 56, scope: !1643)
!1690 = !DILocation(line: 130, column: 13, scope: !1643)
!1691 = !DILocation(line: 133, column: 20, scope: !1643)
!1692 = !DILocation(line: 134, column: 18, scope: !1643)
!1693 = !DILocation(line: 135, column: 67, scope: !1643)
!1694 = !DILocation(line: 135, column: 74, scope: !1643)
!1695 = !DILocation(line: 135, column: 64, scope: !1643)
!1696 = !DILocation(line: 135, column: 56, scope: !1643)
!1697 = !DILocation(line: 136, column: 13, scope: !1643)
!1698 = !DILocation(line: 139, column: 20, scope: !1643)
!1699 = !DILocation(line: 140, column: 18, scope: !1643)
!1700 = !DILocation(line: 141, column: 67, scope: !1643)
!1701 = !DILocation(line: 141, column: 64, scope: !1643)
!1702 = !DILocation(line: 141, column: 56, scope: !1643)
!1703 = !DILocation(line: 142, column: 13, scope: !1643)
!1704 = !DILocation(line: 145, column: 20, scope: !1643)
!1705 = !DILocation(line: 146, column: 18, scope: !1643)
!1706 = !DILocation(line: 147, column: 67, scope: !1643)
!1707 = !DILocation(line: 147, column: 74, scope: !1643)
!1708 = !DILocation(line: 147, column: 64, scope: !1643)
!1709 = !DILocation(line: 147, column: 56, scope: !1643)
!1710 = !DILocation(line: 148, column: 13, scope: !1643)
!1711 = !DILocation(line: 151, column: 20, scope: !1643)
!1712 = !DILocation(line: 152, column: 18, scope: !1643)
!1713 = !DILocation(line: 153, column: 67, scope: !1643)
!1714 = !DILocation(line: 153, column: 74, scope: !1643)
!1715 = !DILocation(line: 153, column: 64, scope: !1643)
!1716 = !DILocation(line: 153, column: 56, scope: !1643)
!1717 = !DILocation(line: 154, column: 13, scope: !1643)
!1718 = !DILocation(line: 157, column: 20, scope: !1643)
!1719 = !DILocation(line: 158, column: 18, scope: !1643)
!1720 = !DILocation(line: 159, column: 67, scope: !1643)
!1721 = !DILocation(line: 159, column: 74, scope: !1643)
!1722 = !DILocation(line: 159, column: 64, scope: !1643)
!1723 = !DILocation(line: 159, column: 56, scope: !1643)
!1724 = !DILocation(line: 160, column: 29, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1643, file: !784, line: 160, column: 17)
!1726 = !DILocation(line: 161, column: 17, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1725, file: !784, line: 160, column: 60)
!1728 = !DILocation(line: 162, column: 13, scope: !1727)
!1729 = !DILocation(line: 166, column: 20, scope: !1643)
!1730 = !DILocation(line: 167, column: 18, scope: !1643)
!1731 = !DILocation(line: 168, column: 67, scope: !1643)
!1732 = !DILocation(line: 168, column: 74, scope: !1643)
!1733 = !DILocation(line: 168, column: 64, scope: !1643)
!1734 = !DILocation(line: 168, column: 56, scope: !1643)
!1735 = !DILocation(line: 169, column: 29, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1643, file: !784, line: 169, column: 17)
!1737 = !DILocation(line: 170, column: 17, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !784, line: 169, column: 45)
!1739 = !DILocation(line: 171, column: 13, scope: !1738)
!1740 = !DILocation(line: 175, column: 20, scope: !1643)
!1741 = !DILocation(line: 176, column: 18, scope: !1643)
!1742 = !DILocation(line: 177, column: 67, scope: !1643)
!1743 = !DILocation(line: 177, column: 74, scope: !1643)
!1744 = !DILocation(line: 177, column: 64, scope: !1643)
!1745 = !DILocation(line: 177, column: 56, scope: !1643)
!1746 = !DILocation(line: 178, column: 19, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1643, file: !784, line: 178, column: 17)
!1748 = !DILocation(line: 178, column: 17, scope: !1643)
!1749 = !DILocation(line: 179, column: 17, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !784, line: 178, column: 30)
!1751 = !DILocation(line: 180, column: 13, scope: !1750)
!1752 = !DILocation(line: 184, column: 20, scope: !1643)
!1753 = !DILocation(line: 185, column: 18, scope: !1643)
!1754 = !DILocation(line: 186, column: 67, scope: !1643)
!1755 = !DILocation(line: 186, column: 74, scope: !1643)
!1756 = !DILocation(line: 186, column: 64, scope: !1643)
!1757 = !DILocation(line: 186, column: 56, scope: !1643)
!1758 = !DILocation(line: 187, column: 29, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1643, file: !784, line: 187, column: 17)
!1760 = !DILocation(line: 188, column: 17, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1759, file: !784, line: 187, column: 45)
!1762 = !DILocation(line: 189, column: 13, scope: !1761)
!1763 = !DILocation(line: 193, column: 20, scope: !1643)
!1764 = !DILocation(line: 194, column: 18, scope: !1643)
!1765 = !DILocation(line: 195, column: 67, scope: !1643)
!1766 = !DILocation(line: 195, column: 74, scope: !1643)
!1767 = !DILocation(line: 195, column: 64, scope: !1643)
!1768 = !DILocation(line: 195, column: 56, scope: !1643)
!1769 = !DILocation(line: 196, column: 29, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1643, file: !784, line: 196, column: 17)
!1771 = !DILocation(line: 197, column: 17, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1770, file: !784, line: 196, column: 45)
!1773 = !DILocation(line: 198, column: 13, scope: !1772)
!1774 = !DILocation(line: 202, column: 20, scope: !1643)
!1775 = !DILocation(line: 203, column: 18, scope: !1643)
!1776 = !DILocation(line: 204, column: 67, scope: !1643)
!1777 = !DILocation(line: 204, column: 64, scope: !1643)
!1778 = !DILocation(line: 204, column: 56, scope: !1643)
!1779 = !DILocation(line: 205, column: 29, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1643, file: !784, line: 205, column: 17)
!1781 = !DILocation(line: 206, column: 17, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1780, file: !784, line: 205, column: 45)
!1783 = !DILocation(line: 207, column: 13, scope: !1782)
!1784 = !DILocation(line: 211, column: 20, scope: !1643)
!1785 = !DILocation(line: 212, column: 18, scope: !1643)
!1786 = !DILocation(line: 213, column: 67, scope: !1643)
!1787 = !DILocation(line: 213, column: 74, scope: !1643)
!1788 = !DILocation(line: 213, column: 64, scope: !1643)
!1789 = !DILocation(line: 213, column: 56, scope: !1643)
!1790 = !DILocation(line: 214, column: 13, scope: !1643)
!1791 = !DILocation(line: 217, column: 20, scope: !1643)
!1792 = !DILocation(line: 218, column: 18, scope: !1643)
!1793 = !DILocation(line: 219, column: 67, scope: !1643)
!1794 = !DILocation(line: 219, column: 74, scope: !1643)
!1795 = !DILocation(line: 219, column: 64, scope: !1643)
!1796 = !DILocation(line: 219, column: 56, scope: !1643)
!1797 = !DILocation(line: 220, column: 13, scope: !1643)
!1798 = !DILocation(line: 223, column: 20, scope: !1643)
!1799 = !DILocation(line: 224, column: 18, scope: !1643)
!1800 = !DILocation(line: 225, column: 67, scope: !1643)
!1801 = !DILocation(line: 225, column: 74, scope: !1643)
!1802 = !DILocation(line: 225, column: 64, scope: !1643)
!1803 = !DILocation(line: 225, column: 56, scope: !1643)
!1804 = !DILocation(line: 226, column: 13, scope: !1643)
!1805 = !DILocation(line: 229, column: 20, scope: !1643)
!1806 = !DILocation(line: 230, column: 18, scope: !1643)
!1807 = !DILocation(line: 231, column: 67, scope: !1643)
!1808 = !DILocation(line: 231, column: 74, scope: !1643)
!1809 = !DILocation(line: 231, column: 64, scope: !1643)
!1810 = !DILocation(line: 231, column: 56, scope: !1643)
!1811 = !DILocation(line: 232, column: 13, scope: !1643)
!1812 = !DILocation(line: 235, column: 20, scope: !1643)
!1813 = !DILocation(line: 236, column: 18, scope: !1643)
!1814 = !DILocation(line: 237, column: 66, scope: !1643)
!1815 = !DILocation(line: 237, column: 73, scope: !1643)
!1816 = !DILocation(line: 237, column: 63, scope: !1643)
!1817 = !DILocation(line: 237, column: 56, scope: !1643)
!1818 = !DILocation(line: 238, column: 13, scope: !1643)
!1819 = !DILocation(line: 241, column: 20, scope: !1643)
!1820 = !DILocation(line: 242, column: 18, scope: !1643)
!1821 = !DILocation(line: 243, column: 67, scope: !1643)
!1822 = !DILocation(line: 243, column: 74, scope: !1643)
!1823 = !DILocation(line: 243, column: 64, scope: !1643)
!1824 = !DILocation(line: 243, column: 56, scope: !1643)
!1825 = !DILocation(line: 244, column: 13, scope: !1643)
!1826 = !DILocation(line: 247, column: 20, scope: !1643)
!1827 = !DILocation(line: 248, column: 18, scope: !1643)
!1828 = !DILocation(line: 249, column: 67, scope: !1643)
!1829 = !DILocation(line: 249, column: 74, scope: !1643)
!1830 = !DILocation(line: 249, column: 64, scope: !1643)
!1831 = !DILocation(line: 249, column: 56, scope: !1643)
!1832 = !DILocation(line: 250, column: 13, scope: !1643)
!1833 = !DILocation(line: 253, column: 20, scope: !1643)
!1834 = !DILocation(line: 254, column: 18, scope: !1643)
!1835 = !DILocation(line: 255, column: 67, scope: !1643)
!1836 = !DILocation(line: 255, column: 74, scope: !1643)
!1837 = !DILocation(line: 255, column: 64, scope: !1643)
!1838 = !DILocation(line: 255, column: 56, scope: !1643)
!1839 = !DILocation(line: 256, column: 13, scope: !1643)
!1840 = !DILocation(line: 259, column: 20, scope: !1643)
!1841 = !DILocation(line: 260, column: 18, scope: !1643)
!1842 = !DILocation(line: 261, column: 67, scope: !1643)
!1843 = !DILocation(line: 261, column: 74, scope: !1643)
!1844 = !DILocation(line: 261, column: 64, scope: !1643)
!1845 = !DILocation(line: 261, column: 56, scope: !1643)
!1846 = !DILocation(line: 262, column: 13, scope: !1643)
!1847 = !DILocation(line: 265, column: 20, scope: !1643)
!1848 = !DILocation(line: 266, column: 18, scope: !1643)
!1849 = !DILocation(line: 267, column: 67, scope: !1643)
!1850 = !DILocation(line: 267, column: 74, scope: !1643)
!1851 = !DILocation(line: 267, column: 64, scope: !1643)
!1852 = !DILocation(line: 267, column: 56, scope: !1643)
!1853 = !DILocation(line: 268, column: 13, scope: !1643)
!1854 = !DILocation(line: 271, column: 20, scope: !1643)
!1855 = !DILocation(line: 272, column: 18, scope: !1643)
!1856 = !DILocation(line: 273, column: 67, scope: !1643)
!1857 = !DILocation(line: 273, column: 74, scope: !1643)
!1858 = !DILocation(line: 273, column: 64, scope: !1643)
!1859 = !DILocation(line: 273, column: 56, scope: !1643)
!1860 = !DILocation(line: 274, column: 13, scope: !1643)
!1861 = !DILocation(line: 278, column: 1, scope: !1631)
!1862 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !865, file: !865, line: 47, type: !1863, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !12}
!1865 = !{!1866}
!1866 = !DILocalVariable(name: "addr", arg: 1, scope: !1862, file: !865, line: 47, type: !12)
!1867 = !DILocation(line: 0, scope: !1862)
!1868 = !DILocation(line: 49, column: 15, scope: !1862)
!1869 = !DILocation(line: 51, column: 5, scope: !1862)
!1870 = !{i64 2624}
!1871 = !DILocation(line: 52, column: 5, scope: !1862)
!1872 = !{i64 2651}
!1873 = !DILocation(line: 53, column: 1, scope: !1862)
!1874 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !865, file: !865, line: 56, type: !1875, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !1877)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !7}
!1877 = !{!1878}
!1878 = !DILocalVariable(name: "source", arg: 1, scope: !1874, file: !865, line: 56, type: !7)
!1879 = !DILocation(line: 0, scope: !1874)
!1880 = !DILocation(line: 58, column: 16, scope: !1874)
!1881 = !DILocation(line: 59, column: 1, scope: !1874)
!1882 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !865, file: !865, line: 61, type: !1883, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!12}
!1885 = !{!1886}
!1886 = !DILocalVariable(name: "mask", scope: !1882, file: !865, line: 63, type: !12)
!1887 = !DILocation(line: 470, column: 3, scope: !1888, inlinedAt: !1892)
!1888 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1889, file: !1889, line: 466, type: !1883, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !1890)
!1889 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!1890 = !{!1891}
!1891 = !DILocalVariable(name: "result", scope: !1888, file: !1889, line: 468, type: !12)
!1892 = distinct !DILocation(line: 64, column: 5, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1882, file: !865, line: 64, column: 5)
!1894 = !{i64 302169}
!1895 = !DILocation(line: 0, scope: !1888, inlinedAt: !1892)
!1896 = !DILocation(line: 0, scope: !1882)
!1897 = !DILocation(line: 330, column: 3, scope: !1898, inlinedAt: !1900)
!1898 = distinct !DISubprogram(name: "__disable_irq", scope: !1889, file: !1889, line: 328, type: !394, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !1899)
!1899 = !{}
!1900 = distinct !DILocation(line: 64, column: 5, scope: !1893)
!1901 = !{i64 298833}
!1902 = !DILocation(line: 65, column: 5, scope: !1882)
!1903 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !865, file: !865, line: 68, type: !1863, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !1904)
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "mask", arg: 1, scope: !1903, file: !865, line: 68, type: !12)
!1906 = !DILocation(line: 0, scope: !1903)
!1907 = !DILocalVariable(name: "priMask", arg: 1, scope: !1908, file: !1889, line: 481, type: !12)
!1908 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1889, file: !1889, line: 481, type: !1863, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !864, retainedNodes: !1909)
!1909 = !{!1907}
!1910 = !DILocation(line: 0, scope: !1908, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 70, column: 5, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1903, file: !865, line: 70, column: 5)
!1913 = !DILocation(line: 483, column: 3, scope: !1908, inlinedAt: !1911)
!1914 = !{i64 302487}
!1915 = !DILocation(line: 71, column: 1, scope: !1903)
!1916 = distinct !DISubprogram(name: "pinmux_config", scope: !910, file: !910, line: 54, type: !1917, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !909, retainedNodes: !1919)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!206, !981, !12}
!1919 = !{!1920, !1921, !1922}
!1920 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !1916, file: !910, line: 54, type: !981)
!1921 = !DILocalVariable(name: "function", arg: 2, scope: !1916, file: !910, line: 54, type: !12)
!1922 = !DILocalVariable(name: "ePadIndex", scope: !1916, file: !910, line: 56, type: !1635)
!1923 = !DILocation(line: 0, scope: !1916)
!1924 = !DILocation(line: 60, column: 5, scope: !1916)
!1925 = !DILocation(line: 205, column: 38, scope: !1916)
!1926 = !DILocation(line: 205, column: 5, scope: !1916)
!1927 = !DILocation(line: 207, column: 5, scope: !1916)
!1928 = !DILocation(line: 208, column: 1, scope: !1916)
!1929 = distinct !DISubprogram(name: "top_xtal_init", scope: !3, file: !3, line: 52, type: !394, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1930)
!1930 = !{!1931, !1932}
!1931 = !DILocalVariable(name: "u4RegVal", scope: !1929, file: !3, line: 54, type: !12)
!1932 = !DILocalVariable(name: "reg", scope: !1929, file: !3, line: 55, type: !659)
!1933 = !DILocation(line: 0, scope: !1929)
!1934 = !DILocation(line: 55, column: 25, scope: !1929)
!1935 = !DILocation(line: 56, column: 16, scope: !1929)
!1936 = !DILocation(line: 56, column: 23, scope: !1929)
!1937 = !DILocation(line: 58, column: 16, scope: !1929)
!1938 = !DILocation(line: 61, column: 5, scope: !1929)
!1939 = !DILocation(line: 59, column: 14, scope: !1929)
!1940 = !DILocation(line: 0, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1929, file: !3, line: 61, column: 18)
!1942 = !DILocation(line: 87, column: 38, scope: !1929)
!1943 = !DILocation(line: 88, column: 21, scope: !1929)
!1944 = !DILocation(line: 88, column: 19, scope: !1929)
!1945 = !DILocation(line: 89, column: 5, scope: !1929)
!1946 = !DILocation(line: 90, column: 17, scope: !1929)
!1947 = !DILocation(line: 90, column: 33, scope: !1929)
!1948 = !DILocation(line: 90, column: 5, scope: !1929)
!1949 = !DILocation(line: 91, column: 1, scope: !1929)
!1950 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !3, file: !3, line: 98, type: !1883, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1951 = !DILocation(line: 100, column: 12, scope: !1950)
!1952 = !DILocation(line: 100, column: 5, scope: !1950)
!1953 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !3, file: !3, line: 108, type: !1883, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1954 = !DILocation(line: 110, column: 12, scope: !1953)
!1955 = !DILocation(line: 110, column: 5, scope: !1953)
!1956 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !3, file: !3, line: 118, type: !394, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!1957 = !{!1958, !1959}
!1958 = !DILocalVariable(name: "reg", scope: !1956, file: !3, line: 120, type: !11)
!1959 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1956, file: !3, line: 121, type: !10)
!1960 = !DILocation(line: 120, column: 5, scope: !1956)
!1961 = !DILocation(line: 120, column: 23, scope: !1956)
!1962 = !DILocation(line: 0, scope: !1956)
!1963 = !DILocation(line: 123, column: 11, scope: !1956)
!1964 = !DILocation(line: 123, column: 9, scope: !1956)
!1965 = !DILocation(line: 124, column: 12, scope: !1956)
!1966 = !DILocation(line: 124, column: 16, scope: !1956)
!1967 = !DILocation(line: 124, column: 39, scope: !1956)
!1968 = !DILocation(line: 124, column: 9, scope: !1956)
!1969 = !DILocation(line: 126, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 126, column: 9)
!1971 = !DILocation(line: 126, column: 13, scope: !1970)
!1972 = !DILocation(line: 126, column: 9, scope: !1956)
!1973 = !DILocation(line: 127, column: 15, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !3, line: 126, column: 47)
!1975 = !DILocation(line: 127, column: 13, scope: !1974)
!1976 = !DILocation(line: 128, column: 15, scope: !1974)
!1977 = !DILocation(line: 128, column: 19, scope: !1974)
!1978 = !DILocation(line: 128, column: 13, scope: !1974)
!1979 = !DILocation(line: 129, column: 15, scope: !1974)
!1980 = !DILocation(line: 129, column: 19, scope: !1974)
!1981 = !DILocation(line: 129, column: 13, scope: !1974)
!1982 = !DILocation(line: 130, column: 46, scope: !1974)
!1983 = !DILocation(line: 130, column: 9, scope: !1974)
!1984 = !DILocation(line: 132, column: 9, scope: !1974)
!1985 = !DILocation(line: 133, column: 19, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 132, column: 12)
!1987 = !DILocation(line: 133, column: 17, scope: !1986)
!1988 = !DILocation(line: 134, column: 19, scope: !1986)
!1989 = !DILocation(line: 134, column: 23, scope: !1986)
!1990 = !DILocation(line: 134, column: 17, scope: !1986)
!1991 = !DILocation(line: 135, column: 19, scope: !1974)
!1992 = !DILocation(line: 135, column: 18, scope: !1974)
!1993 = !DILocation(line: 135, column: 9, scope: !1986)
!1994 = distinct !{!1994, !1984, !1995}
!1995 = !DILocation(line: 135, column: 22, scope: !1974)
!1996 = !DILocation(line: 138, column: 1, scope: !1956)
!1997 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !1998, file: !1998, line: 176, type: !1999, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!1998 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!12, !2001}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2003 = !{!2004}
!2004 = !DILocalVariable(name: "Register", arg: 1, scope: !1997, file: !1998, line: 176, type: !2001)
!2005 = !DILocation(line: 0, scope: !1997)
!2006 = !DILocation(line: 178, column: 13, scope: !1997)
!2007 = !DILocation(line: 178, column: 12, scope: !1997)
!2008 = !DILocation(line: 178, column: 5, scope: !1997)
!2009 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !1998, file: !1998, line: 171, type: !2010, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2012)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !2001, !12}
!2012 = !{!2013, !2014}
!2013 = !DILocalVariable(name: "Register", arg: 1, scope: !2009, file: !1998, line: 171, type: !2001)
!2014 = !DILocalVariable(name: "Value", arg: 2, scope: !2009, file: !1998, line: 171, type: !12)
!2015 = !DILocation(line: 0, scope: !2009)
!2016 = !DILocation(line: 173, column: 6, scope: !2009)
!2017 = !DILocation(line: 173, column: 36, scope: !2009)
!2018 = !DILocation(line: 174, column: 1, scope: !2009)
!2019 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !3, file: !3, line: 145, type: !2020, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2022)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !235}
!2022 = !{!2023, !2024, !2025}
!2023 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2019, file: !3, line: 145, type: !235)
!2024 = !DILocalVariable(name: "reg", scope: !2019, file: !3, line: 147, type: !11)
!2025 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2019, file: !3, line: 148, type: !10)
!2026 = !DILocation(line: 0, scope: !2019)
!2027 = !DILocation(line: 147, column: 5, scope: !2019)
!2028 = !DILocation(line: 147, column: 23, scope: !2019)
!2029 = !DILocation(line: 150, column: 11, scope: !2019)
!2030 = !DILocation(line: 150, column: 9, scope: !2019)
!2031 = !DILocation(line: 151, column: 12, scope: !2019)
!2032 = !DILocation(line: 151, column: 16, scope: !2019)
!2033 = !DILocation(line: 151, column: 39, scope: !2019)
!2034 = !DILocation(line: 151, column: 9, scope: !2019)
!2035 = !DILocation(line: 153, column: 9, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 153, column: 9)
!2037 = !DILocation(line: 153, column: 13, scope: !2036)
!2038 = !DILocation(line: 153, column: 9, scope: !2019)
!2039 = !DILocation(line: 154, column: 15, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 153, column: 45)
!2041 = !DILocation(line: 154, column: 13, scope: !2040)
!2042 = !DILocation(line: 155, column: 15, scope: !2040)
!2043 = !DILocation(line: 155, column: 19, scope: !2040)
!2044 = !DILocation(line: 155, column: 13, scope: !2040)
!2045 = !DILocation(line: 156, column: 15, scope: !2040)
!2046 = !DILocation(line: 156, column: 19, scope: !2040)
!2047 = !DILocation(line: 156, column: 13, scope: !2040)
!2048 = !DILocation(line: 157, column: 15, scope: !2040)
!2049 = !DILocation(line: 157, column: 13, scope: !2040)
!2050 = !DILocation(line: 158, column: 46, scope: !2040)
!2051 = !DILocation(line: 158, column: 9, scope: !2040)
!2052 = !DILocation(line: 160, column: 15, scope: !2040)
!2053 = !DILocation(line: 160, column: 13, scope: !2040)
!2054 = !DILocation(line: 161, column: 15, scope: !2040)
!2055 = !DILocation(line: 161, column: 19, scope: !2040)
!2056 = !DILocation(line: 161, column: 13, scope: !2040)
!2057 = !DILocation(line: 162, column: 15, scope: !2040)
!2058 = !DILocation(line: 162, column: 19, scope: !2040)
!2059 = !DILocation(line: 162, column: 13, scope: !2040)
!2060 = !DILocation(line: 163, column: 15, scope: !2040)
!2061 = !DILocation(line: 163, column: 19, scope: !2040)
!2062 = !DILocation(line: 163, column: 13, scope: !2040)
!2063 = !DILocation(line: 164, column: 46, scope: !2040)
!2064 = !DILocation(line: 164, column: 9, scope: !2040)
!2065 = !DILocation(line: 166, column: 9, scope: !2040)
!2066 = !DILocation(line: 167, column: 19, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 166, column: 12)
!2068 = !DILocation(line: 167, column: 17, scope: !2067)
!2069 = !DILocation(line: 168, column: 19, scope: !2067)
!2070 = !DILocation(line: 168, column: 23, scope: !2067)
!2071 = !DILocation(line: 168, column: 17, scope: !2067)
!2072 = !DILocation(line: 169, column: 19, scope: !2040)
!2073 = !DILocation(line: 169, column: 18, scope: !2040)
!2074 = !DILocation(line: 169, column: 9, scope: !2067)
!2075 = distinct !{!2075, !2065, !2076}
!2076 = !DILocation(line: 169, column: 22, scope: !2040)
!2077 = !DILocation(line: 171, column: 15, scope: !2040)
!2078 = !DILocation(line: 171, column: 13, scope: !2040)
!2079 = !DILocation(line: 172, column: 15, scope: !2040)
!2080 = !DILocation(line: 172, column: 19, scope: !2040)
!2081 = !DILocation(line: 172, column: 13, scope: !2040)
!2082 = !DILocation(line: 173, column: 15, scope: !2040)
!2083 = !DILocation(line: 173, column: 19, scope: !2040)
!2084 = !DILocation(line: 173, column: 13, scope: !2040)
!2085 = !DILocation(line: 174, column: 5, scope: !2040)
!2086 = !DILocation(line: 176, column: 11, scope: !2019)
!2087 = !DILocation(line: 176, column: 9, scope: !2019)
!2088 = !DILocation(line: 177, column: 9, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 177, column: 9)
!2090 = !DILocation(line: 0, scope: !2089)
!2091 = !DILocation(line: 177, column: 9, scope: !2019)
!2092 = !DILocation(line: 178, column: 19, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 177, column: 17)
!2094 = !DILocation(line: 178, column: 13, scope: !2093)
!2095 = !DILocation(line: 179, column: 5, scope: !2093)
!2096 = !DILocation(line: 180, column: 13, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 179, column: 12)
!2098 = !DILocation(line: 182, column: 42, scope: !2019)
!2099 = !DILocation(line: 182, column: 5, scope: !2019)
!2100 = !DILocation(line: 184, column: 1, scope: !2019)
!2101 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !3, file: !3, line: 191, type: !394, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2102)
!2102 = !{!2103, !2104}
!2103 = !DILocalVariable(name: "reg", scope: !2101, file: !3, line: 193, type: !11)
!2104 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2101, file: !3, line: 194, type: !10)
!2105 = !DILocation(line: 193, column: 5, scope: !2101)
!2106 = !DILocation(line: 193, column: 23, scope: !2101)
!2107 = !DILocation(line: 0, scope: !2101)
!2108 = !DILocation(line: 196, column: 11, scope: !2101)
!2109 = !DILocation(line: 196, column: 9, scope: !2101)
!2110 = !DILocation(line: 197, column: 11, scope: !2101)
!2111 = !DILocation(line: 197, column: 15, scope: !2101)
!2112 = !DILocation(line: 197, column: 9, scope: !2101)
!2113 = !DILocation(line: 198, column: 11, scope: !2101)
!2114 = !DILocation(line: 198, column: 15, scope: !2101)
!2115 = !DILocation(line: 198, column: 9, scope: !2101)
!2116 = !DILocation(line: 199, column: 11, scope: !2101)
!2117 = !DILocation(line: 199, column: 9, scope: !2101)
!2118 = !DILocation(line: 200, column: 42, scope: !2101)
!2119 = !DILocation(line: 200, column: 5, scope: !2101)
!2120 = !DILocation(line: 202, column: 11, scope: !2101)
!2121 = !DILocation(line: 202, column: 9, scope: !2101)
!2122 = !DILocation(line: 203, column: 11, scope: !2101)
!2123 = !DILocation(line: 203, column: 15, scope: !2101)
!2124 = !DILocation(line: 203, column: 9, scope: !2101)
!2125 = !DILocation(line: 204, column: 11, scope: !2101)
!2126 = !DILocation(line: 204, column: 15, scope: !2101)
!2127 = !DILocation(line: 204, column: 9, scope: !2101)
!2128 = !DILocation(line: 205, column: 11, scope: !2101)
!2129 = !DILocation(line: 205, column: 9, scope: !2101)
!2130 = !DILocation(line: 206, column: 42, scope: !2101)
!2131 = !DILocation(line: 206, column: 5, scope: !2101)
!2132 = !DILocation(line: 209, column: 1, scope: !2101)
!2133 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !3, file: !3, line: 216, type: !394, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2134)
!2134 = !{!2135, !2136}
!2135 = !DILocalVariable(name: "reg", scope: !2133, file: !3, line: 218, type: !11)
!2136 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2133, file: !3, line: 219, type: !10)
!2137 = !DILocation(line: 218, column: 5, scope: !2133)
!2138 = !DILocation(line: 218, column: 23, scope: !2133)
!2139 = !DILocation(line: 0, scope: !2133)
!2140 = !DILocation(line: 222, column: 11, scope: !2133)
!2141 = !DILocation(line: 222, column: 9, scope: !2133)
!2142 = !DILocation(line: 223, column: 11, scope: !2133)
!2143 = !DILocation(line: 223, column: 15, scope: !2133)
!2144 = !DILocation(line: 223, column: 9, scope: !2133)
!2145 = !DILocation(line: 224, column: 11, scope: !2133)
!2146 = !DILocation(line: 224, column: 9, scope: !2133)
!2147 = !DILocation(line: 225, column: 39, scope: !2133)
!2148 = !DILocation(line: 225, column: 5, scope: !2133)
!2149 = !DILocation(line: 228, column: 11, scope: !2133)
!2150 = !DILocation(line: 228, column: 9, scope: !2133)
!2151 = !DILocation(line: 229, column: 11, scope: !2133)
!2152 = !DILocation(line: 229, column: 15, scope: !2133)
!2153 = !DILocation(line: 229, column: 9, scope: !2133)
!2154 = !DILocation(line: 230, column: 11, scope: !2133)
!2155 = !DILocation(line: 230, column: 9, scope: !2133)
!2156 = !DILocation(line: 231, column: 39, scope: !2133)
!2157 = !DILocation(line: 231, column: 5, scope: !2133)
!2158 = !DILocation(line: 233, column: 5, scope: !2133)
!2159 = !DILocation(line: 233, column: 12, scope: !2133)
!2160 = !DILocation(line: 233, column: 19, scope: !2133)
!2161 = !DILocation(line: 233, column: 16, scope: !2133)
!2162 = distinct !{!2162, !2158, !2163}
!2163 = !DILocation(line: 233, column: 52, scope: !2133)
!2164 = !DILocation(line: 235, column: 21, scope: !2133)
!2165 = !DILocation(line: 235, column: 19, scope: !2133)
!2166 = !DILocation(line: 236, column: 5, scope: !2133)
!2167 = !DILocation(line: 237, column: 17, scope: !2133)
!2168 = !DILocation(line: 237, column: 33, scope: !2133)
!2169 = !DILocation(line: 237, column: 5, scope: !2133)
!2170 = !DILocation(line: 239, column: 1, scope: !2133)
!2171 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !3, file: !3, line: 246, type: !394, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2172 = !{!2173, !2174}
!2173 = !DILocalVariable(name: "reg", scope: !2171, file: !3, line: 248, type: !11)
!2174 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2171, file: !3, line: 249, type: !10)
!2175 = !DILocation(line: 248, column: 5, scope: !2171)
!2176 = !DILocation(line: 248, column: 23, scope: !2171)
!2177 = !DILocation(line: 0, scope: !2171)
!2178 = !DILocation(line: 252, column: 5, scope: !2171)
!2179 = !DILocation(line: 255, column: 11, scope: !2171)
!2180 = !DILocation(line: 255, column: 9, scope: !2171)
!2181 = !DILocation(line: 256, column: 11, scope: !2171)
!2182 = !DILocation(line: 256, column: 15, scope: !2171)
!2183 = !DILocation(line: 256, column: 9, scope: !2171)
!2184 = !DILocation(line: 257, column: 11, scope: !2171)
!2185 = !DILocation(line: 257, column: 15, scope: !2171)
!2186 = !DILocation(line: 257, column: 9, scope: !2171)
!2187 = !DILocation(line: 258, column: 39, scope: !2171)
!2188 = !DILocation(line: 258, column: 5, scope: !2171)
!2189 = !DILocation(line: 260, column: 5, scope: !2171)
!2190 = !DILocation(line: 260, column: 12, scope: !2171)
!2191 = !DILocation(line: 260, column: 19, scope: !2171)
!2192 = !DILocation(line: 260, column: 16, scope: !2171)
!2193 = distinct !{!2193, !2189, !2194}
!2194 = !DILocation(line: 260, column: 52, scope: !2171)
!2195 = !DILocation(line: 263, column: 11, scope: !2171)
!2196 = !DILocation(line: 263, column: 9, scope: !2171)
!2197 = !DILocation(line: 264, column: 11, scope: !2171)
!2198 = !DILocation(line: 264, column: 15, scope: !2171)
!2199 = !DILocation(line: 264, column: 9, scope: !2171)
!2200 = !DILocation(line: 265, column: 11, scope: !2171)
!2201 = !DILocation(line: 265, column: 15, scope: !2171)
!2202 = !DILocation(line: 265, column: 9, scope: !2171)
!2203 = !DILocation(line: 266, column: 39, scope: !2171)
!2204 = !DILocation(line: 266, column: 5, scope: !2171)
!2205 = !DILocation(line: 269, column: 11, scope: !2171)
!2206 = !DILocation(line: 269, column: 9, scope: !2171)
!2207 = !DILocation(line: 270, column: 11, scope: !2171)
!2208 = !DILocation(line: 270, column: 15, scope: !2171)
!2209 = !DILocation(line: 270, column: 9, scope: !2171)
!2210 = !DILocation(line: 271, column: 11, scope: !2171)
!2211 = !DILocation(line: 271, column: 15, scope: !2171)
!2212 = !DILocation(line: 271, column: 9, scope: !2171)
!2213 = !DILocation(line: 272, column: 39, scope: !2171)
!2214 = !DILocation(line: 272, column: 5, scope: !2171)
!2215 = !DILocation(line: 273, column: 19, scope: !2171)
!2216 = !DILocation(line: 274, column: 5, scope: !2171)
!2217 = !DILocation(line: 275, column: 17, scope: !2171)
!2218 = !DILocation(line: 275, column: 33, scope: !2171)
!2219 = !DILocation(line: 275, column: 5, scope: !2171)
!2220 = !DILocation(line: 277, column: 1, scope: !2171)
!2221 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !3, file: !3, line: 284, type: !394, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2222)
!2222 = !{!2223, !2224}
!2223 = !DILocalVariable(name: "reg", scope: !2221, file: !3, line: 286, type: !11)
!2224 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2221, file: !3, line: 287, type: !10)
!2225 = !DILocation(line: 286, column: 5, scope: !2221)
!2226 = !DILocation(line: 286, column: 23, scope: !2221)
!2227 = !DILocation(line: 0, scope: !2221)
!2228 = !DILocation(line: 290, column: 5, scope: !2221)
!2229 = !DILocation(line: 293, column: 11, scope: !2221)
!2230 = !DILocation(line: 293, column: 9, scope: !2221)
!2231 = !DILocation(line: 294, column: 11, scope: !2221)
!2232 = !DILocation(line: 294, column: 15, scope: !2221)
!2233 = !DILocation(line: 294, column: 9, scope: !2221)
!2234 = !DILocation(line: 295, column: 11, scope: !2221)
!2235 = !DILocation(line: 295, column: 15, scope: !2221)
!2236 = !DILocation(line: 295, column: 9, scope: !2221)
!2237 = !DILocation(line: 296, column: 39, scope: !2221)
!2238 = !DILocation(line: 296, column: 5, scope: !2221)
!2239 = !DILocation(line: 298, column: 5, scope: !2221)
!2240 = !DILocation(line: 298, column: 12, scope: !2221)
!2241 = !DILocation(line: 298, column: 19, scope: !2221)
!2242 = !DILocation(line: 298, column: 16, scope: !2221)
!2243 = distinct !{!2243, !2239, !2244}
!2244 = !DILocation(line: 298, column: 52, scope: !2221)
!2245 = !DILocation(line: 301, column: 11, scope: !2221)
!2246 = !DILocation(line: 301, column: 9, scope: !2221)
!2247 = !DILocation(line: 302, column: 11, scope: !2221)
!2248 = !DILocation(line: 302, column: 15, scope: !2221)
!2249 = !DILocation(line: 302, column: 9, scope: !2221)
!2250 = !DILocation(line: 303, column: 11, scope: !2221)
!2251 = !DILocation(line: 303, column: 15, scope: !2221)
!2252 = !DILocation(line: 303, column: 9, scope: !2221)
!2253 = !DILocation(line: 304, column: 39, scope: !2221)
!2254 = !DILocation(line: 304, column: 5, scope: !2221)
!2255 = !DILocation(line: 307, column: 11, scope: !2221)
!2256 = !DILocation(line: 307, column: 9, scope: !2221)
!2257 = !DILocation(line: 308, column: 11, scope: !2221)
!2258 = !DILocation(line: 308, column: 15, scope: !2221)
!2259 = !DILocation(line: 308, column: 9, scope: !2221)
!2260 = !DILocation(line: 309, column: 11, scope: !2221)
!2261 = !DILocation(line: 309, column: 15, scope: !2221)
!2262 = !DILocation(line: 309, column: 9, scope: !2221)
!2263 = !DILocation(line: 310, column: 39, scope: !2221)
!2264 = !DILocation(line: 310, column: 5, scope: !2221)
!2265 = !DILocation(line: 311, column: 19, scope: !2221)
!2266 = !DILocation(line: 312, column: 5, scope: !2221)
!2267 = !DILocation(line: 313, column: 17, scope: !2221)
!2268 = !DILocation(line: 313, column: 33, scope: !2221)
!2269 = !DILocation(line: 313, column: 5, scope: !2221)
!2270 = !DILocation(line: 315, column: 1, scope: !2221)
!2271 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !3, file: !3, line: 323, type: !394, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2272)
!2272 = !{!2273, !2274}
!2273 = !DILocalVariable(name: "reg", scope: !2271, file: !3, line: 325, type: !11)
!2274 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2271, file: !3, line: 326, type: !10)
!2275 = !DILocation(line: 325, column: 5, scope: !2271)
!2276 = !DILocation(line: 325, column: 23, scope: !2271)
!2277 = !DILocation(line: 0, scope: !2271)
!2278 = !DILocation(line: 329, column: 5, scope: !2271)
!2279 = !DILocation(line: 332, column: 11, scope: !2271)
!2280 = !DILocation(line: 332, column: 9, scope: !2271)
!2281 = !DILocation(line: 333, column: 11, scope: !2271)
!2282 = !DILocation(line: 333, column: 15, scope: !2271)
!2283 = !DILocation(line: 333, column: 9, scope: !2271)
!2284 = !DILocation(line: 334, column: 11, scope: !2271)
!2285 = !DILocation(line: 334, column: 9, scope: !2271)
!2286 = !DILocation(line: 335, column: 39, scope: !2271)
!2287 = !DILocation(line: 335, column: 5, scope: !2271)
!2288 = !DILocation(line: 337, column: 5, scope: !2271)
!2289 = !DILocation(line: 337, column: 12, scope: !2271)
!2290 = !DILocation(line: 337, column: 19, scope: !2271)
!2291 = !DILocation(line: 337, column: 16, scope: !2271)
!2292 = distinct !{!2292, !2288, !2293}
!2293 = !DILocation(line: 337, column: 52, scope: !2271)
!2294 = !DILocation(line: 340, column: 11, scope: !2271)
!2295 = !DILocation(line: 340, column: 9, scope: !2271)
!2296 = !DILocation(line: 341, column: 11, scope: !2271)
!2297 = !DILocation(line: 341, column: 15, scope: !2271)
!2298 = !DILocation(line: 341, column: 9, scope: !2271)
!2299 = !DILocation(line: 342, column: 11, scope: !2271)
!2300 = !DILocation(line: 342, column: 15, scope: !2271)
!2301 = !DILocation(line: 342, column: 9, scope: !2271)
!2302 = !DILocation(line: 343, column: 39, scope: !2271)
!2303 = !DILocation(line: 343, column: 5, scope: !2271)
!2304 = !DILocation(line: 344, column: 19, scope: !2271)
!2305 = !DILocation(line: 345, column: 5, scope: !2271)
!2306 = !DILocation(line: 346, column: 17, scope: !2271)
!2307 = !DILocation(line: 346, column: 33, scope: !2271)
!2308 = !DILocation(line: 346, column: 5, scope: !2271)
!2309 = !DILocation(line: 348, column: 1, scope: !2271)
!2310 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !3, file: !3, line: 353, type: !394, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2311)
!2311 = !{!2312, !2313}
!2312 = !DILocalVariable(name: "reg", scope: !2310, file: !3, line: 355, type: !17)
!2313 = !DILocalVariable(name: "pTopCfgHclk", scope: !2310, file: !3, line: 356, type: !16)
!2314 = !DILocation(line: 355, column: 5, scope: !2310)
!2315 = !DILocation(line: 355, column: 21, scope: !2310)
!2316 = !DILocation(line: 0, scope: !2310)
!2317 = !DILocation(line: 358, column: 11, scope: !2310)
!2318 = !DILocation(line: 358, column: 9, scope: !2310)
!2319 = !DILocation(line: 359, column: 11, scope: !2310)
!2320 = !DILocation(line: 359, column: 15, scope: !2310)
!2321 = !DILocation(line: 359, column: 9, scope: !2310)
!2322 = !DILocation(line: 360, column: 11, scope: !2310)
!2323 = !DILocation(line: 360, column: 9, scope: !2310)
!2324 = !DILocation(line: 361, column: 37, scope: !2310)
!2325 = !DILocation(line: 361, column: 5, scope: !2310)
!2326 = !DILocation(line: 362, column: 1, scope: !2310)
!2327 = distinct !DISubprogram(name: "getc", scope: !24, file: !24, line: 68, type: !2328, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!66}
!2330 = !{!2331}
!2331 = !DILocalVariable(name: "rc", scope: !2327, file: !24, line: 71, type: !66)
!2332 = !DILocation(line: 71, column: 14, scope: !2327)
!2333 = !DILocation(line: 0, scope: !2327)
!2334 = !DILocation(line: 72, column: 5, scope: !2327)
!2335 = distinct !DISubprogram(name: "getc_nowait", scope: !24, file: !24, line: 80, type: !2328, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2336)
!2336 = !{!2337}
!2337 = !DILocalVariable(name: "c", scope: !2335, file: !24, line: 82, type: !385)
!2338 = !DILocation(line: 84, column: 9, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2335, file: !24, line: 84, column: 9)
!2340 = !DILocation(line: 84, column: 40, scope: !2339)
!2341 = !DILocation(line: 84, column: 9, scope: !2335)
!2342 = !DILocation(line: 85, column: 13, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2339, file: !24, line: 84, column: 47)
!2344 = !DILocation(line: 86, column: 16, scope: !2343)
!2345 = !DILocation(line: 0, scope: !2335)
!2346 = !DILocation(line: 86, column: 9, scope: !2343)
!2347 = !DILocation(line: 0, scope: !2339)
!2348 = !DILocation(line: 90, column: 1, scope: !2335)
!2349 = distinct !DISubprogram(name: "uart_output_char", scope: !24, file: !24, line: 93, type: !2350, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2353)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !2352, !55}
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !27, line: 75, baseType: !26)
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "port_no", arg: 1, scope: !2349, file: !24, line: 93, type: !2352)
!2355 = !DILocalVariable(name: "c", arg: 2, scope: !2349, file: !24, line: 93, type: !55)
!2356 = !DILocalVariable(name: "base", scope: !2349, file: !24, line: 95, type: !7)
!2357 = !DILocation(line: 0, scope: !2349)
!2358 = !DILocation(line: 95, column: 25, scope: !2349)
!2359 = !DILocation(line: 97, column: 5, scope: !2349)
!2360 = !DILocation(line: 97, column: 14, scope: !2349)
!2361 = !DILocation(line: 97, column: 42, scope: !2349)
!2362 = !DILocation(line: 97, column: 12, scope: !2349)
!2363 = distinct !{!2363, !2359, !2364}
!2364 = !DILocation(line: 98, column: 9, scope: !2349)
!2365 = !DILocation(line: 99, column: 35, scope: !2349)
!2366 = !DILocation(line: 99, column: 5, scope: !2349)
!2367 = !DILocation(line: 99, column: 33, scope: !2349)
!2368 = !DILocation(line: 102, column: 1, scope: !2349)
!2369 = distinct !DISubprogram(name: "uart_input_char", scope: !24, file: !24, line: 106, type: !2370, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!235, !2352}
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "port_no", arg: 1, scope: !2369, file: !24, line: 106, type: !2352)
!2374 = !DILocalVariable(name: "base", scope: !2369, file: !24, line: 108, type: !7)
!2375 = !DILocalVariable(name: "c", scope: !2369, file: !24, line: 109, type: !385)
!2376 = !DILocation(line: 0, scope: !2369)
!2377 = !DILocation(line: 108, column: 25, scope: !2369)
!2378 = !DILocation(line: 111, column: 5, scope: !2369)
!2379 = !DILocation(line: 111, column: 14, scope: !2369)
!2380 = !DILocation(line: 111, column: 42, scope: !2369)
!2381 = !DILocation(line: 111, column: 12, scope: !2369)
!2382 = distinct !{!2382, !2378, !2383}
!2383 = !DILocation(line: 112, column: 9, scope: !2369)
!2384 = !DILocation(line: 114, column: 9, scope: !2369)
!2385 = !DILocation(line: 116, column: 5, scope: !2369)
!2386 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !24, file: !24, line: 120, type: !2387, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!12, !2352}
!2389 = !{!2390, !2391, !2392}
!2390 = !DILocalVariable(name: "port_no", arg: 1, scope: !2386, file: !24, line: 120, type: !2352)
!2391 = !DILocalVariable(name: "base", scope: !2386, file: !24, line: 122, type: !7)
!2392 = !DILocalVariable(name: "c", scope: !2386, file: !24, line: 123, type: !385)
!2393 = !DILocation(line: 0, scope: !2386)
!2394 = !DILocation(line: 122, column: 25, scope: !2386)
!2395 = !DILocation(line: 125, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2386, file: !24, line: 125, column: 9)
!2397 = !DILocation(line: 125, column: 37, scope: !2396)
!2398 = !DILocation(line: 125, column: 9, scope: !2386)
!2399 = !DILocation(line: 126, column: 13, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !24, line: 125, column: 44)
!2401 = !DILocation(line: 127, column: 16, scope: !2400)
!2402 = !DILocation(line: 127, column: 9, scope: !2400)
!2403 = !DILocation(line: 0, scope: !2396)
!2404 = !DILocation(line: 131, column: 1, scope: !2386)
!2405 = distinct !DISubprogram(name: "halUART_HWInit", scope: !24, file: !24, line: 136, type: !2406, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !2352}
!2408 = !{!2409}
!2409 = !DILocalVariable(name: "u_port", arg: 1, scope: !2405, file: !24, line: 136, type: !2352)
!2410 = !DILocation(line: 0, scope: !2405)
!2411 = !DILocation(line: 139, column: 5, scope: !2405)
!2412 = !DILocation(line: 140, column: 9, scope: !2405)
!2413 = !DILocation(line: 153, column: 5, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !24, line: 147, column: 38)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !24, line: 147, column: 16)
!2416 = distinct !DILexicalBlock(scope: !2405, file: !24, line: 140, column: 9)
!2417 = !DILocation(line: 0, scope: !2416)
!2418 = !DILocation(line: 155, column: 1, scope: !2405)
!2419 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !24, file: !24, line: 158, type: !2420, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2424)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !2352, !12, !2422, !2422, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 36, baseType: !2423)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !53)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2440, !2441}
!2425 = !DILocalVariable(name: "u_port", arg: 1, scope: !2419, file: !24, line: 158, type: !2352)
!2426 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2419, file: !24, line: 158, type: !12)
!2427 = !DILocalVariable(name: "databit", arg: 3, scope: !2419, file: !24, line: 158, type: !2422)
!2428 = !DILocalVariable(name: "parity", arg: 4, scope: !2419, file: !24, line: 158, type: !2422)
!2429 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2419, file: !24, line: 158, type: !2422)
!2430 = !DILocalVariable(name: "control_word", scope: !2419, file: !24, line: 160, type: !2422)
!2431 = !DILocalVariable(name: "UART_BASE", scope: !2419, file: !24, line: 161, type: !12)
!2432 = !DILocalVariable(name: "data", scope: !2419, file: !24, line: 162, type: !12)
!2433 = !DILocalVariable(name: "uart_lcr", scope: !2419, file: !24, line: 162, type: !12)
!2434 = !DILocalVariable(name: "high_speed_div", scope: !2419, file: !24, line: 162, type: !12)
!2435 = !DILocalVariable(name: "sample_count", scope: !2419, file: !24, line: 162, type: !12)
!2436 = !DILocalVariable(name: "sample_point", scope: !2419, file: !24, line: 162, type: !12)
!2437 = !DILocalVariable(name: "fraction", scope: !2419, file: !24, line: 162, type: !12)
!2438 = !DILocalVariable(name: "fraction_L_mapping", scope: !2419, file: !24, line: 163, type: !2439)
!2439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 176, elements: !764)
!2440 = !DILocalVariable(name: "fraction_M_mapping", scope: !2419, file: !24, line: 164, type: !2439)
!2441 = !DILocalVariable(name: "status", scope: !2419, file: !24, line: 165, type: !206)
!2442 = !DILocation(line: 0, scope: !2419)
!2443 = !DILocation(line: 163, column: 15, scope: !2419)
!2444 = !DILocation(line: 164, column: 15, scope: !2419)
!2445 = !DILocation(line: 166, column: 20, scope: !2419)
!2446 = !DILocation(line: 166, column: 18, scope: !2419)
!2447 = !DILocation(line: 168, column: 9, scope: !2419)
!2448 = !DILocation(line: 176, column: 5, scope: !2419)
!2449 = !DILocation(line: 176, column: 44, scope: !2419)
!2450 = !DILocation(line: 177, column: 16, scope: !2419)
!2451 = !DILocation(line: 178, column: 50, scope: !2419)
!2452 = !DILocation(line: 178, column: 38, scope: !2419)
!2453 = !DILocation(line: 179, column: 12, scope: !2419)
!2454 = !DILocation(line: 179, column: 25, scope: !2419)
!2455 = !DILocation(line: 180, column: 28, scope: !2419)
!2456 = !DILocation(line: 180, column: 34, scope: !2419)
!2457 = !DILocation(line: 182, column: 29, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2419, file: !24, line: 181, column: 5)
!2459 = !DILocation(line: 182, column: 46, scope: !2458)
!2460 = !DILocation(line: 183, column: 26, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !24, line: 183, column: 13)
!2462 = !DILocation(line: 183, column: 13, scope: !2458)
!2463 = !DILocation(line: 192, column: 30, scope: !2419)
!2464 = !DILocation(line: 192, column: 35, scope: !2419)
!2465 = !DILocation(line: 192, column: 46, scope: !2419)
!2466 = !DILocation(line: 192, column: 74, scope: !2419)
!2467 = !DILocation(line: 192, column: 53, scope: !2419)
!2468 = !DILocation(line: 192, column: 80, scope: !2419)
!2469 = !DILocation(line: 193, column: 56, scope: !2419)
!2470 = !DILocation(line: 193, column: 5, scope: !2419)
!2471 = !DILocation(line: 193, column: 38, scope: !2419)
!2472 = !DILocation(line: 194, column: 57, scope: !2419)
!2473 = !DILocation(line: 194, column: 63, scope: !2419)
!2474 = !DILocation(line: 194, column: 5, scope: !2419)
!2475 = !DILocation(line: 194, column: 38, scope: !2419)
!2476 = !DILocation(line: 195, column: 5, scope: !2419)
!2477 = !DILocation(line: 195, column: 45, scope: !2419)
!2478 = !DILocation(line: 196, column: 5, scope: !2419)
!2479 = !DILocation(line: 196, column: 47, scope: !2419)
!2480 = !DILocation(line: 197, column: 46, scope: !2419)
!2481 = !DILocation(line: 197, column: 5, scope: !2419)
!2482 = !DILocation(line: 197, column: 44, scope: !2419)
!2483 = !DILocation(line: 198, column: 46, scope: !2419)
!2484 = !DILocation(line: 198, column: 5, scope: !2419)
!2485 = !DILocation(line: 198, column: 44, scope: !2419)
!2486 = !DILocation(line: 199, column: 38, scope: !2419)
!2487 = !DILocation(line: 200, column: 5, scope: !2419)
!2488 = !DILocation(line: 200, column: 38, scope: !2419)
!2489 = !DILocation(line: 202, column: 20, scope: !2419)
!2490 = !DILocation(line: 203, column: 18, scope: !2419)
!2491 = !DILocation(line: 205, column: 18, scope: !2419)
!2492 = !DILocation(line: 207, column: 18, scope: !2419)
!2493 = !DILocation(line: 208, column: 18, scope: !2419)
!2494 = !DILocation(line: 209, column: 5, scope: !2419)
!2495 = !DILocation(line: 213, column: 1, scope: !2419)
!2496 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !24, file: !24, line: 215, type: !2497, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !2352, !206, !322}
!2499 = !{!2500, !2501, !2502}
!2500 = !DILocalVariable(name: "u_port", arg: 1, scope: !2496, file: !24, line: 215, type: !2352)
!2501 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2496, file: !24, line: 215, type: !206)
!2502 = !DILocalVariable(name: "length", arg: 3, scope: !2496, file: !24, line: 215, type: !322)
!2503 = !DILocation(line: 0, scope: !2496)
!2504 = !DILocation(line: 217, column: 16, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2496, file: !24, line: 217, column: 9)
!2506 = !DILocation(line: 0, scope: !2505)
!2507 = !DILocation(line: 217, column: 9, scope: !2496)
!2508 = !DILocation(line: 218, column: 13, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2505, file: !24, line: 217, column: 31)
!2510 = !DILocation(line: 219, column: 23, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !24, line: 218, column: 20)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !24, line: 218, column: 13)
!2513 = !DILocation(line: 220, column: 9, scope: !2511)
!2514 = !DILocation(line: 221, column: 23, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2512, file: !24, line: 220, column: 16)
!2516 = !DILocation(line: 221, column: 21, scope: !2515)
!2517 = !DILocation(line: 222, column: 24, scope: !2515)
!2518 = !DILocation(line: 222, column: 21, scope: !2515)
!2519 = !DILocation(line: 225, column: 13, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2505, file: !24, line: 224, column: 12)
!2521 = !DILocation(line: 226, column: 23, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !24, line: 225, column: 20)
!2523 = distinct !DILexicalBlock(scope: !2520, file: !24, line: 225, column: 13)
!2524 = !DILocation(line: 227, column: 9, scope: !2522)
!2525 = !DILocation(line: 228, column: 23, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2523, file: !24, line: 227, column: 16)
!2527 = !DILocation(line: 228, column: 21, scope: !2526)
!2528 = !DILocation(line: 229, column: 24, scope: !2526)
!2529 = !DILocation(line: 229, column: 21, scope: !2526)
!2530 = !DILocation(line: 233, column: 5, scope: !2496)
!2531 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !24, file: !24, line: 236, type: !2532, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2534)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !2352, !436, !12}
!2534 = !{!2535, !2536, !2537, !2538}
!2535 = !DILocalVariable(name: "u_port", arg: 1, scope: !2531, file: !24, line: 236, type: !2352)
!2536 = !DILocalVariable(name: "data", arg: 2, scope: !2531, file: !24, line: 236, type: !436)
!2537 = !DILocalVariable(name: "length", arg: 3, scope: !2531, file: !24, line: 236, type: !12)
!2538 = !DILocalVariable(name: "idx", scope: !2531, file: !24, line: 238, type: !8)
!2539 = !DILocation(line: 0, scope: !2531)
!2540 = !DILocation(line: 239, column: 23, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !24, line: 239, column: 5)
!2542 = distinct !DILexicalBlock(scope: !2531, file: !24, line: 239, column: 5)
!2543 = !DILocation(line: 239, column: 5, scope: !2542)
!2544 = !DILocation(line: 240, column: 13, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2541, file: !24, line: 239, column: 40)
!2546 = !DILocation(line: 244, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !24, line: 242, column: 42)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !24, line: 242, column: 20)
!2549 = distinct !DILexicalBlock(scope: !2545, file: !24, line: 240, column: 13)
!2550 = !DILocation(line: 0, scope: !2549)
!2551 = !DILocation(line: 239, column: 36, scope: !2541)
!2552 = distinct !{!2552, !2543, !2553}
!2553 = !DILocation(line: 246, column: 5, scope: !2542)
!2554 = !DILocation(line: 249, column: 1, scope: !2531)
!2555 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !24, file: !24, line: 251, type: !2556, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2560)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2352, !2558, !12}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!2560 = !{!2561, !2562, !2563, !2564}
!2561 = !DILocalVariable(name: "u_port", arg: 1, scope: !2555, file: !24, line: 251, type: !2352)
!2562 = !DILocalVariable(name: "data", arg: 2, scope: !2555, file: !24, line: 251, type: !2558)
!2563 = !DILocalVariable(name: "length", arg: 3, scope: !2555, file: !24, line: 251, type: !12)
!2564 = !DILocalVariable(name: "idx", scope: !2555, file: !24, line: 253, type: !8)
!2565 = !DILocation(line: 0, scope: !2555)
!2566 = !DILocation(line: 254, column: 23, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !24, line: 254, column: 5)
!2568 = distinct !DILexicalBlock(scope: !2555, file: !24, line: 254, column: 5)
!2569 = !DILocation(line: 254, column: 5, scope: !2568)
!2570 = !DILocation(line: 255, column: 13, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2567, file: !24, line: 254, column: 40)
!2572 = !DILocation(line: 256, column: 61, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !24, line: 255, column: 35)
!2574 = distinct !DILexicalBlock(scope: !2571, file: !24, line: 255, column: 13)
!2575 = !DILocation(line: 256, column: 59, scope: !2573)
!2576 = !DILocation(line: 257, column: 9, scope: !2573)
!2577 = !DILocation(line: 258, column: 61, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !24, line: 257, column: 42)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !24, line: 257, column: 20)
!2580 = !DILocation(line: 258, column: 59, scope: !2578)
!2581 = !DILocation(line: 259, column: 9, scope: !2578)
!2582 = !DILocation(line: 254, column: 36, scope: !2567)
!2583 = distinct !{!2583, !2569, !2584}
!2584 = !DILocation(line: 261, column: 5, scope: !2568)
!2585 = !DILocation(line: 264, column: 1, scope: !2555)
!2586 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !24, file: !24, line: 266, type: !2587, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2352, !436, !12, !12}
!2589 = !{!2590, !2591, !2592, !2593}
!2590 = !DILocalVariable(name: "u_port", arg: 1, scope: !2586, file: !24, line: 266, type: !2352)
!2591 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2586, file: !24, line: 266, type: !436)
!2592 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2586, file: !24, line: 266, type: !12)
!2593 = !DILocalVariable(name: "threshold", arg: 4, scope: !2586, file: !24, line: 266, type: !12)
!2594 = !DILocation(line: 0, scope: !2586)
!2595 = !DILocation(line: 268, column: 9, scope: !2586)
!2596 = !DILocation(line: 274, column: 5, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !24, line: 271, column: 38)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !24, line: 271, column: 16)
!2599 = distinct !DILexicalBlock(scope: !2586, file: !24, line: 268, column: 9)
!2600 = !DILocation(line: 0, scope: !2599)
!2601 = !DILocation(line: 276, column: 1, scope: !2586)
!2602 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !24, file: !24, line: 278, type: !2603, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{null, !2352, !436, !12, !12, !12, !12}
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611}
!2606 = !DILocalVariable(name: "u_port", arg: 1, scope: !2602, file: !24, line: 278, type: !2352)
!2607 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2602, file: !24, line: 278, type: !436)
!2608 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2602, file: !24, line: 278, type: !12)
!2609 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2602, file: !24, line: 278, type: !12)
!2610 = !DILocalVariable(name: "threshold", arg: 5, scope: !2602, file: !24, line: 278, type: !12)
!2611 = !DILocalVariable(name: "timeout", arg: 6, scope: !2602, file: !24, line: 278, type: !12)
!2612 = !DILocation(line: 0, scope: !2602)
!2613 = !DILocation(line: 280, column: 9, scope: !2602)
!2614 = !DILocation(line: 286, column: 5, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !24, line: 283, column: 38)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !24, line: 283, column: 16)
!2617 = distinct !DILexicalBlock(scope: !2602, file: !24, line: 280, column: 9)
!2618 = !DILocation(line: 0, scope: !2617)
!2619 = !DILocation(line: 288, column: 1, scope: !2602)
!2620 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !24, file: !24, line: 290, type: !2621, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !2352, !392}
!2623 = !{!2624, !2625}
!2624 = !DILocalVariable(name: "u_port", arg: 1, scope: !2620, file: !24, line: 290, type: !2352)
!2625 = !DILocalVariable(name: "func", arg: 2, scope: !2620, file: !24, line: 290, type: !392)
!2626 = !DILocation(line: 0, scope: !2620)
!2627 = !DILocation(line: 292, column: 9, scope: !2620)
!2628 = !DILocation(line: 296, column: 5, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !24, line: 294, column: 38)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !24, line: 294, column: 16)
!2631 = distinct !DILexicalBlock(scope: !2620, file: !24, line: 292, column: 9)
!2632 = !DILocation(line: 0, scope: !2631)
!2633 = !DILocation(line: 298, column: 1, scope: !2620)
!2634 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !24, file: !24, line: 300, type: !2621, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2635)
!2635 = !{!2636, !2637}
!2636 = !DILocalVariable(name: "u_port", arg: 1, scope: !2634, file: !24, line: 300, type: !2352)
!2637 = !DILocalVariable(name: "func", arg: 2, scope: !2634, file: !24, line: 300, type: !392)
!2638 = !DILocation(line: 0, scope: !2634)
!2639 = !DILocation(line: 302, column: 9, scope: !2634)
!2640 = !DILocation(line: 306, column: 5, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !24, line: 304, column: 38)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !24, line: 304, column: 16)
!2643 = distinct !DILexicalBlock(scope: !2634, file: !24, line: 302, column: 9)
!2644 = !DILocation(line: 0, scope: !2643)
!2645 = !DILocation(line: 308, column: 1, scope: !2634)
!2646 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !24, file: !24, line: 310, type: !2406, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2647)
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DILocalVariable(name: "u_port", arg: 1, scope: !2646, file: !24, line: 310, type: !2352)
!2649 = !DILocalVariable(name: "base", scope: !2646, file: !24, line: 312, type: !7)
!2650 = !DILocalVariable(name: "EFR", scope: !2646, file: !24, line: 313, type: !2422)
!2651 = !DILocalVariable(name: "LCR", scope: !2646, file: !24, line: 313, type: !2422)
!2652 = !DILocation(line: 0, scope: !2646)
!2653 = !DILocation(line: 312, column: 25, scope: !2646)
!2654 = !DILocation(line: 315, column: 11, scope: !2646)
!2655 = !DILocation(line: 317, column: 33, scope: !2646)
!2656 = !DILocation(line: 318, column: 11, scope: !2646)
!2657 = !DILocation(line: 320, column: 35, scope: !2646)
!2658 = !DILocation(line: 320, column: 33, scope: !2646)
!2659 = !DILocation(line: 322, column: 5, scope: !2646)
!2660 = !DILocation(line: 322, column: 39, scope: !2646)
!2661 = !DILocation(line: 324, column: 33, scope: !2646)
!2662 = !DILocation(line: 325, column: 5, scope: !2646)
!2663 = !DILocation(line: 325, column: 33, scope: !2646)
!2664 = !DILocation(line: 327, column: 35, scope: !2646)
!2665 = !DILocation(line: 327, column: 33, scope: !2646)
!2666 = !DILocation(line: 328, column: 1, scope: !2646)
!2667 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !24, file: !24, line: 330, type: !2668, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null, !2352, !235, !235, !235}
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676, !2677}
!2671 = !DILocalVariable(name: "u_port", arg: 1, scope: !2667, file: !24, line: 330, type: !2352)
!2672 = !DILocalVariable(name: "xon", arg: 2, scope: !2667, file: !24, line: 330, type: !235)
!2673 = !DILocalVariable(name: "xoff", arg: 3, scope: !2667, file: !24, line: 330, type: !235)
!2674 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2667, file: !24, line: 330, type: !235)
!2675 = !DILocalVariable(name: "base", scope: !2667, file: !24, line: 332, type: !7)
!2676 = !DILocalVariable(name: "EFR", scope: !2667, file: !24, line: 333, type: !2422)
!2677 = !DILocalVariable(name: "LCR", scope: !2667, file: !24, line: 333, type: !2422)
!2678 = !DILocation(line: 0, scope: !2667)
!2679 = !DILocation(line: 332, column: 25, scope: !2667)
!2680 = !DILocation(line: 335, column: 11, scope: !2667)
!2681 = !DILocation(line: 337, column: 33, scope: !2667)
!2682 = !DILocation(line: 338, column: 36, scope: !2667)
!2683 = !DILocation(line: 338, column: 5, scope: !2667)
!2684 = !DILocation(line: 338, column: 34, scope: !2667)
!2685 = !DILocation(line: 339, column: 5, scope: !2667)
!2686 = !DILocation(line: 339, column: 34, scope: !2667)
!2687 = !DILocation(line: 340, column: 37, scope: !2667)
!2688 = !DILocation(line: 340, column: 5, scope: !2667)
!2689 = !DILocation(line: 340, column: 35, scope: !2667)
!2690 = !DILocation(line: 341, column: 5, scope: !2667)
!2691 = !DILocation(line: 341, column: 35, scope: !2667)
!2692 = !DILocation(line: 343, column: 11, scope: !2667)
!2693 = !DILocation(line: 345, column: 35, scope: !2667)
!2694 = !DILocation(line: 345, column: 33, scope: !2667)
!2695 = !DILocation(line: 347, column: 35, scope: !2667)
!2696 = !DILocation(line: 347, column: 33, scope: !2667)
!2697 = !DILocation(line: 349, column: 43, scope: !2667)
!2698 = !DILocation(line: 349, column: 5, scope: !2667)
!2699 = !DILocation(line: 349, column: 41, scope: !2667)
!2700 = !DILocation(line: 350, column: 5, scope: !2667)
!2701 = !DILocation(line: 350, column: 39, scope: !2667)
!2702 = !DILocation(line: 351, column: 1, scope: !2667)
!2703 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !24, file: !24, line: 353, type: !2406, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DILocalVariable(name: "u_port", arg: 1, scope: !2703, file: !24, line: 353, type: !2352)
!2706 = !DILocalVariable(name: "base", scope: !2703, file: !24, line: 355, type: !7)
!2707 = !DILocalVariable(name: "LCR", scope: !2703, file: !24, line: 356, type: !2422)
!2708 = !DILocation(line: 0, scope: !2703)
!2709 = !DILocation(line: 355, column: 25, scope: !2703)
!2710 = !DILocation(line: 358, column: 11, scope: !2703)
!2711 = !DILocation(line: 360, column: 33, scope: !2703)
!2712 = !DILocation(line: 362, column: 5, scope: !2703)
!2713 = !DILocation(line: 362, column: 33, scope: !2703)
!2714 = !DILocation(line: 364, column: 33, scope: !2703)
!2715 = !DILocation(line: 366, column: 35, scope: !2703)
!2716 = !DILocation(line: 366, column: 33, scope: !2703)
!2717 = !DILocation(line: 367, column: 1, scope: !2703)
!2718 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !24, file: !24, line: 436, type: !2406, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2719)
!2719 = !{!2720, !2721}
!2720 = !DILocalVariable(name: "u_port", arg: 1, scope: !2718, file: !24, line: 436, type: !2352)
!2721 = !DILocalVariable(name: "base", scope: !2718, file: !24, line: 438, type: !7)
!2722 = !DILocation(line: 0, scope: !2718)
!2723 = !DILocation(line: 438, column: 25, scope: !2718)
!2724 = !DILocation(line: 440, column: 5, scope: !2718)
!2725 = !DILocation(line: 440, column: 33, scope: !2718)
!2726 = !DILocation(line: 441, column: 5, scope: !2718)
!2727 = !DILocation(line: 441, column: 33, scope: !2718)
!2728 = !DILocation(line: 442, column: 5, scope: !2718)
!2729 = !DILocation(line: 442, column: 34, scope: !2718)
!2730 = !DILocation(line: 443, column: 5, scope: !2718)
!2731 = !DILocation(line: 443, column: 35, scope: !2718)
!2732 = !DILocation(line: 445, column: 33, scope: !2718)
!2733 = !DILocation(line: 446, column: 5, scope: !2718)
!2734 = !DILocation(line: 446, column: 33, scope: !2718)
!2735 = !DILocation(line: 447, column: 5, scope: !2718)
!2736 = !DILocation(line: 447, column: 33, scope: !2718)
!2737 = !DILocation(line: 449, column: 33, scope: !2718)
!2738 = !DILocation(line: 450, column: 33, scope: !2718)
!2739 = !DILocation(line: 451, column: 33, scope: !2718)
!2740 = !DILocation(line: 453, column: 33, scope: !2718)
!2741 = !DILocation(line: 454, column: 33, scope: !2718)
!2742 = !DILocation(line: 455, column: 33, scope: !2718)
!2743 = !DILocation(line: 457, column: 33, scope: !2718)
!2744 = !DILocation(line: 458, column: 5, scope: !2718)
!2745 = !DILocation(line: 458, column: 33, scope: !2718)
!2746 = !DILocation(line: 459, column: 5, scope: !2718)
!2747 = !DILocation(line: 459, column: 39, scope: !2718)
!2748 = !DILocation(line: 460, column: 5, scope: !2718)
!2749 = !DILocation(line: 460, column: 40, scope: !2718)
!2750 = !DILocation(line: 461, column: 5, scope: !2718)
!2751 = !DILocation(line: 461, column: 42, scope: !2718)
!2752 = !DILocation(line: 462, column: 5, scope: !2718)
!2753 = !DILocation(line: 462, column: 42, scope: !2718)
!2754 = !DILocation(line: 463, column: 5, scope: !2718)
!2755 = !DILocation(line: 463, column: 35, scope: !2718)
!2756 = !DILocation(line: 464, column: 5, scope: !2718)
!2757 = !DILocation(line: 464, column: 41, scope: !2718)
!2758 = !DILocation(line: 465, column: 5, scope: !2718)
!2759 = !DILocation(line: 465, column: 39, scope: !2718)
!2760 = !DILocation(line: 466, column: 5, scope: !2718)
!2761 = !DILocation(line: 466, column: 38, scope: !2718)
!2762 = !DILocation(line: 467, column: 5, scope: !2718)
!2763 = !DILocation(line: 467, column: 42, scope: !2718)
!2764 = !DILocation(line: 468, column: 5, scope: !2718)
!2765 = !DILocation(line: 468, column: 45, scope: !2718)
!2766 = !DILocation(line: 469, column: 5, scope: !2718)
!2767 = !DILocation(line: 469, column: 39, scope: !2718)
!2768 = !DILocation(line: 470, column: 5, scope: !2718)
!2769 = !DILocation(line: 470, column: 39, scope: !2718)
!2770 = !DILocation(line: 471, column: 5, scope: !2718)
!2771 = !DILocation(line: 471, column: 42, scope: !2718)
!2772 = !DILocation(line: 472, column: 1, scope: !2718)
!2773 = distinct !DISubprogram(name: "uart_query_empty", scope: !24, file: !24, line: 474, type: !2406, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2774)
!2774 = !{!2775, !2776}
!2775 = !DILocalVariable(name: "u_port", arg: 1, scope: !2773, file: !24, line: 474, type: !2352)
!2776 = !DILocalVariable(name: "base", scope: !2773, file: !24, line: 476, type: !7)
!2777 = !DILocation(line: 0, scope: !2773)
!2778 = !DILocation(line: 476, column: 25, scope: !2773)
!2779 = !DILocation(line: 478, column: 5, scope: !2773)
!2780 = !DILocation(line: 478, column: 14, scope: !2773)
!2781 = !DILocation(line: 478, column: 42, scope: !2773)
!2782 = !DILocation(line: 478, column: 12, scope: !2773)
!2783 = distinct !{!2783, !2779, !2784}
!2784 = !DILocation(line: 478, column: 50, scope: !2773)
!2785 = !DILocation(line: 479, column: 1, scope: !2773)
!2786 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !944, file: !944, line: 64, type: !2787, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{null, !588, !66, !588, null}
!2789 = !{!2790, !2791, !2792, !2793, !2802}
!2790 = !DILocalVariable(name: "func", arg: 1, scope: !2786, file: !944, line: 64, type: !588)
!2791 = !DILocalVariable(name: "line", arg: 2, scope: !2786, file: !944, line: 64, type: !66)
!2792 = !DILocalVariable(name: "message", arg: 3, scope: !2786, file: !944, line: 64, type: !588)
!2793 = !DILocalVariable(name: "ap", scope: !2786, file: !944, line: 66, type: !2794)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2795, line: 46, baseType: !2796)
!2795 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2797, line: 32, baseType: !2798)
!2797 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !944, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !2800)
!2800 = !{!2801}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2799, file: !944, line: 66, baseType: !141, size: 32)
!2802 = !DILocalVariable(name: "mask", scope: !2786, file: !944, line: 68, type: !12)
!2803 = !DILocation(line: 0, scope: !2786)
!2804 = !DILocation(line: 66, column: 5, scope: !2786)
!2805 = !DILocation(line: 66, column: 13, scope: !2786)
!2806 = !DILocation(line: 68, column: 5, scope: !2786)
!2807 = !DILocation(line: 69, column: 5, scope: !2786)
!2808 = !DILocation(line: 71, column: 5, scope: !2786)
!2809 = !DILocation(line: 72, column: 5, scope: !2786)
!2810 = !DILocation(line: 73, column: 5, scope: !2786)
!2811 = !DILocation(line: 75, column: 37, scope: !2786)
!2812 = !DILocation(line: 75, column: 5, scope: !2786)
!2813 = !DILocation(line: 77, column: 1, scope: !2786)
!2814 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !944, file: !944, line: 78, type: !2787, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !2815)
!2815 = !{!2816, !2817, !2818, !2819, !2820}
!2816 = !DILocalVariable(name: "func", arg: 1, scope: !2814, file: !944, line: 78, type: !588)
!2817 = !DILocalVariable(name: "line", arg: 2, scope: !2814, file: !944, line: 78, type: !66)
!2818 = !DILocalVariable(name: "message", arg: 3, scope: !2814, file: !944, line: 78, type: !588)
!2819 = !DILocalVariable(name: "ap", scope: !2814, file: !944, line: 80, type: !2794)
!2820 = !DILocalVariable(name: "mask", scope: !2814, file: !944, line: 82, type: !12)
!2821 = !DILocation(line: 0, scope: !2814)
!2822 = !DILocation(line: 80, column: 5, scope: !2814)
!2823 = !DILocation(line: 80, column: 13, scope: !2814)
!2824 = !DILocation(line: 82, column: 5, scope: !2814)
!2825 = !DILocation(line: 83, column: 5, scope: !2814)
!2826 = !DILocation(line: 85, column: 5, scope: !2814)
!2827 = !DILocation(line: 86, column: 5, scope: !2814)
!2828 = !DILocation(line: 87, column: 5, scope: !2814)
!2829 = !DILocation(line: 89, column: 37, scope: !2814)
!2830 = !DILocation(line: 89, column: 5, scope: !2814)
!2831 = !DILocation(line: 91, column: 1, scope: !2814)
!2832 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !944, file: !944, line: 92, type: !2787, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !2833)
!2833 = !{!2834, !2835, !2836, !2837, !2838}
!2834 = !DILocalVariable(name: "func", arg: 1, scope: !2832, file: !944, line: 92, type: !588)
!2835 = !DILocalVariable(name: "line", arg: 2, scope: !2832, file: !944, line: 92, type: !66)
!2836 = !DILocalVariable(name: "message", arg: 3, scope: !2832, file: !944, line: 92, type: !588)
!2837 = !DILocalVariable(name: "ap", scope: !2832, file: !944, line: 94, type: !2794)
!2838 = !DILocalVariable(name: "mask", scope: !2832, file: !944, line: 96, type: !12)
!2839 = !DILocation(line: 0, scope: !2832)
!2840 = !DILocation(line: 94, column: 5, scope: !2832)
!2841 = !DILocation(line: 94, column: 13, scope: !2832)
!2842 = !DILocation(line: 96, column: 5, scope: !2832)
!2843 = !DILocation(line: 97, column: 5, scope: !2832)
!2844 = !DILocation(line: 99, column: 5, scope: !2832)
!2845 = !DILocation(line: 100, column: 5, scope: !2832)
!2846 = !DILocation(line: 101, column: 5, scope: !2832)
!2847 = !DILocation(line: 103, column: 37, scope: !2832)
!2848 = !DILocation(line: 103, column: 5, scope: !2832)
!2849 = !DILocation(line: 105, column: 1, scope: !2832)
!2850 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !944, file: !944, line: 106, type: !2787, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !2851)
!2851 = !{!2852, !2853, !2854, !2855, !2856}
!2852 = !DILocalVariable(name: "func", arg: 1, scope: !2850, file: !944, line: 106, type: !588)
!2853 = !DILocalVariable(name: "line", arg: 2, scope: !2850, file: !944, line: 106, type: !66)
!2854 = !DILocalVariable(name: "message", arg: 3, scope: !2850, file: !944, line: 106, type: !588)
!2855 = !DILocalVariable(name: "ap", scope: !2850, file: !944, line: 108, type: !2794)
!2856 = !DILocalVariable(name: "mask", scope: !2850, file: !944, line: 110, type: !12)
!2857 = !DILocation(line: 0, scope: !2850)
!2858 = !DILocation(line: 108, column: 5, scope: !2850)
!2859 = !DILocation(line: 108, column: 13, scope: !2850)
!2860 = !DILocation(line: 110, column: 5, scope: !2850)
!2861 = !DILocation(line: 111, column: 5, scope: !2850)
!2862 = !DILocation(line: 113, column: 5, scope: !2850)
!2863 = !DILocation(line: 114, column: 5, scope: !2850)
!2864 = !DILocation(line: 115, column: 5, scope: !2850)
!2865 = !DILocation(line: 117, column: 37, scope: !2850)
!2866 = !DILocation(line: 117, column: 5, scope: !2850)
!2867 = !DILocation(line: 119, column: 1, scope: !2850)
!2868 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !944, file: !944, line: 121, type: !2869, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !943, retainedNodes: !2873)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !588, !66, !588, !2871, !66, null}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2873 = !{!2874, !2875, !2876, !2877, !2878}
!2874 = !DILocalVariable(name: "func", arg: 1, scope: !2868, file: !944, line: 121, type: !588)
!2875 = !DILocalVariable(name: "line", arg: 2, scope: !2868, file: !944, line: 121, type: !66)
!2876 = !DILocalVariable(name: "message", arg: 3, scope: !2868, file: !944, line: 121, type: !588)
!2877 = !DILocalVariable(name: "data", arg: 4, scope: !2868, file: !944, line: 121, type: !2871)
!2878 = !DILocalVariable(name: "length", arg: 5, scope: !2868, file: !944, line: 121, type: !66)
!2879 = !DILocation(line: 0, scope: !2868)
!2880 = !DILocation(line: 123, column: 1, scope: !2868)
!2881 = distinct !DISubprogram(name: "hal_cache_init", scope: !62, file: !62, line: 53, type: !2882, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2885)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !65, line: 172, baseType: !64)
!2885 = !{!2886, !2888}
!2886 = !DILocalVariable(name: "region", scope: !2881, file: !62, line: 55, type: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !65, line: 204, baseType: !76)
!2888 = !DILocalVariable(name: "irq_flag", scope: !2881, file: !62, line: 56, type: !12)
!2889 = !DILocation(line: 59, column: 16, scope: !2881)
!2890 = !DILocation(line: 0, scope: !2881)
!2891 = !DILocation(line: 62, column: 9, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2881, file: !62, line: 62, column: 9)
!2893 = !{i8 0, i8 2}
!2894 = !DILocation(line: 62, column: 9, scope: !2881)
!2895 = !DILocation(line: 64, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2892, file: !62, line: 62, column: 39)
!2897 = !DILocation(line: 66, column: 9, scope: !2896)
!2898 = !DILocation(line: 69, column: 24, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2892, file: !62, line: 67, column: 12)
!2900 = !DILocation(line: 72, column: 9, scope: !2899)
!2901 = !DILocation(line: 77, column: 5, scope: !2881)
!2902 = !DILocation(line: 80, column: 22, scope: !2881)
!2903 = !DILocation(line: 81, column: 28, scope: !2881)
!2904 = !DILocation(line: 84, column: 19, scope: !2881)
!2905 = !DILocation(line: 85, column: 23, scope: !2881)
!2906 = !DILocation(line: 88, column: 5, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2881, file: !62, line: 88, column: 5)
!2908 = !DILocation(line: 90, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !62, line: 88, column: 81)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !62, line: 88, column: 5)
!2911 = !DILocation(line: 90, column: 38, scope: !2909)
!2912 = !DILocation(line: 91, column: 9, scope: !2909)
!2913 = !DILocation(line: 91, column: 42, scope: !2909)
!2914 = !DILocation(line: 94, column: 45, scope: !2909)
!2915 = !DILocation(line: 94, column: 47, scope: !2909)
!2916 = !DILocation(line: 95, column: 49, scope: !2909)
!2917 = !DILocation(line: 95, column: 51, scope: !2909)
!2918 = !DILocation(line: 88, column: 77, scope: !2910)
!2919 = !DILocation(line: 88, column: 46, scope: !2910)
!2920 = distinct !{!2920, !2906, !2921}
!2921 = !DILocation(line: 96, column: 5, scope: !2907)
!2922 = !DILocation(line: 99, column: 1, scope: !2881)
!2923 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !62, file: !62, line: 327, type: !2882, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2924)
!2924 = !{!2925}
!2925 = !DILocalVariable(name: "irq_flag", scope: !2923, file: !62, line: 329, type: !12)
!2926 = !DILocation(line: 332, column: 16, scope: !2923)
!2927 = !DILocation(line: 0, scope: !2923)
!2928 = !DILocation(line: 335, column: 21, scope: !2923)
!2929 = !DILocation(line: 336, column: 21, scope: !2923)
!2930 = !DILocation(line: 339, column: 21, scope: !2923)
!2931 = !DILocation(line: 340, column: 21, scope: !2923)
!2932 = !DILocation(line: 434, column: 3, scope: !2933, inlinedAt: !2935)
!2933 = distinct !DISubprogram(name: "__ISB", scope: !2934, file: !2934, line: 432, type: !394, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1899)
!2934 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/spi_slave_from_master/GCC")
!2935 = distinct !DILocation(line: 343, column: 5, scope: !2923)
!2936 = !{i64 296582}
!2937 = !DILocation(line: 346, column: 5, scope: !2923)
!2938 = !DILocation(line: 348, column: 5, scope: !2923)
!2939 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !62, file: !62, line: 101, type: !2882, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2940)
!2940 = !{!2941}
!2941 = !DILocalVariable(name: "region", scope: !2939, file: !62, line: 103, type: !2887)
!2942 = !DILocation(line: 107, column: 5, scope: !2939)
!2943 = !DILocation(line: 110, column: 22, scope: !2939)
!2944 = !DILocation(line: 111, column: 28, scope: !2939)
!2945 = !DILocation(line: 114, column: 19, scope: !2939)
!2946 = !DILocation(line: 115, column: 23, scope: !2939)
!2947 = !DILocation(line: 0, scope: !2939)
!2948 = !DILocation(line: 118, column: 5, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2939, file: !62, line: 118, column: 5)
!2950 = !DILocation(line: 120, column: 9, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !62, line: 118, column: 81)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !62, line: 118, column: 5)
!2953 = !DILocation(line: 120, column: 38, scope: !2951)
!2954 = !DILocation(line: 121, column: 9, scope: !2951)
!2955 = !DILocation(line: 121, column: 42, scope: !2951)
!2956 = !DILocation(line: 124, column: 45, scope: !2951)
!2957 = !DILocation(line: 124, column: 47, scope: !2951)
!2958 = !DILocation(line: 125, column: 49, scope: !2951)
!2959 = !DILocation(line: 125, column: 51, scope: !2951)
!2960 = !DILocation(line: 118, column: 77, scope: !2952)
!2961 = !DILocation(line: 118, column: 46, scope: !2952)
!2962 = distinct !{!2962, !2948, !2963}
!2963 = !DILocation(line: 126, column: 5, scope: !2949)
!2964 = !DILocation(line: 129, column: 20, scope: !2939)
!2965 = !DILocation(line: 131, column: 5, scope: !2939)
!2966 = distinct !DISubprogram(name: "hal_cache_enable", scope: !62, file: !62, line: 134, type: !2882, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1899)
!2967 = !DILocation(line: 137, column: 45, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2966, file: !62, line: 137, column: 9)
!2969 = !DILocation(line: 137, column: 28, scope: !2968)
!2970 = !DILocation(line: 137, column: 9, scope: !2966)
!2971 = !DILocation(line: 142, column: 22, scope: !2966)
!2972 = !DILocation(line: 145, column: 28, scope: !2966)
!2973 = !DILocation(line: 145, column: 19, scope: !2966)
!2974 = !DILocation(line: 147, column: 5, scope: !2966)
!2975 = !DILocation(line: 0, scope: !2966)
!2976 = !DILocation(line: 148, column: 1, scope: !2966)
!2977 = distinct !DISubprogram(name: "hal_cache_disable", scope: !62, file: !62, line: 150, type: !2882, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2978)
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "irq_flag", scope: !2977, file: !62, line: 152, type: !12)
!2980 = !DILocation(line: 155, column: 16, scope: !2977)
!2981 = !DILocation(line: 0, scope: !2977)
!2982 = !DILocation(line: 158, column: 16, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2977, file: !62, line: 158, column: 9)
!2984 = !DILocation(line: 158, column: 26, scope: !2983)
!2985 = !DILocation(line: 158, column: 9, scope: !2977)
!2986 = !DILocation(line: 160, column: 9, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2983, file: !62, line: 158, column: 49)
!2988 = !DILocation(line: 161, column: 5, scope: !2987)
!2989 = !DILocation(line: 164, column: 22, scope: !2977)
!2990 = !DILocation(line: 167, column: 28, scope: !2977)
!2991 = !DILocation(line: 167, column: 19, scope: !2977)
!2992 = !DILocation(line: 170, column: 5, scope: !2977)
!2993 = !DILocation(line: 172, column: 5, scope: !2977)
!2994 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !62, file: !62, line: 175, type: !2995, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!2884, !2887}
!2997 = !{!2998}
!2998 = !DILocalVariable(name: "region", arg: 1, scope: !2994, file: !62, line: 175, type: !2887)
!2999 = !DILocation(line: 0, scope: !2994)
!3000 = !DILocation(line: 178, column: 16, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2994, file: !62, line: 178, column: 9)
!3002 = !DILocation(line: 178, column: 9, scope: !2994)
!3003 = !DILocation(line: 183, column: 9, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2994, file: !62, line: 183, column: 9)
!3005 = !DILocation(line: 183, column: 38, scope: !3004)
!3006 = !DILocation(line: 183, column: 9, scope: !2994)
!3007 = !DILocation(line: 184, column: 38, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !62, line: 183, column: 62)
!3009 = !DILocation(line: 184, column: 32, scope: !3008)
!3010 = !DILocation(line: 190, column: 32, scope: !2994)
!3011 = !DILocation(line: 190, column: 23, scope: !2994)
!3012 = !DILocation(line: 192, column: 5, scope: !2994)
!3013 = !DILocation(line: 193, column: 1, scope: !2994)
!3014 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !62, file: !62, line: 195, type: !2995, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3015)
!3015 = !{!3016}
!3016 = !DILocalVariable(name: "region", arg: 1, scope: !3014, file: !62, line: 195, type: !2887)
!3017 = !DILocation(line: 0, scope: !3014)
!3018 = !DILocation(line: 198, column: 16, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3014, file: !62, line: 198, column: 9)
!3020 = !DILocation(line: 198, column: 9, scope: !3014)
!3021 = !DILocation(line: 203, column: 35, scope: !3014)
!3022 = !DILocation(line: 203, column: 31, scope: !3014)
!3023 = !DILocation(line: 203, column: 28, scope: !3014)
!3024 = !DILocation(line: 206, column: 32, scope: !3014)
!3025 = !DILocation(line: 206, column: 23, scope: !3014)
!3026 = !DILocation(line: 209, column: 41, scope: !3014)
!3027 = !DILocation(line: 209, column: 43, scope: !3014)
!3028 = !DILocation(line: 210, column: 45, scope: !3014)
!3029 = !DILocation(line: 210, column: 47, scope: !3014)
!3030 = !DILocation(line: 212, column: 5, scope: !3014)
!3031 = !DILocation(line: 213, column: 1, scope: !3014)
!3032 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !62, file: !62, line: 215, type: !3033, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3036)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!2884, !3035}
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !65, line: 182, baseType: !95)
!3036 = !{!3037}
!3037 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3032, file: !62, line: 215, type: !3035)
!3038 = !DILocation(line: 0, scope: !3032)
!3039 = !DILocation(line: 218, column: 20, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3032, file: !62, line: 218, column: 9)
!3041 = !DILocation(line: 218, column: 9, scope: !3032)
!3042 = !DILocation(line: 223, column: 22, scope: !3032)
!3043 = !DILocation(line: 224, column: 37, scope: !3032)
!3044 = !DILocation(line: 224, column: 22, scope: !3032)
!3045 = !DILocation(line: 227, column: 20, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3032, file: !62, line: 227, column: 9)
!3047 = !DILocation(line: 227, column: 9, scope: !3032)
!3048 = !DILocation(line: 228, column: 26, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3046, file: !62, line: 227, column: 43)
!3050 = !DILocation(line: 229, column: 5, scope: !3049)
!3051 = !DILocation(line: 232, column: 28, scope: !3032)
!3052 = !DILocation(line: 232, column: 19, scope: !3032)
!3053 = !DILocation(line: 234, column: 5, scope: !3032)
!3054 = !DILocation(line: 235, column: 1, scope: !3032)
!3055 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !62, file: !62, line: 237, type: !3056, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3065)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!2884, !2887, !3058}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3060)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !65, line: 222, baseType: !3061)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 219, size: 64, elements: !3062)
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3061, file: !65, line: 220, baseType: !12, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3061, file: !65, line: 221, baseType: !12, size: 32, offset: 32)
!3065 = !{!3066, !3067}
!3066 = !DILocalVariable(name: "region", arg: 1, scope: !3055, file: !62, line: 237, type: !2887)
!3067 = !DILocalVariable(name: "region_config", arg: 2, scope: !3055, file: !62, line: 237, type: !3058)
!3068 = !DILocation(line: 0, scope: !3055)
!3069 = !DILocation(line: 240, column: 16, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3055, file: !62, line: 240, column: 9)
!3071 = !DILocation(line: 240, column: 9, scope: !3055)
!3072 = !DILocation(line: 245, column: 23, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3055, file: !62, line: 245, column: 9)
!3074 = !DILocation(line: 245, column: 9, scope: !3055)
!3075 = !DILocation(line: 250, column: 24, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3055, file: !62, line: 250, column: 9)
!3077 = !DILocation(line: 250, column: 45, scope: !3076)
!3078 = !DILocation(line: 250, column: 9, scope: !3055)
!3079 = !DILocation(line: 251, column: 9, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3076, file: !62, line: 250, column: 81)
!3081 = !DILocation(line: 256, column: 24, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3055, file: !62, line: 256, column: 9)
!3083 = !DILocation(line: 256, column: 42, scope: !3082)
!3084 = !DILocation(line: 256, column: 9, scope: !3055)
!3085 = !DILocation(line: 257, column: 9, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !62, line: 256, column: 78)
!3087 = !DILocation(line: 262, column: 5, scope: !3055)
!3088 = !DILocation(line: 262, column: 34, scope: !3055)
!3089 = !DILocation(line: 263, column: 55, scope: !3055)
!3090 = !DILocation(line: 263, column: 93, scope: !3055)
!3091 = !DILocation(line: 263, column: 76, scope: !3055)
!3092 = !DILocation(line: 263, column: 5, scope: !3055)
!3093 = !DILocation(line: 263, column: 38, scope: !3055)
!3094 = !DILocation(line: 266, column: 34, scope: !3055)
!3095 = !DILocation(line: 269, column: 45, scope: !3055)
!3096 = !DILocation(line: 269, column: 41, scope: !3055)
!3097 = !DILocation(line: 269, column: 43, scope: !3055)
!3098 = !DILocation(line: 270, column: 49, scope: !3055)
!3099 = !DILocation(line: 270, column: 45, scope: !3055)
!3100 = !DILocation(line: 270, column: 47, scope: !3055)
!3101 = !DILocation(line: 272, column: 5, scope: !3055)
!3102 = !DILocation(line: 273, column: 1, scope: !3055)
!3103 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !62, file: !62, line: 275, type: !3104, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!2884, !12}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "address", arg: 1, scope: !3103, file: !62, line: 275, type: !12)
!3108 = !DILocalVariable(name: "irq_flag", scope: !3103, file: !62, line: 277, type: !12)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 280, column: 17, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3103, file: !62, line: 280, column: 9)
!3112 = !DILocation(line: 280, column: 9, scope: !3103)
!3113 = !DILocation(line: 284, column: 16, scope: !3103)
!3114 = !DILocation(line: 287, column: 32, scope: !3103)
!3115 = !DILocation(line: 287, column: 21, scope: !3103)
!3116 = !DILocation(line: 288, column: 21, scope: !3103)
!3117 = !DILocation(line: 434, column: 3, scope: !2933, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 291, column: 5, scope: !3103)
!3119 = !DILocation(line: 294, column: 5, scope: !3103)
!3120 = !DILocation(line: 296, column: 5, scope: !3103)
!3121 = !DILocation(line: 297, column: 1, scope: !3103)
!3122 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !62, file: !62, line: 299, type: !3123, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!2884, !12, !12}
!3125 = !{!3126, !3127, !3128, !3129}
!3126 = !DILocalVariable(name: "address", arg: 1, scope: !3122, file: !62, line: 299, type: !12)
!3127 = !DILocalVariable(name: "length", arg: 2, scope: !3122, file: !62, line: 299, type: !12)
!3128 = !DILocalVariable(name: "irq_flag", scope: !3122, file: !62, line: 301, type: !12)
!3129 = !DILocalVariable(name: "end_address", scope: !3122, file: !62, line: 302, type: !12)
!3130 = !DILocation(line: 0, scope: !3122)
!3131 = !DILocation(line: 302, column: 36, scope: !3122)
!3132 = !DILocation(line: 305, column: 47, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3122, file: !62, line: 305, column: 9)
!3134 = !DILocation(line: 310, column: 16, scope: !3122)
!3135 = !DILocation(line: 313, column: 20, scope: !3122)
!3136 = !DILocation(line: 313, column: 5, scope: !3122)
!3137 = !DILocation(line: 314, column: 9, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3122, file: !62, line: 313, column: 35)
!3139 = !DILocation(line: 315, column: 17, scope: !3138)
!3140 = distinct !{!3140, !3136, !3141}
!3141 = !DILocation(line: 316, column: 5, scope: !3122)
!3142 = !DILocation(line: 434, column: 3, scope: !2933, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 319, column: 5, scope: !3122)
!3144 = !DILocation(line: 322, column: 5, scope: !3122)
!3145 = !DILocation(line: 324, column: 5, scope: !3122)
!3146 = !DILocation(line: 325, column: 1, scope: !3122)
!3147 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !62, file: !62, line: 351, type: !3104, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3148)
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "address", arg: 1, scope: !3147, file: !62, line: 351, type: !12)
!3150 = !DILocalVariable(name: "irq_flag", scope: !3147, file: !62, line: 353, type: !12)
!3151 = !DILocation(line: 0, scope: !3147)
!3152 = !DILocation(line: 356, column: 17, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3147, file: !62, line: 356, column: 9)
!3154 = !DILocation(line: 356, column: 9, scope: !3147)
!3155 = !DILocation(line: 361, column: 16, scope: !3147)
!3156 = !DILocation(line: 364, column: 32, scope: !3147)
!3157 = !DILocation(line: 364, column: 21, scope: !3147)
!3158 = !DILocation(line: 365, column: 21, scope: !3147)
!3159 = !DILocation(line: 434, column: 3, scope: !2933, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 368, column: 5, scope: !3147)
!3161 = !DILocation(line: 371, column: 5, scope: !3147)
!3162 = !DILocation(line: 373, column: 5, scope: !3147)
!3163 = !DILocation(line: 374, column: 1, scope: !3147)
!3164 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !62, file: !62, line: 376, type: !3123, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3165)
!3165 = !{!3166, !3167, !3168, !3169}
!3166 = !DILocalVariable(name: "address", arg: 1, scope: !3164, file: !62, line: 376, type: !12)
!3167 = !DILocalVariable(name: "length", arg: 2, scope: !3164, file: !62, line: 376, type: !12)
!3168 = !DILocalVariable(name: "irq_flag", scope: !3164, file: !62, line: 378, type: !12)
!3169 = !DILocalVariable(name: "end_address", scope: !3164, file: !62, line: 379, type: !12)
!3170 = !DILocation(line: 0, scope: !3164)
!3171 = !DILocation(line: 379, column: 36, scope: !3164)
!3172 = !DILocation(line: 382, column: 47, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3164, file: !62, line: 382, column: 9)
!3174 = !DILocation(line: 387, column: 16, scope: !3164)
!3175 = !DILocation(line: 390, column: 20, scope: !3164)
!3176 = !DILocation(line: 390, column: 5, scope: !3164)
!3177 = !DILocation(line: 391, column: 9, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3164, file: !62, line: 390, column: 35)
!3179 = !DILocation(line: 392, column: 17, scope: !3178)
!3180 = distinct !{!3180, !3176, !3181}
!3181 = !DILocation(line: 393, column: 5, scope: !3164)
!3182 = !DILocation(line: 434, column: 3, scope: !2933, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 396, column: 5, scope: !3164)
!3184 = !DILocation(line: 399, column: 5, scope: !3164)
!3185 = !DILocation(line: 401, column: 5, scope: !3164)
!3186 = !DILocation(line: 402, column: 1, scope: !3164)
!3187 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !62, file: !62, line: 404, type: !2882, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3188)
!3188 = !{!3189}
!3189 = !DILocalVariable(name: "irq_flag", scope: !3187, file: !62, line: 406, type: !12)
!3190 = !DILocation(line: 409, column: 16, scope: !3187)
!3191 = !DILocation(line: 0, scope: !3187)
!3192 = !DILocation(line: 412, column: 21, scope: !3187)
!3193 = !DILocation(line: 413, column: 21, scope: !3187)
!3194 = !DILocation(line: 434, column: 3, scope: !2933, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 416, column: 5, scope: !3187)
!3196 = !DILocation(line: 419, column: 5, scope: !3187)
!3197 = !DILocation(line: 421, column: 5, scope: !3187)
!3198 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !62, file: !62, line: 424, type: !3199, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!144, !12}
!3201 = !{!3202, !3203}
!3202 = !DILocalVariable(name: "address", arg: 1, scope: !3198, file: !62, line: 424, type: !12)
!3203 = !DILocalVariable(name: "region", scope: !3198, file: !62, line: 426, type: !2887)
!3204 = !DILocation(line: 0, scope: !3198)
!3205 = !DILocation(line: 429, column: 18, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3198, file: !62, line: 429, column: 9)
!3207 = !DILocation(line: 429, column: 28, scope: !3206)
!3208 = !DILocation(line: 429, column: 9, scope: !3198)
!3209 = !DILocation(line: 435, column: 20, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3211, file: !62, line: 435, column: 13)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !62, line: 433, column: 81)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !62, line: 433, column: 5)
!3213 = distinct !DILexicalBlock(scope: !3198, file: !62, line: 433, column: 5)
!3214 = !DILocation(line: 435, column: 41, scope: !3210)
!3215 = !DILocation(line: 435, column: 36, scope: !3210)
!3216 = !DILocation(line: 435, column: 13, scope: !3211)
!3217 = !DILocation(line: 436, column: 30, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !62, line: 436, column: 17)
!3219 = distinct !DILexicalBlock(scope: !3210, file: !62, line: 435, column: 53)
!3220 = !DILocation(line: 436, column: 59, scope: !3218)
!3221 = !DILocation(line: 436, column: 26, scope: !3218)
!3222 = !DILocation(line: 436, column: 85, scope: !3218)
!3223 = !DILocation(line: 436, column: 99, scope: !3218)
!3224 = !DILocation(line: 436, column: 97, scope: !3218)
!3225 = !DILocation(line: 436, column: 17, scope: !3219)
!3226 = !DILocation(line: 433, column: 77, scope: !3212)
!3227 = !DILocation(line: 433, column: 46, scope: !3212)
!3228 = !DILocation(line: 433, column: 5, scope: !3213)
!3229 = distinct !{!3229, !3228, !3230}
!3230 = !DILocation(line: 440, column: 5, scope: !3213)
!3231 = !DILocation(line: 442, column: 1, scope: !3198)
!3232 = distinct !DISubprogram(name: "hal_nvic_init", scope: !148, file: !148, line: 60, type: !3233, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1899)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!3235}
!3235 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !151, line: 158, baseType: !150)
!3236 = !DILocation(line: 62, column: 5, scope: !3232)
!3237 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !148, file: !148, line: 65, type: !3238, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!3235, !204}
!3240 = !{!3241, !3242}
!3241 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3237, file: !148, line: 65, type: !204)
!3242 = !DILocalVariable(name: "status", scope: !3237, file: !148, line: 67, type: !3235)
!3243 = !DILocation(line: 0, scope: !3237)
!3244 = !DILocation(line: 69, column: 40, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3237, file: !148, line: 69, column: 9)
!3246 = !DILocation(line: 73, column: 9, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3245, file: !148, line: 72, column: 12)
!3248 = !DILocation(line: 77, column: 5, scope: !3237)
!3249 = !DILocation(line: 78, column: 1, scope: !3237)
!3250 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !210, file: !210, line: 1494, type: !3251, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !205}
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3250, file: !210, line: 1494, type: !205)
!3255 = !DILocation(line: 0, scope: !3250)
!3256 = !DILocation(line: 1497, column: 91, scope: !3250)
!3257 = !DILocation(line: 1497, column: 61, scope: !3250)
!3258 = !DILocation(line: 1497, column: 40, scope: !3250)
!3259 = !DILocation(line: 1497, column: 3, scope: !3250)
!3260 = !DILocation(line: 1497, column: 46, scope: !3250)
!3261 = !DILocation(line: 1498, column: 1, scope: !3250)
!3262 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !148, file: !148, line: 80, type: !3238, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3263)
!3263 = !{!3264, !3265}
!3264 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3262, file: !148, line: 80, type: !204)
!3265 = !DILocalVariable(name: "status", scope: !3262, file: !148, line: 82, type: !3235)
!3266 = !DILocation(line: 0, scope: !3262)
!3267 = !DILocation(line: 84, column: 40, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3262, file: !148, line: 84, column: 9)
!3269 = !DILocation(line: 88, column: 9, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3268, file: !148, line: 87, column: 12)
!3271 = !DILocation(line: 92, column: 5, scope: !3262)
!3272 = !DILocation(line: 93, column: 1, scope: !3262)
!3273 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !210, file: !210, line: 1507, type: !3251, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3274)
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3273, file: !210, line: 1507, type: !205)
!3276 = !DILocation(line: 0, scope: !3273)
!3277 = !DILocation(line: 1509, column: 65, scope: !3273)
!3278 = !DILocation(line: 1509, column: 44, scope: !3273)
!3279 = !DILocation(line: 1509, column: 32, scope: !3273)
!3280 = !DILocation(line: 1509, column: 3, scope: !3273)
!3281 = !DILocation(line: 1509, column: 39, scope: !3273)
!3282 = !DILocation(line: 1510, column: 1, scope: !3273)
!3283 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !148, file: !148, line: 95, type: !3284, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!12, !204}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3283, file: !148, line: 95, type: !204)
!3288 = !DILocalVariable(name: "ret", scope: !3283, file: !148, line: 97, type: !12)
!3289 = !DILocation(line: 0, scope: !3283)
!3290 = !DILocation(line: 99, column: 40, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3283, file: !148, line: 99, column: 9)
!3292 = !DILocation(line: 102, column: 15, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3291, file: !148, line: 101, column: 12)
!3294 = !DILocation(line: 105, column: 5, scope: !3283)
!3295 = !DILocation(line: 106, column: 1, scope: !3283)
!3296 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !210, file: !210, line: 1523, type: !3297, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!12, !205}
!3299 = !{!3300}
!3300 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3296, file: !210, line: 1523, type: !205)
!3301 = !DILocation(line: 0, scope: !3296)
!3302 = !DILocation(line: 1525, column: 51, scope: !3296)
!3303 = !DILocation(line: 1525, column: 23, scope: !3296)
!3304 = !DILocation(line: 1525, column: 83, scope: !3296)
!3305 = !DILocation(line: 1525, column: 22, scope: !3296)
!3306 = !DILocation(line: 1525, column: 3, scope: !3296)
!3307 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !148, file: !148, line: 108, type: !3238, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3308)
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3307, file: !148, line: 108, type: !204)
!3310 = !DILocalVariable(name: "status", scope: !3307, file: !148, line: 110, type: !3235)
!3311 = !DILocation(line: 0, scope: !3307)
!3312 = !DILocation(line: 112, column: 40, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3307, file: !148, line: 112, column: 9)
!3314 = !DILocation(line: 116, column: 9, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3313, file: !148, line: 115, column: 12)
!3316 = !DILocation(line: 120, column: 5, scope: !3307)
!3317 = !DILocation(line: 121, column: 1, scope: !3307)
!3318 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !210, file: !210, line: 1535, type: !3251, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3319)
!3319 = !{!3320}
!3320 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3318, file: !210, line: 1535, type: !205)
!3321 = !DILocation(line: 0, scope: !3318)
!3322 = !DILocation(line: 1537, column: 65, scope: !3318)
!3323 = !DILocation(line: 1537, column: 44, scope: !3318)
!3324 = !DILocation(line: 1537, column: 32, scope: !3318)
!3325 = !DILocation(line: 1537, column: 3, scope: !3318)
!3326 = !DILocation(line: 1537, column: 39, scope: !3318)
!3327 = !DILocation(line: 1538, column: 1, scope: !3318)
!3328 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !148, file: !148, line: 123, type: !3238, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3329)
!3329 = !{!3330, !3331}
!3330 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3328, file: !148, line: 123, type: !204)
!3331 = !DILocalVariable(name: "status", scope: !3328, file: !148, line: 125, type: !3235)
!3332 = !DILocation(line: 0, scope: !3328)
!3333 = !DILocation(line: 127, column: 40, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3328, file: !148, line: 127, column: 9)
!3335 = !DILocation(line: 131, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3334, file: !148, line: 130, column: 12)
!3337 = !DILocation(line: 135, column: 5, scope: !3328)
!3338 = !DILocation(line: 136, column: 1, scope: !3328)
!3339 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !210, file: !210, line: 1547, type: !3251, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3340)
!3340 = !{!3341}
!3341 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3339, file: !210, line: 1547, type: !205)
!3342 = !DILocation(line: 0, scope: !3339)
!3343 = !DILocation(line: 1549, column: 65, scope: !3339)
!3344 = !DILocation(line: 1549, column: 44, scope: !3339)
!3345 = !DILocation(line: 1549, column: 32, scope: !3339)
!3346 = !DILocation(line: 1549, column: 3, scope: !3339)
!3347 = !DILocation(line: 1549, column: 39, scope: !3339)
!3348 = !DILocation(line: 1550, column: 1, scope: !3339)
!3349 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !148, file: !148, line: 138, type: !3350, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3352)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!3235, !204, !12}
!3352 = !{!3353, !3354, !3355}
!3353 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3349, file: !148, line: 138, type: !204)
!3354 = !DILocalVariable(name: "priority", arg: 2, scope: !3349, file: !148, line: 138, type: !12)
!3355 = !DILocalVariable(name: "status", scope: !3349, file: !148, line: 140, type: !3235)
!3356 = !DILocation(line: 0, scope: !3349)
!3357 = !DILocation(line: 142, column: 40, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3349, file: !148, line: 142, column: 9)
!3359 = !DILocation(line: 146, column: 9, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3358, file: !148, line: 145, column: 12)
!3361 = !DILocation(line: 150, column: 5, scope: !3349)
!3362 = !DILocation(line: 151, column: 1, scope: !3349)
!3363 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !210, file: !210, line: 1577, type: !3364, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !205, !12}
!3366 = !{!3367, !3368}
!3367 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3363, file: !210, line: 1577, type: !205)
!3368 = !DILocalVariable(name: "priority", arg: 2, scope: !3363, file: !210, line: 1577, type: !12)
!3369 = !DILocation(line: 0, scope: !3363)
!3370 = !DILocation(line: 1582, column: 34, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !210, line: 1581, column: 8)
!3372 = distinct !DILexicalBlock(scope: !3363, file: !210, line: 1579, column: 6)
!3373 = !DILocation(line: 1582, column: 5, scope: !3371)
!3374 = !DILocation(line: 1582, column: 32, scope: !3371)
!3375 = !DILocation(line: 1583, column: 1, scope: !3363)
!3376 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !148, file: !148, line: 153, type: !3284, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3377)
!3377 = !{!3378, !3379}
!3378 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3376, file: !148, line: 153, type: !204)
!3379 = !DILocalVariable(name: "ret", scope: !3376, file: !148, line: 155, type: !12)
!3380 = !DILocation(line: 0, scope: !3376)
!3381 = !DILocation(line: 157, column: 40, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3376, file: !148, line: 157, column: 9)
!3383 = !DILocation(line: 160, column: 15, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3382, file: !148, line: 159, column: 12)
!3385 = !DILocation(line: 163, column: 5, scope: !3376)
!3386 = !DILocation(line: 164, column: 1, scope: !3376)
!3387 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !210, file: !210, line: 1597, type: !3297, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3388)
!3388 = !{!3389}
!3389 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3387, file: !210, line: 1597, type: !205)
!3390 = !DILocation(line: 0, scope: !3387)
!3391 = !DILocation(line: 1603, column: 23, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !210, line: 1602, column: 8)
!3393 = distinct !DILexicalBlock(scope: !3387, file: !210, line: 1600, column: 6)
!3394 = !DILocation(line: 1603, column: 60, scope: !3392)
!3395 = !DILocation(line: 1604, column: 1, scope: !3387)
!3396 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !148, file: !148, line: 173, type: !394, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1899)
!3397 = !DILocation(line: 175, column: 1, scope: !3396)
!3398 = distinct !DISubprogram(name: "isrC_main", scope: !148, file: !148, line: 178, type: !3233, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3399)
!3399 = !{!3400, !3401}
!3400 = !DILocalVariable(name: "status", scope: !3398, file: !148, line: 180, type: !3235)
!3401 = !DILocalVariable(name: "irq_number", scope: !3398, file: !148, line: 181, type: !204)
!3402 = !DILocation(line: 0, scope: !3398)
!3403 = !DILocation(line: 188, column: 34, scope: !3398)
!3404 = !DILocation(line: 189, column: 24, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3398, file: !148, line: 189, column: 9)
!3406 = !DILocation(line: 192, column: 48, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3405, file: !148, line: 192, column: 16)
!3408 = !DILocation(line: 192, column: 62, scope: !3407)
!3409 = !DILocation(line: 192, column: 16, scope: !3405)
!3410 = !DILocation(line: 194, column: 9, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !148, line: 192, column: 71)
!3412 = !DILocation(line: 195, column: 9, scope: !3411)
!3413 = !DILocation(line: 197, column: 55, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3407, file: !148, line: 196, column: 12)
!3415 = !DILocation(line: 197, column: 41, scope: !3414)
!3416 = !DILocation(line: 197, column: 53, scope: !3414)
!3417 = !DILocation(line: 198, column: 41, scope: !3414)
!3418 = !DILocation(line: 198, column: 9, scope: !3414)
!3419 = !DILocation(line: 202, column: 5, scope: !3398)
!3420 = !DILocation(line: 203, column: 1, scope: !3398)
!3421 = distinct !DISubprogram(name: "get_current_irq", scope: !148, file: !148, line: 166, type: !1883, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3422)
!3422 = !{!3423}
!3423 = !DILocalVariable(name: "irq_num", scope: !3421, file: !148, line: 168, type: !12)
!3424 = !DILocation(line: 168, column: 31, scope: !3421)
!3425 = !DILocation(line: 168, column: 36, scope: !3421)
!3426 = !DILocation(line: 0, scope: !3421)
!3427 = !DILocation(line: 169, column: 21, scope: !3421)
!3428 = !DILocation(line: 169, column: 5, scope: !3421)
!3429 = distinct !DISubprogram(name: "get_pending_irq", scope: !148, file: !148, line: 55, type: !1883, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !1899)
!3430 = !DILocation(line: 57, column: 19, scope: !3429)
!3431 = !DILocation(line: 57, column: 51, scope: !3429)
!3432 = !DILocation(line: 57, column: 5, scope: !3429)
!3433 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !148, file: !148, line: 205, type: !3434, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3437)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!3235, !204, !3436}
!3436 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !151, line: 175, baseType: !289)
!3437 = !{!3438, !3439, !3440}
!3438 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3433, file: !148, line: 205, type: !204)
!3439 = !DILocalVariable(name: "callback", arg: 2, scope: !3433, file: !148, line: 205, type: !3436)
!3440 = !DILocalVariable(name: "mask", scope: !3433, file: !148, line: 207, type: !12)
!3441 = !DILocation(line: 0, scope: !3433)
!3442 = !DILocation(line: 209, column: 24, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3433, file: !148, line: 209, column: 9)
!3444 = !DILocation(line: 213, column: 12, scope: !3433)
!3445 = !DILocation(line: 214, column: 5, scope: !3433)
!3446 = !DILocation(line: 215, column: 37, scope: !3433)
!3447 = !DILocation(line: 215, column: 51, scope: !3433)
!3448 = !DILocation(line: 216, column: 37, scope: !3433)
!3449 = !DILocation(line: 216, column: 49, scope: !3433)
!3450 = !DILocation(line: 217, column: 5, scope: !3433)
!3451 = !DILocation(line: 219, column: 5, scope: !3433)
!3452 = !DILocation(line: 220, column: 1, scope: !3433)
!3453 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !148, file: !148, line: 222, type: !3454, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!3235, !322}
!3456 = !{!3457}
!3457 = !DILocalVariable(name: "mask", arg: 1, scope: !3453, file: !148, line: 222, type: !322)
!3458 = !DILocation(line: 0, scope: !3453)
!3459 = !DILocation(line: 224, column: 13, scope: !3453)
!3460 = !DILocation(line: 224, column: 11, scope: !3453)
!3461 = !DILocation(line: 225, column: 5, scope: !3453)
!3462 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !148, file: !148, line: 228, type: !3463, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !147, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!3235, !12}
!3465 = !{!3466}
!3466 = !DILocalVariable(name: "mask", arg: 1, scope: !3462, file: !148, line: 228, type: !12)
!3467 = !DILocation(line: 0, scope: !3462)
!3468 = !DILocation(line: 230, column: 5, scope: !3462)
!3469 = !DILocation(line: 231, column: 5, scope: !3462)
!3470 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !946, file: !946, line: 50, type: !3471, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3475)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!3473, !3474, !235}
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !949, line: 238, baseType: !948)
!3474 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !309, line: 281, baseType: !448)
!3475 = !{!3476, !3477, !3478}
!3476 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3470, file: !946, line: 50, type: !3474)
!3477 = !DILocalVariable(name: "function_index", arg: 2, scope: !3470, file: !946, line: 50, type: !235)
!3478 = !DILocalVariable(name: "ret_value", scope: !3470, file: !946, line: 52, type: !206)
!3479 = !DILocation(line: 0, scope: !3470)
!3480 = !DILocation(line: 53, column: 18, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3470, file: !946, line: 53, column: 9)
!3482 = !DILocation(line: 53, column: 9, scope: !3470)
!3483 = !DILocation(line: 57, column: 24, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3470, file: !946, line: 57, column: 9)
!3485 = !DILocation(line: 57, column: 9, scope: !3470)
!3486 = !DILocation(line: 57, column: 9, scope: !3484)
!3487 = !DILocation(line: 60, column: 17, scope: !3470)
!3488 = !DILocation(line: 61, column: 12, scope: !3470)
!3489 = !DILocation(line: 61, column: 5, scope: !3470)
!3490 = !DILocation(line: 62, column: 1, scope: !3470)
!3491 = distinct !DISubprogram(name: "hal_gpio_init", scope: !946, file: !946, line: 64, type: !3492, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3495)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!3494, !3474}
!3494 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !949, line: 229, baseType: !955)
!3495 = !{!3496}
!3496 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3491, file: !946, line: 64, type: !3474)
!3497 = !DILocation(line: 0, scope: !3491)
!3498 = !DILocation(line: 66, column: 5, scope: !3491)
!3499 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !946, file: !946, line: 69, type: !3492, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3500)
!3500 = !{!3501}
!3501 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3499, file: !946, line: 69, type: !3474)
!3502 = !DILocation(line: 0, scope: !3499)
!3503 = !DILocation(line: 71, column: 5, scope: !3499)
!3504 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !946, file: !946, line: 74, type: !3505, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3508)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!3494, !3474, !3507}
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 32)
!3508 = !{!3509, !3510, !3511}
!3509 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3504, file: !946, line: 74, type: !3474)
!3510 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3504, file: !946, line: 74, type: !3507)
!3511 = !DILocalVariable(name: "status", scope: !3504, file: !946, line: 76, type: !3512)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !976, line: 67, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !976, line: 62, size: 64, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3513, file: !976, line: 63, baseType: !12, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3513, file: !976, line: 64, baseType: !235, size: 8, offset: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3513, file: !976, line: 65, baseType: !235, size: 8, offset: 40)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3513, file: !976, line: 66, baseType: !235, size: 8, offset: 48)
!3519 = !DILocation(line: 0, scope: !3504)
!3520 = !DILocation(line: 77, column: 14, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3504, file: !946, line: 77, column: 9)
!3522 = !DILocation(line: 77, column: 9, scope: !3504)
!3523 = !DILocation(line: 81, column: 18, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3504, file: !946, line: 81, column: 9)
!3525 = !DILocation(line: 81, column: 9, scope: !3504)
!3526 = !DILocation(line: 85, column: 14, scope: !3504)
!3527 = !DILocation(line: 86, column: 18, scope: !3504)
!3528 = !DILocation(line: 86, column: 16, scope: !3504)
!3529 = !DILocation(line: 87, column: 5, scope: !3504)
!3530 = !DILocation(line: 88, column: 1, scope: !3504)
!3531 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !946, file: !946, line: 90, type: !3532, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3534)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!3494, !3474, !982}
!3534 = !{!3535, !3536, !3537}
!3535 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3531, file: !946, line: 90, type: !3474)
!3536 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3531, file: !946, line: 90, type: !982)
!3537 = !DILocalVariable(name: "ret_value", scope: !3531, file: !946, line: 92, type: !206)
!3538 = !DILocation(line: 0, scope: !3531)
!3539 = !DILocation(line: 93, column: 18, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3531, file: !946, line: 93, column: 9)
!3541 = !DILocation(line: 93, column: 9, scope: !3531)
!3542 = !DILocation(line: 97, column: 60, scope: !3531)
!3543 = !DILocation(line: 97, column: 17, scope: !3531)
!3544 = !DILocation(line: 98, column: 12, scope: !3531)
!3545 = !DILocation(line: 98, column: 5, scope: !3531)
!3546 = !DILocation(line: 99, column: 1, scope: !3531)
!3547 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !946, file: !946, line: 101, type: !3505, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3548)
!3548 = !{!3549, !3550, !3551}
!3549 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3547, file: !946, line: 101, type: !3474)
!3550 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3547, file: !946, line: 101, type: !3507)
!3551 = !DILocalVariable(name: "status", scope: !3547, file: !946, line: 103, type: !3512)
!3552 = !DILocation(line: 0, scope: !3547)
!3553 = !DILocation(line: 104, column: 18, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3547, file: !946, line: 104, column: 9)
!3555 = !DILocation(line: 104, column: 9, scope: !3547)
!3556 = !DILocation(line: 108, column: 14, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3547, file: !946, line: 108, column: 9)
!3558 = !DILocation(line: 108, column: 9, scope: !3547)
!3559 = !DILocation(line: 112, column: 14, scope: !3547)
!3560 = !DILocation(line: 113, column: 18, scope: !3547)
!3561 = !DILocation(line: 113, column: 16, scope: !3547)
!3562 = !DILocation(line: 114, column: 5, scope: !3547)
!3563 = !DILocation(line: 115, column: 1, scope: !3547)
!3564 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !946, file: !946, line: 117, type: !3565, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3568)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!3494, !3474, !3567}
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !949, line: 213, baseType: !965)
!3568 = !{!3569, !3570, !3571}
!3569 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3564, file: !946, line: 117, type: !3474)
!3570 = !DILocalVariable(name: "direction", arg: 2, scope: !3564, file: !946, line: 117, type: !3567)
!3571 = !DILocalVariable(name: "ret_value", scope: !3564, file: !946, line: 119, type: !206)
!3572 = !DILocation(line: 0, scope: !3564)
!3573 = !DILocation(line: 120, column: 18, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3564, file: !946, line: 120, column: 9)
!3575 = !DILocation(line: 120, column: 9, scope: !3564)
!3576 = !DILocation(line: 123, column: 17, scope: !3564)
!3577 = !DILocation(line: 125, column: 12, scope: !3564)
!3578 = !DILocation(line: 125, column: 5, scope: !3564)
!3579 = !DILocation(line: 126, column: 1, scope: !3564)
!3580 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !946, file: !946, line: 128, type: !3581, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3584)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!3494, !3474, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 32)
!3584 = !{!3585, !3586, !3587}
!3585 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3580, file: !946, line: 128, type: !3474)
!3586 = !DILocalVariable(name: "direction", arg: 2, scope: !3580, file: !946, line: 128, type: !3583)
!3587 = !DILocalVariable(name: "status", scope: !3580, file: !946, line: 131, type: !3512)
!3588 = !DILocation(line: 0, scope: !3580)
!3589 = !DILocation(line: 132, column: 18, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3580, file: !946, line: 132, column: 9)
!3591 = !DILocation(line: 132, column: 9, scope: !3580)
!3592 = !DILocation(line: 136, column: 14, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3580, file: !946, line: 136, column: 9)
!3594 = !DILocation(line: 136, column: 9, scope: !3580)
!3595 = !DILocation(line: 140, column: 14, scope: !3580)
!3596 = !DILocation(line: 141, column: 18, scope: !3580)
!3597 = !DILocation(line: 141, column: 16, scope: !3580)
!3598 = !DILocation(line: 142, column: 5, scope: !3580)
!3599 = !DILocation(line: 143, column: 1, scope: !3580)
!3600 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !946, file: !946, line: 146, type: !3492, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3601)
!3601 = !{!3602, !3603}
!3602 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3600, file: !946, line: 146, type: !3474)
!3603 = !DILocalVariable(name: "status", scope: !3600, file: !946, line: 148, type: !3512)
!3604 = !DILocation(line: 0, scope: !3600)
!3605 = !DILocation(line: 149, column: 18, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3600, file: !946, line: 149, column: 9)
!3607 = !DILocation(line: 149, column: 9, scope: !3600)
!3608 = !DILocation(line: 153, column: 14, scope: !3600)
!3609 = !DILocation(line: 154, column: 76, scope: !3600)
!3610 = !DILocation(line: 154, column: 12, scope: !3600)
!3611 = !DILocation(line: 154, column: 5, scope: !3600)
!3612 = !DILocation(line: 155, column: 1, scope: !3600)
!3613 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !946, file: !946, line: 157, type: !3492, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3614)
!3614 = !{!3615, !3616}
!3615 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3613, file: !946, line: 157, type: !3474)
!3616 = !DILocalVariable(name: "ret_value", scope: !3613, file: !946, line: 159, type: !206)
!3617 = !DILocation(line: 0, scope: !3613)
!3618 = !DILocation(line: 160, column: 18, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3613, file: !946, line: 160, column: 9)
!3620 = !DILocation(line: 160, column: 9, scope: !3613)
!3621 = !DILocation(line: 164, column: 17, scope: !3613)
!3622 = !DILocation(line: 165, column: 19, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3613, file: !946, line: 165, column: 9)
!3624 = !DILocation(line: 165, column: 9, scope: !3613)
!3625 = !DILocation(line: 168, column: 17, scope: !3613)
!3626 = !DILocation(line: 169, column: 12, scope: !3613)
!3627 = !DILocation(line: 169, column: 5, scope: !3613)
!3628 = !DILocation(line: 170, column: 1, scope: !3613)
!3629 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !946, file: !946, line: 172, type: !3492, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3630)
!3630 = !{!3631, !3632}
!3631 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3629, file: !946, line: 172, type: !3474)
!3632 = !DILocalVariable(name: "ret_value", scope: !3629, file: !946, line: 174, type: !206)
!3633 = !DILocation(line: 0, scope: !3629)
!3634 = !DILocation(line: 175, column: 18, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3629, file: !946, line: 175, column: 9)
!3636 = !DILocation(line: 175, column: 9, scope: !3629)
!3637 = !DILocation(line: 179, column: 17, scope: !3629)
!3638 = !DILocation(line: 180, column: 19, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3629, file: !946, line: 180, column: 9)
!3640 = !DILocation(line: 180, column: 9, scope: !3629)
!3641 = !DILocation(line: 183, column: 17, scope: !3629)
!3642 = !DILocation(line: 184, column: 12, scope: !3629)
!3643 = !DILocation(line: 184, column: 5, scope: !3629)
!3644 = !DILocation(line: 185, column: 1, scope: !3629)
!3645 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !946, file: !946, line: 187, type: !3492, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3646)
!3646 = !{!3647, !3648}
!3647 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3645, file: !946, line: 187, type: !3474)
!3648 = !DILocalVariable(name: "ret_value", scope: !3645, file: !946, line: 189, type: !206)
!3649 = !DILocation(line: 0, scope: !3645)
!3650 = !DILocation(line: 191, column: 18, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3645, file: !946, line: 191, column: 9)
!3652 = !DILocation(line: 191, column: 9, scope: !3645)
!3653 = !DILocation(line: 195, column: 17, scope: !3645)
!3654 = !DILocation(line: 196, column: 12, scope: !3645)
!3655 = !DILocation(line: 196, column: 5, scope: !3645)
!3656 = !DILocation(line: 197, column: 1, scope: !3645)
!3657 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !946, file: !946, line: 200, type: !3658, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!3494, !3474, !983}
!3660 = !{!3661, !3662, !3663}
!3661 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3657, file: !946, line: 200, type: !3474)
!3662 = !DILocalVariable(name: "driving", arg: 2, scope: !3657, file: !946, line: 200, type: !983)
!3663 = !DILocalVariable(name: "ret_value", scope: !3657, file: !946, line: 202, type: !206)
!3664 = !DILocation(line: 0, scope: !3657)
!3665 = !DILocation(line: 204, column: 18, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3657, file: !946, line: 204, column: 9)
!3667 = !DILocation(line: 204, column: 9, scope: !3657)
!3668 = !DILocation(line: 208, column: 64, scope: !3657)
!3669 = !DILocation(line: 208, column: 17, scope: !3657)
!3670 = !DILocation(line: 210, column: 12, scope: !3657)
!3671 = !DILocation(line: 210, column: 5, scope: !3657)
!3672 = !DILocation(line: 211, column: 1, scope: !3657)
!3673 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !946, file: !946, line: 214, type: !3674, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !945, retainedNodes: !3677)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!3494, !3474, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 32)
!3677 = !{!3678, !3679, !3680, !3681}
!3678 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3673, file: !946, line: 214, type: !3474)
!3679 = !DILocalVariable(name: "driving", arg: 2, scope: !3673, file: !946, line: 214, type: !3676)
!3680 = !DILocalVariable(name: "ret_value", scope: !3673, file: !946, line: 216, type: !206)
!3681 = !DILocalVariable(name: "value", scope: !3673, file: !946, line: 217, type: !235)
!3682 = !DILocation(line: 0, scope: !3673)
!3683 = !DILocation(line: 217, column: 5, scope: !3673)
!3684 = !DILocation(line: 219, column: 18, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3673, file: !946, line: 219, column: 9)
!3686 = !DILocation(line: 219, column: 9, scope: !3673)
!3687 = !DILocation(line: 223, column: 17, scope: !3673)
!3688 = !DILocation(line: 225, column: 44, scope: !3673)
!3689 = !DILocation(line: 225, column: 16, scope: !3673)
!3690 = !DILocation(line: 225, column: 14, scope: !3673)
!3691 = !DILocation(line: 227, column: 12, scope: !3673)
!3692 = !DILocation(line: 227, column: 5, scope: !3673)
!3693 = !DILocation(line: 228, column: 1, scope: !3673)
!3694 = distinct !DISubprogram(name: "hal_spi_slave_init", scope: !298, file: !298, line: 66, type: !3695, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3707)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!3697, !3698, !3699}
!3697 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_slave_status_t", file: !301, line: 534, baseType: !300)
!3698 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_slave_port_t", file: !309, line: 521, baseType: !308)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_slave_config_t", file: !301, line: 563, baseType: !3701)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 560, size: 64, elements: !3702)
!3702 = !{!3703, !3705}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !3701, file: !301, line: 561, baseType: !3704, size: 32)
!3704 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_slave_clock_polarity_t", file: !309, line: 527, baseType: !313)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !3701, file: !301, line: 562, baseType: !3706, size: 32, offset: 32)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_slave_clock_phase_t", file: !309, line: 534, baseType: !317)
!3707 = !{!3708, !3709, !3710}
!3708 = !DILocalVariable(name: "spi_port", arg: 1, scope: !3694, file: !298, line: 66, type: !3698)
!3709 = !DILocalVariable(name: "spi_configure", arg: 2, scope: !3694, file: !298, line: 66, type: !3699)
!3710 = !DILocalVariable(name: "spis_mode", scope: !3694, file: !298, line: 68, type: !12)
!3711 = !DILocation(line: 0, scope: !3694)
!3712 = !DILocation(line: 69, column: 18, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3694, file: !298, line: 69, column: 9)
!3714 = !DILocation(line: 69, column: 9, scope: !3694)
!3715 = !DILocation(line: 72, column: 10, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3694, file: !298, line: 72, column: 9)
!3717 = !DILocation(line: 72, column: 9, scope: !3694)
!3718 = !DILocation(line: 76, column: 34, scope: !3694)
!3719 = !DILocation(line: 76, column: 43, scope: !3694)
!3720 = !DILocation(line: 76, column: 67, scope: !3694)
!3721 = !DILocation(line: 76, column: 49, scope: !3694)
!3722 = !DILocation(line: 77, column: 5, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3694, file: !298, line: 77, column: 5)
!3724 = !DILocation(line: 77, column: 5, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3723, file: !298, line: 77, column: 5)
!3726 = !DILocation(line: 77, column: 5, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3725, file: !298, line: 77, column: 5)
!3728 = !DILocation(line: 77, column: 5, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !298, line: 77, column: 5)
!3730 = !DILocation(line: 0, scope: !3725)
!3731 = !DILocation(line: 79, column: 5, scope: !3694)
!3732 = !DILocation(line: 81, column: 5, scope: !3694)
!3733 = !DILocation(line: 82, column: 1, scope: !3694)
!3734 = distinct !DISubprogram(name: "is_slave_config", scope: !298, file: !298, line: 52, type: !3735, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3739)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!144, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3700)
!3739 = !{!3740, !3741}
!3740 = !DILocalVariable(name: "spi_configure", arg: 1, scope: !3734, file: !298, line: 52, type: !3737)
!3741 = !DILocalVariable(name: "ret", scope: !3734, file: !298, line: 54, type: !144)
!3742 = !DILocation(line: 0, scope: !3734)
!3743 = !DILocation(line: 56, column: 30, scope: !3734)
!3744 = !DILocation(line: 59, column: 30, scope: !3734)
!3745 = !DILocation(line: 59, column: 9, scope: !3734)
!3746 = !DILocation(line: 62, column: 5, scope: !3734)
!3747 = distinct !DISubprogram(name: "hal_spi_slave_register_callback", scope: !298, file: !298, line: 84, type: !3748, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!3697, !3698, !326, !141}
!3750 = !{!3751, !3752, !3753}
!3751 = !DILocalVariable(name: "spi_port", arg: 1, scope: !3747, file: !298, line: 84, type: !3698)
!3752 = !DILocalVariable(name: "callback", arg: 2, scope: !3747, file: !298, line: 84, type: !326)
!3753 = !DILocalVariable(name: "user_data", arg: 3, scope: !3747, file: !298, line: 84, type: !141)
!3754 = !DILocation(line: 0, scope: !3747)
!3755 = !DILocation(line: 86, column: 18, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3747, file: !298, line: 86, column: 9)
!3757 = !DILocation(line: 86, column: 9, scope: !3747)
!3758 = !DILocation(line: 89, column: 14, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3747, file: !298, line: 89, column: 9)
!3760 = !DILocation(line: 89, column: 9, scope: !3747)
!3761 = !DILocation(line: 94, column: 21, scope: !3747)
!3762 = !DILocation(line: 95, column: 22, scope: !3747)
!3763 = !DILocation(line: 98, column: 5, scope: !3747)
!3764 = !DILocation(line: 99, column: 5, scope: !3747)
!3765 = !DILocation(line: 100, column: 5, scope: !3747)
!3766 = !DILocation(line: 102, column: 5, scope: !3747)
!3767 = !DILocation(line: 104, column: 1, scope: !3747)
!3768 = distinct !DISubprogram(name: "hal_spi_slave_isr", scope: !298, file: !298, line: 45, type: !290, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !3769)
!3769 = !{!3770}
!3770 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3768, file: !298, line: 45, type: !204)
!3771 = !DILocation(line: 0, scope: !3768)
!3772 = !DILocation(line: 47, column: 5, scope: !3768)
!3773 = !DILocation(line: 49, column: 5, scope: !3768)
!3774 = !DILocation(line: 49, column: 21, scope: !3768)
!3775 = !DILocation(line: 50, column: 1, scope: !3768)
!3776 = distinct !DISubprogram(name: "hal_uart_init", scope: !333, file: !333, line: 234, type: !3777, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3781)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!3779, !396, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !336, line: 351, baseType: !335)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 32)
!3781 = !{!3782, !3783}
!3782 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3776, file: !333, line: 234, type: !396)
!3783 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3776, file: !333, line: 234, type: !3780)
!3784 = !DILocation(line: 0, scope: !3776)
!3785 = !DILocation(line: 236, column: 10, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3776, file: !333, line: 236, column: 9)
!3787 = !DILocation(line: 236, column: 9, scope: !3776)
!3788 = !DILocation(line: 239, column: 41, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3776, file: !333, line: 239, column: 9)
!3790 = !DILocation(line: 239, column: 9, scope: !3776)
!3791 = !DILocation(line: 242, column: 5, scope: !3776)
!3792 = !DILocation(line: 243, column: 45, scope: !3776)
!3793 = !DILocation(line: 243, column: 12, scope: !3776)
!3794 = !DILocation(line: 244, column: 12, scope: !3776)
!3795 = !DILocation(line: 243, column: 5, scope: !3776)
!3796 = !DILocation(line: 245, column: 58, scope: !3776)
!3797 = !DILocation(line: 246, column: 30, scope: !3776)
!3798 = !{i32 0, i32 2}
!3799 = !DILocation(line: 246, column: 5, scope: !3776)
!3800 = !DILocation(line: 247, column: 5, scope: !3776)
!3801 = !DILocation(line: 249, column: 31, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3776, file: !333, line: 249, column: 9)
!3803 = !DILocation(line: 249, column: 28, scope: !3802)
!3804 = !DILocation(line: 261, column: 1, scope: !3776)
!3805 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !333, file: !333, line: 93, type: !3806, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3810)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!144, !396, !3808}
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!3810 = !{!3811, !3812}
!3811 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3805, file: !333, line: 93, type: !396)
!3812 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3805, file: !333, line: 93, type: !3808)
!3813 = !DILocation(line: 0, scope: !3805)
!3814 = !DILocation(line: 95, column: 10, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3805, file: !333, line: 95, column: 9)
!3816 = !DILocation(line: 95, column: 9, scope: !3805)
!3817 = !DILocation(line: 101, column: 23, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3805, file: !333, line: 101, column: 9)
!3819 = !DILocation(line: 101, column: 32, scope: !3818)
!3820 = !DILocation(line: 101, column: 60, scope: !3818)
!3821 = !DILocation(line: 102, column: 27, scope: !3818)
!3822 = !DILocation(line: 102, column: 34, scope: !3818)
!3823 = !DILocation(line: 102, column: 58, scope: !3818)
!3824 = !DILocation(line: 103, column: 27, scope: !3818)
!3825 = !DILocation(line: 103, column: 36, scope: !3818)
!3826 = !DILocation(line: 103, column: 59, scope: !3818)
!3827 = !DILocation(line: 104, column: 27, scope: !3818)
!3828 = !DILocation(line: 104, column: 39, scope: !3818)
!3829 = !DILocation(line: 101, column: 9, scope: !3805)
!3830 = !DILocation(line: 109, column: 1, scope: !3805)
!3831 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !333, file: !333, line: 139, type: !3832, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!2352, !396}
!3834 = !{!3835}
!3835 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3831, file: !333, line: 139, type: !396)
!3836 = !DILocation(line: 0, scope: !3831)
!3837 = !DILocation(line: 141, column: 24, scope: !3831)
!3838 = !DILocation(line: 141, column: 12, scope: !3831)
!3839 = !DILocation(line: 141, column: 5, scope: !3831)
!3840 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !333, file: !333, line: 593, type: !3841, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!3779, !396, !3808}
!3843 = !{!3844, !3845}
!3844 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3840, file: !333, line: 593, type: !396)
!3845 = !DILocalVariable(name: "config", arg: 2, scope: !3840, file: !333, line: 593, type: !3808)
!3846 = !DILocation(line: 0, scope: !3840)
!3847 = !DILocation(line: 595, column: 10, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3840, file: !333, line: 595, column: 9)
!3849 = !DILocation(line: 595, column: 9, scope: !3840)
!3850 = !DILocation(line: 598, column: 45, scope: !3840)
!3851 = !DILocation(line: 598, column: 12, scope: !3840)
!3852 = !DILocation(line: 598, column: 59, scope: !3840)
!3853 = !DILocation(line: 598, column: 5, scope: !3840)
!3854 = !DILocation(line: 599, column: 23, scope: !3840)
!3855 = !DILocation(line: 600, column: 59, scope: !3840)
!3856 = !DILocation(line: 600, column: 23, scope: !3840)
!3857 = !DILocation(line: 601, column: 62, scope: !3840)
!3858 = !DILocation(line: 601, column: 23, scope: !3840)
!3859 = !DILocation(line: 602, column: 57, scope: !3840)
!3860 = !DILocation(line: 602, column: 23, scope: !3840)
!3861 = !DILocation(line: 603, column: 58, scope: !3840)
!3862 = !DILocation(line: 603, column: 23, scope: !3840)
!3863 = !DILocation(line: 599, column: 5, scope: !3840)
!3864 = !DILocation(line: 604, column: 5, scope: !3840)
!3865 = !DILocation(line: 605, column: 1, scope: !3840)
!3866 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !333, file: !333, line: 145, type: !3867, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3869)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!12, !411}
!3869 = !{!3870, !3871}
!3870 = !DILocalVariable(name: "bandrate", arg: 1, scope: !3866, file: !333, line: 145, type: !411)
!3871 = !DILocalVariable(name: "baudrate_tbl", scope: !3866, file: !333, line: 147, type: !3872)
!3872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 416, elements: !3873)
!3873 = !{!3874}
!3874 = !DISubrange(count: 13)
!3875 = !DILocation(line: 0, scope: !3866)
!3876 = !DILocation(line: 147, column: 14, scope: !3866)
!3877 = !DILocation(line: 151, column: 12, scope: !3866)
!3878 = !DILocation(line: 151, column: 5, scope: !3866)
!3879 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !333, file: !333, line: 155, type: !3880, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3882)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!2422, !413}
!3882 = !{!3883, !3884}
!3883 = !DILocalVariable(name: "word_length", arg: 1, scope: !3879, file: !333, line: 155, type: !413)
!3884 = !DILocalVariable(name: "databit_tbl", scope: !3879, file: !333, line: 157, type: !3885)
!3885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 64, elements: !274)
!3886 = !DILocation(line: 0, scope: !3879)
!3887 = !DILocation(line: 157, column: 14, scope: !3879)
!3888 = !DILocation(line: 160, column: 12, scope: !3879)
!3889 = !DILocation(line: 160, column: 5, scope: !3879)
!3890 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !333, file: !333, line: 164, type: !3891, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!2422, !417}
!3893 = !{!3894, !3895}
!3894 = !DILocalVariable(name: "parity", arg: 1, scope: !3890, file: !333, line: 164, type: !417)
!3895 = !DILocalVariable(name: "parity_tbl", scope: !3890, file: !333, line: 166, type: !3896)
!3896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 80, elements: !278)
!3897 = !DILocation(line: 0, scope: !3890)
!3898 = !DILocation(line: 166, column: 14, scope: !3890)
!3899 = !DILocation(line: 169, column: 12, scope: !3890)
!3900 = !DILocation(line: 169, column: 5, scope: !3890)
!3901 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !333, file: !333, line: 173, type: !3902, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3904)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!2422, !415}
!3904 = !{!3905, !3906}
!3905 = !DILocalVariable(name: "stopbit", arg: 1, scope: !3901, file: !333, line: 173, type: !415)
!3906 = !DILocalVariable(name: "stopbit_tbl", scope: !3901, file: !333, line: 175, type: !3907)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, size: 48, elements: !606)
!3908 = !DILocation(line: 0, scope: !3901)
!3909 = !DILocation(line: 175, column: 14, scope: !3901)
!3910 = !DILocation(line: 178, column: 12, scope: !3901)
!3911 = !DILocation(line: 178, column: 5, scope: !3901)
!3912 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !333, file: !333, line: 87, type: !3913, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3915)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!144, !396}
!3915 = !{!3916}
!3916 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3912, file: !333, line: 87, type: !396)
!3917 = !DILocation(line: 0, scope: !3912)
!3918 = !DILocation(line: 89, column: 23, scope: !3912)
!3919 = !DILocation(line: 89, column: 5, scope: !3912)
!3920 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !333, file: !333, line: 264, type: !3921, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3923)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!3779, !396}
!3923 = !{!3924}
!3924 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3920, file: !333, line: 264, type: !396)
!3925 = !DILocation(line: 0, scope: !3920)
!3926 = !DILocation(line: 266, column: 10, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3920, file: !333, line: 266, column: 9)
!3928 = !DILocation(line: 266, column: 9, scope: !3920)
!3929 = !DILocation(line: 269, column: 41, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3920, file: !333, line: 269, column: 9)
!3931 = !DILocation(line: 269, column: 62, scope: !3930)
!3932 = !DILocation(line: 269, column: 9, scope: !3920)
!3933 = !DILocation(line: 272, column: 5, scope: !3920)
!3934 = !DILocation(line: 275, column: 22, scope: !3920)
!3935 = !DILocation(line: 275, column: 5, scope: !3920)
!3936 = !DILocation(line: 284, column: 5, scope: !3920)
!3937 = !DILocation(line: 286, column: 5, scope: !3920)
!3938 = !DILocation(line: 287, column: 1, scope: !3920)
!3939 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !333, file: !333, line: 290, type: !3940, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3942)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{null, !396, !385}
!3942 = !{!3943, !3944, !3945}
!3943 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3939, file: !333, line: 290, type: !396)
!3944 = !DILocalVariable(name: "byte", arg: 2, scope: !3939, file: !333, line: 290, type: !385)
!3945 = !DILocalVariable(name: "int_no", scope: !3939, file: !333, line: 292, type: !2352)
!3946 = !DILocation(line: 0, scope: !3939)
!3947 = !DILocation(line: 292, column: 26, scope: !3939)
!3948 = !DILocation(line: 294, column: 16, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3939, file: !333, line: 294, column: 9)
!3950 = !DILocation(line: 294, column: 9, scope: !3939)
!3951 = !DILocation(line: 295, column: 9, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3949, file: !333, line: 294, column: 34)
!3953 = !DILocation(line: 296, column: 5, scope: !3952)
!3954 = !DILocation(line: 299, column: 1, scope: !3939)
!3955 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !333, file: !333, line: 302, type: !3956, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!12, !396, !2558, !12}
!3958 = !{!3959, !3960, !3961, !3962, !3963}
!3959 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3955, file: !333, line: 302, type: !396)
!3960 = !DILocalVariable(name: "data", arg: 2, scope: !3955, file: !333, line: 302, type: !2558)
!3961 = !DILocalVariable(name: "size", arg: 3, scope: !3955, file: !333, line: 302, type: !12)
!3962 = !DILocalVariable(name: "int_no", scope: !3955, file: !333, line: 304, type: !2352)
!3963 = !DILocalVariable(name: "index", scope: !3955, file: !333, line: 305, type: !12)
!3964 = !DILocation(line: 0, scope: !3955)
!3965 = !DILocation(line: 304, column: 26, scope: !3955)
!3966 = !DILocation(line: 307, column: 14, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3955, file: !333, line: 307, column: 9)
!3968 = !DILocation(line: 307, column: 9, scope: !3955)
!3969 = !DILocation(line: 313, column: 53, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !333, line: 312, column: 48)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !333, line: 312, column: 9)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !333, line: 312, column: 9)
!3973 = distinct !DILexicalBlock(scope: !3974, file: !333, line: 311, column: 33)
!3974 = distinct !DILexicalBlock(scope: !3955, file: !333, line: 311, column: 9)
!3975 = !DILocation(line: 313, column: 13, scope: !3970)
!3976 = !DILocation(line: 312, column: 44, scope: !3971)
!3977 = !DILocation(line: 312, column: 31, scope: !3971)
!3978 = !DILocation(line: 312, column: 9, scope: !3972)
!3979 = distinct !{!3979, !3978, !3980}
!3980 = !DILocation(line: 314, column: 9, scope: !3972)
!3981 = !DILocation(line: 318, column: 1, scope: !3955)
!3982 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !333, file: !333, line: 320, type: !3956, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989}
!3984 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3982, file: !333, line: 320, type: !396)
!3985 = !DILocalVariable(name: "data", arg: 2, scope: !3982, file: !333, line: 320, type: !2558)
!3986 = !DILocalVariable(name: "size", arg: 3, scope: !3982, file: !333, line: 320, type: !12)
!3987 = !DILocalVariable(name: "actual_space", scope: !3982, file: !333, line: 322, type: !12)
!3988 = !DILocalVariable(name: "send_size", scope: !3982, file: !333, line: 322, type: !12)
!3989 = !DILocalVariable(name: "ch", scope: !3982, file: !333, line: 323, type: !3990)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !33, line: 144, baseType: !32)
!3991 = !DILocation(line: 0, scope: !3982)
!3992 = !DILocation(line: 322, column: 5, scope: !3982)
!3993 = !DILocation(line: 328, column: 10, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3982, file: !333, line: 328, column: 9)
!3995 = !DILocation(line: 328, column: 9, scope: !3982)
!3996 = !DILocation(line: 332, column: 15, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3982, file: !333, line: 332, column: 9)
!3998 = !DILocation(line: 332, column: 24, scope: !3997)
!3999 = !DILocation(line: 335, column: 42, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3982, file: !333, line: 335, column: 9)
!4001 = !DILocation(line: 335, column: 9, scope: !3982)
!4002 = !DILocation(line: 349, column: 30, scope: !3982)
!4003 = !DILocation(line: 349, column: 5, scope: !3982)
!4004 = !DILocation(line: 350, column: 9, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3982, file: !333, line: 350, column: 9)
!4006 = !DILocation(line: 350, column: 22, scope: !4005)
!4007 = !DILocation(line: 355, column: 5, scope: !3982)
!4008 = !DILocation(line: 357, column: 22, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3982, file: !333, line: 357, column: 9)
!4010 = !DILocation(line: 357, column: 19, scope: !4009)
!4011 = !DILocation(line: 357, column: 9, scope: !3982)
!4012 = !DILocation(line: 358, column: 14, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4009, file: !333, line: 357, column: 36)
!4014 = !{i32 14, i32 18}
!4015 = !DILocation(line: 359, column: 9, scope: !4013)
!4016 = !DILocation(line: 360, column: 5, scope: !4013)
!4017 = !DILocation(line: 362, column: 1, scope: !3982)
!4018 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !333, file: !333, line: 191, type: !4019, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!3990, !2352, !144}
!4021 = !{!4022, !4023, !4024}
!4022 = !DILocalVariable(name: "port", arg: 1, scope: !4018, file: !333, line: 191, type: !2352)
!4023 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4018, file: !333, line: 191, type: !144)
!4024 = !DILocalVariable(name: "ch", scope: !4018, file: !333, line: 193, type: !3990)
!4025 = !DILocation(line: 0, scope: !4018)
!4026 = !DILocation(line: 195, column: 14, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4018, file: !333, line: 195, column: 9)
!4028 = !DILocation(line: 195, column: 9, scope: !4018)
!4029 = !DILocation(line: 209, column: 5, scope: !4018)
!4030 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !333, file: !333, line: 365, type: !4031, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4033)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!385, !396}
!4033 = !{!4034, !4035}
!4034 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4030, file: !333, line: 365, type: !396)
!4035 = !DILocalVariable(name: "int_no", scope: !4030, file: !333, line: 367, type: !2352)
!4036 = !DILocation(line: 0, scope: !4030)
!4037 = !DILocation(line: 367, column: 26, scope: !4030)
!4038 = !DILocation(line: 369, column: 16, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !4030, file: !333, line: 369, column: 9)
!4040 = !DILocation(line: 369, column: 9, scope: !4030)
!4041 = !DILocation(line: 370, column: 22, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !4039, file: !333, line: 369, column: 33)
!4043 = !DILocation(line: 370, column: 9, scope: !4042)
!4044 = !DILocation(line: 0, scope: !4039)
!4045 = !DILocation(line: 375, column: 1, scope: !4030)
!4046 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !333, file: !333, line: 377, type: !4047, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!12, !396}
!4049 = !{!4050, !4051}
!4050 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4046, file: !333, line: 377, type: !396)
!4051 = !DILocalVariable(name: "int_no", scope: !4046, file: !333, line: 379, type: !2352)
!4052 = !DILocation(line: 0, scope: !4046)
!4053 = !DILocation(line: 379, column: 26, scope: !4046)
!4054 = !DILocation(line: 381, column: 16, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4046, file: !333, line: 381, column: 9)
!4056 = !DILocation(line: 381, column: 9, scope: !4046)
!4057 = !DILocation(line: 382, column: 16, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4055, file: !333, line: 381, column: 33)
!4059 = !DILocation(line: 382, column: 9, scope: !4058)
!4060 = !DILocation(line: 0, scope: !4055)
!4061 = !DILocation(line: 387, column: 1, scope: !4046)
!4062 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !333, file: !333, line: 390, type: !4063, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!12, !396, !436, !12}
!4065 = !{!4066, !4067, !4068, !4069, !4070}
!4066 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4062, file: !333, line: 390, type: !396)
!4067 = !DILocalVariable(name: "buffer", arg: 2, scope: !4062, file: !333, line: 390, type: !436)
!4068 = !DILocalVariable(name: "size", arg: 3, scope: !4062, file: !333, line: 390, type: !12)
!4069 = !DILocalVariable(name: "int_no", scope: !4062, file: !333, line: 392, type: !2352)
!4070 = !DILocalVariable(name: "index", scope: !4062, file: !333, line: 393, type: !12)
!4071 = !DILocation(line: 0, scope: !4062)
!4072 = !DILocation(line: 392, column: 26, scope: !4062)
!4073 = !DILocation(line: 395, column: 16, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4062, file: !333, line: 395, column: 9)
!4075 = !DILocation(line: 395, column: 9, scope: !4062)
!4076 = !DILocation(line: 401, column: 38, scope: !4077)
!4077 = distinct !DILexicalBlock(scope: !4078, file: !333, line: 400, column: 48)
!4078 = distinct !DILexicalBlock(scope: !4079, file: !333, line: 400, column: 9)
!4079 = distinct !DILexicalBlock(scope: !4080, file: !333, line: 400, column: 9)
!4080 = distinct !DILexicalBlock(scope: !4081, file: !333, line: 399, column: 33)
!4081 = distinct !DILexicalBlock(scope: !4062, file: !333, line: 399, column: 9)
!4082 = !DILocation(line: 401, column: 13, scope: !4077)
!4083 = !DILocation(line: 401, column: 27, scope: !4077)
!4084 = !DILocation(line: 400, column: 44, scope: !4078)
!4085 = !DILocation(line: 400, column: 31, scope: !4078)
!4086 = !DILocation(line: 400, column: 9, scope: !4079)
!4087 = distinct !{!4087, !4086, !4088}
!4088 = !DILocation(line: 402, column: 9, scope: !4079)
!4089 = !DILocation(line: 406, column: 1, scope: !4062)
!4090 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !333, file: !333, line: 408, type: !4063, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4091)
!4091 = !{!4092, !4093, !4094, !4095, !4096, !4097}
!4092 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4090, file: !333, line: 408, type: !396)
!4093 = !DILocalVariable(name: "buffer", arg: 2, scope: !4090, file: !333, line: 408, type: !436)
!4094 = !DILocalVariable(name: "size", arg: 3, scope: !4090, file: !333, line: 408, type: !12)
!4095 = !DILocalVariable(name: "actual_size", scope: !4090, file: !333, line: 410, type: !12)
!4096 = !DILocalVariable(name: "receive_size", scope: !4090, file: !333, line: 410, type: !12)
!4097 = !DILocalVariable(name: "ch", scope: !4090, file: !333, line: 411, type: !3990)
!4098 = !DILocation(line: 0, scope: !4090)
!4099 = !DILocation(line: 410, column: 5, scope: !4090)
!4100 = !DILocation(line: 413, column: 10, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4090, file: !333, line: 413, column: 9)
!4102 = !DILocation(line: 413, column: 9, scope: !4090)
!4103 = !DILocation(line: 417, column: 17, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4090, file: !333, line: 417, column: 9)
!4105 = !DILocation(line: 417, column: 26, scope: !4104)
!4106 = !DILocation(line: 421, column: 30, scope: !4090)
!4107 = !DILocation(line: 421, column: 5, scope: !4090)
!4108 = !DILocation(line: 422, column: 9, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4090, file: !333, line: 422, column: 9)
!4110 = !DILocation(line: 422, column: 21, scope: !4109)
!4111 = !DILocation(line: 427, column: 5, scope: !4090)
!4112 = !DILocation(line: 429, column: 25, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4090, file: !333, line: 429, column: 9)
!4114 = !DILocation(line: 429, column: 22, scope: !4113)
!4115 = !DILocation(line: 429, column: 9, scope: !4090)
!4116 = !DILocation(line: 430, column: 14, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4113, file: !333, line: 429, column: 38)
!4118 = !DILocation(line: 431, column: 9, scope: !4117)
!4119 = !DILocation(line: 432, column: 5, scope: !4117)
!4120 = !DILocation(line: 435, column: 1, scope: !4090)
!4121 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !333, file: !333, line: 438, type: !4047, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4122)
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4121, file: !333, line: 438, type: !396)
!4124 = !DILocalVariable(name: "length", scope: !4121, file: !333, line: 440, type: !12)
!4125 = !DILocation(line: 0, scope: !4121)
!4126 = !DILocation(line: 440, column: 5, scope: !4121)
!4127 = !DILocation(line: 440, column: 14, scope: !4121)
!4128 = !DILocation(line: 442, column: 10, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4121, file: !333, line: 442, column: 9)
!4130 = !DILocation(line: 442, column: 9, scope: !4121)
!4131 = !DILocation(line: 446, column: 30, scope: !4121)
!4132 = !DILocation(line: 446, column: 5, scope: !4121)
!4133 = !DILocation(line: 447, column: 12, scope: !4121)
!4134 = !DILocation(line: 447, column: 5, scope: !4121)
!4135 = !DILocation(line: 448, column: 1, scope: !4121)
!4136 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !333, file: !333, line: 451, type: !4047, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4137)
!4137 = !{!4138, !4139}
!4138 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4136, file: !333, line: 451, type: !396)
!4139 = !DILocalVariable(name: "length", scope: !4136, file: !333, line: 453, type: !12)
!4140 = !DILocation(line: 0, scope: !4136)
!4141 = !DILocation(line: 453, column: 5, scope: !4136)
!4142 = !DILocation(line: 453, column: 14, scope: !4136)
!4143 = !DILocation(line: 455, column: 10, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4136, file: !333, line: 455, column: 9)
!4145 = !DILocation(line: 455, column: 9, scope: !4136)
!4146 = !DILocation(line: 459, column: 30, scope: !4136)
!4147 = !DILocation(line: 459, column: 5, scope: !4136)
!4148 = !DILocation(line: 461, column: 12, scope: !4136)
!4149 = !DILocation(line: 461, column: 5, scope: !4136)
!4150 = !DILocation(line: 462, column: 1, scope: !4136)
!4151 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !333, file: !333, line: 543, type: !4152, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4154)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!3779, !396, !424, !141}
!4154 = !{!4155, !4156, !4157, !4158}
!4155 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4151, file: !333, line: 543, type: !396)
!4156 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4151, file: !333, line: 544, type: !424)
!4157 = !DILocalVariable(name: "user_data", arg: 3, scope: !4151, file: !333, line: 545, type: !141)
!4158 = !DILocalVariable(name: "ch", scope: !4151, file: !333, line: 547, type: !3990)
!4159 = !DILocation(line: 0, scope: !4151)
!4160 = !DILocation(line: 549, column: 10, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4151, file: !333, line: 549, column: 9)
!4162 = !DILocation(line: 549, column: 9, scope: !4151)
!4163 = !DILocation(line: 556, column: 53, scope: !4151)
!4164 = !DILocation(line: 556, column: 62, scope: !4151)
!4165 = !DILocation(line: 557, column: 53, scope: !4151)
!4166 = !DILocation(line: 557, column: 63, scope: !4151)
!4167 = !DILocation(line: 558, column: 37, scope: !4151)
!4168 = !DILocation(line: 558, column: 54, scope: !4151)
!4169 = !DILocation(line: 560, column: 39, scope: !4151)
!4170 = !DILocation(line: 561, column: 39, scope: !4151)
!4171 = !DILocation(line: 560, column: 5, scope: !4151)
!4172 = !DILocation(line: 562, column: 5, scope: !4151)
!4173 = !DILocation(line: 564, column: 44, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4151, file: !333, line: 564, column: 9)
!4175 = !DILocation(line: 564, column: 9, scope: !4151)
!4176 = !DILocation(line: 565, column: 9, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4174, file: !333, line: 564, column: 59)
!4178 = !DILocation(line: 566, column: 5, scope: !4177)
!4179 = !DILocation(line: 567, column: 9, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4174, file: !333, line: 566, column: 12)
!4181 = !DILocation(line: 569, column: 10, scope: !4151)
!4182 = !DILocation(line: 570, column: 5, scope: !4151)
!4183 = !DILocation(line: 578, column: 5, scope: !4151)
!4184 = !DILocation(line: 579, column: 1, scope: !4151)
!4185 = !DILocation(line: 0, scope: !389)
!4186 = !DILocation(line: 539, column: 12, scope: !389)
!4187 = !DILocation(line: 539, column: 5, scope: !389)
!4188 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !333, file: !333, line: 511, type: !394, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4189)
!4189 = !{!4190}
!4190 = !DILocalVariable(name: "callback_context", scope: !4191, file: !333, line: 514, type: !4193)
!4191 = distinct !DILexicalBlock(scope: !4192, file: !333, line: 513, column: 60)
!4192 = distinct !DILexicalBlock(scope: !4188, file: !333, line: 513, column: 9)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 32)
!4194 = !DILocation(line: 513, column: 42, scope: !4192)
!4195 = !DILocation(line: 513, column: 9, scope: !4188)
!4196 = !DILocation(line: 515, column: 39, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4191, file: !333, line: 515, column: 13)
!4198 = !DILocation(line: 515, column: 18, scope: !4197)
!4199 = !DILocation(line: 515, column: 13, scope: !4191)
!4200 = !DILocation(line: 516, column: 89, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !333, line: 515, column: 49)
!4202 = !DILocation(line: 516, column: 13, scope: !4201)
!4203 = !DILocation(line: 517, column: 9, scope: !4201)
!4204 = !DILocation(line: 519, column: 32, scope: !4188)
!4205 = !DILocation(line: 519, column: 5, scope: !4188)
!4206 = !DILocation(line: 520, column: 1, scope: !4188)
!4207 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !333, file: !333, line: 523, type: !394, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4208)
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "callback_context", scope: !4210, file: !333, line: 526, type: !4193)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !333, line: 525, column: 60)
!4211 = distinct !DILexicalBlock(scope: !4207, file: !333, line: 525, column: 9)
!4212 = !DILocation(line: 525, column: 42, scope: !4211)
!4213 = !DILocation(line: 525, column: 9, scope: !4207)
!4214 = !DILocation(line: 527, column: 39, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4210, file: !333, line: 527, column: 13)
!4216 = !DILocation(line: 527, column: 18, scope: !4215)
!4217 = !DILocation(line: 527, column: 13, scope: !4210)
!4218 = !DILocation(line: 528, column: 89, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4215, file: !333, line: 527, column: 49)
!4220 = !DILocation(line: 528, column: 13, scope: !4219)
!4221 = !DILocation(line: 529, column: 9, scope: !4219)
!4222 = !DILocation(line: 531, column: 32, scope: !4207)
!4223 = !DILocation(line: 531, column: 5, scope: !4207)
!4224 = !DILocation(line: 532, column: 1, scope: !4207)
!4225 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !333, file: !333, line: 464, type: !4226, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{null, !2352, !144}
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4235}
!4229 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4225, file: !333, line: 464, type: !2352)
!4230 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4225, file: !333, line: 464, type: !144)
!4231 = !DILocalVariable(name: "avail_size", scope: !4225, file: !333, line: 466, type: !12)
!4232 = !DILocalVariable(name: "avail_space", scope: !4225, file: !333, line: 466, type: !12)
!4233 = !DILocalVariable(name: "dma_config", scope: !4225, file: !333, line: 467, type: !4234)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!4235 = !DILocalVariable(name: "ch", scope: !4225, file: !333, line: 468, type: !3990)
!4236 = !DILocation(line: 0, scope: !4225)
!4237 = !DILocation(line: 466, column: 5, scope: !4225)
!4238 = !DILocation(line: 471, column: 9, scope: !4225)
!4239 = !DILocation(line: 472, column: 9, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !333, line: 471, column: 16)
!4241 = distinct !DILexicalBlock(scope: !4225, file: !333, line: 471, column: 9)
!4242 = !DILocation(line: 473, column: 13, scope: !4243)
!4243 = distinct !DILexicalBlock(scope: !4240, file: !333, line: 473, column: 13)
!4244 = !DILocation(line: 473, column: 39, scope: !4243)
!4245 = !DILocation(line: 473, column: 24, scope: !4243)
!4246 = !DILocation(line: 473, column: 13, scope: !4240)
!4247 = !DILocation(line: 478, column: 9, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4241, file: !333, line: 477, column: 12)
!4249 = !DILocation(line: 479, column: 13, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4248, file: !333, line: 479, column: 13)
!4251 = !DILocation(line: 479, column: 40, scope: !4250)
!4252 = !DILocation(line: 479, column: 77, scope: !4250)
!4253 = !DILocation(line: 479, column: 63, scope: !4250)
!4254 = !DILocation(line: 479, column: 25, scope: !4250)
!4255 = !DILocation(line: 479, column: 13, scope: !4248)
!4256 = !DILocation(line: 0, scope: !4241)
!4257 = !DILocation(line: 484, column: 1, scope: !4225)
!4258 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !333, file: !333, line: 486, type: !394, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4259)
!4259 = !{!4260}
!4260 = !DILocalVariable(name: "callback_context", scope: !4261, file: !333, line: 490, type: !4193)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !333, line: 489, column: 70)
!4262 = distinct !DILexicalBlock(scope: !4258, file: !333, line: 488, column: 9)
!4263 = !DILocation(line: 488, column: 43, scope: !4262)
!4264 = !DILocation(line: 488, column: 61, scope: !4262)
!4265 = !DILocation(line: 489, column: 14, scope: !4262)
!4266 = !DILocation(line: 489, column: 63, scope: !4262)
!4267 = !DILocation(line: 488, column: 9, scope: !4258)
!4268 = !DILocation(line: 491, column: 39, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4261, file: !333, line: 491, column: 13)
!4270 = !DILocation(line: 491, column: 18, scope: !4269)
!4271 = !DILocation(line: 491, column: 13, scope: !4261)
!4272 = !DILocation(line: 492, column: 88, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4269, file: !333, line: 491, column: 49)
!4274 = !DILocation(line: 492, column: 13, scope: !4273)
!4275 = !DILocation(line: 493, column: 9, scope: !4273)
!4276 = !DILocation(line: 495, column: 32, scope: !4258)
!4277 = !DILocation(line: 495, column: 5, scope: !4258)
!4278 = !DILocation(line: 496, column: 1, scope: !4258)
!4279 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !333, file: !333, line: 499, type: !394, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4280)
!4280 = !{!4281}
!4281 = !DILocalVariable(name: "callback_context", scope: !4282, file: !333, line: 503, type: !4193)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !333, line: 502, column: 70)
!4283 = distinct !DILexicalBlock(scope: !4279, file: !333, line: 501, column: 9)
!4284 = !DILocation(line: 501, column: 43, scope: !4283)
!4285 = !DILocation(line: 501, column: 61, scope: !4283)
!4286 = !DILocation(line: 502, column: 14, scope: !4283)
!4287 = !DILocation(line: 502, column: 63, scope: !4283)
!4288 = !DILocation(line: 501, column: 9, scope: !4279)
!4289 = !DILocation(line: 504, column: 39, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4282, file: !333, line: 504, column: 13)
!4291 = !DILocation(line: 504, column: 18, scope: !4290)
!4292 = !DILocation(line: 504, column: 13, scope: !4282)
!4293 = !DILocation(line: 505, column: 88, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4290, file: !333, line: 504, column: 49)
!4295 = !DILocation(line: 505, column: 13, scope: !4294)
!4296 = !DILocation(line: 506, column: 9, scope: !4294)
!4297 = !DILocation(line: 508, column: 32, scope: !4279)
!4298 = !DILocation(line: 508, column: 5, scope: !4279)
!4299 = !DILocation(line: 509, column: 1, scope: !4279)
!4300 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !333, file: !333, line: 582, type: !4301, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!3779, !396, !411}
!4303 = !{!4304, !4305}
!4304 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4300, file: !333, line: 582, type: !396)
!4305 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4300, file: !333, line: 582, type: !411)
!4306 = !DILocation(line: 0, scope: !4300)
!4307 = !DILocation(line: 584, column: 11, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4300, file: !333, line: 584, column: 9)
!4309 = !DILocation(line: 584, column: 46, scope: !4308)
!4310 = !DILocation(line: 588, column: 37, scope: !4300)
!4311 = !DILocation(line: 588, column: 50, scope: !4300)
!4312 = !DILocation(line: 588, column: 59, scope: !4300)
!4313 = !DILocation(line: 589, column: 12, scope: !4300)
!4314 = !DILocation(line: 589, column: 5, scope: !4300)
!4315 = !DILocation(line: 590, column: 1, scope: !4300)
!4316 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !333, file: !333, line: 608, type: !4317, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4321)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!3779, !396, !4319}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!4321 = !{!4322, !4323}
!4322 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4316, file: !333, line: 608, type: !396)
!4323 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4316, file: !333, line: 608, type: !4319)
!4324 = !DILocation(line: 0, scope: !4316)
!4325 = !DILocation(line: 610, column: 10, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4316, file: !333, line: 610, column: 9)
!4327 = !DILocation(line: 610, column: 9, scope: !4316)
!4328 = !DILocation(line: 614, column: 10, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4316, file: !333, line: 614, column: 9)
!4330 = !DILocation(line: 614, column: 9, scope: !4316)
!4331 = !DILocation(line: 618, column: 37, scope: !4316)
!4332 = !DILocation(line: 618, column: 56, scope: !4316)
!4333 = !DILocation(line: 619, column: 45, scope: !4316)
!4334 = !DILocation(line: 619, column: 12, scope: !4316)
!4335 = !DILocation(line: 620, column: 12, scope: !4316)
!4336 = !DILocation(line: 619, column: 5, scope: !4316)
!4337 = !DILocation(line: 621, column: 5, scope: !4316)
!4338 = !DILocation(line: 622, column: 5, scope: !4316)
!4339 = !DILocation(line: 623, column: 33, scope: !4316)
!4340 = !DILocation(line: 624, column: 50, scope: !4316)
!4341 = !DILocation(line: 625, column: 50, scope: !4316)
!4342 = !DILocation(line: 626, column: 50, scope: !4316)
!4343 = !DILocation(line: 627, column: 50, scope: !4316)
!4344 = !DILocation(line: 628, column: 33, scope: !4316)
!4345 = !DILocation(line: 623, column: 5, scope: !4316)
!4346 = !DILocation(line: 630, column: 50, scope: !4316)
!4347 = !DILocation(line: 631, column: 50, scope: !4316)
!4348 = !DILocation(line: 632, column: 50, scope: !4316)
!4349 = !DILocation(line: 629, column: 5, scope: !4316)
!4350 = !DILocation(line: 634, column: 5, scope: !4316)
!4351 = !DILocation(line: 635, column: 1, scope: !4316)
!4352 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !333, file: !333, line: 112, type: !4353, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4355)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!144, !4319}
!4355 = !{!4356}
!4356 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4352, file: !333, line: 112, type: !4319)
!4357 = !DILocation(line: 0, scope: !4352)
!4358 = !DILocation(line: 114, column: 14, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4352, file: !333, line: 114, column: 9)
!4360 = !DILocation(line: 114, column: 9, scope: !4352)
!4361 = !DILocation(line: 117, column: 29, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4352, file: !333, line: 117, column: 9)
!4363 = !DILocation(line: 117, column: 14, scope: !4362)
!4364 = !DILocation(line: 117, column: 9, scope: !4352)
!4365 = !DILocation(line: 120, column: 21, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4352, file: !333, line: 120, column: 9)
!4367 = !DILocation(line: 120, column: 61, scope: !4366)
!4368 = !DILocation(line: 120, column: 47, scope: !4366)
!4369 = !DILocation(line: 120, column: 9, scope: !4352)
!4370 = !DILocation(line: 123, column: 61, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4352, file: !333, line: 123, column: 9)
!4372 = !DILocation(line: 123, column: 47, scope: !4371)
!4373 = !DILocation(line: 123, column: 9, scope: !4352)
!4374 = !DILocation(line: 126, column: 29, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4352, file: !333, line: 126, column: 9)
!4376 = !DILocation(line: 126, column: 14, scope: !4375)
!4377 = !DILocation(line: 126, column: 9, scope: !4352)
!4378 = !DILocation(line: 129, column: 21, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4352, file: !333, line: 129, column: 9)
!4380 = !DILocation(line: 129, column: 58, scope: !4379)
!4381 = !DILocation(line: 129, column: 44, scope: !4379)
!4382 = !DILocation(line: 129, column: 9, scope: !4352)
!4383 = !DILocation(line: 136, column: 1, scope: !4352)
!4384 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !333, file: !333, line: 182, type: !4385, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4387)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!12, !12}
!4387 = !{!4388, !4389}
!4388 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4384, file: !333, line: 182, type: !12)
!4389 = !DILocalVariable(name: "ticks_per_us", scope: !4384, file: !333, line: 184, type: !12)
!4390 = !DILocation(line: 0, scope: !4384)
!4391 = !DILocation(line: 186, column: 20, scope: !4384)
!4392 = !DILocation(line: 186, column: 39, scope: !4384)
!4393 = !DILocation(line: 188, column: 25, scope: !4384)
!4394 = !DILocation(line: 188, column: 5, scope: !4384)
!4395 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !333, file: !333, line: 637, type: !3921, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4396)
!4396 = !{!4397, !4398}
!4397 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4395, file: !333, line: 637, type: !396)
!4398 = !DILocalVariable(name: "int_no", scope: !4395, file: !333, line: 639, type: !2352)
!4399 = !DILocation(line: 0, scope: !4395)
!4400 = !DILocation(line: 641, column: 10, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4395, file: !333, line: 641, column: 9)
!4402 = !DILocation(line: 641, column: 9, scope: !4395)
!4403 = !DILocation(line: 645, column: 14, scope: !4395)
!4404 = !DILocation(line: 646, column: 5, scope: !4395)
!4405 = !DILocation(line: 648, column: 5, scope: !4395)
!4406 = !DILocation(line: 649, column: 1, scope: !4395)
!4407 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !333, file: !333, line: 651, type: !4408, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!3779, !396, !235, !235, !235}
!4410 = !{!4411, !4412, !4413, !4414, !4415}
!4411 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4407, file: !333, line: 651, type: !396)
!4412 = !DILocalVariable(name: "xon", arg: 2, scope: !4407, file: !333, line: 652, type: !235)
!4413 = !DILocalVariable(name: "xoff", arg: 3, scope: !4407, file: !333, line: 653, type: !235)
!4414 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4407, file: !333, line: 654, type: !235)
!4415 = !DILocalVariable(name: "int_no", scope: !4407, file: !333, line: 656, type: !2352)
!4416 = !DILocation(line: 0, scope: !4407)
!4417 = !DILocation(line: 658, column: 10, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4407, file: !333, line: 658, column: 9)
!4419 = !DILocation(line: 658, column: 9, scope: !4407)
!4420 = !DILocation(line: 662, column: 14, scope: !4407)
!4421 = !DILocation(line: 663, column: 5, scope: !4407)
!4422 = !DILocation(line: 665, column: 5, scope: !4407)
!4423 = !DILocation(line: 666, column: 1, scope: !4407)
!4424 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !333, file: !333, line: 668, type: !3921, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4425)
!4425 = !{!4426, !4427}
!4426 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4424, file: !333, line: 668, type: !396)
!4427 = !DILocalVariable(name: "int_no", scope: !4424, file: !333, line: 670, type: !2352)
!4428 = !DILocation(line: 0, scope: !4424)
!4429 = !DILocation(line: 672, column: 10, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4424, file: !333, line: 672, column: 9)
!4431 = !DILocation(line: 672, column: 9, scope: !4424)
!4432 = !DILocation(line: 676, column: 14, scope: !4424)
!4433 = !DILocation(line: 677, column: 5, scope: !4424)
!4434 = !DILocation(line: 679, column: 5, scope: !4424)
!4435 = !DILocation(line: 680, column: 1, scope: !4424)
!4436 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !333, file: !333, line: 683, type: !4437, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !332, retainedNodes: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!3779, !396, !12}
!4439 = !{!4440, !4441}
!4440 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4436, file: !333, line: 683, type: !396)
!4441 = !DILocalVariable(name: "timeout", arg: 2, scope: !4436, file: !333, line: 683, type: !12)
!4442 = !DILocation(line: 0, scope: !4436)
!4443 = !DILocation(line: 685, column: 10, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4436, file: !333, line: 685, column: 9)
!4445 = !DILocation(line: 685, column: 9, scope: !4436)
!4446 = !DILocation(line: 689, column: 19, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4436, file: !333, line: 689, column: 9)
!4448 = !DILocation(line: 0, scope: !4447)
!4449 = !DILocation(line: 696, column: 1, scope: !4436)
!4450 = distinct !DISubprogram(name: "__io_putchar", scope: !446, file: !446, line: 99, type: !4451, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !4453)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!66, !66}
!4453 = !{!4454}
!4454 = !DILocalVariable(name: "ch", arg: 1, scope: !4450, file: !446, line: 99, type: !66)
!4455 = !DILocation(line: 0, scope: !4450)
!4456 = !DILocation(line: 106, column: 35, scope: !4450)
!4457 = !DILocation(line: 106, column: 5, scope: !4450)
!4458 = !DILocation(line: 107, column: 5, scope: !4450)
!4459 = distinct !DISubprogram(name: "main", scope: !446, file: !446, line: 265, type: !2328, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !1899)
!4460 = !DILocation(line: 268, column: 5, scope: !4459)
!4461 = !DILocation(line: 271, column: 5, scope: !4459)
!4462 = !DILocation(line: 319, column: 3, scope: !4463, inlinedAt: !4464)
!4463 = distinct !DISubprogram(name: "__enable_irq", scope: !1889, file: !1889, line: 317, type: !394, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !1899)
!4464 = distinct !DILocation(line: 274, column: 5, scope: !4459)
!4465 = !{i64 518821}
!4466 = !DILocation(line: 496, column: 3, scope: !4467, inlinedAt: !4468)
!4467 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1889, file: !1889, line: 494, type: !394, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !1899)
!4468 = distinct !DILocation(line: 275, column: 5, scope: !4459)
!4469 = !{i64 523096}
!4470 = !DILocation(line: 278, column: 5, scope: !4459)
!4471 = !DILocation(line: 280, column: 5, scope: !4459)
!4472 = !DILocation(line: 281, column: 5, scope: !4459)
!4473 = !DILocation(line: 284, column: 5, scope: !4459)
!4474 = !DILocation(line: 286, column: 5, scope: !4459)
!4475 = distinct !{!4475, !4474, !4476}
!4476 = !DILocation(line: 286, column: 14, scope: !4459)
!4477 = distinct !DISubprogram(name: "SystemClock_Config", scope: !446, file: !446, line: 138, type: !394, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !1899)
!4478 = !DILocation(line: 140, column: 5, scope: !4477)
!4479 = !DILocation(line: 141, column: 1, scope: !4477)
!4480 = distinct !DISubprogram(name: "prvSetupHardware", scope: !446, file: !446, line: 148, type: !394, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !1899)
!4481 = !DILocation(line: 151, column: 5, scope: !4480)
!4482 = !DILocation(line: 152, column: 1, scope: !4480)
!4483 = distinct !DISubprogram(name: "spi_slave_transfer_data_two_boards_example", scope: !446, file: !446, line: 216, type: !394, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !4484)
!4484 = !{!4485}
!4485 = !DILocalVariable(name: "spis_configure", scope: !4483, file: !446, line: 218, type: !4486)
!4486 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_spi_slave_config_t", file: !301, line: 563, baseType: !4487)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 560, size: 64, elements: !4488)
!4488 = !{!4489, !4490}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4487, file: !301, line: 561, baseType: !3704, size: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !4487, file: !301, line: 562, baseType: !3706, size: 32, offset: 32)
!4491 = !DILocation(line: 218, column: 5, scope: !4483)
!4492 = !DILocation(line: 218, column: 29, scope: !4483)
!4493 = !DILocation(line: 220, column: 5, scope: !4483)
!4494 = !DILocation(line: 223, column: 5, scope: !4483)
!4495 = !DILocation(line: 224, column: 5, scope: !4483)
!4496 = !DILocation(line: 225, column: 5, scope: !4483)
!4497 = !DILocation(line: 226, column: 5, scope: !4483)
!4498 = !DILocation(line: 227, column: 5, scope: !4483)
!4499 = !DILocation(line: 228, column: 5, scope: !4483)
!4500 = !DILocation(line: 229, column: 5, scope: !4483)
!4501 = !DILocation(line: 230, column: 5, scope: !4483)
!4502 = !DILocation(line: 233, column: 20, scope: !4483)
!4503 = !DILocation(line: 233, column: 26, scope: !4483)
!4504 = !DILocation(line: 234, column: 20, scope: !4483)
!4505 = !DILocation(line: 234, column: 29, scope: !4483)
!4506 = !DILocation(line: 235, column: 36, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4483, file: !446, line: 235, column: 9)
!4508 = !DILocation(line: 235, column: 33, scope: !4507)
!4509 = !DILocation(line: 235, column: 9, scope: !4483)
!4510 = !DILocation(line: 239, column: 9, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4507, file: !446, line: 238, column: 12)
!4512 = !DILocation(line: 243, column: 36, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4483, file: !446, line: 243, column: 9)
!4514 = !DILocation(line: 243, column: 33, scope: !4513)
!4515 = !DILocation(line: 243, column: 9, scope: !4483)
!4516 = !DILocation(line: 247, column: 9, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4513, file: !446, line: 246, column: 12)
!4518 = !DILocation(line: 251, column: 5, scope: !4483)
!4519 = !DILocation(line: 252, column: 28, scope: !4483)
!4520 = !DILocation(line: 253, column: 5, scope: !4483)
!4521 = !DILocation(line: 254, column: 5, scope: !4483)
!4522 = !DILocation(line: 254, column: 12, scope: !4483)
!4523 = !DILocation(line: 254, column: 35, scope: !4483)
!4524 = distinct !{!4524, !4521, !4525}
!4525 = !DILocation(line: 254, column: 44, scope: !4483)
!4526 = !DILocation(line: 257, column: 5, scope: !4483)
!4527 = !DILocation(line: 258, column: 5, scope: !4483)
!4528 = !DILocation(line: 259, column: 5, scope: !4483)
!4529 = !DILocation(line: 260, column: 5, scope: !4483)
!4530 = !DILocation(line: 263, column: 1, scope: !4483)
!4531 = !DILocation(line: 0, scope: !4483)
!4532 = distinct !DISubprogram(name: "spis_user_callback", scope: !446, file: !446, line: 169, type: !328, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !4533)
!4533 = !{!4534, !4535, !4536}
!4534 = !DILocalVariable(name: "user_data", arg: 1, scope: !4532, file: !446, line: 169, type: !141)
!4535 = !DILocalVariable(name: "ptr", scope: !4532, file: !446, line: 171, type: !322)
!4536 = !DILocalVariable(name: "i", scope: !4532, file: !446, line: 171, type: !12)
!4537 = !DILocation(line: 0, scope: !4532)
!4538 = !DILocation(line: 173, column: 13, scope: !4532)
!4539 = !DILocation(line: 173, column: 5, scope: !4532)
!4540 = !DILocation(line: 177, column: 13, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4532, file: !446, line: 173, column: 36)
!4542 = !DILocation(line: 179, column: 13, scope: !4541)
!4543 = !DILocation(line: 180, column: 13, scope: !4541)
!4544 = !DILocation(line: 185, column: 21, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !446, line: 185, column: 21)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !446, line: 184, column: 58)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !446, line: 184, column: 13)
!4548 = distinct !DILexicalBlock(scope: !4541, file: !446, line: 184, column: 13)
!4549 = !DILocation(line: 185, column: 28, scope: !4545)
!4550 = !DILocation(line: 185, column: 21, scope: !4546)
!4551 = !DILocation(line: 186, column: 21, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4545, file: !446, line: 185, column: 57)
!4553 = !DILocation(line: 187, column: 21, scope: !4552)
!4554 = !DILocation(line: 184, column: 54, scope: !4547)
!4555 = !DILocation(line: 184, column: 27, scope: !4547)
!4556 = !DILocation(line: 184, column: 13, scope: !4548)
!4557 = distinct !{!4557, !4556, !4558}
!4558 = !DILocation(line: 189, column: 13, scope: !4548)
!4559 = !DILocation(line: 191, column: 13, scope: !4541)
!4560 = !DILocation(line: 192, column: 13, scope: !4541)
!4561 = !DILocation(line: 197, column: 17, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !446, line: 196, column: 58)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !446, line: 196, column: 13)
!4564 = distinct !DILexicalBlock(scope: !4541, file: !446, line: 196, column: 13)
!4565 = !DILocation(line: 197, column: 24, scope: !4562)
!4566 = !DILocation(line: 196, column: 54, scope: !4563)
!4567 = !DILocation(line: 196, column: 27, scope: !4563)
!4568 = !DILocation(line: 196, column: 13, scope: !4564)
!4569 = distinct !{!4569, !4568, !4570}
!4570 = !DILocation(line: 198, column: 13, scope: !4564)
!4571 = !DILocation(line: 200, column: 13, scope: !4541)
!4572 = !DILocation(line: 201, column: 13, scope: !4541)
!4573 = !DILocation(line: 204, column: 36, scope: !4541)
!4574 = !DILocation(line: 205, column: 13, scope: !4541)
!4575 = !DILocation(line: 207, column: 13, scope: !4541)
!4576 = !DILocation(line: 208, column: 5, scope: !4541)
!4577 = !DILocation(line: 209, column: 1, scope: !4532)
!4578 = distinct !DISubprogram(name: "spis_notice_spim", scope: !446, file: !446, line: 159, type: !394, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !1899)
!4579 = !DILocation(line: 161, column: 27, scope: !4578)
!4580 = !DILocation(line: 162, column: 1, scope: !4578)
!4581 = distinct !DISubprogram(name: "plain_log_uart_init", scope: !446, file: !446, line: 115, type: !394, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !4582)
!4582 = !{!4583}
!4583 = !DILocalVariable(name: "uart_config", scope: !4581, file: !446, line: 117, type: !4584)
!4584 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !336, line: 378, baseType: !4585)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 373, size: 128, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4585, file: !336, line: 374, baseType: !411, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4585, file: !336, line: 375, baseType: !413, size: 32, offset: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4585, file: !336, line: 376, baseType: !415, size: 32, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4585, file: !336, line: 377, baseType: !417, size: 32, offset: 96)
!4591 = !DILocation(line: 117, column: 5, scope: !4581)
!4592 = !DILocation(line: 117, column: 23, scope: !4581)
!4593 = !DILocation(line: 120, column: 5, scope: !4581)
!4594 = !DILocation(line: 121, column: 5, scope: !4581)
!4595 = !DILocation(line: 122, column: 5, scope: !4581)
!4596 = !DILocation(line: 123, column: 5, scope: !4581)
!4597 = !DILocation(line: 126, column: 17, scope: !4581)
!4598 = !DILocation(line: 126, column: 26, scope: !4581)
!4599 = !DILocation(line: 127, column: 17, scope: !4581)
!4600 = !DILocation(line: 127, column: 29, scope: !4581)
!4601 = !DILocation(line: 128, column: 17, scope: !4581)
!4602 = !DILocation(line: 128, column: 26, scope: !4581)
!4603 = !DILocation(line: 129, column: 17, scope: !4581)
!4604 = !DILocation(line: 129, column: 24, scope: !4581)
!4605 = !DILocation(line: 130, column: 5, scope: !4581)
!4606 = !DILocation(line: 131, column: 1, scope: !4581)
!4607 = distinct !DISubprogram(name: "SysTick_Set", scope: !489, file: !489, line: 70, type: !4385, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !4608)
!4608 = !{!4609, !4610}
!4609 = !DILocalVariable(name: "ticks", arg: 1, scope: !4607, file: !489, line: 70, type: !12)
!4610 = !DILocalVariable(name: "val", scope: !4607, file: !489, line: 72, type: !12)
!4611 = !DILocation(line: 0, scope: !4607)
!4612 = !DILocation(line: 74, column: 16, scope: !4613)
!4613 = distinct !DILexicalBlock(scope: !4607, file: !489, line: 74, column: 9)
!4614 = !DILocation(line: 74, column: 21, scope: !4613)
!4615 = !DILocation(line: 74, column: 9, scope: !4607)
!4616 = !DILocation(line: 78, column: 20, scope: !4607)
!4617 = !DILocation(line: 80, column: 19, scope: !4607)
!4618 = !DILocation(line: 83, column: 20, scope: !4607)
!4619 = !DILocation(line: 84, column: 20, scope: !4607)
!4620 = !DILocation(line: 86, column: 19, scope: !4607)
!4621 = !DILocation(line: 88, column: 5, scope: !4607)
!4622 = !DILocation(line: 89, column: 1, scope: !4607)
!4623 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !489, file: !489, line: 98, type: !394, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1899)
!4624 = !DILocation(line: 100, column: 28, scope: !4623)
!4625 = !DILocation(line: 101, column: 1, scope: !4623)
!4626 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !489, file: !489, line: 110, type: !1883, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1899)
!4627 = !DILocation(line: 112, column: 12, scope: !4626)
!4628 = !DILocation(line: 112, column: 5, scope: !4626)
!4629 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !489, file: !489, line: 122, type: !394, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1899)
!4630 = !DILocation(line: 124, column: 23, scope: !4629)
!4631 = !DILocation(line: 124, column: 21, scope: !4629)
!4632 = !DILocation(line: 125, column: 1, scope: !4629)
!4633 = distinct !DISubprogram(name: "SystemInit", scope: !489, file: !489, line: 136, type: !394, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1899)
!4634 = !DILocation(line: 140, column: 16, scope: !4633)
!4635 = !DILocation(line: 144, column: 16, scope: !4633)
!4636 = !DILocation(line: 147, column: 16, scope: !4633)
!4637 = !DILocation(line: 150, column: 1, scope: !4633)
!4638 = distinct !DISubprogram(name: "CachePreInit", scope: !489, file: !489, line: 158, type: !394, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !1899)
!4639 = !DILocation(line: 161, column: 22, scope: !4638)
!4640 = !DILocation(line: 164, column: 21, scope: !4638)
!4641 = !DILocation(line: 167, column: 21, scope: !4638)
!4642 = !DILocation(line: 170, column: 29, scope: !4638)
!4643 = !DILocation(line: 171, column: 33, scope: !4638)
!4644 = !DILocation(line: 173, column: 28, scope: !4638)
!4645 = !DILocation(line: 178, column: 30, scope: !4638)
!4646 = !DILocation(line: 192, column: 1, scope: !4638)
!4647 = distinct !DISubprogram(name: "_close", scope: !549, file: !549, line: 11, type: !4451, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4648)
!4648 = !{!4649}
!4649 = !DILocalVariable(name: "file", arg: 1, scope: !4647, file: !549, line: 11, type: !66)
!4650 = !DILocation(line: 0, scope: !4647)
!4651 = !DILocation(line: 13, column: 5, scope: !4647)
!4652 = distinct !DISubprogram(name: "_fstat", scope: !549, file: !549, line: 16, type: !4653, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4701)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!66, !66, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 32)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4657, line: 27, size: 704, elements: !4658)
!4657 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!4658 = !{!4659, !4662, !4665, !4668, !4671, !4674, !4677, !4678, !4681, !4691, !4692, !4693, !4696, !4699}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4656, file: !4657, line: 29, baseType: !4660, size: 16)
!4660 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !553, line: 161, baseType: !4661)
!4661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !595, line: 56, baseType: !570)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4656, file: !4657, line: 30, baseType: !4663, size: 16, offset: 16)
!4663 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !553, line: 139, baseType: !4664)
!4664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !595, line: 75, baseType: !53)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4656, file: !4657, line: 31, baseType: !4666, size: 32, offset: 32)
!4666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !553, line: 189, baseType: !4667)
!4667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !595, line: 90, baseType: !14)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4656, file: !4657, line: 32, baseType: !4669, size: 16, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !553, line: 194, baseType: !4670)
!4670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !595, line: 209, baseType: !53)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4656, file: !4657, line: 33, baseType: !4672, size: 16, offset: 80)
!4672 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !553, line: 165, baseType: !4673)
!4673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !595, line: 60, baseType: !53)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4656, file: !4657, line: 34, baseType: !4675, size: 16, offset: 96)
!4675 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !553, line: 169, baseType: !4676)
!4676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !595, line: 63, baseType: !53)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4656, file: !4657, line: 35, baseType: !4660, size: 16, offset: 112)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4656, file: !4657, line: 36, baseType: !4679, size: 32, offset: 128)
!4679 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !553, line: 157, baseType: !4680)
!4680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !595, line: 102, baseType: !613)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4656, file: !4657, line: 42, baseType: !4682, size: 128, offset: 192)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4683, line: 47, size: 128, elements: !4684)
!4683 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!4684 = !{!4685, !4690}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4682, file: !4683, line: 48, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !4687, line: 42, baseType: !4688)
!4687 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !15, line: 200, baseType: !4689)
!4689 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4682, file: !4683, line: 49, baseType: !596, size: 32, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4656, file: !4657, line: 43, baseType: !4682, size: 128, offset: 320)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4656, file: !4657, line: 44, baseType: !4682, size: 128, offset: 448)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4656, file: !4657, line: 45, baseType: !4694, size: 32, offset: 576)
!4694 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !553, line: 102, baseType: !4695)
!4695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !595, line: 34, baseType: !596)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4656, file: !4657, line: 46, baseType: !4697, size: 32, offset: 608)
!4697 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !553, line: 97, baseType: !4698)
!4698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !595, line: 30, baseType: !596)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !4656, file: !4657, line: 48, baseType: !4700, size: 64, offset: 640)
!4700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 64, elements: !268)
!4701 = !{!4702, !4703}
!4702 = !DILocalVariable(name: "file", arg: 1, scope: !4652, file: !549, line: 16, type: !66)
!4703 = !DILocalVariable(name: "st", arg: 2, scope: !4652, file: !549, line: 16, type: !4655)
!4704 = !DILocation(line: 0, scope: !4652)
!4705 = !DILocation(line: 18, column: 5, scope: !4652)
!4706 = distinct !DISubprogram(name: "_isatty", scope: !549, file: !549, line: 22, type: !4451, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4707)
!4707 = !{!4708}
!4708 = !DILocalVariable(name: "file", arg: 1, scope: !4706, file: !549, line: 22, type: !66)
!4709 = !DILocation(line: 0, scope: !4706)
!4710 = !DILocation(line: 24, column: 5, scope: !4706)
!4711 = distinct !DISubprogram(name: "_lseek", scope: !549, file: !549, line: 27, type: !4712, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4714)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{!66, !66, !66, !66}
!4714 = !{!4715, !4716, !4717}
!4715 = !DILocalVariable(name: "file", arg: 1, scope: !4711, file: !549, line: 27, type: !66)
!4716 = !DILocalVariable(name: "ptr", arg: 2, scope: !4711, file: !549, line: 27, type: !66)
!4717 = !DILocalVariable(name: "dir", arg: 3, scope: !4711, file: !549, line: 27, type: !66)
!4718 = !DILocation(line: 0, scope: !4711)
!4719 = !DILocation(line: 29, column: 5, scope: !4711)
!4720 = distinct !DISubprogram(name: "_open", scope: !549, file: !549, line: 32, type: !4721, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4723)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!66, !588, !66, !66}
!4723 = !{!4724, !4725, !4726}
!4724 = !DILocalVariable(name: "name", arg: 1, scope: !4720, file: !549, line: 32, type: !588)
!4725 = !DILocalVariable(name: "flags", arg: 2, scope: !4720, file: !549, line: 32, type: !66)
!4726 = !DILocalVariable(name: "mode", arg: 3, scope: !4720, file: !549, line: 32, type: !66)
!4727 = !DILocation(line: 0, scope: !4720)
!4728 = !DILocation(line: 34, column: 5, scope: !4720)
!4729 = distinct !DISubprogram(name: "_read", scope: !549, file: !549, line: 37, type: !4730, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4732)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!66, !66, !554, !66}
!4732 = !{!4733, !4734, !4735}
!4733 = !DILocalVariable(name: "file", arg: 1, scope: !4729, file: !549, line: 37, type: !66)
!4734 = !DILocalVariable(name: "ptr", arg: 2, scope: !4729, file: !549, line: 37, type: !554)
!4735 = !DILocalVariable(name: "len", arg: 3, scope: !4729, file: !549, line: 37, type: !66)
!4736 = !DILocation(line: 0, scope: !4729)
!4737 = !DILocation(line: 39, column: 5, scope: !4729)
!4738 = distinct !DISubprogram(name: "_write", scope: !549, file: !549, line: 52, type: !4730, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4739)
!4739 = !{!4740, !4741, !4742, !4743}
!4740 = !DILocalVariable(name: "file", arg: 1, scope: !4738, file: !549, line: 52, type: !66)
!4741 = !DILocalVariable(name: "ptr", arg: 2, scope: !4738, file: !549, line: 52, type: !554)
!4742 = !DILocalVariable(name: "len", arg: 3, scope: !4738, file: !549, line: 52, type: !66)
!4743 = !DILocalVariable(name: "i", scope: !4738, file: !549, line: 54, type: !66)
!4744 = !DILocation(line: 0, scope: !4738)
!4745 = !DILocation(line: 56, column: 19, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !549, line: 56, column: 5)
!4747 = distinct !DILexicalBlock(scope: !4738, file: !549, line: 56, column: 5)
!4748 = !DILocation(line: 56, column: 5, scope: !4747)
!4749 = !DILocation(line: 57, column: 26, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4746, file: !549, line: 56, column: 31)
!4751 = !DILocation(line: 57, column: 22, scope: !4750)
!4752 = !DILocation(line: 57, column: 9, scope: !4750)
!4753 = !DILocation(line: 56, column: 27, scope: !4746)
!4754 = distinct !{!4754, !4748, !4755}
!4755 = !DILocation(line: 58, column: 5, scope: !4747)
!4756 = !DILocation(line: 60, column: 5, scope: !4738)
!4757 = !DILocation(line: 0, scope: !548)
!4758 = !DILocation(line: 70, column: 5, scope: !548)
!4759 = !{i64 1109}
!4760 = !DILocation(line: 72, column: 14, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !548, file: !549, line: 72, column: 9)
!4762 = !DILocation(line: 72, column: 11, scope: !4761)
!4763 = !DILocation(line: 72, column: 9, scope: !548)
!4764 = !DILocation(line: 78, column: 32, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !548, file: !549, line: 78, column: 9)
!4766 = !DILocation(line: 78, column: 15, scope: !4765)
!4767 = !DILocation(line: 89, column: 1, scope: !548)
!4768 = !DILocation(line: 78, column: 9, scope: !548)
!4769 = distinct !DISubprogram(name: "_exit", scope: !549, file: !549, line: 91, type: !698, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4770)
!4770 = !{!4771}
!4771 = !DILocalVariable(name: "__status", arg: 1, scope: !4769, file: !549, line: 91, type: !66)
!4772 = !DILocation(line: 0, scope: !4769)
!4773 = !DILocation(line: 93, column: 5, scope: !4769)
!4774 = !DILocation(line: 94, column: 5, scope: !4769)
!4775 = distinct !{!4775, !4774, !4776}
!4776 = !DILocation(line: 96, column: 5, scope: !4769)
!4777 = distinct !DISubprogram(name: "_kill", scope: !549, file: !549, line: 100, type: !4778, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!66, !66, !66}
!4780 = !{!4781, !4782}
!4781 = !DILocalVariable(name: "pid", arg: 1, scope: !4777, file: !549, line: 100, type: !66)
!4782 = !DILocalVariable(name: "sig", arg: 2, scope: !4777, file: !549, line: 100, type: !66)
!4783 = !DILocation(line: 0, scope: !4777)
!4784 = !DILocation(line: 102, column: 5, scope: !4777)
!4785 = !DILocation(line: 103, column: 5, scope: !4777)
!4786 = distinct !DISubprogram(name: "_getpid", scope: !549, file: !549, line: 107, type: !4787, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !746, retainedNodes: !1899)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!4789}
!4789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !553, line: 174, baseType: !4790)
!4790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !595, line: 52, baseType: !66)
!4791 = !DILocation(line: 109, column: 5, scope: !4786)
!4792 = !DILocation(line: 110, column: 5, scope: !4786)
