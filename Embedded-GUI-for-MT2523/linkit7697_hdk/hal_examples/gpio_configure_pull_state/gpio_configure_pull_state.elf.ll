; ModuleID = './build/gpio_configure_pull_state.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.gpio_backup_restore_t = type { i32, i32 }
%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
%struct.gpio_status = type { i32, i8, i8, i8 }
%struct.__va_list = type { i8* }
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
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._misc_reent = type { i8*, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t }

@gpio_bakup_table = internal unnamed_addr global [22 x %struct.gpio_backup_restore_t] [%struct.gpio_backup_restore_t { i32 0, i32 -2097106944 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106928 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106912 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106896 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106880 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106864 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106848 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106832 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106816 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106800 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106784 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106768 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106736 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106732 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106728 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106724 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106720 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106704 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106700 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106688 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106684 }, %struct.gpio_backup_restore_t { i32 0, i32 -2097106680 }], align 4, !dbg !0
@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !65
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !78
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !80
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !118
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !270
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !328
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.5 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0D\0A ---gpio_example begin---\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"hal_gpio_init failed\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"hal_pinmux_set_function failed\0D\0A\00", align 1
@.str.5.6 = private unnamed_addr constant [32 x i8] c"hal_gpio_set_direction failed\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"hal_gpio_pull_up failed\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"hal_gpio_get_input failed\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"hal_gpio_pull_down failed\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"GPIO pull state configuration is successful\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"GPIO pull state configuration failed\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"hal_gpio_deinit failed\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"\0D\0A ---gpio_example finished!!!---\0D\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !385
@System_Initialize_Done = internal global i32 0, align 4, !dbg !453
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !455
@end = external dso_local global i8, align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.14 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.15 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 08:07:20 GMT +00:00\00", align 1, !dbg !664
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !669
@hw_verno_str = dso_local local_unnamed_addr global [15 x i8] c"linkit7697_hdk\00", align 1, !dbg !675

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !897 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !902, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i8 %1, metadata !903, metadata !DIExpression()), !dbg !907
  %3 = lshr i32 %0, 5, !dbg !908
  call void @llvm.dbg.value(metadata i32 %3, metadata !904, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !907
  %4 = trunc i32 %0 to i16, !dbg !909
  %5 = and i16 %4, 31, !dbg !909
  call void @llvm.dbg.value(metadata i16 %4, metadata !906, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !907
  %6 = trunc i32 %3 to i16, !dbg !910
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !910

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !911
  %9 = zext i16 %5 to i32, !dbg !914
  %10 = icmp ult i16 %5, 27, !dbg !914
  br i1 %8, label %11, label %46, !dbg !915

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !916

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !918
  %14 = xor i32 %13, -1, !dbg !921
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !922
  %16 = and i32 %15, %14, !dbg !922
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !922
  br label %44, !dbg !923

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !924
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !924

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !925
  %21 = and i32 %20, -3, !dbg !925
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !925
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !928
  %23 = or i32 %22, 2048, !dbg !928
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !928
  br label %44, !dbg !929

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !930
  %26 = and i32 %25, -3, !dbg !930
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !930
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !933
  %28 = or i32 %27, 2048, !dbg !933
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !933
  br label %44, !dbg !934

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !935
  %31 = and i32 %30, -3, !dbg !935
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !935
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !938
  %33 = or i32 %32, 2048, !dbg !938
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !938
  br label %44, !dbg !939

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !940
  %36 = and i32 %35, -3, !dbg !940
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !940
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !943
  %38 = or i32 %37, 2048, !dbg !943
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !943
  br label %44, !dbg !944

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !945
  %41 = and i32 %40, -3, !dbg !945
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !945
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !948
  %43 = or i32 %42, 2048, !dbg !948
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !948
  br label %44, !dbg !949

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !950
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !950
  br label %97, !dbg !951

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !952

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !954
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !957
  %50 = or i32 %49, %48, !dbg !957
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !957
  br label %68, !dbg !958

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !959
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !959

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !960
  %55 = or i32 %54, 2050, !dbg !960
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !960
  br label %68, !dbg !963

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !964
  %58 = or i32 %57, 2050, !dbg !964
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !964
  br label %68, !dbg !967

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !968
  %61 = or i32 %60, 2050, !dbg !968
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !968
  br label %68, !dbg !971

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !972
  %64 = or i32 %63, 2050, !dbg !972
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !972
  br label %68, !dbg !975

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !976
  %67 = or i32 %66, 2050, !dbg !976
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !976
  br label %68, !dbg !979

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !980
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !980
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !981
  %72 = zext i16 %5 to i32, !dbg !983
  %73 = icmp eq i16 %5, 0, !dbg !983
  br i1 %71, label %74, label %87, !dbg !984

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !985

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !987
  %77 = xor i32 %76, -1, !dbg !990
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !991
  %79 = and i32 %78, %77, !dbg !991
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !991
  br label %85, !dbg !992

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !993
  %82 = and i32 %81, -3, !dbg !993
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !993
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !995
  %84 = or i32 %83, 2048, !dbg !995
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !995
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !996
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !996
  br label %97, !dbg !997

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !998

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1000
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1003
  %91 = or i32 %90, %89, !dbg !1003
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1003
  br label %95, !dbg !1004

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1005
  %94 = or i32 %93, 2050, !dbg !1005
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1005
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1007
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1007
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !907
  ret i32 %98, !dbg !1008
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1011, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i8 %1, metadata !1012, metadata !DIExpression()), !dbg !1015
  %3 = lshr i32 %0, 5, !dbg !1016
  call void @llvm.dbg.value(metadata i32 %3, metadata !1013, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1015
  %4 = trunc i32 %0 to i16, !dbg !1017
  %5 = and i16 %4, 31, !dbg !1017
  call void @llvm.dbg.value(metadata i16 %5, metadata !1014, metadata !DIExpression()), !dbg !1015
  %6 = trunc i32 %3 to i16, !dbg !1018
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1018

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1019
  %9 = zext i16 %5 to i32, !dbg !1022
  %10 = shl nuw i32 1, %9, !dbg !1022
  br i1 %8, label %12, label %11, !dbg !1023

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1024
  br label %19, !dbg !1026

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1027
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1029
  %15 = zext i16 %5 to i32, !dbg !1031
  %16 = shl nuw i32 1, %15, !dbg !1031
  br i1 %14, label %18, label %17, !dbg !1032

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1033
  br label %19, !dbg !1035

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1036
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1015
  ret i32 %20, !dbg !1038
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1039 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1043, metadata !DIExpression()), !dbg !1047
  %2 = lshr i32 %0, 5, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %2, metadata !1044, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1047
  %3 = and i32 %0, 31, !dbg !1049
  call void @llvm.dbg.value(metadata i32 %0, metadata !1045, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1047
  call void @llvm.dbg.value(metadata i8 0, metadata !1046, metadata !DIExpression()), !dbg !1047
  %4 = trunc i32 %2 to i16, !dbg !1050
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1050

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1046, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1047
  br label %6, !dbg !1051

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1053
  %9 = lshr i32 %8, %3, !dbg !1053
  %10 = trunc i32 %9 to i8, !dbg !1053
  %11 = and i8 %10, 1, !dbg !1053
  call void @llvm.dbg.value(metadata i8 %11, metadata !1046, metadata !DIExpression()), !dbg !1047
  br label %12, !dbg !1054

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1047
  ret i8 %13, !dbg !1055
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1056 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1058, metadata !DIExpression()), !dbg !1062
  %2 = lshr i32 %0, 5, !dbg !1063
  call void @llvm.dbg.value(metadata i32 %2, metadata !1059, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1062
  %3 = and i32 %0, 31, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %0, metadata !1060, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1062
  call void @llvm.dbg.value(metadata i8 0, metadata !1061, metadata !DIExpression()), !dbg !1062
  %4 = trunc i32 %2 to i16, !dbg !1065
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1065

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1061, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1062
  br label %6, !dbg !1066

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1068
  %9 = lshr i32 %8, %3, !dbg !1068
  %10 = trunc i32 %9 to i8, !dbg !1068
  %11 = and i8 %10, 1, !dbg !1068
  call void @llvm.dbg.value(metadata i8 %11, metadata !1061, metadata !DIExpression()), !dbg !1062
  br label %12, !dbg !1069

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1062
  ret i8 %13, !dbg !1070
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1073, metadata !DIExpression()), !dbg !1077
  %2 = lshr i32 %0, 5, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %2, metadata !1074, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1077
  %3 = and i32 %0, 31, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %0, metadata !1075, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1077
  call void @llvm.dbg.value(metadata i8 0, metadata !1076, metadata !DIExpression()), !dbg !1077
  %4 = trunc i32 %2 to i16, !dbg !1080
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1080

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1076, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1077
  br label %6, !dbg !1081

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1083
  %9 = lshr i32 %8, %3, !dbg !1083
  %10 = trunc i32 %9 to i8, !dbg !1083
  %11 = and i8 %10, 1, !dbg !1083
  call void @llvm.dbg.value(metadata i8 %11, metadata !1076, metadata !DIExpression()), !dbg !1077
  br label %12, !dbg !1084

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1077
  ret i8 %13, !dbg !1085
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1086 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1090, metadata !DIExpression()), !dbg !1093
  %2 = lshr i32 %0, 5, !dbg !1094
  call void @llvm.dbg.value(metadata i32 %2, metadata !1091, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1093
  %3 = trunc i32 %0 to i16, !dbg !1095
  %4 = and i16 %3, 31, !dbg !1095
  call void @llvm.dbg.value(metadata i16 %3, metadata !1092, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1093
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #11, !dbg !1096
  %6 = trunc i32 %2 to i16, !dbg !1097
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1097

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1098
  br i1 %8, label %9, label %12, !dbg !1101

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1102
  %11 = shl nuw nsw i32 1, %10, !dbg !1103
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1103
  br label %49, !dbg !1105

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1106
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1106

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1107
  %16 = and i32 %15, -29, !dbg !1107
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1107
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1110
  %18 = or i32 %17, 2052, !dbg !1110
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1110
  br label %49, !dbg !1111

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1112
  %21 = and i32 %20, -29, !dbg !1112
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1112
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1115
  %23 = or i32 %22, 2052, !dbg !1115
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1115
  br label %49, !dbg !1116

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1117
  %26 = and i32 %25, -29, !dbg !1117
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1117
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1120
  %28 = or i32 %27, 2052, !dbg !1120
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1120
  br label %49, !dbg !1121

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1122
  %31 = and i32 %30, -29, !dbg !1122
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1122
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1125
  %33 = or i32 %32, 2052, !dbg !1125
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1125
  br label %49, !dbg !1126

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1127
  %36 = and i32 %35, -29, !dbg !1127
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1127
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1130
  %38 = or i32 %37, 2052, !dbg !1130
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1130
  br label %49, !dbg !1131

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1132
  br i1 %40, label %41, label %46, !dbg !1134

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1135
  %43 = and i32 %42, -29, !dbg !1135
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1135
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1137
  %45 = or i32 %44, 2052, !dbg !1137
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1137
  br label %49, !dbg !1138

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1139
  %48 = shl nuw i32 1, %47, !dbg !1139
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1139
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1093
  ret i32 %50, !dbg !1141
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1144, metadata !DIExpression()), !dbg !1147
  %2 = lshr i32 %0, 5, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %2, metadata !1145, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1147
  %3 = trunc i32 %0 to i16, !dbg !1149
  %4 = and i16 %3, 31, !dbg !1149
  call void @llvm.dbg.value(metadata i16 %3, metadata !1146, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1147
  %5 = trunc i32 %2 to i16, !dbg !1150
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1150

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1151
  br i1 %7, label %8, label %11, !dbg !1154

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1155
  %10 = shl nuw nsw i32 1, %9, !dbg !1156
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1156
  br label %48, !dbg !1158

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1159
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1159

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1160
  %15 = and i32 %14, -29, !dbg !1160
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1160
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1163
  %17 = or i32 %16, 2048, !dbg !1163
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1163
  br label %48, !dbg !1164

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1165
  %20 = and i32 %19, -29, !dbg !1165
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1165
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1168
  %22 = or i32 %21, 2048, !dbg !1168
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1168
  br label %48, !dbg !1169

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1170
  %25 = and i32 %24, -29, !dbg !1170
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1170
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1173
  %27 = or i32 %26, 2048, !dbg !1173
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1173
  br label %48, !dbg !1174

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1175
  %30 = and i32 %29, -29, !dbg !1175
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1175
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1178
  %32 = or i32 %31, 2048, !dbg !1178
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1178
  br label %48, !dbg !1179

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1180
  %35 = and i32 %34, -29, !dbg !1180
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1180
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1183
  %37 = or i32 %36, 2048, !dbg !1183
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1183
  br label %48, !dbg !1184

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1185
  br i1 %39, label %40, label %45, !dbg !1187

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1188
  %42 = and i32 %41, -29, !dbg !1188
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1188
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1190
  %44 = or i32 %43, 2048, !dbg !1190
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1190
  br label %48, !dbg !1191

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1192
  %47 = shl nuw i32 1, %46, !dbg !1192
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1192
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1147
  ret i32 %49, !dbg !1194
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1195 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1197, metadata !DIExpression()), !dbg !1200
  %2 = lshr i32 %0, 5, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %2, metadata !1198, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1200
  %3 = trunc i32 %0 to i16, !dbg !1202
  %4 = and i16 %3, 31, !dbg !1202
  call void @llvm.dbg.value(metadata i16 %3, metadata !1199, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1200
  %5 = trunc i32 %2 to i16, !dbg !1203
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1203

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1204
  br i1 %7, label %8, label %11, !dbg !1207

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1208
  %10 = shl nuw nsw i32 1, %9, !dbg !1209
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1209
  br label %48, !dbg !1211

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1212
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1212

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1213
  %15 = and i32 %14, -29, !dbg !1213
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1213
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1216
  %17 = or i32 %16, 2048, !dbg !1216
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1216
  br label %48, !dbg !1217

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1218
  %20 = and i32 %19, -29, !dbg !1218
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1218
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1221
  %22 = or i32 %21, 2048, !dbg !1221
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1221
  br label %48, !dbg !1222

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1223
  %25 = and i32 %24, -29, !dbg !1223
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1223
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1226
  %27 = or i32 %26, 2048, !dbg !1226
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1226
  br label %48, !dbg !1227

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1228
  %30 = and i32 %29, -29, !dbg !1228
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1228
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1231
  %32 = or i32 %31, 2048, !dbg !1231
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1231
  br label %48, !dbg !1232

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1233
  %35 = and i32 %34, -29, !dbg !1233
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1233
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1236
  %37 = or i32 %36, 2048, !dbg !1236
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1236
  br label %48, !dbg !1237

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1238
  br i1 %39, label %40, label %45, !dbg !1240

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1241
  %42 = and i32 %41, -29, !dbg !1241
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1241
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1243
  %44 = or i32 %43, 2048, !dbg !1243
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1243
  br label %48, !dbg !1244

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1245
  %47 = shl nuw i32 1, %46, !dbg !1245
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1245
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1200
  ret i32 %49, !dbg !1247
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1250, metadata !DIExpression()), !dbg !1253
  %2 = lshr i32 %0, 5, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %2, metadata !1251, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1253
  %3 = trunc i32 %0 to i16, !dbg !1255
  %4 = and i16 %3, 31, !dbg !1255
  call void @llvm.dbg.value(metadata i16 %3, metadata !1252, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1253
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #11, !dbg !1256
  %6 = trunc i32 %2 to i16, !dbg !1257
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1257

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1258
  br i1 %8, label %9, label %12, !dbg !1261

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1262
  %11 = shl nuw nsw i32 1, %10, !dbg !1263
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1263
  br label %49, !dbg !1265

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1266
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1266

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1267
  %16 = and i32 %15, -29, !dbg !1267
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1267
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1270
  %18 = or i32 %17, 2068, !dbg !1270
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1270
  br label %49, !dbg !1271

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1272
  %21 = and i32 %20, -29, !dbg !1272
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1272
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1275
  %23 = or i32 %22, 2068, !dbg !1275
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1275
  br label %49, !dbg !1276

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1277
  %26 = and i32 %25, -29, !dbg !1277
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1277
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1280
  %28 = or i32 %27, 2068, !dbg !1280
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1280
  br label %49, !dbg !1281

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1282
  %31 = and i32 %30, -29, !dbg !1282
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1282
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1285
  %33 = or i32 %32, 2068, !dbg !1285
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1285
  br label %49, !dbg !1286

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1287
  %36 = and i32 %35, -29, !dbg !1287
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1287
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1290
  %38 = or i32 %37, 2068, !dbg !1290
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1290
  br label %49, !dbg !1291

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1292
  br i1 %40, label %41, label %46, !dbg !1294

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1295
  %43 = and i32 %42, -29, !dbg !1295
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1295
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1297
  %45 = or i32 %44, 2068, !dbg !1297
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1297
  br label %49, !dbg !1298

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1299
  %48 = shl nuw i32 1, %47, !dbg !1299
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1299
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1253
  ret i32 %50, !dbg !1301
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1302 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1304, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %1, metadata !1305, metadata !DIExpression()), !dbg !1308
  %3 = lshr i32 %0, 4, !dbg !1309
  call void @llvm.dbg.value(metadata i32 %3, metadata !1306, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1308
  %4 = trunc i32 %0 to i16, !dbg !1310
  %5 = and i16 %4, 15, !dbg !1310
  call void @llvm.dbg.value(metadata i16 %4, metadata !1307, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1308
  %6 = trunc i32 %3 to i16, !dbg !1311
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1311

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1312
  %9 = zext i16 %8 to i32, !dbg !1312
  %10 = shl nuw i32 3, %9, !dbg !1314
  %11 = xor i32 %10, -1, !dbg !1315
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1316
  %13 = and i32 %12, %11, !dbg !1316
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1316
  %14 = lshr i8 %1, 2, !dbg !1317
  %15 = zext i8 %14 to i32, !dbg !1317
  %16 = add nsw i32 %15, -1, !dbg !1318
  %17 = shl i32 %16, %9, !dbg !1319
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1320
  %19 = or i32 %18, %17, !dbg !1320
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1320
  br label %131, !dbg !1321

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1322
  br i1 %21, label %22, label %35, !dbg !1324

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1325
  %24 = zext i16 %23 to i32, !dbg !1325
  %25 = shl nuw nsw i32 3, %24, !dbg !1327
  %26 = xor i32 %25, -1, !dbg !1328
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1329
  %28 = and i32 %27, %26, !dbg !1329
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1329
  %29 = lshr i8 %1, 2, !dbg !1330
  %30 = zext i8 %29 to i32, !dbg !1330
  %31 = add nsw i32 %30, -1, !dbg !1331
  %32 = shl nsw i32 %31, %24, !dbg !1332
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1333
  %34 = or i32 %33, %32, !dbg !1333
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1333
  br label %131, !dbg !1334

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1335
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1335

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1336
  %39 = and i32 %38, -449, !dbg !1336
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1336
  %40 = lshr i8 %1, 1, !dbg !1339
  %41 = zext i8 %40 to i32, !dbg !1339
  %42 = shl nuw nsw i32 %41, 6, !dbg !1340
  %43 = add nsw i32 %42, -64, !dbg !1340
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1341
  %45 = or i32 %44, %43, !dbg !1341
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1341
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1342
  %47 = or i32 %46, 2048, !dbg !1342
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1342
  br label %131, !dbg !1343

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1344
  %50 = and i32 %49, -449, !dbg !1344
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1344
  %51 = lshr i8 %1, 1, !dbg !1347
  %52 = zext i8 %51 to i32, !dbg !1347
  %53 = shl nuw nsw i32 %52, 6, !dbg !1348
  %54 = add nsw i32 %53, -64, !dbg !1348
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1349
  %56 = or i32 %55, %54, !dbg !1349
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1349
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1350
  %58 = or i32 %57, 2048, !dbg !1350
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1350
  br label %131, !dbg !1351

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1352
  %61 = and i32 %60, -449, !dbg !1352
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1352
  %62 = lshr i8 %1, 1, !dbg !1355
  %63 = zext i8 %62 to i32, !dbg !1355
  %64 = shl nuw nsw i32 %63, 6, !dbg !1356
  %65 = add nsw i32 %64, -64, !dbg !1356
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1357
  %67 = or i32 %66, %65, !dbg !1357
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1357
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1358
  %69 = or i32 %68, 2048, !dbg !1358
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1358
  br label %131, !dbg !1359

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1360
  %72 = and i32 %71, -449, !dbg !1360
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1360
  %73 = lshr i8 %1, 1, !dbg !1363
  %74 = zext i8 %73 to i32, !dbg !1363
  %75 = shl nuw nsw i32 %74, 6, !dbg !1364
  %76 = add nsw i32 %75, -64, !dbg !1364
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1365
  %78 = or i32 %77, %76, !dbg !1365
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1365
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1366
  %80 = or i32 %79, 2048, !dbg !1366
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1366
  br label %131, !dbg !1367

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1368
  %83 = and i32 %82, -449, !dbg !1368
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1368
  %84 = lshr i8 %1, 1, !dbg !1371
  %85 = zext i8 %84 to i32, !dbg !1371
  %86 = shl nuw nsw i32 %85, 6, !dbg !1372
  %87 = add nsw i32 %86, -64, !dbg !1372
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1373
  %89 = or i32 %88, %87, !dbg !1373
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1373
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1374
  %91 = or i32 %90, 2048, !dbg !1374
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1374
  br label %131, !dbg !1375

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1376
  br i1 %93, label %94, label %105, !dbg !1378

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1379
  %96 = and i32 %95, -449, !dbg !1379
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1379
  %97 = lshr i8 %1, 1, !dbg !1381
  %98 = zext i8 %97 to i32, !dbg !1381
  %99 = shl nuw nsw i32 %98, 6, !dbg !1382
  %100 = add nsw i32 %99, -64, !dbg !1382
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1383
  %102 = or i32 %101, %100, !dbg !1383
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1383
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1384
  %104 = or i32 %103, 2048, !dbg !1384
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1384
  br label %131, !dbg !1385

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1386
  %107 = zext i16 %106 to i32, !dbg !1386
  %108 = shl nuw i32 3, %107, !dbg !1388
  %109 = xor i32 %108, -1, !dbg !1389
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1390
  %111 = and i32 %110, %109, !dbg !1390
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1390
  %112 = lshr i8 %1, 2, !dbg !1391
  %113 = zext i8 %112 to i32, !dbg !1391
  %114 = add nsw i32 %113, -1, !dbg !1392
  %115 = shl i32 %114, %107, !dbg !1393
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1394
  %117 = or i32 %116, %115, !dbg !1394
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1394
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1395
  %120 = zext i16 %119 to i32, !dbg !1395
  %121 = shl nuw i32 3, %120, !dbg !1396
  %122 = xor i32 %121, -1, !dbg !1397
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1398
  %124 = and i32 %123, %122, !dbg !1398
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1398
  %125 = lshr i8 %1, 2, !dbg !1399
  %126 = zext i8 %125 to i32, !dbg !1399
  %127 = add nsw i32 %126, -1, !dbg !1400
  %128 = shl i32 %127, %120, !dbg !1401
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1402
  %130 = or i32 %129, %128, !dbg !1402
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1402
  br label %131, !dbg !1403

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1308
  ret i32 %132, !dbg !1404
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1405 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1410, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %1, metadata !1411, metadata !DIExpression()), !dbg !1415
  %3 = lshr i32 %0, 4, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %3, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1415
  %4 = trunc i32 %0 to i16, !dbg !1417
  %5 = and i16 %4, 15, !dbg !1417
  call void @llvm.dbg.value(metadata i16 %4, metadata !1413, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1415
  %6 = trunc i32 %3 to i16, !dbg !1418
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1418

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %8, metadata !1414, metadata !DIExpression()), !dbg !1415
  %9 = shl nuw nsw i16 %5, 1, !dbg !1421
  %10 = zext i16 %9 to i32, !dbg !1421
  %11 = shl nuw i32 3, %10, !dbg !1422
  %12 = and i32 %8, %11, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %12, metadata !1414, metadata !DIExpression()), !dbg !1415
  %13 = lshr i32 %12, %10, !dbg !1424
  %14 = trunc i32 %13 to i8, !dbg !1425
  %15 = shl i8 %14, 2, !dbg !1425
  %16 = add i8 %15, 4, !dbg !1425
  br label %89, !dbg !1426

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1427
  br i1 %18, label %19, label %29, !dbg !1429

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %20, metadata !1414, metadata !DIExpression()), !dbg !1415
  %21 = shl nuw nsw i16 %5, 1, !dbg !1432
  %22 = zext i16 %21 to i32, !dbg !1432
  %23 = shl nuw nsw i32 3, %22, !dbg !1433
  %24 = and i32 %20, %23, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %24, metadata !1414, metadata !DIExpression()), !dbg !1415
  %25 = lshr i32 %24, %22, !dbg !1435
  %26 = trunc i32 %25 to i8, !dbg !1436
  %27 = shl i8 %26, 2, !dbg !1436
  %28 = add i8 %27, 4, !dbg !1436
  br label %89, !dbg !1437

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1438
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1438

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1439
  call void @llvm.dbg.value(metadata i32 %32, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %32, metadata !1414, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1415
  %33 = lshr i32 %32, 5, !dbg !1442
  %34 = trunc i32 %33 to i8, !dbg !1443
  %35 = and i8 %34, 14, !dbg !1443
  %36 = add nuw nsw i8 %35, 2, !dbg !1443
  br label %89, !dbg !1444

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %38, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %38, metadata !1414, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1415
  %39 = lshr i32 %38, 5, !dbg !1448
  %40 = trunc i32 %39 to i8, !dbg !1449
  %41 = and i8 %40, 14, !dbg !1449
  %42 = add nuw nsw i8 %41, 2, !dbg !1449
  br label %89, !dbg !1450

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1451
  call void @llvm.dbg.value(metadata i32 %44, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %44, metadata !1414, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1415
  %45 = lshr i32 %44, 5, !dbg !1454
  %46 = trunc i32 %45 to i8, !dbg !1455
  %47 = and i8 %46, 14, !dbg !1455
  %48 = add nuw nsw i8 %47, 2, !dbg !1455
  br label %89, !dbg !1456

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1457
  call void @llvm.dbg.value(metadata i32 %50, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %50, metadata !1414, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1415
  %51 = lshr i32 %50, 5, !dbg !1460
  %52 = trunc i32 %51 to i8, !dbg !1461
  %53 = and i8 %52, 14, !dbg !1461
  %54 = add nuw nsw i8 %53, 2, !dbg !1461
  br label %89, !dbg !1462

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %56, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %56, metadata !1414, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1415
  %57 = lshr i32 %56, 5, !dbg !1466
  %58 = trunc i32 %57 to i8, !dbg !1467
  %59 = and i8 %58, 14, !dbg !1467
  %60 = add nuw nsw i8 %59, 2, !dbg !1467
  br label %89, !dbg !1468

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1469
  br i1 %62, label %63, label %69, !dbg !1471

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1472
  call void @llvm.dbg.value(metadata i32 %64, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 %64, metadata !1414, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1415
  %65 = lshr i32 %64, 5, !dbg !1474
  %66 = trunc i32 %65 to i8, !dbg !1475
  %67 = and i8 %66, 14, !dbg !1475
  %68 = add nuw nsw i8 %67, 2, !dbg !1475
  br label %89, !dbg !1476

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %70, metadata !1414, metadata !DIExpression()), !dbg !1415
  %71 = shl nuw nsw i16 %5, 1, !dbg !1479
  %72 = zext i16 %71 to i32, !dbg !1479
  %73 = shl nuw i32 3, %72, !dbg !1480
  %74 = and i32 %70, %73, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %74, metadata !1414, metadata !DIExpression()), !dbg !1415
  %75 = lshr i32 %74, %72, !dbg !1482
  %76 = trunc i32 %75 to i8, !dbg !1483
  %77 = shl i8 %76, 2, !dbg !1483
  %78 = add i8 %77, 4, !dbg !1483
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %80, metadata !1414, metadata !DIExpression()), !dbg !1415
  %81 = shl nuw nsw i16 %5, 1, !dbg !1485
  %82 = zext i16 %81 to i32, !dbg !1485
  %83 = shl nuw i32 3, %82, !dbg !1486
  %84 = and i32 %80, %83, !dbg !1487
  call void @llvm.dbg.value(metadata i32 %84, metadata !1414, metadata !DIExpression()), !dbg !1415
  %85 = lshr i32 %84, %82, !dbg !1488
  %86 = trunc i32 %85 to i8, !dbg !1489
  %87 = shl i8 %86, 2, !dbg !1489
  %88 = add i8 %87, 4, !dbg !1489
  br label %89, !dbg !1490

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1491
  br label %91, !dbg !1492

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1415
  ret i32 %92, !dbg !1492
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1493 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1498, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %1, metadata !1499, metadata !DIExpression()), !dbg !1502
  %3 = lshr i32 %0, 5, !dbg !1503
  call void @llvm.dbg.value(metadata i32 %3, metadata !1500, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1502
  %4 = trunc i32 %0 to i16, !dbg !1504
  %5 = and i16 %4, 31, !dbg !1504
  call void @llvm.dbg.value(metadata i16 %5, metadata !1501, metadata !DIExpression()), !dbg !1502
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1505

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1500, metadata !DIExpression()), !dbg !1502
  %7 = trunc i32 %3 to i16, !dbg !1506
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1506

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1509
  %10 = shl nuw i32 1, %9, !dbg !1511
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1512
  %12 = or i32 %11, %10, !dbg !1512
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1512
  br label %32, !dbg !1513

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1514
  %15 = shl nuw i32 1, %14, !dbg !1515
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1516
  %17 = or i32 %16, %15, !dbg !1516
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1516
  br label %32, !dbg !1517

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1518
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1518

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1521
  %22 = shl nuw i32 1, %21, !dbg !1523
  %23 = xor i32 %22, -1, !dbg !1524
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1525
  %25 = and i32 %24, %23, !dbg !1525
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1525
  br label %32, !dbg !1526

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1527
  %28 = shl nuw i32 1, %27, !dbg !1528
  %29 = xor i32 %28, -1, !dbg !1529
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1530
  %31 = and i32 %30, %29, !dbg !1530
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1530
  br label %32, !dbg !1531

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1532
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1533 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1539, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8 %1, metadata !1540, metadata !DIExpression()), !dbg !1542
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
  ], !dbg !1543

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %4, metadata !1541, metadata !DIExpression()), !dbg !1542
  %5 = and i32 %4, -16, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %5, metadata !1541, metadata !DIExpression()), !dbg !1542
  %6 = zext i8 %1 to i32, !dbg !1547
  %7 = or i32 %5, %6, !dbg !1548
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1549
  br label %187, !dbg !1550

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %9, metadata !1541, metadata !DIExpression()), !dbg !1542
  %10 = and i32 %9, -241, !dbg !1552
  call void @llvm.dbg.value(metadata i32 %10, metadata !1541, metadata !DIExpression()), !dbg !1542
  %11 = zext i8 %1 to i32, !dbg !1553
  %12 = shl nuw nsw i32 %11, 4, !dbg !1554
  %13 = or i32 %10, %12, !dbg !1555
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1556
  br label %187, !dbg !1557

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %15, metadata !1541, metadata !DIExpression()), !dbg !1542
  %16 = and i32 %15, -3841, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %16, metadata !1541, metadata !DIExpression()), !dbg !1542
  %17 = zext i8 %1 to i32, !dbg !1560
  %18 = shl nuw nsw i32 %17, 8, !dbg !1561
  %19 = or i32 %16, %18, !dbg !1562
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1563
  br label %187, !dbg !1564

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %21, metadata !1541, metadata !DIExpression()), !dbg !1542
  %22 = and i32 %21, -61441, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %22, metadata !1541, metadata !DIExpression()), !dbg !1542
  %23 = zext i8 %1 to i32, !dbg !1567
  %24 = shl nuw nsw i32 %23, 12, !dbg !1568
  %25 = or i32 %22, %24, !dbg !1569
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1570
  br label %187, !dbg !1571

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %27, metadata !1541, metadata !DIExpression()), !dbg !1542
  %28 = and i32 %27, -983041, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %28, metadata !1541, metadata !DIExpression()), !dbg !1542
  %29 = zext i8 %1 to i32, !dbg !1574
  %30 = shl nuw nsw i32 %29, 16, !dbg !1575
  %31 = or i32 %28, %30, !dbg !1576
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1577
  br label %187, !dbg !1578

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %33, metadata !1541, metadata !DIExpression()), !dbg !1542
  %34 = and i32 %33, -15728641, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %34, metadata !1541, metadata !DIExpression()), !dbg !1542
  %35 = zext i8 %1 to i32, !dbg !1581
  %36 = shl nuw nsw i32 %35, 20, !dbg !1582
  %37 = or i32 %34, %36, !dbg !1583
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1584
  br label %187, !dbg !1585

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %39, metadata !1541, metadata !DIExpression()), !dbg !1542
  %40 = and i32 %39, -251658241, !dbg !1587
  call void @llvm.dbg.value(metadata i32 %40, metadata !1541, metadata !DIExpression()), !dbg !1542
  %41 = zext i8 %1 to i32, !dbg !1588
  %42 = shl nuw i32 %41, 24, !dbg !1589
  %43 = or i32 %40, %42, !dbg !1590
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1591
  br label %187, !dbg !1592

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %45, metadata !1541, metadata !DIExpression()), !dbg !1542
  %46 = and i32 %45, 268435455, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %46, metadata !1541, metadata !DIExpression()), !dbg !1542
  %47 = zext i8 %1 to i32, !dbg !1595
  %48 = shl i32 %47, 28, !dbg !1596
  %49 = or i32 %46, %48, !dbg !1597
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1598
  br label %187, !dbg !1599

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %51, metadata !1541, metadata !DIExpression()), !dbg !1542
  %52 = and i32 %51, -16, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %52, metadata !1541, metadata !DIExpression()), !dbg !1542
  %53 = zext i8 %1 to i32, !dbg !1602
  %54 = or i32 %52, %53, !dbg !1603
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1604
  br label %187, !dbg !1605

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1606
  call void @llvm.dbg.value(metadata i32 %56, metadata !1541, metadata !DIExpression()), !dbg !1542
  %57 = and i32 %56, -241, !dbg !1607
  call void @llvm.dbg.value(metadata i32 %57, metadata !1541, metadata !DIExpression()), !dbg !1542
  %58 = zext i8 %1 to i32, !dbg !1608
  %59 = shl nuw nsw i32 %58, 4, !dbg !1609
  %60 = or i32 %57, %59, !dbg !1610
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1611
  br label %187, !dbg !1612

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %62, metadata !1541, metadata !DIExpression()), !dbg !1542
  %63 = and i32 %62, -3841, !dbg !1614
  call void @llvm.dbg.value(metadata i32 %63, metadata !1541, metadata !DIExpression()), !dbg !1542
  %64 = zext i8 %1 to i32, !dbg !1615
  %65 = shl nuw nsw i32 %64, 8, !dbg !1616
  %66 = or i32 %63, %65, !dbg !1617
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1618
  br label %187, !dbg !1619

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %68, metadata !1541, metadata !DIExpression()), !dbg !1542
  %69 = and i32 %68, -61441, !dbg !1621
  call void @llvm.dbg.value(metadata i32 %69, metadata !1541, metadata !DIExpression()), !dbg !1542
  %70 = zext i8 %1 to i32, !dbg !1622
  %71 = shl nuw nsw i32 %70, 12, !dbg !1623
  %72 = or i32 %69, %71, !dbg !1624
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1625
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1626

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #12, !dbg !1628
  br label %187, !dbg !1630

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %76, metadata !1541, metadata !DIExpression()), !dbg !1542
  %77 = and i32 %76, -983041, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %77, metadata !1541, metadata !DIExpression()), !dbg !1542
  %78 = zext i8 %1 to i32, !dbg !1633
  %79 = shl nuw nsw i32 %78, 16, !dbg !1634
  %80 = or i32 %77, %79, !dbg !1635
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1636
  %81 = and i8 %1, -2, !dbg !1637
  %82 = icmp eq i8 %81, 4, !dbg !1637
  br i1 %82, label %83, label %187, !dbg !1637

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #12, !dbg !1639
  br label %187, !dbg !1641

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %86, metadata !1541, metadata !DIExpression()), !dbg !1542
  %87 = and i32 %86, -15728641, !dbg !1643
  call void @llvm.dbg.value(metadata i32 %87, metadata !1541, metadata !DIExpression()), !dbg !1542
  %88 = zext i8 %1 to i32, !dbg !1644
  %89 = shl nuw nsw i32 %88, 20, !dbg !1645
  %90 = or i32 %87, %89, !dbg !1646
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1647
  %91 = icmp eq i8 %1, 6, !dbg !1648
  br i1 %91, label %92, label %187, !dbg !1650

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #12, !dbg !1651
  br label %187, !dbg !1653

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %95, metadata !1541, metadata !DIExpression()), !dbg !1542
  %96 = and i32 %95, -251658241, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %96, metadata !1541, metadata !DIExpression()), !dbg !1542
  %97 = zext i8 %1 to i32, !dbg !1656
  %98 = shl nuw i32 %97, 24, !dbg !1657
  %99 = or i32 %96, %98, !dbg !1658
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1659
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1660

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #12, !dbg !1662
  br label %187, !dbg !1664

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %103, metadata !1541, metadata !DIExpression()), !dbg !1542
  %104 = and i32 %103, 268435455, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %104, metadata !1541, metadata !DIExpression()), !dbg !1542
  %105 = zext i8 %1 to i32, !dbg !1667
  %106 = shl i32 %105, 28, !dbg !1668
  %107 = or i32 %104, %106, !dbg !1669
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1670
  %108 = and i8 %1, -3, !dbg !1671
  %109 = icmp eq i8 %108, 4, !dbg !1671
  br i1 %109, label %110, label %187, !dbg !1671

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #12, !dbg !1673
  br label %187, !dbg !1675

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %113, metadata !1541, metadata !DIExpression()), !dbg !1542
  %114 = and i32 %113, -16, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %114, metadata !1541, metadata !DIExpression()), !dbg !1542
  %115 = zext i8 %1 to i32, !dbg !1678
  %116 = or i32 %114, %115, !dbg !1679
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1680
  %117 = and i8 %1, -3, !dbg !1681
  %118 = icmp eq i8 %117, 4, !dbg !1681
  br i1 %118, label %119, label %187, !dbg !1681

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #12, !dbg !1683
  br label %187, !dbg !1685

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %122, metadata !1541, metadata !DIExpression()), !dbg !1542
  %123 = and i32 %122, -241, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %123, metadata !1541, metadata !DIExpression()), !dbg !1542
  %124 = zext i8 %1 to i32, !dbg !1688
  %125 = shl nuw nsw i32 %124, 4, !dbg !1689
  %126 = or i32 %123, %125, !dbg !1690
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1691
  br label %187, !dbg !1692

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %128, metadata !1541, metadata !DIExpression()), !dbg !1542
  %129 = and i32 %128, -3841, !dbg !1694
  call void @llvm.dbg.value(metadata i32 %129, metadata !1541, metadata !DIExpression()), !dbg !1542
  %130 = zext i8 %1 to i32, !dbg !1695
  %131 = shl nuw nsw i32 %130, 8, !dbg !1696
  %132 = or i32 %129, %131, !dbg !1697
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1698
  br label %187, !dbg !1699

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %134, metadata !1541, metadata !DIExpression()), !dbg !1542
  %135 = and i32 %134, -61441, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %135, metadata !1541, metadata !DIExpression()), !dbg !1542
  %136 = zext i8 %1 to i32, !dbg !1702
  %137 = shl nuw nsw i32 %136, 12, !dbg !1703
  %138 = or i32 %135, %137, !dbg !1704
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1705
  br label %187, !dbg !1706

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %140, metadata !1541, metadata !DIExpression()), !dbg !1542
  %141 = and i32 %140, -983041, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %141, metadata !1541, metadata !DIExpression()), !dbg !1542
  %142 = zext i8 %1 to i32, !dbg !1709
  %143 = shl nuw nsw i32 %142, 16, !dbg !1710
  %144 = or i32 %141, %143, !dbg !1711
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1712
  br label %187, !dbg !1713

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1714
  call void @llvm.dbg.value(metadata i32 %146, metadata !1541, metadata !DIExpression()), !dbg !1542
  %147 = and i32 %146, -15728641, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %147, metadata !1541, metadata !DIExpression()), !dbg !1542
  %148 = zext i8 %1 to i32, !dbg !1716
  %149 = shl nuw nsw i32 %148, 20, !dbg !1717
  %150 = or i32 %147, %149, !dbg !1718
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1719
  br label %187, !dbg !1720

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %152, metadata !1541, metadata !DIExpression()), !dbg !1542
  %153 = and i32 %152, -251658241, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %153, metadata !1541, metadata !DIExpression()), !dbg !1542
  %154 = zext i8 %1 to i32, !dbg !1723
  %155 = shl nuw i32 %154, 24, !dbg !1724
  %156 = or i32 %153, %155, !dbg !1725
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1726
  br label %187, !dbg !1727

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %158, metadata !1541, metadata !DIExpression()), !dbg !1542
  %159 = and i32 %158, 268435455, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %159, metadata !1541, metadata !DIExpression()), !dbg !1542
  %160 = zext i8 %1 to i32, !dbg !1730
  %161 = shl i32 %160, 28, !dbg !1731
  %162 = or i32 %159, %161, !dbg !1732
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1733
  br label %187, !dbg !1734

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %164, metadata !1541, metadata !DIExpression()), !dbg !1542
  %165 = and i32 %164, -241, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %165, metadata !1541, metadata !DIExpression()), !dbg !1542
  %166 = zext i8 %1 to i32, !dbg !1737
  %167 = shl nuw nsw i32 %166, 4, !dbg !1738
  %168 = or i32 %165, %167, !dbg !1739
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1740
  br label %187, !dbg !1741

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %170, metadata !1541, metadata !DIExpression()), !dbg !1542
  %171 = and i32 %170, -3841, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %171, metadata !1541, metadata !DIExpression()), !dbg !1542
  %172 = zext i8 %1 to i32, !dbg !1744
  %173 = shl nuw nsw i32 %172, 8, !dbg !1745
  %174 = or i32 %171, %173, !dbg !1746
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1747
  br label %187, !dbg !1748

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1749
  call void @llvm.dbg.value(metadata i32 %176, metadata !1541, metadata !DIExpression()), !dbg !1542
  %177 = and i32 %176, -61441, !dbg !1750
  call void @llvm.dbg.value(metadata i32 %177, metadata !1541, metadata !DIExpression()), !dbg !1542
  %178 = zext i8 %1 to i32, !dbg !1751
  %179 = shl nuw nsw i32 %178, 12, !dbg !1752
  %180 = or i32 %177, %179, !dbg !1753
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1754
  br label %187, !dbg !1755

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %182, metadata !1541, metadata !DIExpression()), !dbg !1542
  %183 = and i32 %182, -983041, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %183, metadata !1541, metadata !DIExpression()), !dbg !1542
  %184 = zext i8 %1 to i32, !dbg !1758
  %185 = shl nuw nsw i32 %184, 16, !dbg !1759
  %186 = or i32 %183, %185, !dbg !1760
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1761
  br label %187, !dbg !1762

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1763
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1764 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1768, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32 %1, metadata !1769, metadata !DIExpression()), !dbg !1770
  %3 = trunc i32 %1 to i8, !dbg !1771
  %4 = tail call i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %3) #12, !dbg !1772
  ret i32 %4, !dbg !1773
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1774 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1778, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %1, metadata !1779, metadata !DIExpression()), !dbg !1780
  %3 = tail call i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) #12, !dbg !1781
  ret i32 %3, !dbg !1782
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpio_get_status(%struct.gpio_status* noalias nocapture writeonly sret(%struct.gpio_status) align 4 %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1783 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !1794, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.declare(metadata %struct.gpio_status* %0, metadata !1795, metadata !DIExpression()), !dbg !1797
  %3 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 0, !dbg !1798
  store i32 %1, i32* %3, align 4, !dbg !1799
  %4 = tail call zeroext i8 @halgetGPIO_OutEnable(i32 noundef %1) #12, !dbg !1800
  %5 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 1, !dbg !1801
  store i8 %4, i8* %5, align 4, !dbg !1802
  %6 = tail call zeroext i8 @halgetGPIO_DIN(i32 noundef %1) #12, !dbg !1803
  %7 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 2, !dbg !1804
  store i8 %6, i8* %7, align 1, !dbg !1805
  %8 = tail call zeroext i8 @halgetGPIO_DOUT(i32 noundef %1) #12, !dbg !1806
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 3, !dbg !1807
  store i8 %8, i8* %9, align 2, !dbg !1808
  ret void, !dbg !1809
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullUp(i32 noundef %0) local_unnamed_addr #3 !dbg !1810 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1814, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 0, metadata !1815, metadata !DIExpression()), !dbg !1816
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #12, !dbg !1817
  %2 = tail call i32 @halGPIO_PullUp_SET(i32 noundef %0) #12, !dbg !1818
  call void @llvm.dbg.value(metadata i32 %2, metadata !1815, metadata !DIExpression()), !dbg !1816
  ret i32 %2, !dbg !1819
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDown(i32 noundef %0) local_unnamed_addr #3 !dbg !1820 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1822, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.value(metadata i32 0, metadata !1823, metadata !DIExpression()), !dbg !1824
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #12, !dbg !1825
  %2 = tail call i32 @halGPIO_PullDown_SET(i32 noundef %0) #12, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %2, metadata !1823, metadata !DIExpression()), !dbg !1824
  ret i32 %2, !dbg !1827
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDisable(i32 noundef %0) local_unnamed_addr #3 !dbg !1828 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1830, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i32 0, metadata !1831, metadata !DIExpression()), !dbg !1832
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #12, !dbg !1833
  %2 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #12, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %2, metadata !1831, metadata !DIExpression()), !dbg !1832
  %3 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #12, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %3, metadata !1831, metadata !DIExpression()), !dbg !1832
  ret i32 %3, !dbg !1836
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1837 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1839, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i8 %1, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 0, metadata !1841, metadata !DIExpression()), !dbg !1842
  %3 = tail call i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) #12, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %3, metadata !1841, metadata !DIExpression()), !dbg !1842
  ret i32 %3, !dbg !1844
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_GetDriving(i32 noundef %0, i8* noundef %1) local_unnamed_addr #3 !dbg !1845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1849, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8* %1, metadata !1850, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1851, metadata !DIExpression()), !dbg !1852
  %3 = tail call i32 @halGPIO_GetDriving(i32 noundef %0, i8* noundef %1) #12, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %3, metadata !1851, metadata !DIExpression()), !dbg !1852
  ret i32 %3, !dbg !1854
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_backup_all_registers() local_unnamed_addr #0 !dbg !1855 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1857, metadata !DIExpression()), !dbg !1858
  br label %1, !dbg !1859

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !1857, metadata !DIExpression()), !dbg !1858
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !1861
  %4 = load i32, i32* %3, align 4, !dbg !1861
  %5 = inttoptr i32 %4 to i32*, !dbg !1861
  %6 = load volatile i32, i32* %5, align 4, !dbg !1861
  %7 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !1864
  store i32 %6, i32* %7, align 4, !dbg !1865
  %8 = add nuw nsw i32 %2, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %8, metadata !1857, metadata !DIExpression()), !dbg !1858
  %9 = icmp eq i32 %8, 22, !dbg !1867
  br i1 %9, label %10, label %1, !dbg !1859, !llvm.loop !1868

10:                                               ; preds = %1
  ret void, !dbg !1870
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_restore_all_registers() local_unnamed_addr #0 !dbg !1871 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1873, metadata !DIExpression()), !dbg !1874
  br label %1, !dbg !1875

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !1873, metadata !DIExpression()), !dbg !1874
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !1877
  %4 = load i32, i32* %3, align 4, !dbg !1877
  %5 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !1880
  %6 = load i32, i32* %5, align 4, !dbg !1880
  %7 = inttoptr i32 %6 to i32*, !dbg !1880
  store volatile i32 %4, i32* %7, align 4, !dbg !1881
  %8 = add nuw nsw i32 %2, 1, !dbg !1882
  call void @llvm.dbg.value(metadata i32 %8, metadata !1873, metadata !DIExpression()), !dbg !1874
  %9 = icmp eq i32 %8, 22, !dbg !1883
  br i1 %9, label %10, label %1, !dbg !1875, !llvm.loop !1884

10:                                               ; preds = %1
  ret void, !dbg !1886
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !1887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1891, metadata !DIExpression()), !dbg !1892
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !1893
  tail call void asm sideeffect "dsb", ""() #13, !dbg !1894, !srcloc !1895
  tail call void asm sideeffect "isb", ""() #13, !dbg !1896, !srcloc !1897
  ret void, !dbg !1898
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !1899 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1903, metadata !DIExpression()), !dbg !1904
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !1905
  ret void, !dbg !1906
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !1907 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #13, !dbg !1912, !srcloc !1919
  call void @llvm.dbg.value(metadata i32 %1, metadata !1916, metadata !DIExpression()) #13, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %1, metadata !1911, metadata !DIExpression()), !dbg !1921
  tail call void asm sideeffect "cpsid i", "~{memory}"() #13, !dbg !1922, !srcloc !1926
  ret i32 %1, !dbg !1927
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !1928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1930, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %0, metadata !1932, metadata !DIExpression()) #13, !dbg !1935
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #13, !dbg !1938, !srcloc !1939
  ret void, !dbg !1940
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1941 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1945, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %1, metadata !1946, metadata !DIExpression()), !dbg !1948
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
  ], !dbg !1949

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !1947, metadata !DIExpression()), !dbg !1948
  %4 = trunc i32 %1 to i8, !dbg !1950
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #12, !dbg !1951
  br label %5, !dbg !1952

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !1948
  ret i32 %6, !dbg !1953
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !1954 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1956, metadata !DIExpression()), !dbg !1958
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1959
  call void @llvm.dbg.value(metadata i32 %1, metadata !1957, metadata !DIExpression()), !dbg !1958
  %2 = lshr i32 %1, 13, !dbg !1960
  %3 = and i32 %2, 7, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %3, metadata !1957, metadata !DIExpression()), !dbg !1958
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %4, metadata !1956, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i32 %4, metadata !1956, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !1958
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !1963
  %6 = load i32, i32* %5, align 4, !dbg !1963
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !1963
  %8 = load i32, i32* %7, align 4, !dbg !1963
  %9 = and i32 %4, -2048, !dbg !1964
  call void @llvm.dbg.value(metadata i32 %9, metadata !1956, metadata !DIExpression()), !dbg !1958
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !1965
  %10 = or i32 %9, %8, !dbg !1965
  call void @llvm.dbg.value(metadata i32 %10, metadata !1956, metadata !DIExpression()), !dbg !1958
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1967
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !1968
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !1969
  tail call void @SystemCoreClockUpdate() #12, !dbg !1970
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !1971
  %13 = udiv i32 %12, 1000, !dbg !1972
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #12, !dbg !1973
  ret void, !dbg !1974
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #4 !dbg !1975 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !1976
  ret i32 %1, !dbg !1977
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #4 !dbg !1978 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !1979
  ret i32 %1, !dbg !1980
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #5 !dbg !1981 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1985
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1985
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1983, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1984, metadata !DIExpression()), !dbg !1987
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1988
  store volatile i32 %3, i32* %1, align 4, !dbg !1989
  %4 = load volatile i32, i32* %1, align 4, !dbg !1990
  %5 = lshr i32 %4, 28, !dbg !1991
  %6 = and i32 %5, 3, !dbg !1992
  store volatile i32 %6, i32* %1, align 4, !dbg !1993
  %7 = load volatile i32, i32* %1, align 4, !dbg !1994
  %8 = icmp eq i32 %7, 0, !dbg !1996
  br i1 %8, label %9, label %22, !dbg !1997

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1998
  store volatile i32 %10, i32* %1, align 4, !dbg !2000
  %11 = load volatile i32, i32* %1, align 4, !dbg !2001
  %12 = and i32 %11, -16777217, !dbg !2002
  store volatile i32 %12, i32* %1, align 4, !dbg !2003
  %13 = load volatile i32, i32* %1, align 4, !dbg !2004
  %14 = or i32 %13, 536870912, !dbg !2005
  store volatile i32 %14, i32* %1, align 4, !dbg !2006
  %15 = load volatile i32, i32* %1, align 4, !dbg !2007
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #11, !dbg !2008
  br label %16, !dbg !2009

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2010
  store volatile i32 %17, i32* %1, align 4, !dbg !2012
  %18 = load volatile i32, i32* %1, align 4, !dbg !2013
  %19 = and i32 %18, 134217728, !dbg !2014
  store volatile i32 %19, i32* %1, align 4, !dbg !2015
  %20 = load volatile i32, i32* %1, align 4, !dbg !2016
  %21 = icmp eq i32 %20, 0, !dbg !2017
  br i1 %21, label %16, label %22, !dbg !2018, !llvm.loop !2019

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2021
  ret void, !dbg !2021
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #2 !dbg !2022 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2029, metadata !DIExpression()), !dbg !2030
  %2 = bitcast i8* %0 to i32*, !dbg !2031
  %3 = load volatile i32, i32* %2, align 4, !dbg !2032
  ret i32 %3, !dbg !2033
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2034 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2038, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i32 %1, metadata !2039, metadata !DIExpression()), !dbg !2040
  %3 = bitcast i8* %0 to i32*, !dbg !2041
  store volatile i32 %1, i32* %3, align 4, !dbg !2042
  ret void, !dbg !2043
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #5 !dbg !2044 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2048, metadata !DIExpression()), !dbg !2051
  %3 = bitcast i32* %2 to i8*, !dbg !2052
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2052
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2049, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2050, metadata !DIExpression()), !dbg !2051
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2054
  store volatile i32 %4, i32* %2, align 4, !dbg !2055
  %5 = load volatile i32, i32* %2, align 4, !dbg !2056
  %6 = lshr i32 %5, 28, !dbg !2057
  %7 = and i32 %6, 3, !dbg !2058
  store volatile i32 %7, i32* %2, align 4, !dbg !2059
  %8 = load volatile i32, i32* %2, align 4, !dbg !2060
  %9 = icmp eq i32 %8, 3, !dbg !2062
  br i1 %9, label %38, label %10, !dbg !2063

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2064
  store volatile i32 %11, i32* %2, align 4, !dbg !2066
  %12 = load volatile i32, i32* %2, align 4, !dbg !2067
  %13 = and i32 %12, -262145, !dbg !2068
  store volatile i32 %13, i32* %2, align 4, !dbg !2069
  %14 = load volatile i32, i32* %2, align 4, !dbg !2070
  %15 = and i32 %14, -16777217, !dbg !2071
  store volatile i32 %15, i32* %2, align 4, !dbg !2072
  %16 = load volatile i32, i32* %2, align 4, !dbg !2073
  store volatile i32 %16, i32* %2, align 4, !dbg !2074
  %17 = load volatile i32, i32* %2, align 4, !dbg !2075
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #11, !dbg !2076
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2077
  store volatile i32 %18, i32* %2, align 4, !dbg !2078
  %19 = load volatile i32, i32* %2, align 4, !dbg !2079
  %20 = and i32 %19, -805306369, !dbg !2080
  store volatile i32 %20, i32* %2, align 4, !dbg !2081
  %21 = load volatile i32, i32* %2, align 4, !dbg !2082
  %22 = and i32 %21, -16777217, !dbg !2083
  store volatile i32 %22, i32* %2, align 4, !dbg !2084
  %23 = load volatile i32, i32* %2, align 4, !dbg !2085
  %24 = or i32 %23, 805306368, !dbg !2086
  store volatile i32 %24, i32* %2, align 4, !dbg !2087
  %25 = load volatile i32, i32* %2, align 4, !dbg !2088
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #11, !dbg !2089
  br label %26, !dbg !2090

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2091
  store volatile i32 %27, i32* %2, align 4, !dbg !2093
  %28 = load volatile i32, i32* %2, align 4, !dbg !2094
  %29 = and i32 %28, 67108864, !dbg !2095
  store volatile i32 %29, i32* %2, align 4, !dbg !2096
  %30 = load volatile i32, i32* %2, align 4, !dbg !2097
  %31 = icmp eq i32 %30, 0, !dbg !2098
  br i1 %31, label %26, label %32, !dbg !2099, !llvm.loop !2100

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2102
  store volatile i32 %33, i32* %2, align 4, !dbg !2103
  %34 = load volatile i32, i32* %2, align 4, !dbg !2104
  %35 = and i32 %34, -262145, !dbg !2105
  store volatile i32 %35, i32* %2, align 4, !dbg !2106
  %36 = load volatile i32, i32* %2, align 4, !dbg !2107
  %37 = and i32 %36, -16777217, !dbg !2108
  store volatile i32 %37, i32* %2, align 4, !dbg !2109
  br label %38, !dbg !2110

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2111
  store volatile i32 %39, i32* %2, align 4, !dbg !2112
  %40 = icmp eq i8 %0, 0, !dbg !2113
  %41 = load volatile i32, i32* %2, align 4, !dbg !2115
  br i1 %40, label %44, label %42, !dbg !2116

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2117
  store volatile i32 %43, i32* %2, align 4, !dbg !2119
  br label %45, !dbg !2120

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2121
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2123
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #11, !dbg !2124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2125
  ret void, !dbg !2125
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #5 !dbg !2126 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2130
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2128, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2129, metadata !DIExpression()), !dbg !2132
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2133
  store volatile i32 %3, i32* %1, align 4, !dbg !2134
  %4 = load volatile i32, i32* %1, align 4, !dbg !2135
  %5 = and i32 %4, -805306369, !dbg !2136
  store volatile i32 %5, i32* %1, align 4, !dbg !2137
  %6 = load volatile i32, i32* %1, align 4, !dbg !2138
  %7 = and i32 %6, -16777217, !dbg !2139
  store volatile i32 %7, i32* %1, align 4, !dbg !2140
  %8 = load volatile i32, i32* %1, align 4, !dbg !2141
  store volatile i32 %8, i32* %1, align 4, !dbg !2142
  %9 = load volatile i32, i32* %1, align 4, !dbg !2143
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #11, !dbg !2144
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2145
  store volatile i32 %10, i32* %1, align 4, !dbg !2146
  %11 = load volatile i32, i32* %1, align 4, !dbg !2147
  %12 = and i32 %11, -262145, !dbg !2148
  store volatile i32 %12, i32* %1, align 4, !dbg !2149
  %13 = load volatile i32, i32* %1, align 4, !dbg !2150
  %14 = and i32 %13, -16777217, !dbg !2151
  store volatile i32 %14, i32* %1, align 4, !dbg !2152
  %15 = load volatile i32, i32* %1, align 4, !dbg !2153
  store volatile i32 %15, i32* %1, align 4, !dbg !2154
  %16 = load volatile i32, i32* %1, align 4, !dbg !2155
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #11, !dbg !2156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2157
  ret void, !dbg !2157
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2158 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2162
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2162
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2160, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2161, metadata !DIExpression()), !dbg !2164
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2165
  store volatile i32 %3, i32* %1, align 4, !dbg !2166
  %4 = load volatile i32, i32* %1, align 4, !dbg !2167
  %5 = and i32 %4, -8, !dbg !2168
  store volatile i32 %5, i32* %1, align 4, !dbg !2169
  %6 = load volatile i32, i32* %1, align 4, !dbg !2170
  store volatile i32 %6, i32* %1, align 4, !dbg !2171
  %7 = load volatile i32, i32* %1, align 4, !dbg !2172
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #11, !dbg !2173
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2174
  store volatile i32 %8, i32* %1, align 4, !dbg !2175
  %9 = load volatile i32, i32* %1, align 4, !dbg !2176
  %10 = and i32 %9, -49153, !dbg !2177
  store volatile i32 %10, i32* %1, align 4, !dbg !2178
  %11 = load volatile i32, i32* %1, align 4, !dbg !2179
  store volatile i32 %11, i32* %1, align 4, !dbg !2180
  %12 = load volatile i32, i32* %1, align 4, !dbg !2181
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #11, !dbg !2182
  br label %13, !dbg !2183

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2184
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2185
  %16 = icmp eq i32 %14, %15, !dbg !2186
  br i1 %16, label %17, label %13, !dbg !2183, !llvm.loop !2187

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #11, !dbg !2189
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2190
  tail call void @SystemCoreClockUpdate() #12, !dbg !2191
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2192
  %20 = udiv i32 %19, 1000, !dbg !2193
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2194
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2195
  ret void, !dbg !2195
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2196 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2200
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2200
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2198, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2199, metadata !DIExpression()), !dbg !2202
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #11, !dbg !2203
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2204
  store volatile i32 %3, i32* %1, align 4, !dbg !2205
  %4 = load volatile i32, i32* %1, align 4, !dbg !2206
  %5 = and i32 %4, -49153, !dbg !2207
  store volatile i32 %5, i32* %1, align 4, !dbg !2208
  %6 = load volatile i32, i32* %1, align 4, !dbg !2209
  %7 = or i32 %6, 16384, !dbg !2210
  store volatile i32 %7, i32* %1, align 4, !dbg !2211
  %8 = load volatile i32, i32* %1, align 4, !dbg !2212
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #11, !dbg !2213
  br label %9, !dbg !2214

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2215
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2216
  %12 = icmp eq i32 %10, %11, !dbg !2217
  br i1 %12, label %13, label %9, !dbg !2214, !llvm.loop !2218

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2220
  store volatile i32 %14, i32* %1, align 4, !dbg !2221
  %15 = load volatile i32, i32* %1, align 4, !dbg !2222
  %16 = and i32 %15, -1009, !dbg !2223
  store volatile i32 %16, i32* %1, align 4, !dbg !2224
  %17 = load volatile i32, i32* %1, align 4, !dbg !2225
  %18 = or i32 %17, 128, !dbg !2226
  store volatile i32 %18, i32* %1, align 4, !dbg !2227
  %19 = load volatile i32, i32* %1, align 4, !dbg !2228
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #11, !dbg !2229
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2230
  store volatile i32 %20, i32* %1, align 4, !dbg !2231
  %21 = load volatile i32, i32* %1, align 4, !dbg !2232
  %22 = and i32 %21, -8, !dbg !2233
  store volatile i32 %22, i32* %1, align 4, !dbg !2234
  %23 = load volatile i32, i32* %1, align 4, !dbg !2235
  %24 = or i32 %23, 4, !dbg !2236
  store volatile i32 %24, i32* %1, align 4, !dbg !2237
  %25 = load volatile i32, i32* %1, align 4, !dbg !2238
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #11, !dbg !2239
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2240
  tail call void @SystemCoreClockUpdate() #12, !dbg !2241
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2242
  %27 = udiv i32 %26, 1000, !dbg !2243
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2245
  ret void, !dbg !2245
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2246 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2250
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2250
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2248, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2249, metadata !DIExpression()), !dbg !2252
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #11, !dbg !2253
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2254
  store volatile i32 %3, i32* %1, align 4, !dbg !2255
  %4 = load volatile i32, i32* %1, align 4, !dbg !2256
  %5 = and i32 %4, -49153, !dbg !2257
  store volatile i32 %5, i32* %1, align 4, !dbg !2258
  %6 = load volatile i32, i32* %1, align 4, !dbg !2259
  %7 = or i32 %6, 32768, !dbg !2260
  store volatile i32 %7, i32* %1, align 4, !dbg !2261
  %8 = load volatile i32, i32* %1, align 4, !dbg !2262
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #11, !dbg !2263
  br label %9, !dbg !2264

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2265
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2266
  %12 = icmp eq i32 %10, %11, !dbg !2267
  br i1 %12, label %13, label %9, !dbg !2264, !llvm.loop !2268

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2270
  store volatile i32 %14, i32* %1, align 4, !dbg !2271
  %15 = load volatile i32, i32* %1, align 4, !dbg !2272
  %16 = and i32 %15, -1009, !dbg !2273
  store volatile i32 %16, i32* %1, align 4, !dbg !2274
  %17 = load volatile i32, i32* %1, align 4, !dbg !2275
  %18 = or i32 %17, 32, !dbg !2276
  store volatile i32 %18, i32* %1, align 4, !dbg !2277
  %19 = load volatile i32, i32* %1, align 4, !dbg !2278
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #11, !dbg !2279
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2280
  store volatile i32 %20, i32* %1, align 4, !dbg !2281
  %21 = load volatile i32, i32* %1, align 4, !dbg !2282
  %22 = and i32 %21, -8, !dbg !2283
  store volatile i32 %22, i32* %1, align 4, !dbg !2284
  %23 = load volatile i32, i32* %1, align 4, !dbg !2285
  %24 = or i32 %23, 4, !dbg !2286
  store volatile i32 %24, i32* %1, align 4, !dbg !2287
  %25 = load volatile i32, i32* %1, align 4, !dbg !2288
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #11, !dbg !2289
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2290
  tail call void @SystemCoreClockUpdate() #12, !dbg !2291
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2292
  %27 = udiv i32 %26, 1000, !dbg !2293
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2294
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2295
  ret void, !dbg !2295
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2296 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2300
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2300
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2298, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2299, metadata !DIExpression()), !dbg !2302
  tail call void @cmnPLL1ON() #11, !dbg !2303
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2304
  store volatile i32 %3, i32* %1, align 4, !dbg !2305
  %4 = load volatile i32, i32* %1, align 4, !dbg !2306
  %5 = and i32 %4, -49153, !dbg !2307
  store volatile i32 %5, i32* %1, align 4, !dbg !2308
  %6 = load volatile i32, i32* %1, align 4, !dbg !2309
  store volatile i32 %6, i32* %1, align 4, !dbg !2310
  %7 = load volatile i32, i32* %1, align 4, !dbg !2311
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #11, !dbg !2312
  br label %8, !dbg !2313

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2314
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2315
  %11 = icmp eq i32 %9, %10, !dbg !2316
  br i1 %11, label %12, label %8, !dbg !2313, !llvm.loop !2317

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2319
  store volatile i32 %13, i32* %1, align 4, !dbg !2320
  %14 = load volatile i32, i32* %1, align 4, !dbg !2321
  %15 = and i32 %14, -8, !dbg !2322
  store volatile i32 %15, i32* %1, align 4, !dbg !2323
  %16 = load volatile i32, i32* %1, align 4, !dbg !2324
  %17 = or i32 %16, 2, !dbg !2325
  store volatile i32 %17, i32* %1, align 4, !dbg !2326
  %18 = load volatile i32, i32* %1, align 4, !dbg !2327
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #11, !dbg !2328
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2329
  tail call void @SystemCoreClockUpdate() #12, !dbg !2330
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2331
  %20 = udiv i32 %19, 1000, !dbg !2332
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2333
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2334
  ret void, !dbg !2334
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #5 section ".ramTEXT" !dbg !2335 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2339
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2339
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2337, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2338, metadata !DIExpression()), !dbg !2341
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #11, !dbg !2342
  store volatile i32 %3, i32* %1, align 4, !dbg !2343
  %4 = load volatile i32, i32* %1, align 4, !dbg !2344
  %5 = and i32 %4, -24577, !dbg !2345
  store volatile i32 %5, i32* %1, align 4, !dbg !2346
  %6 = load volatile i32, i32* %1, align 4, !dbg !2347
  store volatile i32 %6, i32* %1, align 4, !dbg !2348
  %7 = load volatile i32, i32* %1, align 4, !dbg !2349
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #11, !dbg !2350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2351
  ret void, !dbg !2351
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2352 {
  %1 = tail call i32 @getc_nowait() #11, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %1, metadata !2356, metadata !DIExpression()), !dbg !2358
  ret i32 %1, !dbg !2359
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2360 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2363
  %2 = and i32 %1, 1, !dbg !2365
  %3 = icmp eq i32 %2, 0, !dbg !2365
  br i1 %3, label %7, label %4, !dbg !2366

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2367
  %6 = and i32 %5, 255, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %5, metadata !2362, metadata !DIExpression()), !dbg !2370
  br label %7, !dbg !2371

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2372
  ret i32 %8, !dbg !2373
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2374 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 %1, metadata !2380, metadata !DIExpression()), !dbg !2382
  %3 = icmp eq i32 %0, 0, !dbg !2383
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %4, metadata !2381, metadata !DIExpression()), !dbg !2382
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2384

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2385
  %9 = and i32 %8, 32, !dbg !2386
  %10 = icmp eq i32 %9, 0, !dbg !2387
  br i1 %10, label %7, label %11, !dbg !2384, !llvm.loop !2388

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2390
  %13 = inttoptr i32 %4 to i32*, !dbg !2391
  store volatile i32 %12, i32* %13, align 65536, !dbg !2392
  ret void, !dbg !2393
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2394 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2398, metadata !DIExpression()), !dbg !2401
  %2 = icmp eq i32 %0, 0, !dbg !2402
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %3, metadata !2399, metadata !DIExpression()), !dbg !2401
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2403

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2404
  %8 = and i32 %7, 1, !dbg !2405
  %9 = icmp eq i32 %8, 0, !dbg !2406
  br i1 %9, label %6, label %10, !dbg !2403, !llvm.loop !2407

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2409
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2409
  %13 = trunc i32 %12 to i8, !dbg !2409
  call void @llvm.dbg.value(metadata i8 %13, metadata !2400, metadata !DIExpression()), !dbg !2401
  ret i8 %13, !dbg !2410
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2415, metadata !DIExpression()), !dbg !2418
  %2 = icmp eq i32 %0, 0, !dbg !2419
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %3, metadata !2416, metadata !DIExpression()), !dbg !2418
  %4 = or i32 %3, 20, !dbg !2420
  %5 = inttoptr i32 %4 to i32*, !dbg !2420
  %6 = load volatile i32, i32* %5, align 4, !dbg !2420
  %7 = and i32 %6, 1, !dbg !2422
  %8 = icmp eq i32 %7, 0, !dbg !2422
  br i1 %8, label %13, label %9, !dbg !2423

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2424
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2424
  %12 = and i32 %11, 255, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %11, metadata !2417, metadata !DIExpression()), !dbg !2418
  br label %13, !dbg !2427

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2428
  ret i32 %14, !dbg !2429
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !2430 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()), !dbg !2435
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #11, !dbg !2436
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2437

2:                                                ; preds = %1
  br label %3, !dbg !2438

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2442
  %6 = or i32 %5, 1, !dbg !2442
  store volatile i32 %6, i32* %4, align 4, !dbg !2442
  br label %7, !dbg !2443

7:                                                ; preds = %3, %1
  ret void, !dbg !2443
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !2444 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2450, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %1, metadata !2451, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i16 %2, metadata !2452, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i16 %3, metadata !2453, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i16 %4, metadata !2454, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2456, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2463, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 0, metadata !2466, metadata !DIExpression()), !dbg !2467
  %6 = tail call i32 @top_xtal_freq_get() #12, !dbg !2470
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2471
  %7 = icmp eq i32 %0, 1, !dbg !2472
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %8, metadata !2456, metadata !DIExpression()), !dbg !2467
  %9 = or i32 %8, 36, !dbg !2473
  %10 = inttoptr i32 %9 to i32*, !dbg !2473
  store volatile i32 3, i32* %10, align 4, !dbg !2474
  %11 = or i32 %8, 12, !dbg !2475
  %12 = inttoptr i32 %11 to i32*, !dbg !2475
  %13 = load volatile i32, i32* %12, align 4, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %13, metadata !2458, metadata !DIExpression()), !dbg !2467
  %14 = or i32 %13, 128, !dbg !2476
  store volatile i32 %14, i32* %12, align 4, !dbg !2477
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2478
  %16 = udiv i32 %15, %1, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %16, metadata !2457, metadata !DIExpression()), !dbg !2467
  %17 = lshr i32 %16, 8, !dbg !2480
  %18 = add nuw nsw i32 %17, 1, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %18, metadata !2459, metadata !DIExpression()), !dbg !2467
  %19 = udiv i32 %16, %18, !dbg !2482
  %20 = add i32 %19, -1, !dbg !2484
  call void @llvm.dbg.value(metadata i32 %20, metadata !2460, metadata !DIExpression()), !dbg !2467
  %21 = icmp eq i32 %20, 3, !dbg !2485
  %22 = lshr i32 %20, 1, !dbg !2487
  %23 = add nsw i32 %22, -1, !dbg !2487
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %24, metadata !2461, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 undef, metadata !2466, metadata !DIExpression()), !dbg !2467
  %25 = mul i32 %15, 10, !dbg !2488
  %26 = udiv i32 %25, %1, !dbg !2489
  %27 = udiv i32 %26, %16, !dbg !2490
  %28 = mul i32 %19, -10, !dbg !2491
  %29 = add i32 %27, %28, !dbg !2492
  %30 = urem i32 %29, 10, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %30, metadata !2462, metadata !DIExpression()), !dbg !2467
  %31 = and i32 %18, 255, !dbg !2494
  %32 = inttoptr i32 %8 to i32*, !dbg !2495
  store volatile i32 %31, i32* %32, align 65536, !dbg !2496
  %33 = lshr i32 %18, 8, !dbg !2497
  %34 = and i32 %33, 255, !dbg !2498
  %35 = or i32 %8, 4, !dbg !2499
  %36 = inttoptr i32 %35 to i32*, !dbg !2499
  store volatile i32 %34, i32* %36, align 4, !dbg !2500
  %37 = or i32 %8, 40, !dbg !2501
  %38 = inttoptr i32 %37 to i32*, !dbg !2501
  store volatile i32 %20, i32* %38, align 8, !dbg !2502
  %39 = or i32 %8, 44, !dbg !2503
  %40 = inttoptr i32 %39 to i32*, !dbg !2503
  store volatile i32 %24, i32* %40, align 4, !dbg !2504
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2505
  %42 = load i16, i16* %41, align 2, !dbg !2505
  %43 = zext i16 %42 to i32, !dbg !2505
  %44 = or i32 %8, 88, !dbg !2506
  %45 = inttoptr i32 %44 to i32*, !dbg !2506
  store volatile i32 %43, i32* %45, align 8, !dbg !2507
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2508
  %47 = load i16, i16* %46, align 2, !dbg !2508
  %48 = zext i16 %47 to i32, !dbg !2508
  %49 = or i32 %8, 84, !dbg !2509
  %50 = inttoptr i32 %49 to i32*, !dbg !2509
  store volatile i32 %48, i32* %50, align 4, !dbg !2510
  store volatile i32 %13, i32* %12, align 4, !dbg !2511
  %51 = or i32 %8, 8, !dbg !2512
  %52 = inttoptr i32 %51 to i32*, !dbg !2512
  store volatile i32 71, i32* %52, align 8, !dbg !2513
  %53 = inttoptr i32 %11 to i16*, !dbg !2514
  %54 = load volatile i16, i16* %53, align 4, !dbg !2514
  call void @llvm.dbg.value(metadata i16 %54, metadata !2455, metadata !DIExpression()), !dbg !2467
  %55 = and i16 %54, -64, !dbg !2515
  call void @llvm.dbg.value(metadata i16 %54, metadata !2455, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2467
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2455, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2467
  %56 = and i16 %2, -61, !dbg !2516
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2455, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2467
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2455, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2467
  %57 = and i16 %4, -57, !dbg !2517
  call void @llvm.dbg.value(metadata i16 undef, metadata !2455, metadata !DIExpression()), !dbg !2467
  %58 = or i16 %56, %3, !dbg !2516
  %59 = or i16 %58, %57, !dbg !2517
  %60 = or i16 %59, %55, !dbg !2518
  call void @llvm.dbg.value(metadata i16 %60, metadata !2455, metadata !DIExpression()), !dbg !2467
  store volatile i16 %60, i16* %53, align 4, !dbg !2519
  ret void, !dbg !2520
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !2521 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2526, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i32 %1, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i32* %2, metadata !2528, metadata !DIExpression()), !dbg !2529
  %4 = icmp eq i32 %0, 0, !dbg !2530
  %5 = icmp eq i32 %1, 0, !dbg !2532
  br i1 %4, label %6, label %16, !dbg !2533

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2534

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2536
  %9 = zext i16 %8 to i32, !dbg !2536
  br label %26, !dbg !2539

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2540
  %12 = zext i16 %11 to i32, !dbg !2540
  store i32 %12, i32* %2, align 4, !dbg !2542
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2543
  %14 = zext i16 %13 to i32, !dbg !2543
  %15 = sub nsw i32 %12, %14, !dbg !2544
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2545

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2547
  %19 = zext i16 %18 to i32, !dbg !2547
  br label %26, !dbg !2550

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2551
  %22 = zext i16 %21 to i32, !dbg !2551
  store i32 %22, i32* %2, align 4, !dbg !2553
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2554
  %24 = zext i16 %23 to i32, !dbg !2554
  %25 = sub nsw i32 %22, %24, !dbg !2555
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2532
  ret void, !dbg !2556
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2557 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2561, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8* %1, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %2, metadata !2563, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()), !dbg !2565
  %4 = icmp eq i32 %2, 0, !dbg !2566
  br i1 %4, label %15, label %5, !dbg !2569

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2564, metadata !DIExpression()), !dbg !2565
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2570

7:                                                ; preds = %5
  br label %8, !dbg !2572

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2576
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2576
  store i8 %10, i8* %11, align 1, !dbg !2576
  br label %12, !dbg !2577

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i32 %13, metadata !2564, metadata !DIExpression()), !dbg !2565
  %14 = icmp eq i32 %13, %2, !dbg !2566
  br i1 %14, label %15, label %5, !dbg !2569, !llvm.loop !2578

15:                                               ; preds = %12, %3
  ret void, !dbg !2580
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2581 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* %1, metadata !2588, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %2, metadata !2589, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()), !dbg !2591
  %4 = icmp eq i32 %2, 0, !dbg !2592
  br i1 %4, label %16, label %5, !dbg !2595

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2590, metadata !DIExpression()), !dbg !2591
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2596

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2598
  %9 = load i8, i8* %8, align 1, !dbg !2598
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2601
  br label %13, !dbg !2602

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2603
  %12 = load i8, i8* %11, align 1, !dbg !2603
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2606
  br label %13, !dbg !2607

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %14, metadata !2590, metadata !DIExpression()), !dbg !2591
  %15 = icmp eq i32 %14, %2, !dbg !2592
  br i1 %15, label %16, label %5, !dbg !2595, !llvm.loop !2609

16:                                               ; preds = %13, %3
  ret void, !dbg !2611
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !2612 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2616, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i8* %1, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %2, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %3, metadata !2619, metadata !DIExpression()), !dbg !2620
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2621

5:                                                ; preds = %4
  br label %6, !dbg !2622

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2626
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #12, !dbg !2626
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #12, !dbg !2626
  br label %9, !dbg !2627

9:                                                ; preds = %6, %4
  ret void, !dbg !2627
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !2628 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2632, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* %1, metadata !2633, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %2, metadata !2634, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %3, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %4, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %5, metadata !2637, metadata !DIExpression()), !dbg !2638
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2639

7:                                                ; preds = %6
  br label %8, !dbg !2640

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2644
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12, !dbg !2644
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #12, !dbg !2644
  br label %11, !dbg !2645

11:                                               ; preds = %8, %6
  ret void, !dbg !2645
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2646 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2651, metadata !DIExpression()), !dbg !2652
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2653

3:                                                ; preds = %2
  br label %4, !dbg !2654

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2658
  br label %6, !dbg !2659

6:                                                ; preds = %4, %2
  ret void, !dbg !2659
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2660 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2663, metadata !DIExpression()), !dbg !2664
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2665

3:                                                ; preds = %2
  br label %4, !dbg !2666

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2670
  br label %6, !dbg !2671

6:                                                ; preds = %4, %2
  ret void, !dbg !2671
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2672 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2674, metadata !DIExpression()), !dbg !2678
  %2 = icmp eq i32 %0, 0, !dbg !2679
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %3, metadata !2675, metadata !DIExpression()), !dbg !2678
  %4 = or i32 %3, 12, !dbg !2680
  %5 = inttoptr i32 %4 to i32*, !dbg !2680
  %6 = load volatile i32, i32* %5, align 4, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %6, metadata !2677, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2678
  store volatile i32 191, i32* %5, align 4, !dbg !2681
  %7 = or i32 %3, 8, !dbg !2682
  %8 = inttoptr i32 %7 to i32*, !dbg !2682
  %9 = load volatile i32, i32* %8, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %9, metadata !2676, metadata !DIExpression()), !dbg !2678
  %10 = and i32 %9, 65327, !dbg !2683
  %11 = or i32 %10, 208, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %9, metadata !2676, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2678
  store volatile i32 %11, i32* %8, align 8, !dbg !2684
  %12 = or i32 %3, 68, !dbg !2685
  %13 = inttoptr i32 %12 to i32*, !dbg !2685
  store volatile i32 0, i32* %13, align 4, !dbg !2686
  store volatile i32 0, i32* %5, align 4, !dbg !2687
  %14 = or i32 %3, 16, !dbg !2688
  %15 = inttoptr i32 %14 to i32*, !dbg !2688
  store volatile i32 2, i32* %15, align 16, !dbg !2689
  %16 = and i32 %6, 65535, !dbg !2690
  store volatile i32 %16, i32* %5, align 4, !dbg !2691
  ret void, !dbg !2692
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 %1, metadata !2698, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 %2, metadata !2699, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8 %3, metadata !2700, metadata !DIExpression()), !dbg !2704
  %5 = icmp eq i32 %0, 0, !dbg !2705
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %6, metadata !2701, metadata !DIExpression()), !dbg !2704
  %7 = or i32 %6, 12, !dbg !2706
  %8 = inttoptr i32 %7 to i32*, !dbg !2706
  %9 = load volatile i32, i32* %8, align 4, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %9, metadata !2703, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2704
  store volatile i32 191, i32* %8, align 4, !dbg !2707
  %10 = zext i8 %1 to i32, !dbg !2708
  %11 = or i32 %6, 16, !dbg !2709
  %12 = inttoptr i32 %11 to i32*, !dbg !2709
  store volatile i32 %10, i32* %12, align 16, !dbg !2710
  %13 = or i32 %6, 20, !dbg !2711
  %14 = inttoptr i32 %13 to i32*, !dbg !2711
  store volatile i32 %10, i32* %14, align 4, !dbg !2712
  %15 = zext i8 %2 to i32, !dbg !2713
  %16 = or i32 %6, 24, !dbg !2714
  %17 = inttoptr i32 %16 to i32*, !dbg !2714
  store volatile i32 %15, i32* %17, align 8, !dbg !2715
  %18 = or i32 %6, 28, !dbg !2716
  %19 = inttoptr i32 %18 to i32*, !dbg !2716
  store volatile i32 %15, i32* %19, align 4, !dbg !2717
  %20 = or i32 %6, 8, !dbg !2718
  %21 = inttoptr i32 %20 to i32*, !dbg !2718
  %22 = load volatile i32, i32* %21, align 8, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %22, metadata !2702, metadata !DIExpression()), !dbg !2704
  %23 = and i32 %22, 65525, !dbg !2719
  %24 = or i32 %23, 10, !dbg !2719
  call void @llvm.dbg.value(metadata i32 %22, metadata !2702, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2704
  store volatile i32 %24, i32* %21, align 8, !dbg !2720
  %25 = and i32 %9, 65535, !dbg !2721
  store volatile i32 %25, i32* %8, align 4, !dbg !2722
  %26 = zext i8 %3 to i32, !dbg !2723
  %27 = or i32 %6, 64, !dbg !2724
  %28 = inttoptr i32 %27 to i32*, !dbg !2724
  store volatile i32 %26, i32* %28, align 64, !dbg !2725
  %29 = or i32 %6, 68, !dbg !2726
  %30 = inttoptr i32 %29 to i32*, !dbg !2726
  store volatile i32 1, i32* %30, align 4, !dbg !2727
  ret void, !dbg !2728
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2729 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2734
  %2 = icmp eq i32 %0, 0, !dbg !2735
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %3, metadata !2732, metadata !DIExpression()), !dbg !2734
  %4 = or i32 %3, 12, !dbg !2736
  %5 = inttoptr i32 %4 to i32*, !dbg !2736
  %6 = load volatile i32, i32* %5, align 4, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %6, metadata !2733, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2734
  store volatile i32 191, i32* %5, align 4, !dbg !2737
  %7 = or i32 %3, 8, !dbg !2738
  %8 = inttoptr i32 %7 to i32*, !dbg !2738
  store volatile i32 0, i32* %8, align 8, !dbg !2739
  store volatile i32 0, i32* %5, align 4, !dbg !2740
  %9 = and i32 %6, 65535, !dbg !2741
  store volatile i32 %9, i32* %5, align 4, !dbg !2742
  ret void, !dbg !2743
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !2744 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2748
  %2 = icmp eq i32 %0, 0, !dbg !2749
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %3, metadata !2747, metadata !DIExpression()), !dbg !2748
  %4 = or i32 %3, 12, !dbg !2750
  %5 = inttoptr i32 %4 to i32*, !dbg !2750
  store volatile i32 191, i32* %5, align 4, !dbg !2751
  %6 = or i32 %3, 8, !dbg !2752
  %7 = inttoptr i32 %6 to i32*, !dbg !2752
  store volatile i32 16, i32* %7, align 8, !dbg !2753
  %8 = or i32 %3, 16, !dbg !2754
  %9 = inttoptr i32 %8 to i32*, !dbg !2754
  store volatile i32 0, i32* %9, align 16, !dbg !2755
  %10 = or i32 %3, 24, !dbg !2756
  %11 = inttoptr i32 %10 to i32*, !dbg !2756
  store volatile i32 0, i32* %11, align 8, !dbg !2757
  store volatile i32 128, i32* %5, align 4, !dbg !2758
  %12 = inttoptr i32 %3 to i32*, !dbg !2759
  store volatile i32 0, i32* %12, align 65536, !dbg !2760
  %13 = or i32 %3, 4, !dbg !2761
  %14 = inttoptr i32 %13 to i32*, !dbg !2761
  store volatile i32 0, i32* %14, align 4, !dbg !2762
  store volatile i32 0, i32* %5, align 4, !dbg !2763
  store volatile i32 0, i32* %14, align 4, !dbg !2764
  store volatile i32 0, i32* %7, align 8, !dbg !2765
  store volatile i32 191, i32* %5, align 4, !dbg !2766
  store volatile i32 0, i32* %7, align 8, !dbg !2767
  store volatile i32 0, i32* %5, align 4, !dbg !2768
  store volatile i32 0, i32* %9, align 16, !dbg !2769
  %15 = or i32 %3, 28, !dbg !2770
  %16 = inttoptr i32 %15 to i32*, !dbg !2770
  store volatile i32 0, i32* %16, align 4, !dbg !2771
  %17 = or i32 %3, 36, !dbg !2772
  %18 = inttoptr i32 %17 to i32*, !dbg !2772
  store volatile i32 0, i32* %18, align 4, !dbg !2773
  %19 = or i32 %3, 40, !dbg !2774
  %20 = inttoptr i32 %19 to i32*, !dbg !2774
  store volatile i32 0, i32* %20, align 8, !dbg !2775
  %21 = or i32 %3, 44, !dbg !2776
  %22 = inttoptr i32 %21 to i32*, !dbg !2776
  store volatile i32 0, i32* %22, align 4, !dbg !2777
  %23 = or i32 %3, 52, !dbg !2778
  %24 = inttoptr i32 %23 to i32*, !dbg !2778
  store volatile i32 0, i32* %24, align 4, !dbg !2779
  %25 = or i32 %3, 60, !dbg !2780
  %26 = inttoptr i32 %25 to i32*, !dbg !2780
  store volatile i32 0, i32* %26, align 4, !dbg !2781
  %27 = or i32 %3, 64, !dbg !2782
  %28 = inttoptr i32 %27 to i32*, !dbg !2782
  store volatile i32 0, i32* %28, align 64, !dbg !2783
  %29 = or i32 %3, 68, !dbg !2784
  %30 = inttoptr i32 %29 to i32*, !dbg !2784
  store volatile i32 0, i32* %30, align 4, !dbg !2785
  %31 = or i32 %3, 72, !dbg !2786
  %32 = inttoptr i32 %31 to i32*, !dbg !2786
  store volatile i32 0, i32* %32, align 8, !dbg !2787
  %33 = or i32 %3, 76, !dbg !2788
  %34 = inttoptr i32 %33 to i32*, !dbg !2788
  store volatile i32 0, i32* %34, align 4, !dbg !2789
  %35 = or i32 %3, 80, !dbg !2790
  %36 = inttoptr i32 %35 to i32*, !dbg !2790
  store volatile i32 0, i32* %36, align 16, !dbg !2791
  %37 = or i32 %3, 84, !dbg !2792
  %38 = inttoptr i32 %37 to i32*, !dbg !2792
  store volatile i32 0, i32* %38, align 4, !dbg !2793
  %39 = or i32 %3, 88, !dbg !2794
  %40 = inttoptr i32 %39 to i32*, !dbg !2794
  store volatile i32 0, i32* %40, align 8, !dbg !2795
  %41 = or i32 %3, 96, !dbg !2796
  %42 = inttoptr i32 %41 to i32*, !dbg !2796
  store volatile i32 0, i32* %42, align 32, !dbg !2797
  ret void, !dbg !2798
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !2799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2801, metadata !DIExpression()), !dbg !2803
  %2 = icmp eq i32 %0, 0, !dbg !2804
  call void @llvm.dbg.value(metadata i32 undef, metadata !2802, metadata !DIExpression()), !dbg !2803
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !2805

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !2806
  %7 = and i32 %6, 64, !dbg !2807
  %8 = icmp eq i32 %7, 0, !dbg !2808
  br i1 %8, label %5, label %9, !dbg !2805, !llvm.loop !2809

9:                                                ; preds = %5
  ret void, !dbg !2811
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2812 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2816, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %1, metadata !2817, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %2, metadata !2818, metadata !DIExpression()), !dbg !2829
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2830
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2819, metadata !DIExpression()), !dbg !2831
  %7 = bitcast i32* %5 to i8*, !dbg !2832
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2832
  call void @llvm.dbg.value(metadata i32* %5, metadata !2828, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2833
  call void @llvm.va_start(i8* nonnull %6), !dbg !2834
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2835
  %10 = load i32, i32* %9, align 4, !dbg !2835
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2835
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2835
  call void @llvm.va_end(i8* nonnull %6), !dbg !2836
  %13 = load i32, i32* %5, align 4, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %13, metadata !2828, metadata !DIExpression()), !dbg !2829
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2839
  ret void, !dbg !2839
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2840 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2842, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i32 %1, metadata !2843, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i8* %2, metadata !2844, metadata !DIExpression()), !dbg !2847
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2848
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2848
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2845, metadata !DIExpression()), !dbg !2849
  %7 = bitcast i32* %5 to i8*, !dbg !2850
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2850
  call void @llvm.dbg.value(metadata i32* %5, metadata !2846, metadata !DIExpression(DW_OP_deref)), !dbg !2847
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2851
  call void @llvm.va_start(i8* nonnull %6), !dbg !2852
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2853
  %10 = load i32, i32* %9, align 4, !dbg !2853
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2853
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2853
  call void @llvm.va_end(i8* nonnull %6), !dbg !2854
  %13 = load i32, i32* %5, align 4, !dbg !2855
  call void @llvm.dbg.value(metadata i32 %13, metadata !2846, metadata !DIExpression()), !dbg !2847
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2856
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2857
  ret void, !dbg !2857
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2858 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i32 %1, metadata !2861, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %2, metadata !2862, metadata !DIExpression()), !dbg !2865
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2866
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2866
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2863, metadata !DIExpression()), !dbg !2867
  %7 = bitcast i32* %5 to i8*, !dbg !2868
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2868
  call void @llvm.dbg.value(metadata i32* %5, metadata !2864, metadata !DIExpression(DW_OP_deref)), !dbg !2865
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2869
  call void @llvm.va_start(i8* nonnull %6), !dbg !2870
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2871
  %10 = load i32, i32* %9, align 4, !dbg !2871
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2871
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2871
  call void @llvm.va_end(i8* nonnull %6), !dbg !2872
  %13 = load i32, i32* %5, align 4, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %13, metadata !2864, metadata !DIExpression()), !dbg !2865
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2874
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2875
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2875
  ret void, !dbg !2875
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2876 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 %1, metadata !2879, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8* %2, metadata !2880, metadata !DIExpression()), !dbg !2883
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2884
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2884
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2881, metadata !DIExpression()), !dbg !2885
  %7 = bitcast i32* %5 to i8*, !dbg !2886
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2886
  call void @llvm.dbg.value(metadata i32* %5, metadata !2882, metadata !DIExpression(DW_OP_deref)), !dbg !2883
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2887
  call void @llvm.va_start(i8* nonnull %6), !dbg !2888
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2889
  %10 = load i32, i32* %9, align 4, !dbg !2889
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2889
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2889
  call void @llvm.va_end(i8* nonnull %6), !dbg !2890
  %13 = load i32, i32* %5, align 4, !dbg !2891
  call void @llvm.dbg.value(metadata i32 %13, metadata !2882, metadata !DIExpression()), !dbg !2883
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2892
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2893
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2893
  ret void, !dbg !2893
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !2894 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2900, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 %1, metadata !2901, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %2, metadata !2902, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i8* %3, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 %4, metadata !2904, metadata !DIExpression()), !dbg !2905
  ret void, !dbg !2906
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !2907 {
  ret i32 0, !dbg !2911
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2912 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2916, metadata !DIExpression()), !dbg !2918
  call void @llvm.dbg.value(metadata i32 -1, metadata !2917, metadata !DIExpression()), !dbg !2918
  %2 = icmp ugt i32 %0, 95, !dbg !2919
  br i1 %2, label %4, label %3, !dbg !2919

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #11, !dbg !2921
  call void @llvm.dbg.value(metadata i32 0, metadata !2917, metadata !DIExpression()), !dbg !2918
  br label %4, !dbg !2923

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2918
  ret i32 %5, !dbg !2924
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2925 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2929, metadata !DIExpression()), !dbg !2930
  %2 = and i32 %0, 31, !dbg !2931
  %3 = shl nuw i32 1, %2, !dbg !2932
  %4 = lshr i32 %0, 5, !dbg !2933
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !2934
  store volatile i32 %3, i32* %5, align 4, !dbg !2935
  ret void, !dbg !2936
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2939, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 -1, metadata !2940, metadata !DIExpression()), !dbg !2941
  %2 = icmp ugt i32 %0, 95, !dbg !2942
  br i1 %2, label %4, label %3, !dbg !2942

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #11, !dbg !2944
  call void @llvm.dbg.value(metadata i32 0, metadata !2940, metadata !DIExpression()), !dbg !2941
  br label %4, !dbg !2946

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2941
  ret i32 %5, !dbg !2947
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2950, metadata !DIExpression()), !dbg !2951
  %2 = and i32 %0, 31, !dbg !2952
  %3 = shl nuw i32 1, %2, !dbg !2953
  %4 = lshr i32 %0, 5, !dbg !2954
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !2955
  store volatile i32 %3, i32* %5, align 4, !dbg !2956
  ret void, !dbg !2957
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !2958 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i32 255, metadata !2963, metadata !DIExpression()), !dbg !2964
  %2 = icmp ugt i32 %0, 95, !dbg !2965
  br i1 %2, label %5, label %3, !dbg !2965

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #11, !dbg !2967
  call void @llvm.dbg.value(metadata i32 %4, metadata !2963, metadata !DIExpression()), !dbg !2964
  br label %5, !dbg !2969

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !2964
  ret i32 %6, !dbg !2970
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !2971 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()), !dbg !2976
  %2 = lshr i32 %0, 5, !dbg !2977
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !2978
  %4 = load volatile i32, i32* %3, align 4, !dbg !2978
  %5 = and i32 %0, 31, !dbg !2979
  %6 = lshr i32 %4, %5, !dbg !2980
  %7 = and i32 %6, 1, !dbg !2980
  ret i32 %7, !dbg !2981
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2982 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 -1, metadata !2985, metadata !DIExpression()), !dbg !2986
  %2 = icmp ugt i32 %0, 95, !dbg !2987
  br i1 %2, label %4, label %3, !dbg !2987

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #11, !dbg !2989
  call void @llvm.dbg.value(metadata i32 0, metadata !2985, metadata !DIExpression()), !dbg !2986
  br label %4, !dbg !2991

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2986
  ret i32 %5, !dbg !2992
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2995, metadata !DIExpression()), !dbg !2996
  %2 = and i32 %0, 31, !dbg !2997
  %3 = shl nuw i32 1, %2, !dbg !2998
  %4 = lshr i32 %0, 5, !dbg !2999
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3000
  store volatile i32 %3, i32* %5, align 4, !dbg !3001
  ret void, !dbg !3002
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3003 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3005, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i32 -1, metadata !3006, metadata !DIExpression()), !dbg !3007
  %2 = icmp ugt i32 %0, 95, !dbg !3008
  br i1 %2, label %4, label %3, !dbg !3008

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #11, !dbg !3010
  call void @llvm.dbg.value(metadata i32 0, metadata !3006, metadata !DIExpression()), !dbg !3007
  br label %4, !dbg !3012

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3007
  ret i32 %5, !dbg !3013
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3014 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3016, metadata !DIExpression()), !dbg !3017
  %2 = and i32 %0, 31, !dbg !3018
  %3 = shl nuw i32 1, %2, !dbg !3019
  %4 = lshr i32 %0, 5, !dbg !3020
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3021
  store volatile i32 %3, i32* %5, align 4, !dbg !3022
  ret void, !dbg !3023
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3028, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i32 %1, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i32 -1, metadata !3030, metadata !DIExpression()), !dbg !3031
  %3 = icmp ugt i32 %0, 95, !dbg !3032
  br i1 %3, label %5, label %4, !dbg !3032

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #11, !dbg !3034
  call void @llvm.dbg.value(metadata i32 0, metadata !3030, metadata !DIExpression()), !dbg !3031
  br label %5, !dbg !3036

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3031
  ret i32 %6, !dbg !3037
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3038 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %1, metadata !3043, metadata !DIExpression()), !dbg !3044
  %3 = trunc i32 %1 to i8, !dbg !3045
  %4 = shl i8 %3, 5, !dbg !3045
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3048
  store volatile i8 %4, i8* %5, align 1, !dbg !3049
  ret void, !dbg !3050
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3051 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 68, metadata !3054, metadata !DIExpression()), !dbg !3055
  %2 = icmp ugt i32 %0, 95, !dbg !3056
  br i1 %2, label %5, label %3, !dbg !3056

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #11, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %4, metadata !3054, metadata !DIExpression()), !dbg !3055
  br label %5, !dbg !3060

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3055
  ret i32 %6, !dbg !3061
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !3062 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3064, metadata !DIExpression()), !dbg !3065
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3066
  %3 = load volatile i8, i8* %2, align 1, !dbg !3066
  %4 = lshr i8 %3, 5, !dbg !3069
  %5 = zext i8 %4 to i32, !dbg !3069
  ret i32 %5, !dbg !3070
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !3071 {
  ret void, !dbg !3072
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !3073 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3075, metadata !DIExpression()), !dbg !3077
  %1 = tail call fastcc i32 @get_current_irq() #11, !dbg !3078
  call void @llvm.dbg.value(metadata i32 %1, metadata !3076, metadata !DIExpression()), !dbg !3077
  %2 = icmp ugt i32 %1, 95, !dbg !3079
  br i1 %2, label %12, label %3, !dbg !3079

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3081
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3081
  %6 = icmp eq void (i32)* %5, null, !dbg !3083
  br i1 %6, label %7, label %8, !dbg !3084

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3075, metadata !DIExpression()), !dbg !3077
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #12, !dbg !3085
  br label %12, !dbg !3087

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #11, !dbg !3088
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3090
  store i32 %9, i32* %10, align 4, !dbg !3091
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3092
  tail call void %11(i32 noundef %1) #12, !dbg !3093
  call void @llvm.dbg.value(metadata i32 0, metadata !3075, metadata !DIExpression()), !dbg !3077
  br label %12, !dbg !3094

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3077
  ret i32 %13, !dbg !3095
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !3096 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3099
  %2 = and i32 %1, 511, !dbg !3100
  call void @llvm.dbg.value(metadata i32 %2, metadata !3098, metadata !DIExpression()), !dbg !3101
  %3 = add nsw i32 %2, -16, !dbg !3102
  ret i32 %3, !dbg !3103
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !3104 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3105
  %2 = lshr i32 %1, 22, !dbg !3106
  %3 = and i32 %2, 1, !dbg !3106
  ret i32 %3, !dbg !3107
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !3108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3113, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3114, metadata !DIExpression()), !dbg !3116
  %3 = icmp ugt i32 %0, 95, !dbg !3117
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3117
  br i1 %5, label %10, label %6, !dbg !3117

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3119
  call void @llvm.dbg.value(metadata i32 %7, metadata !3115, metadata !DIExpression()), !dbg !3116
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #11, !dbg !3120
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3121
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3122
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3123
  store i32 0, i32* %9, align 4, !dbg !3124
  tail call void @restore_interrupt_mask(i32 noundef %7) #12, !dbg !3125
  br label %10, !dbg !3126

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3116
  ret i32 %11, !dbg !3127
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !3128 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3132, metadata !DIExpression()), !dbg !3133
  %2 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3134
  store i32 %2, i32* %0, align 4, !dbg !3135
  ret i32 0, !dbg !3136
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !3137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3141, metadata !DIExpression()), !dbg !3142
  tail call void @restore_interrupt_mask(i32 noundef %0) #12, !dbg !3143
  ret i32 0, !dbg !3144
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3145 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3151, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8 %1, metadata !3152, metadata !DIExpression()), !dbg !3154
  %3 = icmp ugt i32 %0, 60, !dbg !3155
  br i1 %3, label %11, label %4, !dbg !3157

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3158
  br i1 %5, label %11, label %6, !dbg !3160

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3161
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #12, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %8, metadata !3153, metadata !DIExpression()), !dbg !3154
  %9 = icmp slt i32 %8, 0, !dbg !3163
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3163
  br label %11, !dbg !3164

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3154
  ret i32 %12, !dbg !3165
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !3166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3171, metadata !DIExpression()), !dbg !3172
  ret i32 0, !dbg !3173
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !3174 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3176, metadata !DIExpression()), !dbg !3177
  ret i32 0, !dbg !3178
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3179 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3184, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32* %1, metadata !3185, metadata !DIExpression()), !dbg !3194
  %4 = icmp eq i32* %1, null, !dbg !3195
  br i1 %4, label %12, label %5, !dbg !3197

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3198
  br i1 %6, label %12, label %7, !dbg !3200

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3201
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3201
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3201
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3201
  %10 = load i8, i8* %9, align 1, !dbg !3201
  call void @llvm.dbg.value(metadata i8 %10, metadata !3186, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3194
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3201
  %11 = zext i8 %10 to i32, !dbg !3202
  store i32 %11, i32* %1, align 4, !dbg !3203
  br label %12, !dbg !3204

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3194
  ret i32 %13, !dbg !3205
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3206 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3210, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %1, metadata !3211, metadata !DIExpression()), !dbg !3213
  %3 = icmp ugt i32 %0, 60, !dbg !3214
  br i1 %3, label %9, label %4, !dbg !3216

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3217
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3218
  call void @llvm.dbg.value(metadata i32 %6, metadata !3212, metadata !DIExpression()), !dbg !3213
  %7 = icmp slt i32 %6, 0, !dbg !3219
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3219
  br label %9, !dbg !3220

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3213
  ret i32 %10, !dbg !3221
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3222 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3224, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32* %1, metadata !3225, metadata !DIExpression()), !dbg !3227
  %4 = icmp ugt i32 %0, 60, !dbg !3228
  br i1 %4, label %12, label %5, !dbg !3230

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3231
  br i1 %6, label %12, label %7, !dbg !3233

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3234
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3234
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3234
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3234
  %10 = load i8, i8* %9, align 2, !dbg !3234
  call void @llvm.dbg.value(metadata i8 %10, metadata !3226, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3227
  call void @llvm.dbg.value(metadata i8 undef, metadata !3226, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3227
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3234
  %11 = zext i8 %10 to i32, !dbg !3235
  store i32 %11, i32* %1, align 4, !dbg !3236
  br label %12, !dbg !3237

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3227
  ret i32 %13, !dbg !3238
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3239 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3244, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i32 %1, metadata !3245, metadata !DIExpression()), !dbg !3247
  %3 = icmp ugt i32 %0, 60, !dbg !3248
  br i1 %3, label %8, label %4, !dbg !3250

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #12, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %5, metadata !3246, metadata !DIExpression()), !dbg !3247
  %6 = icmp slt i32 %5, 0, !dbg !3252
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3252
  br label %8, !dbg !3253

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3247
  ret i32 %9, !dbg !3254
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3255 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3260, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i32* %1, metadata !3261, metadata !DIExpression()), !dbg !3263
  %4 = icmp ugt i32 %0, 60, !dbg !3264
  br i1 %4, label %13, label %5, !dbg !3266

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3267
  br i1 %6, label %13, label %7, !dbg !3269

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3270
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3270
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3270
  call void @llvm.dbg.value(metadata i32 undef, metadata !3262, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3263
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3270
  %10 = load i8, i8* %9, align 4, !dbg !3270
  call void @llvm.dbg.value(metadata i8 %10, metadata !3262, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3263
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3270
  %11 = icmp ne i8 %10, 0, !dbg !3271
  %12 = zext i1 %11 to i32, !dbg !3271
  store i32 %12, i32* %1, align 4, !dbg !3272
  br label %13, !dbg !3273

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3263
  ret i32 %14, !dbg !3274
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !3275 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3277, metadata !DIExpression()), !dbg !3279
  %3 = icmp ugt i32 %0, 60, !dbg !3280
  br i1 %3, label %11, label %4, !dbg !3282

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3283
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13, !dbg !3283
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #12, !dbg !3283
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3283
  %7 = load i8, i8* %6, align 2, !dbg !3283
  call void @llvm.dbg.value(metadata i8 %7, metadata !3278, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3279
  call void @llvm.dbg.value(metadata i8 undef, metadata !3278, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3279
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13, !dbg !3283
  %8 = xor i8 %7, 1, !dbg !3284
  %9 = zext i8 %8 to i32, !dbg !3284
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #11, !dbg !3285
  br label %11, !dbg !3286

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3279
  ret i32 %12, !dbg !3287
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !3288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3290, metadata !DIExpression()), !dbg !3292
  %2 = icmp ugt i32 %0, 60, !dbg !3293
  br i1 %2, label %10, label %3, !dbg !3295

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %4, metadata !3291, metadata !DIExpression()), !dbg !3292
  %5 = icmp slt i32 %4, 0, !dbg !3297
  br i1 %5, label %10, label %6, !dbg !3299

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #12, !dbg !3300
  call void @llvm.dbg.value(metadata i32 %7, metadata !3291, metadata !DIExpression()), !dbg !3292
  %8 = icmp slt i32 %7, 0, !dbg !3301
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3301
  br label %10, !dbg !3302

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3292
  ret i32 %11, !dbg !3303
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !3304 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3306, metadata !DIExpression()), !dbg !3308
  %2 = icmp ugt i32 %0, 60, !dbg !3309
  br i1 %2, label %10, label %3, !dbg !3311

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3312
  call void @llvm.dbg.value(metadata i32 %4, metadata !3307, metadata !DIExpression()), !dbg !3308
  %5 = icmp slt i32 %4, 0, !dbg !3313
  br i1 %5, label %10, label %6, !dbg !3315

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #12, !dbg !3316
  call void @llvm.dbg.value(metadata i32 %7, metadata !3307, metadata !DIExpression()), !dbg !3308
  %8 = icmp slt i32 %7, 0, !dbg !3317
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3317
  br label %10, !dbg !3318

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3308
  ret i32 %11, !dbg !3319
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !3320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()), !dbg !3324
  %2 = icmp ugt i32 %0, 60, !dbg !3325
  br i1 %2, label %7, label %3, !dbg !3327

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %4, metadata !3323, metadata !DIExpression()), !dbg !3324
  %5 = icmp slt i32 %4, 0, !dbg !3329
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3329
  br label %7, !dbg !3330

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3324
  ret i32 %8, !dbg !3331
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3336, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i32 %1, metadata !3337, metadata !DIExpression()), !dbg !3339
  %3 = icmp ugt i32 %0, 60, !dbg !3340
  br i1 %3, label %9, label %4, !dbg !3342

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3343
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3344
  call void @llvm.dbg.value(metadata i32 %6, metadata !3338, metadata !DIExpression()), !dbg !3339
  %7 = icmp slt i32 %6, 0, !dbg !3345
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3345
  br label %9, !dbg !3346

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3339
  ret i32 %10, !dbg !3347
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !3348 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3353, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32* %1, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #13, !dbg !3358
  %4 = icmp ugt i32 %0, 60, !dbg !3359
  br i1 %4, label %11, label %5, !dbg !3361

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3356, metadata !DIExpression(DW_OP_deref)), !dbg !3357
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #12, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %6, metadata !3355, metadata !DIExpression()), !dbg !3357
  %7 = load i8, i8* %3, align 1, !dbg !3363
  call void @llvm.dbg.value(metadata i8 %7, metadata !3356, metadata !DIExpression()), !dbg !3357
  %8 = zext i8 %7 to i32, !dbg !3364
  store i32 %8, i32* %1, align 4, !dbg !3365
  %9 = icmp slt i32 %6, 0, !dbg !3366
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3366
  br label %11, !dbg !3367

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3357
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #13, !dbg !3368
  ret i32 %12, !dbg !3368
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3376, metadata !DIExpression()), !dbg !3377
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3378
  br i1 %3, label %4, label %18, !dbg !3380

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3381
  %6 = load i8, i8* %5, align 4, !dbg !3381, !range !3383
  %7 = icmp eq i8 %6, 0, !dbg !3381
  br i1 %7, label %8, label %18, !dbg !3384

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #12, !dbg !3385
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3386
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !3387
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3388
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #12, !dbg !3389
  store i8 1, i8* %5, align 4, !dbg !3390
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3391, !range !3392
  tail call void @uart_reset_default_value(i32 noundef %14) #12, !dbg !3393
  tail call void @halUART_HWInit(i32 noundef %14) #12, !dbg !3394
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3395
  %16 = icmp eq i32 %15, 0, !dbg !3397
  %17 = select i1 %16, i32 0, i32 -4, !dbg !3377
  br label %18, !dbg !3377

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !3377
  ret i32 %19, !dbg !3398
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #4 !dbg !3399 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3405, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3406, metadata !DIExpression()), !dbg !3407
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3408
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !3410
  br i1 %5, label %6, label %22, !dbg !3410

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3411
  %8 = load i32, i32* %7, align 4, !dbg !3411
  %9 = icmp ugt i32 %8, 12, !dbg !3413
  br i1 %9, label %22, label %10, !dbg !3414

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3415
  %12 = load i32, i32* %11, align 4, !dbg !3415
  %13 = icmp ugt i32 %12, 2, !dbg !3416
  br i1 %13, label %22, label %14, !dbg !3417

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3418
  %16 = load i32, i32* %15, align 4, !dbg !3418
  %17 = icmp ugt i32 %16, 1, !dbg !3419
  br i1 %17, label %22, label %18, !dbg !3420

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3421
  %20 = load i32, i32* %19, align 4, !dbg !3421
  %21 = icmp ult i32 %20, 4, !dbg !3422
  br label %22, !dbg !3423

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !3407
  ret i1 %23, !dbg !3424
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !3425 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3429, metadata !DIExpression()), !dbg !3430
  %2 = icmp ne i32 %0, 0, !dbg !3431
  %3 = zext i1 %2 to i32, !dbg !3432
  ret i32 %3, !dbg !3433
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3434 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3438, metadata !DIExpression()), !dbg !3440
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3439, metadata !DIExpression()), !dbg !3440
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3441
  br i1 %3, label %4, label %22, !dbg !3443

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3444
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !3445
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3446
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #12, !dbg !3447
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3448
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3449
  %11 = load i32, i32* %10, align 4, !dbg !3449
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #11, !dbg !3450
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3451
  %14 = load i32, i32* %13, align 4, !dbg !3451
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #11, !dbg !3452
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3453
  %17 = load i32, i32* %16, align 4, !dbg !3453
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #11, !dbg !3454
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3455
  %20 = load i32, i32* %19, align 4, !dbg !3455
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #11, !dbg !3456
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #12, !dbg !3457
  br label %22, !dbg !3458

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !3440
  ret i32 %23, !dbg !3459
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !3460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !3465, metadata !DIExpression()), !dbg !3470
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !3471
  %3 = load i32, i32* %2, align 4, !dbg !3471
  ret i32 %3, !dbg !3472
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !3473 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3477, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !3478, metadata !DIExpression()), !dbg !3481
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !3482
  %3 = load i16, i16* %2, align 2, !dbg !3482
  ret i16 %3, !dbg !3483
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !3484 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3488, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !3489, metadata !DIExpression()), !dbg !3492
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !3493
  %3 = load i16, i16* %2, align 2, !dbg !3493
  ret i16 %3, !dbg !3494
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !3495 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3499, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !3500, metadata !DIExpression()), !dbg !3503
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !3504
  %3 = load i16, i16* %2, align 2, !dbg !3504
  ret i16 %3, !dbg !3505
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !3506 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()), !dbg !3511
  %2 = icmp ult i32 %0, 2, !dbg !3512
  ret i1 %2, !dbg !3513
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !3514 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3518, metadata !DIExpression()), !dbg !3519
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3520
  br i1 %2, label %3, label %10, !dbg !3522

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3523
  %5 = load i8, i8* %4, align 4, !dbg !3523, !range !3383
  %6 = icmp eq i8 %5, 0, !dbg !3525
  br i1 %6, label %10, label %7, !dbg !3526

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #12, !dbg !3527
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3528, !range !3392
  tail call void @uart_query_empty(i32 noundef %9) #12, !dbg !3529
  tail call void @uart_reset_default_value(i32 noundef %9) #12, !dbg !3530
  br label %10, !dbg !3531

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !3519
  ret i32 %11, !dbg !3532
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3533 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3537, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i8 %1, metadata !3538, metadata !DIExpression()), !dbg !3540
  %3 = icmp eq i32 %0, 0, !dbg !3541
  %4 = icmp eq i32 %0, 1, !dbg !3541
  %5 = select i1 %4, i32 1, i32 2, !dbg !3541
  %6 = select i1 %3, i32 0, i32 %5, !dbg !3541
  call void @llvm.dbg.value(metadata i32 %6, metadata !3539, metadata !DIExpression()), !dbg !3540
  %7 = icmp eq i32 %6, 2, !dbg !3542
  br i1 %7, label %9, label %8, !dbg !3544

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #12, !dbg !3545
  br label %9, !dbg !3547

9:                                                ; preds = %2, %8
  ret void, !dbg !3548
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3549 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3553, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i8* %1, metadata !3554, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.value(metadata i32 %2, metadata !3555, metadata !DIExpression()), !dbg !3558
  %4 = icmp eq i32 %0, 0, !dbg !3559
  %5 = icmp eq i32 %0, 1, !dbg !3559
  %6 = select i1 %5, i32 1, i32 2, !dbg !3559
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3559
  call void @llvm.dbg.value(metadata i32 %7, metadata !3556, metadata !DIExpression()), !dbg !3558
  %8 = icmp eq i8* %1, null, !dbg !3560
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !3562
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3557, metadata !DIExpression()), !dbg !3558
  br i1 %12, label %19, label %13, !dbg !3562

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3557, metadata !DIExpression()), !dbg !3558
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !3563
  %16 = load i8, i8* %15, align 1, !dbg !3563
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #12, !dbg !3569
  %17 = add nuw i32 %14, 1, !dbg !3570
  call void @llvm.dbg.value(metadata i32 %17, metadata !3557, metadata !DIExpression()), !dbg !3558
  %18 = icmp eq i32 %17, %2, !dbg !3571
  br i1 %18, label %19, label %13, !dbg !3572, !llvm.loop !3573

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !3558
  ret i32 %20, !dbg !3575
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3576 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3578, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i8* %1, metadata !3579, metadata !DIExpression()), !dbg !3585
  call void @llvm.dbg.value(metadata i32 %2, metadata !3580, metadata !DIExpression()), !dbg !3585
  %5 = bitcast i32* %4 to i8*, !dbg !3586
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3586
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3587
  br i1 %6, label %7, label %24, !dbg !3589

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !3590
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !3592
  br i1 %10, label %24, label %11, !dbg !3592

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !3593
  %13 = load i8, i8* %12, align 4, !dbg !3593, !range !3383
  %14 = icmp eq i8 %13, 0, !dbg !3593
  br i1 %14, label %24, label %15, !dbg !3595

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3596, !range !3392
  call void @llvm.dbg.value(metadata i32* %4, metadata !3581, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !3597
  %17 = load i32, i32* %4, align 4, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %17, metadata !3581, metadata !DIExpression()), !dbg !3585
  %18 = icmp ult i32 %17, %2, !dbg !3600
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !3582, metadata !DIExpression()), !dbg !3585
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #12, !dbg !3601
  %20 = load i32, i32* %4, align 4, !dbg !3602
  call void @llvm.dbg.value(metadata i32 %20, metadata !3581, metadata !DIExpression()), !dbg !3585
  %21 = icmp eq i32 %19, %20, !dbg !3604
  br i1 %21, label %22, label %24, !dbg !3605

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #11, !dbg !3606, !range !3608
  call void @llvm.dbg.value(metadata i32 %23, metadata !3583, metadata !DIExpression()), !dbg !3585
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #12, !dbg !3609
  br label %24, !dbg !3610

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !3585
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3611
  ret i32 %25, !dbg !3611
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !3612 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3616, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i1 %1, metadata !3617, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3619
  %3 = icmp eq i32 %0, 0, !dbg !3620
  %4 = select i1 %1, i32 15, i32 14, !dbg !3622
  %5 = select i1 %1, i32 17, i32 16, !dbg !3622
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !3622
  call void @llvm.dbg.value(metadata i32 %6, metadata !3618, metadata !DIExpression()), !dbg !3619
  ret i32 %6, !dbg !3623
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !3624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3628, metadata !DIExpression()), !dbg !3630
  %2 = icmp eq i32 %0, 0, !dbg !3631
  %3 = icmp eq i32 %0, 1, !dbg !3631
  %4 = select i1 %3, i32 1, i32 2, !dbg !3631
  %5 = select i1 %2, i32 0, i32 %4, !dbg !3631
  call void @llvm.dbg.value(metadata i32 %5, metadata !3629, metadata !DIExpression()), !dbg !3630
  %6 = icmp ult i32 %5, 2, !dbg !3632
  br i1 %6, label %7, label %9, !dbg !3634

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #12, !dbg !3635
  br label %9, !dbg !3637

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !3638
  ret i8 %10, !dbg !3639
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !3640 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3644, metadata !DIExpression()), !dbg !3646
  %2 = icmp eq i32 %0, 0, !dbg !3647
  %3 = icmp eq i32 %0, 1, !dbg !3647
  %4 = select i1 %3, i32 1, i32 2, !dbg !3647
  %5 = select i1 %2, i32 0, i32 %4, !dbg !3647
  call void @llvm.dbg.value(metadata i32 %5, metadata !3645, metadata !DIExpression()), !dbg !3646
  %6 = icmp ult i32 %5, 2, !dbg !3648
  br i1 %6, label %7, label %9, !dbg !3650

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #12, !dbg !3651
  br label %9, !dbg !3653

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !3654
  ret i32 %10, !dbg !3655
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3656 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3660, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i8* %1, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i32 %2, metadata !3662, metadata !DIExpression()), !dbg !3665
  %4 = icmp eq i32 %0, 0, !dbg !3666
  %5 = icmp eq i32 %0, 1, !dbg !3666
  %6 = select i1 %5, i32 1, i32 2, !dbg !3666
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3666
  call void @llvm.dbg.value(metadata i32 %7, metadata !3663, metadata !DIExpression()), !dbg !3665
  %8 = icmp eq i8* %1, null, !dbg !3667
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !3669
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3669
  call void @llvm.dbg.value(metadata i32 0, metadata !3664, metadata !DIExpression()), !dbg !3665
  br i1 %12, label %19, label %13, !dbg !3669

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3664, metadata !DIExpression()), !dbg !3665
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #12, !dbg !3670
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !3676
  store i8 %15, i8* %16, align 1, !dbg !3677
  %17 = add nuw i32 %14, 1, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %17, metadata !3664, metadata !DIExpression()), !dbg !3665
  %18 = icmp eq i32 %17, %2, !dbg !3679
  br i1 %18, label %19, label %13, !dbg !3680, !llvm.loop !3681

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !3665
  ret i32 %20, !dbg !3683
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3684 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3686, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i8* %1, metadata !3687, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i32 %2, metadata !3688, metadata !DIExpression()), !dbg !3692
  %5 = bitcast i32* %4 to i8*, !dbg !3693
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3693
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3694
  br i1 %6, label %7, label %20, !dbg !3696

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !3697
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !3699
  br i1 %10, label %20, label %11, !dbg !3699

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3700, !range !3392
  call void @llvm.dbg.value(metadata i32* %4, metadata !3689, metadata !DIExpression(DW_OP_deref)), !dbg !3692
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #12, !dbg !3701
  %13 = load i32, i32* %4, align 4, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %13, metadata !3689, metadata !DIExpression()), !dbg !3692
  %14 = icmp ult i32 %13, %2, !dbg !3704
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !3690, metadata !DIExpression()), !dbg !3692
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #12, !dbg !3705
  %16 = load i32, i32* %4, align 4, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %16, metadata !3689, metadata !DIExpression()), !dbg !3692
  %17 = icmp eq i32 %15, %16, !dbg !3708
  br i1 %17, label %18, label %20, !dbg !3709

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3710, !range !3608
  call void @llvm.dbg.value(metadata i32 %19, metadata !3691, metadata !DIExpression()), !dbg !3692
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #12, !dbg !3712
  br label %20, !dbg !3713

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !3692
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3714
  ret i32 %21, !dbg !3714
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !3715 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3717, metadata !DIExpression()), !dbg !3719
  %3 = bitcast i32* %2 to i8*, !dbg !3720
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3720
  call void @llvm.dbg.value(metadata i32 0, metadata !3718, metadata !DIExpression()), !dbg !3719
  store i32 0, i32* %2, align 4, !dbg !3721
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3722
  br i1 %4, label %5, label %8, !dbg !3724

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3725, !range !3392
  call void @llvm.dbg.value(metadata i32* %2, metadata !3718, metadata !DIExpression(DW_OP_deref)), !dbg !3719
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #12, !dbg !3726
  %7 = load i32, i32* %2, align 4, !dbg !3727
  call void @llvm.dbg.value(metadata i32 %7, metadata !3718, metadata !DIExpression()), !dbg !3719
  br label %8, !dbg !3728

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3719
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3729
  ret i32 %9, !dbg !3729
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !3730 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3732, metadata !DIExpression()), !dbg !3734
  %3 = bitcast i32* %2 to i8*, !dbg !3735
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3735
  call void @llvm.dbg.value(metadata i32 0, metadata !3733, metadata !DIExpression()), !dbg !3734
  store i32 0, i32* %2, align 4, !dbg !3736
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3737
  br i1 %4, label %5, label %8, !dbg !3739

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3740, !range !3392
  call void @llvm.dbg.value(metadata i32* %2, metadata !3733, metadata !DIExpression(DW_OP_deref)), !dbg !3734
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #12, !dbg !3741
  %7 = load i32, i32* %2, align 4, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %7, metadata !3733, metadata !DIExpression()), !dbg !3734
  br label %8, !dbg !3743

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3734
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3744
  ret i32 %9, !dbg !3744
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !3745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3749, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !3750, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata i8* %2, metadata !3751, metadata !DIExpression()), !dbg !3753
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3754
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !3756
  br i1 %6, label %7, label %18, !dbg !3756

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !3757
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !3758
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !3759
  store i8* %2, i8** %9, align 4, !dbg !3760
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !3761
  store i8 1, i8* %10, align 4, !dbg !3762
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3763
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #11, !dbg !3764
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !3765
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !3766
  %13 = icmp eq i32 %11, 0, !dbg !3767
  br i1 %13, label %14, label %15, !dbg !3769

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #12, !dbg !3770
  br label %16, !dbg !3772

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #12, !dbg !3773
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #11, !dbg !3775, !range !3608
  call void @llvm.dbg.value(metadata i32 %17, metadata !3752, metadata !DIExpression()), !dbg !3753
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #12, !dbg !3776
  br label %18, !dbg !3777

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !3753
  ret i32 %19, !dbg !3778
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !339, metadata !DIExpression()), !dbg !3779
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !3780
  %3 = load void ()*, void ()** %2, align 4, !dbg !3780
  ret void ()* %3, !dbg !3781
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !3782 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !3788, !range !3383
  %2 = icmp eq i8 %1, 0, !dbg !3788
  br i1 %2, label %8, label %3, !dbg !3789

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !3790
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !3792
  br i1 %5, label %8, label %6, !dbg !3793

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !3794
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !3796
  br label %8, !dbg !3797

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #11, !dbg !3798, !range !3392
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #11, !dbg !3799
  ret void, !dbg !3800
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !3801 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !3806, !range !3383
  %2 = icmp eq i8 %1, 0, !dbg !3806
  br i1 %2, label %8, label %3, !dbg !3807

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !3808
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !3810
  br i1 %5, label %8, label %6, !dbg !3811

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !3812
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !3814
  br label %8, !dbg !3815

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #11, !dbg !3816, !range !3392
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #11, !dbg !3817
  ret void, !dbg !3818
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !3819 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3823, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i1 %1, metadata !3824, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3830
  %5 = bitcast i32* %3 to i8*, !dbg !3831
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3831
  %6 = bitcast i32* %4 to i8*, !dbg !3831
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !3831
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !3827, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !3830
  br i1 %1, label %7, label %12, !dbg !3832

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !3827, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !3830
  call void @llvm.dbg.value(metadata i32* %3, metadata !3825, metadata !DIExpression(DW_OP_deref)), !dbg !3830
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #12, !dbg !3833
  %8 = load i32, i32* %3, align 4, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %8, metadata !3825, metadata !DIExpression()), !dbg !3830
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !3838
  %10 = load i32, i32* %9, align 4, !dbg !3838
  %11 = icmp ult i32 %8, %10, !dbg !3839
  br i1 %11, label %22, label %20, !dbg !3840

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !3826, metadata !DIExpression(DW_OP_deref)), !dbg !3830
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !3841
  %13 = load i32, i32* %4, align 4, !dbg !3843
  call void @llvm.dbg.value(metadata i32 %13, metadata !3826, metadata !DIExpression()), !dbg !3830
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !3845
  %15 = load i32, i32* %14, align 4, !dbg !3845
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !3846
  %17 = load i32, i32* %16, align 4, !dbg !3846
  %18 = sub i32 %15, %17, !dbg !3847
  %19 = icmp ult i32 %13, %18, !dbg !3848
  br i1 %19, label %22, label %20, !dbg !3849

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #11, !dbg !3850, !range !3608
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #12, !dbg !3850
  br label %22, !dbg !3851

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !3851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3851
  ret void, !dbg !3851
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !3852 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !3857, !range !3383
  %2 = icmp eq i8 %1, 0, !dbg !3857
  br i1 %2, label %11, label %3, !dbg !3858

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #11, !dbg !3859
  %5 = icmp eq i32 %4, 0, !dbg !3860
  br i1 %5, label %11, label %6, !dbg !3861

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !3862
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !3864
  br i1 %8, label %11, label %9, !dbg !3865

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !3866
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !3868
  br label %11, !dbg !3869

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #11, !dbg !3870, !range !3392
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3871
  ret void, !dbg !3872
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !3873 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !3878, !range !3383
  %2 = icmp eq i8 %1, 0, !dbg !3878
  br i1 %2, label %11, label %3, !dbg !3879

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #11, !dbg !3880
  %5 = icmp eq i32 %4, 0, !dbg !3881
  br i1 %5, label %11, label %6, !dbg !3882

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !3883
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !3885
  br i1 %8, label %11, label %9, !dbg !3886

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !3887
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !3889
  br label %11, !dbg !3890

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #11, !dbg !3891, !range !3392
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3892
  ret void, !dbg !3893
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3898, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i32 %1, metadata !3899, metadata !DIExpression()), !dbg !3900
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3901
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !3903
  br i1 %5, label %6, label %10, !dbg !3903

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3904
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !3905
  store i32 %1, i32* %8, align 4, !dbg !3906
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #11, !dbg !3907
  br label %10, !dbg !3908

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !3900
  ret i32 %11, !dbg !3909
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !3910 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3916, metadata !DIExpression()), !dbg !3918
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !3917, metadata !DIExpression()), !dbg !3918
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3919
  br i1 %3, label %4, label %28, !dbg !3921

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #11, !dbg !3922
  br i1 %5, label %6, label %28, !dbg !3924

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !3925
  store i8 1, i8* %7, align 4, !dbg !3926
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !3927
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !3928
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !3929
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #12, !dbg !3930
  tail call void @DMA_Init() #12, !dbg !3931
  tail call void @DMA_Vfifo_init() #12, !dbg !3932
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3933
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !3934
  %14 = load i8*, i8** %13, align 4, !dbg !3934
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !3935
  %16 = load i32, i32* %15, align 4, !dbg !3935
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !3936
  %18 = load i32, i32* %17, align 4, !dbg !3936
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !3937
  %20 = load i32, i32* %19, align 4, !dbg !3937
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #11, !dbg !3938
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #12, !dbg !3939
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !3940
  %23 = load i8*, i8** %22, align 4, !dbg !3940
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !3941
  %25 = load i32, i32* %24, align 4, !dbg !3941
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !3942
  %27 = load i32, i32* %26, align 4, !dbg !3942
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #12, !dbg !3943
  br label %28, !dbg !3944

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !3918
  ret i32 %29, !dbg !3945
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #4 !dbg !3946 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !3950, metadata !DIExpression()), !dbg !3951
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !3952
  br i1 %2, label %27, label %3, !dbg !3954

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !3955
  %5 = load i8*, i8** %4, align 4, !dbg !3955
  %6 = icmp eq i8* %5, null, !dbg !3957
  br i1 %6, label %27, label %7, !dbg !3958

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !3959
  %9 = load i32, i32* %8, align 4, !dbg !3959
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !3961
  %11 = load i32, i32* %10, align 4, !dbg !3961
  %12 = icmp ult i32 %9, %11, !dbg !3962
  br i1 %12, label %27, label %13, !dbg !3963

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !3964
  %15 = load i32, i32* %14, align 4, !dbg !3964
  %16 = icmp ult i32 %9, %15, !dbg !3966
  br i1 %16, label %27, label %17, !dbg !3967

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !3968
  %19 = load i8*, i8** %18, align 4, !dbg !3968
  %20 = icmp eq i8* %19, null, !dbg !3970
  br i1 %20, label %27, label %21, !dbg !3971

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !3972
  %23 = load i32, i32* %22, align 4, !dbg !3972
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !3974
  %25 = load i32, i32* %24, align 4, !dbg !3974
  %26 = icmp uge i32 %23, %25, !dbg !3975
  br label %27, !dbg !3976

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !3951
  ret i1 %28, !dbg !3977
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !3978 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3982, metadata !DIExpression()), !dbg !3984
  %2 = tail call i32 @top_mcu_freq_get() #12, !dbg !3985
  %3 = udiv i32 %2, 1000000, !dbg !3986
  call void @llvm.dbg.value(metadata i32 %3, metadata !3983, metadata !DIExpression()), !dbg !3984
  %4 = mul i32 %3, %0, !dbg !3987
  ret i32 %4, !dbg !3988
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3989 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3991, metadata !DIExpression()), !dbg !3993
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3994
  br i1 %2, label %3, label %8, !dbg !3996

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !3997
  %5 = icmp eq i32 %0, 1, !dbg !3997
  %6 = select i1 %5, i32 1, i32 2, !dbg !3997
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3997
  call void @llvm.dbg.value(metadata i32 %7, metadata !3992, metadata !DIExpression()), !dbg !3993
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #12, !dbg !3998
  br label %8, !dbg !3999

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3993
  ret i32 %9, !dbg !4000
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !4001 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4005, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8 %1, metadata !4006, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8 %2, metadata !4007, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8 %3, metadata !4008, metadata !DIExpression()), !dbg !4010
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !4011
  br i1 %5, label %6, label %11, !dbg !4013

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4014
  %8 = icmp eq i32 %0, 1, !dbg !4014
  %9 = select i1 %8, i32 1, i32 2, !dbg !4014
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %10, metadata !4009, metadata !DIExpression()), !dbg !4010
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #12, !dbg !4015
  br label %11, !dbg !4016

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4010
  ret i32 %12, !dbg !4017
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4018 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4020, metadata !DIExpression()), !dbg !4022
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !4023
  br i1 %2, label %3, label %8, !dbg !4025

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4026
  %5 = icmp eq i32 %0, 1, !dbg !4026
  %6 = select i1 %5, i32 1, i32 2, !dbg !4026
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4026
  call void @llvm.dbg.value(metadata i32 %7, metadata !4021, metadata !DIExpression()), !dbg !4022
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #12, !dbg !4027
  br label %8, !dbg !4028

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4022
  ret i32 %9, !dbg !4029
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4030 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4034, metadata !DIExpression()), !dbg !4036
  call void @llvm.dbg.value(metadata i32 %1, metadata !4035, metadata !DIExpression()), !dbg !4036
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !4037
  br i1 %3, label %4, label %8, !dbg !4039

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4040
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #11, !dbg !4042
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #12, !dbg !4042
  br label %8, !dbg !4043

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4036
  ret i32 %9, !dbg !4043
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !4044 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4048, metadata !DIExpression()), !dbg !4049
  %2 = trunc i32 %0 to i8, !dbg !4050
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #12, !dbg !4051
  ret i32 %0, !dbg !4052
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #10 !dbg !4053 {
  tail call fastcc void @SystemClock_Config() #11, !dbg !4054
  tail call fastcc void @prvSetupHardware() #11, !dbg !4055
  tail call void asm sideeffect "cpsie i", "~{memory}"() #13, !dbg !4056, !srcloc !4059
  tail call void asm sideeffect "cpsie f", "~{memory}"() #13, !dbg !4060, !srcloc !4063
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #12, !dbg !4064
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #12, !dbg !4065
  tail call fastcc void @gpio_configure_pull_state_example() #11, !dbg !4066
  br label %3, !dbg !4067

3:                                                ; preds = %3, %0
  br label %3, !dbg !4068, !llvm.loop !4071
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !4074 {
  tail call void @top_xtal_init() #12, !dbg !4075
  ret void, !dbg !4076
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !4077 {
  tail call fastcc void @log_uart_init() #11, !dbg !4078
  ret void, !dbg !4079
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc void @gpio_configure_pull_state_example() unnamed_addr #3 !dbg !4080 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*, !dbg !4086
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !4086
  %4 = bitcast i32* %2 to i8*, !dbg !4087
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13, !dbg !4087
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)) #12, !dbg !4088
  %6 = tail call i32 @hal_gpio_init(i32 noundef 33) #12, !dbg !4089
  call void @llvm.dbg.value(metadata i32 %6, metadata !4084, metadata !DIExpression()), !dbg !4090
  %7 = icmp eq i32 %6, 0, !dbg !4091
  br i1 %7, label %11, label %8, !dbg !4093

8:                                                ; preds = %0
  %9 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0)) #12, !dbg !4094
  %10 = tail call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4096
  br label %61, !dbg !4097

11:                                               ; preds = %0
  %12 = tail call i32 @hal_pinmux_set_function(i32 noundef 33, i8 noundef zeroext 8) #12, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %12, metadata !4085, metadata !DIExpression()), !dbg !4090
  %13 = icmp eq i32 %12, 0, !dbg !4099
  br i1 %13, label %17, label %14, !dbg !4101

14:                                               ; preds = %11
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)) #12, !dbg !4102
  %16 = tail call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4104
  br label %61, !dbg !4105

17:                                               ; preds = %11
  %18 = tail call i32 @hal_gpio_set_direction(i32 noundef 33, i32 noundef 0) #12, !dbg !4106
  call void @llvm.dbg.value(metadata i32 %18, metadata !4084, metadata !DIExpression()), !dbg !4090
  %19 = icmp eq i32 %18, 0, !dbg !4107
  br i1 %19, label %23, label %20, !dbg !4109

20:                                               ; preds = %17
  %21 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5.6, i32 0, i32 0)) #12, !dbg !4110
  %22 = tail call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4112
  br label %61, !dbg !4113

23:                                               ; preds = %17
  %24 = tail call i32 @hal_gpio_pull_up(i32 noundef 33) #12, !dbg !4114
  call void @llvm.dbg.value(metadata i32 %24, metadata !4084, metadata !DIExpression()), !dbg !4090
  %25 = icmp eq i32 %24, 0, !dbg !4115
  br i1 %25, label %29, label %26, !dbg !4117

26:                                               ; preds = %23
  %27 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0)) #12, !dbg !4118
  %28 = tail call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4120
  br label %61, !dbg !4121

29:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32* %1, metadata !4082, metadata !DIExpression(DW_OP_deref)), !dbg !4090
  %30 = call i32 @hal_gpio_get_input(i32 noundef 33, i32* noundef nonnull %1) #12, !dbg !4122
  call void @llvm.dbg.value(metadata i32 %30, metadata !4084, metadata !DIExpression()), !dbg !4090
  %31 = icmp eq i32 %30, 0, !dbg !4123
  br i1 %31, label %35, label %32, !dbg !4125

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !4126
  %34 = call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4128
  br label %61, !dbg !4129

35:                                               ; preds = %29
  %36 = call i32 @hal_gpio_pull_down(i32 noundef 33) #12, !dbg !4130
  call void @llvm.dbg.value(metadata i32 %36, metadata !4084, metadata !DIExpression()), !dbg !4090
  %37 = icmp eq i32 %36, 0, !dbg !4131
  br i1 %37, label %41, label %38, !dbg !4133

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #12, !dbg !4134
  %40 = call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4136
  br label %61, !dbg !4137

41:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32* %2, metadata !4083, metadata !DIExpression(DW_OP_deref)), !dbg !4090
  %42 = call i32 @hal_gpio_get_input(i32 noundef 33, i32* noundef nonnull %2) #12, !dbg !4138
  call void @llvm.dbg.value(metadata i32 %42, metadata !4084, metadata !DIExpression()), !dbg !4090
  %43 = icmp eq i32 %42, 0, !dbg !4139
  br i1 %43, label %47, label %44, !dbg !4141

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !4142
  %46 = call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4144
  br label %61, !dbg !4145

47:                                               ; preds = %41
  %48 = load i32, i32* %2, align 4, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %48, metadata !4083, metadata !DIExpression()), !dbg !4090
  %49 = icmp eq i32 %48, 0, !dbg !4148
  %50 = load i32, i32* %1, align 4
  call void @llvm.dbg.value(metadata i32 %50, metadata !4082, metadata !DIExpression()), !dbg !4090
  %51 = icmp eq i32 %50, 1
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4149
  %53 = select i1 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0)
  %54 = call i32 (i8*, ...) @printf(i8* noundef %53) #12, !dbg !4150
  %55 = call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4151
  call void @llvm.dbg.value(metadata i32 %55, metadata !4084, metadata !DIExpression()), !dbg !4090
  %56 = icmp eq i32 %55, 0, !dbg !4152
  br i1 %56, label %59, label %57, !dbg !4154

57:                                               ; preds = %47
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0)) #12, !dbg !4155
  br label %61, !dbg !4157

59:                                               ; preds = %47
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i32 0, i32 0)) #12, !dbg !4158
  br label %61, !dbg !4159

61:                                               ; preds = %59, %57, %44, %38, %32, %26, %20, %14, %8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13, !dbg !4159
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !4159
  ret void, !dbg !4159
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #3 !dbg !4160 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4170
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13, !dbg !4170
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4162, metadata !DIExpression()), !dbg !4171
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #12, !dbg !4172
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #12, !dbg !4173
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #12, !dbg !4174
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #12, !dbg !4175
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4176
  store i32 9, i32* %7, align 4, !dbg !4177
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4178
  store i32 3, i32* %8, align 4, !dbg !4179
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4180
  store i32 0, i32* %9, align 4, !dbg !4181
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4182
  store i32 0, i32* %10, align 4, !dbg !4183
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #12, !dbg !4184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13, !dbg !4185
  ret void, !dbg !4185
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !4186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4188, metadata !DIExpression()), !dbg !4190
  %2 = add i32 %0, -1, !dbg !4191
  %3 = icmp ugt i32 %2, 16777215, !dbg !4193
  br i1 %3, label %8, label %4, !dbg !4194

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4195
  call void @llvm.dbg.value(metadata i32 %5, metadata !4189, metadata !DIExpression()), !dbg !4190
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4196
  %7 = and i32 %6, -4, !dbg !4196
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4196
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4197
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4198
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4199
  br label %8, !dbg !4200

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4190
  ret i32 %9, !dbg !4201
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !4202 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4203
  ret void, !dbg !4204
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !4205 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4206
  ret i32 %1, !dbg !4207
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !4208 {
  %1 = tail call i32 @top_mcu_freq_get() #12, !dbg !4209
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4210
  ret void, !dbg !4211
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !4212 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4213
  %2 = or i32 %1, 15728640, !dbg !4213
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4213
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4214
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4215
  %4 = or i32 %3, 458752, !dbg !4215
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4215
  ret void, !dbg !4216
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !4217 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4218
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4219
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4220
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4221
  store volatile i32 270950400, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !4222
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4223
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4224
  ret void, !dbg !4225
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !4226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4228, metadata !DIExpression()), !dbg !4229
  ret i32 0, !dbg !4230
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !4231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4281, metadata !DIExpression()), !dbg !4283
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !4282, metadata !DIExpression()), !dbg !4283
  ret i32 0, !dbg !4284
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !4285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4287, metadata !DIExpression()), !dbg !4288
  ret i32 1, !dbg !4289
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4290 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4294, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i32 %1, metadata !4295, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.value(metadata i32 %2, metadata !4296, metadata !DIExpression()), !dbg !4297
  ret i32 0, !dbg !4298
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4303, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 %1, metadata !4304, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 %2, metadata !4305, metadata !DIExpression()), !dbg !4306
  ret i32 -1, !dbg !4307
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4308 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4312, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i8* %1, metadata !4313, metadata !DIExpression()), !dbg !4315
  call void @llvm.dbg.value(metadata i32 %2, metadata !4314, metadata !DIExpression()), !dbg !4315
  ret i32 0, !dbg !4316
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !4317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4319, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i8* %1, metadata !4320, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 %2, metadata !4321, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i32 0, metadata !4322, metadata !DIExpression()), !dbg !4323
  %4 = icmp sgt i32 %2, 0, !dbg !4324
  br i1 %4, label %5, label %14, !dbg !4327

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4322, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i8* %7, metadata !4320, metadata !DIExpression()), !dbg !4323
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !4328
  call void @llvm.dbg.value(metadata i8* %8, metadata !4320, metadata !DIExpression()), !dbg !4323
  %9 = load i8, i8* %7, align 1, !dbg !4330
  %10 = zext i8 %9 to i32, !dbg !4330
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #12, !dbg !4331
  %12 = add nuw nsw i32 %6, 1, !dbg !4332
  call void @llvm.dbg.value(metadata i32 %12, metadata !4322, metadata !DIExpression()), !dbg !4323
  %13 = icmp eq i32 %12, %2, !dbg !4324
  br i1 %13, label %14, label %5, !dbg !4327, !llvm.loop !4333

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !4335
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !457 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !660, metadata !DIExpression()), !dbg !4336
  call void @llvm.dbg.value(metadata i32 %1, metadata !661, metadata !DIExpression()), !dbg !4336
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #13, !dbg !4337, !srcloc !4338
  call void @llvm.dbg.value(metadata i8* %3, metadata !663, metadata !DIExpression()), !dbg !4336
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !4339
  %5 = icmp eq i8* %4, null, !dbg !4341
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !4342
  call void @llvm.dbg.value(metadata i8* %6, metadata !662, metadata !DIExpression()), !dbg !4336
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !4343
  %8 = icmp ult i8* %3, %7, !dbg !4345
  %9 = xor i1 %8, true, !dbg !4346
  %10 = or i1 %5, %9, !dbg !4346
  br i1 %10, label %11, label %13, !dbg !4346

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !4347
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !4346
  br label %13, !dbg !4346

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !4347
  ret i8* %14, !dbg !4346
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #10 !dbg !4348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4350, metadata !DIExpression()), !dbg !4351
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #12, !dbg !4352
  br label %3, !dbg !4353

3:                                                ; preds = %1, %3
  br label %3, !dbg !4353, !llvm.loop !4354
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4360, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i32 %1, metadata !4361, metadata !DIExpression()), !dbg !4362
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.14, i32 0, i32 0), i32 noundef %1) #12, !dbg !4363
  ret i32 -1, !dbg !4364
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !4365 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.15, i32 0, i32 0)) #12, !dbg !4370
  ret i32 0, !dbg !4371
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
attributes #10 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { nobuiltin optsize "no-builtins" }
attributes #12 = { nobuiltin nounwind optsize "no-builtins" }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!683, !687, !2, !768, !813, !67, !82, !816, !120, !818, !272, !884, !387, !655, !666}
!llvm.ident = !{!887, !887, !887, !887, !887, !887, !887, !887, !887, !887, !887, !887, !887, !887, !887}
!llvm.module.flags = !{!888, !889, !890, !891, !892, !893, !894, !895, !896}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gpio_bakup_table", scope: !2, file: !3, line: 62, type: !53, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !52, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!4 = !{!5, !37, !42}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 55, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!9 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!10 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!11 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!12 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!13 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!14 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!15 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!16 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!17 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!18 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!19 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!20 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!21 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!22 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!23 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!24 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!25 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!26 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!27 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!28 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!29 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!30 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!31 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!32 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!33 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!34 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!35 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!36 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 57, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "eDirection_IN", value: 0)
!41 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 1209, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!46 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !51, line: 116, baseType: !7)
!51 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!52 = !{!0}
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1408, elements: !63)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_backup_restore_t", file: !3, line: 60, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 57, size: 64, elements: !56)
!56 = !{!57, !62}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reg_data", scope: !55, file: !3, line: 58, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !59, line: 48, baseType: !60)
!59 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_stdint.h", directory: "/home/mjshen/RTOSExploration")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !61, line: 79, baseType: !7)
!61 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/machine/_default_types.h", directory: "/home/mjshen/RTOSExploration")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reg_addr", scope: !55, file: !3, line: 59, baseType: !58, size: 32, offset: 32)
!63 = !{!64}
!64 = !DISubrange(count: 22)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !67, file: !68, line: 43, type: !58, isLocal: true, isDefinition: true)
!67 = distinct !DICompileUnit(language: DW_LANG_C99, file: !68, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !69, globals: !77, splitDebugInlining: false, nameTableKind: None)
!68 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!69 = !{!70, !72, !73, !75}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !51, line: 62, baseType: !7)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!77 = !{!65, !78}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "gCpuFrequency", scope: !67, file: !68, line: 44, type: !58, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "gUartClkFreq", scope: !82, file: !83, line: 54, type: !58, isLocal: false, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !84, retainedTypes: !108, globals: !117, splitDebugInlining: false, nameTableKind: None)
!83 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!84 = !{!85, !91}
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 71, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "UART_PORT0", value: 0)
!89 = !DIEnumerator(name: "UART_PORT1", value: 1)
!90 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 129, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!94 = !DIEnumerator(name: "VDMA_I2S_TX_CH", value: 12)
!95 = !DIEnumerator(name: "VDMA_I2S_RX_CH", value: 13)
!96 = !DIEnumerator(name: "VDMA_UART1TX_CH", value: 14)
!97 = !DIEnumerator(name: "VDMA_UART1RX_CH", value: 15)
!98 = !DIEnumerator(name: "VDMA_UART2TX_CH", value: 16)
!99 = !DIEnumerator(name: "VDMA_UART2RX_CH", value: 17)
!100 = !DIEnumerator(name: "VDMA_BTIF_TX_CH", value: 18)
!101 = !DIEnumerator(name: "VDMA_BTIF_RX_CH", value: 19)
!102 = !DIEnumerator(name: "VDMA_USB_EP2O_CH", value: 20)
!103 = !DIEnumerator(name: "VDMA_USB_EP3I_CH", value: 21)
!104 = !DIEnumerator(name: "VDMA_USB_EP3O_CH", value: 22)
!105 = !DIEnumerator(name: "VDMA_USB_EP4I_CH", value: 23)
!106 = !DIEnumerator(name: "VDMA_USB_EP4O_CH", value: 24)
!107 = !DIEnumerator(name: "VDMA_ADC_RX_CH", value: 25)
!108 = !{!70, !58, !109, !111, !113, !115, !72}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint16", file: !51, line: 113, baseType: !112)
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !51, line: 59, baseType: !114)
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!117 = !{!80}
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !120, file: !121, line: 53, type: !259, isLocal: false, isDefinition: true)
!120 = distinct !DICompileUnit(language: DW_LANG_C99, file: !121, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !122, retainedTypes: !177, globals: !258, splitDebugInlining: false, nameTableKind: None)
!121 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!122 = !{!123, !132}
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 152, baseType: !125, size: 32, elements: !126)
!124 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!128 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!129 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!130 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!131 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !133, line: 47, baseType: !125, size: 32, elements: !134)
!133 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!135 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!136 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!137 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!138 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!139 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!140 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!141 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!142 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!143 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!144 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!145 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!146 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!147 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!148 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!149 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!150 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!151 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!152 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!153 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!154 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!155 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!156 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!157 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!158 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!159 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!160 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!161 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!162 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!163 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!164 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!165 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!166 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!167 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!168 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!169 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!170 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!171 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!172 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!173 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!174 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!175 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!176 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!177 = !{!178, !180, !58, !181, !183, !219}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !133, line: 97, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !133, line: 95, baseType: !132)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !59, line: 44, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !61, line: 77, baseType: !125)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !185, line: 378, baseType: !186)
!185 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 363, size: 28704, elements: !187)
!187 = !{!188, !192, !196, !197, !198, !199, !200, !201, !202, !203, !207, !214, !218}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !186, file: !185, line: 365, baseType: !189, size: 256)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !186, file: !185, line: 366, baseType: !193, size: 768, offset: 256)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 768, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !186, file: !185, line: 367, baseType: !189, size: 256, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !186, file: !185, line: 368, baseType: !193, size: 768, offset: 1280)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !186, file: !185, line: 369, baseType: !189, size: 256, offset: 2048)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !186, file: !185, line: 370, baseType: !193, size: 768, offset: 2304)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !186, file: !185, line: 371, baseType: !189, size: 256, offset: 3072)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !186, file: !185, line: 372, baseType: !193, size: 768, offset: 3328)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !186, file: !185, line: 373, baseType: !189, size: 256, offset: 4096)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !186, file: !185, line: 374, baseType: !204, size: 1792, offset: 4352)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1792, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 56)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !186, file: !185, line: 375, baseType: !208, size: 1920, offset: 6144)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 1920, elements: !212)
!209 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !59, line: 24, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !61, line: 43, baseType: !114)
!212 = !{!213}
!213 = !DISubrange(count: 240)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !186, file: !185, line: 376, baseType: !215, size: 20608, offset: 8064)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 20608, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 644)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !186, file: !185, line: 377, baseType: !74, size: 32, offset: 28672)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !185, line: 418, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 395, size: 1120, elements: !222)
!222 = !{!223, !225, !226, !227, !228, !229, !230, !234, !235, !236, !237, !238, !239, !240, !241, !245, !246, !247, !251, !255, !257}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !221, file: !185, line: 397, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !221, file: !185, line: 398, baseType: !74, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !221, file: !185, line: 399, baseType: !74, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !221, file: !185, line: 400, baseType: !74, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !221, file: !185, line: 401, baseType: !74, size: 32, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !221, file: !185, line: 402, baseType: !74, size: 32, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !221, file: !185, line: 403, baseType: !231, size: 96, offset: 192)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 96, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 12)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !221, file: !185, line: 404, baseType: !74, size: 32, offset: 288)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !221, file: !185, line: 405, baseType: !74, size: 32, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !221, file: !185, line: 406, baseType: !74, size: 32, offset: 352)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !221, file: !185, line: 407, baseType: !74, size: 32, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !221, file: !185, line: 408, baseType: !74, size: 32, offset: 416)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !221, file: !185, line: 409, baseType: !74, size: 32, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !221, file: !185, line: 410, baseType: !74, size: 32, offset: 480)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !221, file: !185, line: 411, baseType: !242, size: 64, offset: 512)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 64, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 2)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !221, file: !185, line: 412, baseType: !224, size: 32, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !221, file: !185, line: 413, baseType: !224, size: 32, offset: 608)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !221, file: !185, line: 414, baseType: !248, size: 128, offset: 640)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 128, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 4)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !221, file: !185, line: 415, baseType: !252, size: 160, offset: 768)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 160, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 5)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !221, file: !185, line: 416, baseType: !256, size: 160, offset: 928)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, elements: !253)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !221, file: !185, line: 417, baseType: !74, size: 32, offset: 1088)
!258 = !{!118}
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 6144, elements: !268)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !121, line: 50, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !121, line: 47, size: 64, elements: !262)
!262 = !{!263, !267}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !261, file: !121, line: 48, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !178}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !261, file: !121, line: 49, baseType: !58, size: 32, offset: 32)
!268 = !{!269}
!269 = !DISubrange(count: 96)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !272, file: !273, line: 77, type: !342, isLocal: true, isDefinition: true)
!272 = distinct !DICompileUnit(language: DW_LANG_C99, file: !273, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !274, retainedTypes: !325, globals: !327, splitDebugInlining: false, nameTableKind: None)
!273 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!274 = !{!275, !283, !289, !305, !311, !315, !85, !91, !320}
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 345, baseType: !125, size: 32, elements: !277)
!276 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!279 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!280 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!281 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!282 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !284, line: 109, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!285 = !{!286, !287, !288}
!286 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!287 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!288 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 302, baseType: !7, size: 32, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304}
!291 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!292 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!293 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!294 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!295 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!296 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!297 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!298 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!299 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!300 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!301 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!302 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!303 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!304 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 321, baseType: !7, size: 32, elements: !306)
!306 = !{!307, !308, !309, !310}
!307 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!308 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!309 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!310 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 330, baseType: !7, size: 32, elements: !312)
!312 = !{!313, !314}
!313 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!314 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 337, baseType: !7, size: 32, elements: !316)
!316 = !{!317, !318, !319}
!317 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!318 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!319 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!320 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 355, baseType: !125, size: 32, elements: !321)
!321 = !{!322, !323, !324}
!322 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!323 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!324 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!325 = !{!7, !180, !114, !326, !210}
!326 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!327 = !{!270, !328}
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "func_tbl", scope: !330, file: !273, line: 536, type: !340, isLocal: true, isDefinition: true)
!330 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !273, file: !273, line: 534, type: !331, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !338)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !337}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !92, line: 197, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 32)
!335 = !DISubroutineType(types: !336)
!336 = !{null}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !284, line: 113, baseType: !283)
!338 = !{!339}
!339 = !DILocalVariable(name: "uart_port", arg: 1, scope: !330, file: !273, line: 534, type: !337)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 64, elements: !243)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 1024, elements: !243)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !273, line: 75, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 68, size: 512, elements: !345)
!345 = !{!346, !348, !360, !361, !372, !373}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !344, file: !273, line: 69, baseType: !347, size: 8)
!347 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !344, file: !273, line: 70, baseType: !349, size: 128, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !276, line: 378, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 373, size: 128, elements: !351)
!351 = !{!352, !354, !356, !358}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !350, file: !276, line: 374, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !276, line: 317, baseType: !289)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !350, file: !276, line: 375, baseType: !355, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !276, line: 326, baseType: !305)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !350, file: !276, line: 376, baseType: !357, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !276, line: 333, baseType: !311)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !350, file: !276, line: 377, baseType: !359, size: 32, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !276, line: 341, baseType: !315)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !344, file: !273, line: 71, baseType: !347, size: 8, offset: 160)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !344, file: !273, line: 72, baseType: !362, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !273, line: 66, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 63, size: 64, elements: !364)
!364 = !{!365, !371}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !363, file: !273, line: 64, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !276, line: 410, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !370, !180}
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !276, line: 359, baseType: !320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !363, file: !273, line: 65, baseType: !180, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !344, file: !273, line: 73, baseType: !347, size: 8, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !344, file: !273, line: 74, baseType: !374, size: 224, offset: 288)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !276, line: 390, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 382, size: 224, elements: !376)
!376 = !{!377, !379, !380, !381, !382, !383, !384}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !375, file: !276, line: 383, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !375, file: !276, line: 384, baseType: !58, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !375, file: !276, line: 385, baseType: !58, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !375, file: !276, line: 386, baseType: !378, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !375, file: !276, line: 387, baseType: !58, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !375, file: !276, line: 388, baseType: !58, size: 32, offset: 160)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !375, file: !276, line: 389, baseType: !58, size: 32, offset: 192)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !387, file: !388, line: 59, type: !58, isLocal: false, isDefinition: true)
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !389, globals: !452, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!389 = !{!390, !398, !423}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !185, line: 656, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 650, size: 128, elements: !393)
!393 = !{!394, !395, !396, !397}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !392, file: !185, line: 652, baseType: !74, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !392, file: !185, line: 653, baseType: !74, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !392, file: !185, line: 654, baseType: !74, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !392, file: !185, line: 655, baseType: !224, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !185, line: 418, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 395, size: 1120, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !400, file: !185, line: 397, baseType: !224, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !400, file: !185, line: 398, baseType: !74, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !400, file: !185, line: 399, baseType: !74, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !400, file: !185, line: 400, baseType: !74, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !400, file: !185, line: 401, baseType: !74, size: 32, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !400, file: !185, line: 402, baseType: !74, size: 32, offset: 160)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !400, file: !185, line: 403, baseType: !231, size: 96, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !400, file: !185, line: 404, baseType: !74, size: 32, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !400, file: !185, line: 405, baseType: !74, size: 32, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !400, file: !185, line: 406, baseType: !74, size: 32, offset: 352)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !400, file: !185, line: 407, baseType: !74, size: 32, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !400, file: !185, line: 408, baseType: !74, size: 32, offset: 416)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !400, file: !185, line: 409, baseType: !74, size: 32, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !400, file: !185, line: 410, baseType: !74, size: 32, offset: 480)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !400, file: !185, line: 411, baseType: !242, size: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !400, file: !185, line: 412, baseType: !224, size: 32, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !400, file: !185, line: 413, baseType: !224, size: 32, offset: 608)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !400, file: !185, line: 414, baseType: !248, size: 128, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !400, file: !185, line: 415, baseType: !252, size: 160, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !400, file: !185, line: 416, baseType: !256, size: 160, offset: 928)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !400, file: !185, line: 417, baseType: !74, size: 32, offset: 1088)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !425, line: 72, baseType: !426)
!425 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !425, line: 56, size: 525312, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !442, !443, !447, !451}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !426, file: !425, line: 57, baseType: !74, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !426, file: !425, line: 58, baseType: !74, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !426, file: !425, line: 59, baseType: !74, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !426, file: !425, line: 60, baseType: !74, size: 32, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !426, file: !425, line: 61, baseType: !74, size: 32, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !426, file: !425, line: 62, baseType: !74, size: 32, offset: 160)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !426, file: !425, line: 63, baseType: !74, size: 32, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !426, file: !425, line: 64, baseType: !74, size: 32, offset: 224)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !426, file: !425, line: 65, baseType: !74, size: 32, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !426, file: !425, line: 66, baseType: !74, size: 32, offset: 288)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !426, file: !425, line: 67, baseType: !439, size: 32, offset: 320)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 1)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !426, file: !425, line: 68, baseType: !74, size: 32, offset: 352)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !426, file: !425, line: 69, baseType: !444, size: 523904, offset: 384)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 523904, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 16372)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !426, file: !425, line: 70, baseType: !448, size: 512, offset: 524288)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 512, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 16)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !426, file: !425, line: 71, baseType: !448, size: 512, offset: 524800)
!452 = !{!385, !453}
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !387, file: !388, line: 61, type: !74, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(name: "heap_end", scope: !457, file: !458, line: 66, type: !463, isLocal: true, isDefinition: true)
!457 = distinct !DISubprogram(name: "_sbrk_r", scope: !458, file: !458, line: 63, type: !459, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !659)
!458 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !464, !654}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !462, line: 123, baseType: !463)
!462 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !466, line: 377, size: 1920, elements: !467)
!466 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!467 = !{!468, !469, !543, !544, !545, !546, !547, !548, !549, !552, !573, !577, !578, !579, !580, !590, !603, !604, !609, !628, !629, !636, !637, !653}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !465, file: !466, line: 381, baseType: !125, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !465, file: !466, line: 386, baseType: !470, size: 32, offset: 32)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !466, line: 292, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !466, line: 186, size: 832, elements: !473)
!473 = !{!474, !476, !477, !478, !480, !481, !486, !487, !488, !489, !493, !499, !506, !510, !511, !512, !513, !517, !519, !520, !521, !523, !529, !542}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !472, file: !466, line: 187, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !472, file: !466, line: 188, baseType: !125, size: 32, offset: 32)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !472, file: !466, line: 189, baseType: !125, size: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !472, file: !466, line: 190, baseType: !479, size: 16, offset: 96)
!479 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !472, file: !466, line: 191, baseType: !479, size: 16, offset: 112)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !472, file: !466, line: 192, baseType: !482, size: 64, offset: 128)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !466, line: 122, size: 64, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !482, file: !466, line: 123, baseType: !475, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !482, file: !466, line: 124, baseType: !125, size: 32, offset: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !472, file: !466, line: 193, baseType: !125, size: 32, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !472, file: !466, line: 196, baseType: !464, size: 32, offset: 224)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !472, file: !466, line: 200, baseType: !180, size: 32, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !472, file: !466, line: 202, baseType: !490, size: 32, offset: 288)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 32)
!491 = !DISubroutineType(types: !492)
!492 = !{!125, !464, !180, !463, !125}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !472, file: !466, line: 204, baseType: !494, size: 32, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 32)
!495 = !DISubroutineType(types: !496)
!496 = !{!125, !464, !180, !497, !125}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !472, file: !466, line: 207, baseType: !500, size: 32, offset: 352)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 32)
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !464, !180, !503, !125}
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !504, line: 116, baseType: !505)
!504 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!505 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !472, file: !466, line: 208, baseType: !507, size: 32, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 32)
!508 = !DISubroutineType(types: !509)
!509 = !{!125, !464, !180}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !472, file: !466, line: 211, baseType: !482, size: 64, offset: 416)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !472, file: !466, line: 212, baseType: !475, size: 32, offset: 480)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !472, file: !466, line: 213, baseType: !125, size: 32, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !472, file: !466, line: 216, baseType: !514, size: 24, offset: 544)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 24, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 3)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !472, file: !466, line: 217, baseType: !518, size: 8, offset: 568)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 8, elements: !440)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !472, file: !466, line: 220, baseType: !482, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !472, file: !466, line: 223, baseType: !125, size: 32, offset: 640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !472, file: !466, line: 224, baseType: !522, size: 32, offset: 672)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !504, line: 46, baseType: !505)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !472, file: !466, line: 231, baseType: !524, size: 32, offset: 704)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !466, line: 35, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !526, line: 34, baseType: !527)
!526 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 32)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !526, line: 33, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !472, file: !466, line: 233, baseType: !530, size: 64, offset: 736)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !504, line: 170, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 162, size: 64, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !531, file: !504, line: 164, baseType: !125, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !531, file: !504, line: 169, baseType: !535, size: 32, offset: 32)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !504, line: 165, size: 32, elements: !536)
!536 = !{!537, !540}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !535, file: !504, line: 167, baseType: !538, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !539, line: 116, baseType: !125)
!539 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !535, file: !504, line: 168, baseType: !541, size: 32)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 32, elements: !249)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !472, file: !466, line: 234, baseType: !125, size: 32, offset: 800)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !465, file: !466, line: 386, baseType: !470, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !465, file: !466, line: 386, baseType: !470, size: 32, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !465, file: !466, line: 388, baseType: !125, size: 32, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !465, file: !466, line: 390, baseType: !463, size: 32, offset: 160)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !465, file: !466, line: 392, baseType: !125, size: 32, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !465, file: !466, line: 394, baseType: !125, size: 32, offset: 224)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !465, file: !466, line: 395, baseType: !550, size: 32, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 32)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !466, line: 45, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !465, file: !466, line: 397, baseType: !553, size: 32, offset: 288)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 32)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !466, line: 349, size: 128, elements: !555)
!555 = !{!556, !569, !570, !571}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !554, file: !466, line: 352, baseType: !557, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !466, line: 52, size: 192, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !558, file: !466, line: 54, baseType: !557, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !558, file: !466, line: 55, baseType: !125, size: 32, offset: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !558, file: !466, line: 55, baseType: !125, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !558, file: !466, line: 55, baseType: !125, size: 32, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !558, file: !466, line: 55, baseType: !125, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !558, file: !466, line: 56, baseType: !566, size: 32, offset: 160)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 32, elements: !440)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !466, line: 22, baseType: !568)
!568 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !554, file: !466, line: 353, baseType: !125, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !554, file: !466, line: 354, baseType: !557, size: 32, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !554, file: !466, line: 355, baseType: !572, size: 32, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !465, file: !466, line: 399, baseType: !574, size: 32, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 32)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !464}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !465, file: !466, line: 401, baseType: !125, size: 32, offset: 352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !465, file: !466, line: 404, baseType: !125, size: 32, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !465, file: !466, line: 405, baseType: !463, size: 32, offset: 416)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !465, file: !466, line: 407, baseType: !581, size: 32, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 32)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !466, line: 324, size: 192, elements: !583)
!583 = !{!584, !586, !587, !588}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !582, file: !466, line: 325, baseType: !585, size: 48)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 48, elements: !515)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !582, file: !466, line: 326, baseType: !585, size: 48, offset: 48)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !582, file: !466, line: 327, baseType: !112, size: 16, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !582, file: !466, line: 330, baseType: !589, size: 64, offset: 128)
!589 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !465, file: !466, line: 408, baseType: !591, size: 32, offset: 480)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 32)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !466, line: 60, size: 288, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !602}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !592, file: !466, line: 62, baseType: !125, size: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !592, file: !466, line: 63, baseType: !125, size: 32, offset: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !592, file: !466, line: 64, baseType: !125, size: 32, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !592, file: !466, line: 65, baseType: !125, size: 32, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !592, file: !466, line: 66, baseType: !125, size: 32, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !592, file: !466, line: 67, baseType: !125, size: 32, offset: 160)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !592, file: !466, line: 68, baseType: !125, size: 32, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !592, file: !466, line: 69, baseType: !125, size: 32, offset: 224)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !592, file: !466, line: 70, baseType: !125, size: 32, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !465, file: !466, line: 409, baseType: !463, size: 32, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !465, file: !466, line: 412, baseType: !605, size: 32, offset: 544)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 32)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 32)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !125}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !465, file: !466, line: 416, baseType: !610, size: 32, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 32)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !466, line: 90, size: 1120, elements: !612)
!612 = !{!613, !614, !615, !619}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !611, file: !466, line: 91, baseType: !610, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !611, file: !466, line: 92, baseType: !125, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !611, file: !466, line: 93, baseType: !616, size: 1024, offset: 64)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 1024, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !611, file: !466, line: 94, baseType: !620, size: 32, offset: 1088)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 32)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !466, line: 79, size: 2112, elements: !622)
!622 = !{!623, !625, !626, !627}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !621, file: !466, line: 80, baseType: !624, size: 1024)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 1024, elements: !617)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !621, file: !466, line: 81, baseType: !624, size: 1024, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !621, file: !466, line: 83, baseType: !567, size: 32, offset: 2048)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !621, file: !466, line: 86, baseType: !567, size: 32, offset: 2080)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !465, file: !466, line: 417, baseType: !611, size: 1120, offset: 608)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !465, file: !466, line: 420, baseType: !630, size: 96, offset: 1728)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !466, line: 296, size: 96, elements: !631)
!631 = !{!632, !634, !635}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !630, file: !466, line: 298, baseType: !633, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !630, file: !466, line: 299, baseType: !125, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !630, file: !466, line: 300, baseType: !470, size: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !465, file: !466, line: 421, baseType: !470, size: 32, offset: 1824)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !465, file: !466, line: 422, baseType: !638, size: 32, offset: 1856)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 32)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !466, line: 359, size: 640, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !647, !648, !649, !650, !651, !652}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !639, file: !466, line: 362, baseType: !463, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !639, file: !466, line: 363, baseType: !530, size: 64, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !639, file: !466, line: 364, baseType: !530, size: 64, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !639, file: !466, line: 365, baseType: !530, size: 64, offset: 160)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !639, file: !466, line: 366, baseType: !646, size: 64, offset: 224)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, elements: !190)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !639, file: !466, line: 367, baseType: !125, size: 32, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !639, file: !466, line: 368, baseType: !530, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !639, file: !466, line: 369, baseType: !530, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !639, file: !466, line: 370, baseType: !530, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !639, file: !466, line: 371, baseType: !530, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !639, file: !466, line: 372, baseType: !530, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !465, file: !466, line: 423, baseType: !463, size: 32, offset: 1888)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !539, line: 46, baseType: !7)
!655 = distinct !DICompileUnit(language: DW_LANG_C99, file: !656, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !657, globals: !658, splitDebugInlining: false, nameTableKind: None)
!656 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!657 = !{!463, !461}
!658 = !{!455}
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(name: "r", arg: 1, scope: !457, file: !458, line: 63, type: !464)
!661 = !DILocalVariable(name: "nbytes", arg: 2, scope: !457, file: !458, line: 63, type: !654)
!662 = !DILocalVariable(name: "prev_heap_end", scope: !457, file: !458, line: 67, type: !463)
!663 = !DILocalVariable(name: "stack", scope: !457, file: !458, line: 68, type: !463)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !666, file: !671, line: 4, type: !680, isLocal: false, isDefinition: true)
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !668, splitDebugInlining: false, nameTableKind: None)
!667 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!668 = !{!664, !669, !675}
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !666, file: !671, line: 5, type: !672, isLocal: false, isDefinition: true)
!671 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 88, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 11)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !666, file: !671, line: 6, type: !677, isLocal: false, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 120, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 15)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 248, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 31)
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !685, retainedTypes: !686, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!685 = !{!42}
!686 = !{!48, !50}
!687 = distinct !DICompileUnit(language: DW_LANG_C99, file: !688, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !689, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!689 = !{!690}
!690 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !691, line: 150, baseType: !7, size: 32, elements: !692)
!691 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!693 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!694 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!695 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!696 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!697 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!698 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!699 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!700 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!701 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!702 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!703 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!704 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!705 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!706 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!707 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!708 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!709 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!710 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!711 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!712 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!713 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!714 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!715 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!716 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!717 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!718 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!719 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!720 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!721 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!722 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!723 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!724 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!725 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!726 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!727 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!728 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!729 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!730 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!731 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!732 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!733 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!734 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!735 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!736 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!737 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!738 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!739 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!740 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!741 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!742 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!743 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!744 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!745 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!746 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!747 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!748 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!749 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!750 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!751 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!752 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!753 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!754 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!755 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!756 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!757 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!758 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!759 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!760 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!761 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!762 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!763 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!764 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!765 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!766 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!767 = !{!48, !72}
!768 = distinct !DICompileUnit(language: DW_LANG_C99, file: !769, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !770, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!770 = !{!771, !796}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !185, line: 418, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 395, size: 1120, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !773, file: !185, line: 397, baseType: !224, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !773, file: !185, line: 398, baseType: !74, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !773, file: !185, line: 399, baseType: !74, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !773, file: !185, line: 400, baseType: !74, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !773, file: !185, line: 401, baseType: !74, size: 32, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !773, file: !185, line: 402, baseType: !74, size: 32, offset: 160)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !773, file: !185, line: 403, baseType: !231, size: 96, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !773, file: !185, line: 404, baseType: !74, size: 32, offset: 288)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !773, file: !185, line: 405, baseType: !74, size: 32, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !773, file: !185, line: 406, baseType: !74, size: 32, offset: 352)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !773, file: !185, line: 407, baseType: !74, size: 32, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !773, file: !185, line: 408, baseType: !74, size: 32, offset: 416)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !773, file: !185, line: 409, baseType: !74, size: 32, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !773, file: !185, line: 410, baseType: !74, size: 32, offset: 480)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !773, file: !185, line: 411, baseType: !242, size: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !773, file: !185, line: 412, baseType: !224, size: 32, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !773, file: !185, line: 413, baseType: !224, size: 32, offset: 608)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !773, file: !185, line: 414, baseType: !248, size: 128, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !773, file: !185, line: 415, baseType: !252, size: 160, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !773, file: !185, line: 416, baseType: !256, size: 160, offset: 928)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !773, file: !185, line: 417, baseType: !74, size: 32, offset: 1088)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !185, line: 378, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 363, size: 28704, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !798, file: !185, line: 365, baseType: !189, size: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !798, file: !185, line: 366, baseType: !193, size: 768, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !798, file: !185, line: 367, baseType: !189, size: 256, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !798, file: !185, line: 368, baseType: !193, size: 768, offset: 1280)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !798, file: !185, line: 369, baseType: !189, size: 256, offset: 2048)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !798, file: !185, line: 370, baseType: !193, size: 768, offset: 2304)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !798, file: !185, line: 371, baseType: !189, size: 256, offset: 3072)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !798, file: !185, line: 372, baseType: !193, size: 768, offset: 3328)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !798, file: !185, line: 373, baseType: !189, size: 256, offset: 4096)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !798, file: !185, line: 374, baseType: !204, size: 1792, offset: 4352)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !798, file: !185, line: 375, baseType: !208, size: 1920, offset: 6144)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !798, file: !185, line: 376, baseType: !215, size: 20608, offset: 8064)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !798, file: !185, line: 377, baseType: !74, size: 32, offset: 28672)
!813 = distinct !DICompileUnit(language: DW_LANG_C99, file: !814, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !815, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!815 = !{!5, !690}
!816 = distinct !DICompileUnit(language: DW_LANG_C99, file: !817, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!817 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!818 = distinct !DICompileUnit(language: DW_LANG_C99, file: !819, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !820, retainedTypes: !879, splitDebugInlining: false, nameTableKind: None)
!819 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!820 = !{!821, !828, !5, !859, !865, !869, !873, !37}
!821 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !822, line: 233, baseType: !125, size: 32, elements: !823)
!822 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!823 = !{!824, !825, !826, !827}
!824 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!825 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!826 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!827 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!828 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !284, line: 249, baseType: !7, size: 32, elements: !829)
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!830 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!831 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!832 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!833 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!834 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!835 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!836 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!837 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!838 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!839 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!840 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!841 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!842 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!843 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!844 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!845 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!846 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!847 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!848 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!849 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!850 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!851 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!852 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!853 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!854 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!855 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!856 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!857 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!858 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!859 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !822, line: 224, baseType: !125, size: 32, elements: !860)
!860 = !{!861, !862, !863, !864}
!861 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!862 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!863 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!864 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!865 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !822, line: 217, baseType: !7, size: 32, elements: !866)
!866 = !{!867, !868}
!867 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!868 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!869 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !822, line: 210, baseType: !7, size: 32, elements: !870)
!870 = !{!871, !872}
!871 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!872 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!873 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !822, line: 242, baseType: !7, size: 32, elements: !874)
!874 = !{!875, !876, !877, !878}
!875 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!876 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!877 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!878 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!879 = !{!880, !180, !881, !210, !882, !883}
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !6, line: 87, baseType: !5)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !822, line: 220, baseType: !865)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !822, line: 247, baseType: !873)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !38, line: 60, baseType: !37)
!884 = distinct !DICompileUnit(language: DW_LANG_C99, file: !885, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !886, splitDebugInlining: false, nameTableKind: None)
!885 = !DIFile(filename: "../../../../../project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!886 = !{!283, !289, !305, !311, !315, !828, !865, !859, !821, !869}
!887 = !{!"Ubuntu clang version 14.0.6"}
!888 = !{i32 7, !"Dwarf Version", i32 2}
!889 = !{i32 2, !"Debug Info Version", i32 3}
!890 = !{i32 1, !"wchar_size", i32 4}
!891 = !{i32 1, !"min_enum_size", i32 4}
!892 = !{i32 1, !"branch-target-enforcement", i32 0}
!893 = !{i32 1, !"sign-return-address", i32 0}
!894 = !{i32 1, !"sign-return-address-all", i32 0}
!895 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!896 = !{i32 7, !"frame-pointer", i32 2}
!897 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !684, file: !684, line: 54, type: !898, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !901)
!898 = !DISubroutineType(types: !899)
!899 = !{!900, !72, !113}
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !51, line: 56, baseType: !125)
!901 = !{!902, !903, !904, !906}
!902 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !897, file: !684, line: 54, type: !72)
!903 = !DILocalVariable(name: "outEnable", arg: 2, scope: !897, file: !684, line: 54, type: !113)
!904 = !DILocalVariable(name: "no", scope: !897, file: !684, line: 57, type: !905)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !51, line: 60, baseType: !112)
!906 = !DILocalVariable(name: "remainder", scope: !897, file: !684, line: 58, type: !905)
!907 = !DILocation(line: 0, scope: !897)
!908 = !DILocation(line: 59, column: 19, scope: !897)
!909 = !DILocation(line: 60, column: 17, scope: !897)
!910 = !DILocation(line: 61, column: 5, scope: !897)
!911 = !DILocation(line: 65, column: 27, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !684, line: 65, column: 17)
!913 = distinct !DILexicalBlock(scope: !897, file: !684, line: 61, column: 17)
!914 = !DILocation(line: 0, scope: !912)
!915 = !DILocation(line: 65, column: 17, scope: !913)
!916 = !DILocation(line: 66, column: 21, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !684, line: 65, column: 33)
!918 = !DILocation(line: 67, column: 73, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !684, line: 66, column: 38)
!920 = distinct !DILexicalBlock(scope: !917, file: !684, line: 66, column: 21)
!921 = !DILocation(line: 67, column: 69, scope: !919)
!922 = !DILocation(line: 67, column: 66, scope: !919)
!923 = !DILocation(line: 68, column: 17, scope: !919)
!924 = !DILocation(line: 68, column: 28, scope: !920)
!925 = !DILocation(line: 69, column: 77, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !684, line: 68, column: 45)
!927 = distinct !DILexicalBlock(scope: !920, file: !684, line: 68, column: 28)
!928 = !DILocation(line: 70, column: 77, scope: !926)
!929 = !DILocation(line: 71, column: 17, scope: !926)
!930 = !DILocation(line: 72, column: 77, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !684, line: 71, column: 45)
!932 = distinct !DILexicalBlock(scope: !927, file: !684, line: 71, column: 28)
!933 = !DILocation(line: 73, column: 77, scope: !931)
!934 = !DILocation(line: 74, column: 17, scope: !931)
!935 = !DILocation(line: 75, column: 79, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !684, line: 74, column: 45)
!937 = distinct !DILexicalBlock(scope: !932, file: !684, line: 74, column: 28)
!938 = !DILocation(line: 76, column: 79, scope: !936)
!939 = !DILocation(line: 77, column: 17, scope: !936)
!940 = !DILocation(line: 78, column: 79, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !684, line: 77, column: 45)
!942 = distinct !DILexicalBlock(scope: !937, file: !684, line: 77, column: 28)
!943 = !DILocation(line: 79, column: 79, scope: !941)
!944 = !DILocation(line: 80, column: 17, scope: !941)
!945 = !DILocation(line: 81, column: 79, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !684, line: 80, column: 45)
!947 = distinct !DILexicalBlock(scope: !942, file: !684, line: 80, column: 28)
!948 = !DILocation(line: 82, column: 79, scope: !946)
!949 = !DILocation(line: 83, column: 17, scope: !946)
!950 = !DILocation(line: 85, column: 17, scope: !917)
!951 = !DILocation(line: 86, column: 13, scope: !917)
!952 = !DILocation(line: 88, column: 21, scope: !953)
!953 = distinct !DILexicalBlock(scope: !912, file: !684, line: 86, column: 20)
!954 = !DILocation(line: 89, column: 72, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !684, line: 88, column: 38)
!956 = distinct !DILexicalBlock(scope: !953, file: !684, line: 88, column: 21)
!957 = !DILocation(line: 89, column: 66, scope: !955)
!958 = !DILocation(line: 90, column: 17, scope: !955)
!959 = !DILocation(line: 90, column: 28, scope: !956)
!960 = !DILocation(line: 91, column: 77, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !684, line: 90, column: 45)
!962 = distinct !DILexicalBlock(scope: !956, file: !684, line: 90, column: 28)
!963 = !DILocation(line: 92, column: 17, scope: !961)
!964 = !DILocation(line: 93, column: 77, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !684, line: 92, column: 45)
!966 = distinct !DILexicalBlock(scope: !962, file: !684, line: 92, column: 28)
!967 = !DILocation(line: 94, column: 17, scope: !965)
!968 = !DILocation(line: 95, column: 79, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !684, line: 94, column: 45)
!970 = distinct !DILexicalBlock(scope: !966, file: !684, line: 94, column: 28)
!971 = !DILocation(line: 96, column: 17, scope: !969)
!972 = !DILocation(line: 97, column: 79, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !684, line: 96, column: 45)
!974 = distinct !DILexicalBlock(scope: !970, file: !684, line: 96, column: 28)
!975 = !DILocation(line: 98, column: 17, scope: !973)
!976 = !DILocation(line: 99, column: 79, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !684, line: 98, column: 45)
!978 = distinct !DILexicalBlock(scope: !974, file: !684, line: 98, column: 28)
!979 = !DILocation(line: 100, column: 17, scope: !977)
!980 = !DILocation(line: 103, column: 17, scope: !953)
!981 = !DILocation(line: 109, column: 27, scope: !982)
!982 = distinct !DILexicalBlock(scope: !913, file: !684, line: 109, column: 17)
!983 = !DILocation(line: 0, scope: !982)
!984 = !DILocation(line: 109, column: 17, scope: !913)
!985 = !DILocation(line: 110, column: 21, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !684, line: 109, column: 33)
!987 = !DILocation(line: 111, column: 73, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !684, line: 110, column: 36)
!989 = distinct !DILexicalBlock(scope: !986, file: !684, line: 110, column: 21)
!990 = !DILocation(line: 111, column: 69, scope: !988)
!991 = !DILocation(line: 111, column: 66, scope: !988)
!992 = !DILocation(line: 112, column: 17, scope: !988)
!993 = !DILocation(line: 113, column: 79, scope: !994)
!994 = distinct !DILexicalBlock(scope: !989, file: !684, line: 112, column: 24)
!995 = !DILocation(line: 114, column: 79, scope: !994)
!996 = !DILocation(line: 117, column: 17, scope: !986)
!997 = !DILocation(line: 118, column: 13, scope: !986)
!998 = !DILocation(line: 120, column: 21, scope: !999)
!999 = distinct !DILexicalBlock(scope: !982, file: !684, line: 118, column: 20)
!1000 = !DILocation(line: 121, column: 72, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !684, line: 120, column: 36)
!1002 = distinct !DILexicalBlock(scope: !999, file: !684, line: 120, column: 21)
!1003 = !DILocation(line: 121, column: 66, scope: !1001)
!1004 = !DILocation(line: 122, column: 17, scope: !1001)
!1005 = !DILocation(line: 123, column: 79, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !684, line: 122, column: 24)
!1007 = !DILocation(line: 126, column: 17, scope: !999)
!1008 = !DILocation(line: 133, column: 1, scope: !897)
!1009 = distinct !DISubprogram(name: "halGPO_Write", scope: !684, file: !684, line: 136, type: !898, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1010)
!1010 = !{!1011, !1012, !1013, !1014}
!1011 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1009, file: !684, line: 136, type: !72)
!1012 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1009, file: !684, line: 136, type: !113)
!1013 = !DILocalVariable(name: "no", scope: !1009, file: !684, line: 138, type: !905)
!1014 = !DILocalVariable(name: "remainder", scope: !1009, file: !684, line: 139, type: !905)
!1015 = !DILocation(line: 0, scope: !1009)
!1016 = !DILocation(line: 140, column: 19, scope: !1009)
!1017 = !DILocation(line: 141, column: 17, scope: !1009)
!1018 = !DILocation(line: 142, column: 5, scope: !1009)
!1019 = !DILocation(line: 145, column: 17, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !684, line: 145, column: 17)
!1021 = distinct !DILexicalBlock(scope: !1009, file: !684, line: 142, column: 17)
!1022 = !DILocation(line: 0, scope: !1020)
!1023 = !DILocation(line: 145, column: 17, scope: !1021)
!1024 = !DILocation(line: 146, column: 17, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !684, line: 145, column: 29)
!1026 = !DILocation(line: 147, column: 13, scope: !1025)
!1027 = !DILocation(line: 148, column: 17, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1020, file: !684, line: 147, column: 20)
!1029 = !DILocation(line: 153, column: 17, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !684, line: 153, column: 17)
!1031 = !DILocation(line: 0, scope: !1030)
!1032 = !DILocation(line: 153, column: 17, scope: !1021)
!1033 = !DILocation(line: 154, column: 17, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1030, file: !684, line: 153, column: 29)
!1035 = !DILocation(line: 155, column: 13, scope: !1034)
!1036 = !DILocation(line: 156, column: 17, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1030, file: !684, line: 155, column: 20)
!1038 = !DILocation(line: 163, column: 1, scope: !1009)
!1039 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !684, file: !684, line: 169, type: !1040, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!113, !72}
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1039, file: !684, line: 169, type: !72)
!1044 = !DILocalVariable(name: "no", scope: !1039, file: !684, line: 171, type: !905)
!1045 = !DILocalVariable(name: "remainder", scope: !1039, file: !684, line: 172, type: !905)
!1046 = !DILocalVariable(name: "dout", scope: !1039, file: !684, line: 175, type: !113)
!1047 = !DILocation(line: 0, scope: !1039)
!1048 = !DILocation(line: 173, column: 19, scope: !1039)
!1049 = !DILocation(line: 174, column: 17, scope: !1039)
!1050 = !DILocation(line: 177, column: 5, scope: !1039)
!1051 = !DILocation(line: 183, column: 13, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1039, file: !684, line: 177, column: 17)
!1053 = !DILocation(line: 0, scope: !1052)
!1054 = !DILocation(line: 187, column: 5, scope: !1039)
!1055 = !DILocation(line: 188, column: 1, scope: !1039)
!1056 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !684, file: !684, line: 189, type: !1040, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1057)
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1056, file: !684, line: 189, type: !72)
!1059 = !DILocalVariable(name: "no", scope: !1056, file: !684, line: 191, type: !905)
!1060 = !DILocalVariable(name: "remainder", scope: !1056, file: !684, line: 192, type: !905)
!1061 = !DILocalVariable(name: "din", scope: !1056, file: !684, line: 195, type: !113)
!1062 = !DILocation(line: 0, scope: !1056)
!1063 = !DILocation(line: 193, column: 19, scope: !1056)
!1064 = !DILocation(line: 194, column: 17, scope: !1056)
!1065 = !DILocation(line: 196, column: 5, scope: !1056)
!1066 = !DILocation(line: 203, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1056, file: !684, line: 196, column: 17)
!1068 = !DILocation(line: 0, scope: !1067)
!1069 = !DILocation(line: 208, column: 5, scope: !1056)
!1070 = !DILocation(line: 209, column: 1, scope: !1056)
!1071 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !684, file: !684, line: 210, type: !1040, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1072)
!1072 = !{!1073, !1074, !1075, !1076}
!1073 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1071, file: !684, line: 210, type: !72)
!1074 = !DILocalVariable(name: "no", scope: !1071, file: !684, line: 212, type: !905)
!1075 = !DILocalVariable(name: "remainder", scope: !1071, file: !684, line: 213, type: !905)
!1076 = !DILocalVariable(name: "outEnable", scope: !1071, file: !684, line: 216, type: !113)
!1077 = !DILocation(line: 0, scope: !1071)
!1078 = !DILocation(line: 214, column: 19, scope: !1071)
!1079 = !DILocation(line: 215, column: 17, scope: !1071)
!1080 = !DILocation(line: 218, column: 5, scope: !1071)
!1081 = !DILocation(line: 224, column: 13, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1071, file: !684, line: 218, column: 17)
!1083 = !DILocation(line: 0, scope: !1082)
!1084 = !DILocation(line: 228, column: 5, scope: !1071)
!1085 = !DILocation(line: 229, column: 1, scope: !1071)
!1086 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !684, file: !684, line: 232, type: !1087, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!900, !72}
!1089 = !{!1090, !1091, !1092}
!1090 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1086, file: !684, line: 232, type: !72)
!1091 = !DILocalVariable(name: "no", scope: !1086, file: !684, line: 234, type: !905)
!1092 = !DILocalVariable(name: "remainder", scope: !1086, file: !684, line: 235, type: !905)
!1093 = !DILocation(line: 0, scope: !1086)
!1094 = !DILocation(line: 236, column: 19, scope: !1086)
!1095 = !DILocation(line: 237, column: 17, scope: !1086)
!1096 = !DILocation(line: 238, column: 5, scope: !1086)
!1097 = !DILocation(line: 239, column: 5, scope: !1086)
!1098 = !DILocation(line: 241, column: 27, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !684, line: 241, column: 17)
!1100 = distinct !DILexicalBlock(scope: !1086, file: !684, line: 239, column: 17)
!1101 = !DILocation(line: 241, column: 17, scope: !1100)
!1102 = !DILocation(line: 241, column: 17, scope: !1099)
!1103 = !DILocation(line: 242, column: 17, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !684, line: 241, column: 34)
!1105 = !DILocation(line: 243, column: 13, scope: !1104)
!1106 = !DILocation(line: 243, column: 24, scope: !1099)
!1107 = !DILocation(line: 244, column: 73, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !684, line: 243, column: 41)
!1109 = distinct !DILexicalBlock(scope: !1099, file: !684, line: 243, column: 24)
!1110 = !DILocation(line: 245, column: 73, scope: !1108)
!1111 = !DILocation(line: 246, column: 13, scope: !1108)
!1112 = !DILocation(line: 247, column: 73, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !684, line: 246, column: 41)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !684, line: 246, column: 24)
!1115 = !DILocation(line: 248, column: 73, scope: !1113)
!1116 = !DILocation(line: 249, column: 13, scope: !1113)
!1117 = !DILocation(line: 250, column: 75, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !684, line: 249, column: 41)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !684, line: 249, column: 24)
!1120 = !DILocation(line: 251, column: 75, scope: !1118)
!1121 = !DILocation(line: 252, column: 13, scope: !1118)
!1122 = !DILocation(line: 253, column: 75, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !684, line: 252, column: 41)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !684, line: 252, column: 24)
!1125 = !DILocation(line: 254, column: 75, scope: !1123)
!1126 = !DILocation(line: 255, column: 13, scope: !1123)
!1127 = !DILocation(line: 256, column: 75, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !684, line: 255, column: 41)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !684, line: 255, column: 24)
!1130 = !DILocation(line: 257, column: 75, scope: !1128)
!1131 = !DILocation(line: 258, column: 13, scope: !1128)
!1132 = !DILocation(line: 261, column: 18, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1100, file: !684, line: 261, column: 17)
!1134 = !DILocation(line: 261, column: 17, scope: !1100)
!1135 = !DILocation(line: 262, column: 75, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !684, line: 261, column: 29)
!1137 = !DILocation(line: 263, column: 75, scope: !1136)
!1138 = !DILocation(line: 264, column: 13, scope: !1136)
!1139 = !DILocation(line: 265, column: 17, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1133, file: !684, line: 264, column: 20)
!1141 = !DILocation(line: 272, column: 1, scope: !1086)
!1142 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !684, file: !684, line: 359, type: !1087, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1142, file: !684, line: 359, type: !72)
!1145 = !DILocalVariable(name: "no", scope: !1142, file: !684, line: 362, type: !905)
!1146 = !DILocalVariable(name: "remainder", scope: !1142, file: !684, line: 363, type: !905)
!1147 = !DILocation(line: 0, scope: !1142)
!1148 = !DILocation(line: 364, column: 19, scope: !1142)
!1149 = !DILocation(line: 365, column: 17, scope: !1142)
!1150 = !DILocation(line: 367, column: 5, scope: !1142)
!1151 = !DILocation(line: 369, column: 27, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !684, line: 369, column: 17)
!1153 = distinct !DILexicalBlock(scope: !1142, file: !684, line: 367, column: 17)
!1154 = !DILocation(line: 369, column: 17, scope: !1153)
!1155 = !DILocation(line: 369, column: 17, scope: !1152)
!1156 = !DILocation(line: 370, column: 17, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !684, line: 369, column: 34)
!1158 = !DILocation(line: 371, column: 13, scope: !1157)
!1159 = !DILocation(line: 371, column: 24, scope: !1152)
!1160 = !DILocation(line: 372, column: 73, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !684, line: 371, column: 41)
!1162 = distinct !DILexicalBlock(scope: !1152, file: !684, line: 371, column: 24)
!1163 = !DILocation(line: 373, column: 73, scope: !1161)
!1164 = !DILocation(line: 374, column: 13, scope: !1161)
!1165 = !DILocation(line: 375, column: 73, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !684, line: 374, column: 41)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !684, line: 374, column: 24)
!1168 = !DILocation(line: 376, column: 73, scope: !1166)
!1169 = !DILocation(line: 377, column: 13, scope: !1166)
!1170 = !DILocation(line: 378, column: 75, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !684, line: 377, column: 41)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !684, line: 377, column: 24)
!1173 = !DILocation(line: 379, column: 75, scope: !1171)
!1174 = !DILocation(line: 380, column: 13, scope: !1171)
!1175 = !DILocation(line: 381, column: 75, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !684, line: 380, column: 41)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !684, line: 380, column: 24)
!1178 = !DILocation(line: 382, column: 75, scope: !1176)
!1179 = !DILocation(line: 383, column: 13, scope: !1176)
!1180 = !DILocation(line: 384, column: 75, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !684, line: 383, column: 41)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !684, line: 383, column: 24)
!1183 = !DILocation(line: 385, column: 75, scope: !1181)
!1184 = !DILocation(line: 386, column: 13, scope: !1181)
!1185 = !DILocation(line: 389, column: 18, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1153, file: !684, line: 389, column: 17)
!1187 = !DILocation(line: 389, column: 17, scope: !1153)
!1188 = !DILocation(line: 390, column: 75, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !684, line: 389, column: 29)
!1190 = !DILocation(line: 391, column: 75, scope: !1189)
!1191 = !DILocation(line: 392, column: 13, scope: !1189)
!1192 = !DILocation(line: 393, column: 17, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1186, file: !684, line: 392, column: 20)
!1194 = !DILocation(line: 401, column: 1, scope: !1142)
!1195 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !684, file: !684, line: 274, type: !1087, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1195, file: !684, line: 274, type: !72)
!1198 = !DILocalVariable(name: "no", scope: !1195, file: !684, line: 276, type: !905)
!1199 = !DILocalVariable(name: "remainder", scope: !1195, file: !684, line: 277, type: !905)
!1200 = !DILocation(line: 0, scope: !1195)
!1201 = !DILocation(line: 278, column: 19, scope: !1195)
!1202 = !DILocation(line: 279, column: 17, scope: !1195)
!1203 = !DILocation(line: 281, column: 5, scope: !1195)
!1204 = !DILocation(line: 283, column: 27, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !684, line: 283, column: 17)
!1206 = distinct !DILexicalBlock(scope: !1195, file: !684, line: 281, column: 17)
!1207 = !DILocation(line: 283, column: 17, scope: !1206)
!1208 = !DILocation(line: 283, column: 17, scope: !1205)
!1209 = !DILocation(line: 284, column: 17, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !684, line: 283, column: 34)
!1211 = !DILocation(line: 285, column: 13, scope: !1210)
!1212 = !DILocation(line: 285, column: 24, scope: !1205)
!1213 = !DILocation(line: 286, column: 73, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !684, line: 285, column: 41)
!1215 = distinct !DILexicalBlock(scope: !1205, file: !684, line: 285, column: 24)
!1216 = !DILocation(line: 287, column: 73, scope: !1214)
!1217 = !DILocation(line: 288, column: 13, scope: !1214)
!1218 = !DILocation(line: 289, column: 73, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !684, line: 288, column: 41)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !684, line: 288, column: 24)
!1221 = !DILocation(line: 290, column: 73, scope: !1219)
!1222 = !DILocation(line: 291, column: 13, scope: !1219)
!1223 = !DILocation(line: 292, column: 75, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !684, line: 291, column: 41)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !684, line: 291, column: 24)
!1226 = !DILocation(line: 293, column: 75, scope: !1224)
!1227 = !DILocation(line: 294, column: 13, scope: !1224)
!1228 = !DILocation(line: 295, column: 75, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !684, line: 294, column: 41)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !684, line: 294, column: 24)
!1231 = !DILocation(line: 296, column: 75, scope: !1229)
!1232 = !DILocation(line: 297, column: 13, scope: !1229)
!1233 = !DILocation(line: 298, column: 75, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !684, line: 297, column: 41)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !684, line: 297, column: 24)
!1236 = !DILocation(line: 299, column: 75, scope: !1234)
!1237 = !DILocation(line: 300, column: 13, scope: !1234)
!1238 = !DILocation(line: 303, column: 18, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1206, file: !684, line: 303, column: 17)
!1240 = !DILocation(line: 303, column: 17, scope: !1206)
!1241 = !DILocation(line: 304, column: 75, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !684, line: 303, column: 29)
!1243 = !DILocation(line: 305, column: 75, scope: !1242)
!1244 = !DILocation(line: 306, column: 13, scope: !1242)
!1245 = !DILocation(line: 307, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1239, file: !684, line: 306, column: 20)
!1247 = !DILocation(line: 314, column: 1, scope: !1195)
!1248 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !684, file: !684, line: 316, type: !1087, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1249)
!1249 = !{!1250, !1251, !1252}
!1250 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1248, file: !684, line: 316, type: !72)
!1251 = !DILocalVariable(name: "no", scope: !1248, file: !684, line: 318, type: !905)
!1252 = !DILocalVariable(name: "remainder", scope: !1248, file: !684, line: 319, type: !905)
!1253 = !DILocation(line: 0, scope: !1248)
!1254 = !DILocation(line: 320, column: 19, scope: !1248)
!1255 = !DILocation(line: 321, column: 17, scope: !1248)
!1256 = !DILocation(line: 322, column: 5, scope: !1248)
!1257 = !DILocation(line: 323, column: 5, scope: !1248)
!1258 = !DILocation(line: 325, column: 27, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !684, line: 325, column: 17)
!1260 = distinct !DILexicalBlock(scope: !1248, file: !684, line: 323, column: 17)
!1261 = !DILocation(line: 325, column: 17, scope: !1260)
!1262 = !DILocation(line: 325, column: 17, scope: !1259)
!1263 = !DILocation(line: 326, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !684, line: 325, column: 34)
!1265 = !DILocation(line: 327, column: 13, scope: !1264)
!1266 = !DILocation(line: 327, column: 24, scope: !1259)
!1267 = !DILocation(line: 328, column: 73, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !684, line: 327, column: 41)
!1269 = distinct !DILexicalBlock(scope: !1259, file: !684, line: 327, column: 24)
!1270 = !DILocation(line: 329, column: 73, scope: !1268)
!1271 = !DILocation(line: 330, column: 13, scope: !1268)
!1272 = !DILocation(line: 331, column: 73, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !684, line: 330, column: 41)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !684, line: 330, column: 24)
!1275 = !DILocation(line: 332, column: 73, scope: !1273)
!1276 = !DILocation(line: 333, column: 13, scope: !1273)
!1277 = !DILocation(line: 334, column: 75, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !684, line: 333, column: 41)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !684, line: 333, column: 24)
!1280 = !DILocation(line: 335, column: 75, scope: !1278)
!1281 = !DILocation(line: 336, column: 13, scope: !1278)
!1282 = !DILocation(line: 337, column: 75, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !684, line: 336, column: 41)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !684, line: 336, column: 24)
!1285 = !DILocation(line: 338, column: 75, scope: !1283)
!1286 = !DILocation(line: 339, column: 13, scope: !1283)
!1287 = !DILocation(line: 340, column: 75, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !684, line: 339, column: 41)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !684, line: 339, column: 24)
!1290 = !DILocation(line: 341, column: 75, scope: !1288)
!1291 = !DILocation(line: 342, column: 13, scope: !1288)
!1292 = !DILocation(line: 345, column: 18, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1260, file: !684, line: 345, column: 17)
!1294 = !DILocation(line: 345, column: 17, scope: !1260)
!1295 = !DILocation(line: 346, column: 75, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !684, line: 345, column: 29)
!1297 = !DILocation(line: 347, column: 75, scope: !1296)
!1298 = !DILocation(line: 348, column: 13, scope: !1296)
!1299 = !DILocation(line: 349, column: 17, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1293, file: !684, line: 348, column: 20)
!1301 = !DILocation(line: 357, column: 1, scope: !1248)
!1302 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !684, file: !684, line: 404, type: !898, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1303)
!1303 = !{!1304, !1305, !1306, !1307}
!1304 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1302, file: !684, line: 404, type: !72)
!1305 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1302, file: !684, line: 404, type: !113)
!1306 = !DILocalVariable(name: "no", scope: !1302, file: !684, line: 406, type: !905)
!1307 = !DILocalVariable(name: "remainder", scope: !1302, file: !684, line: 407, type: !905)
!1308 = !DILocation(line: 0, scope: !1302)
!1309 = !DILocation(line: 408, column: 19, scope: !1302)
!1310 = !DILocation(line: 409, column: 17, scope: !1302)
!1311 = !DILocation(line: 411, column: 5, scope: !1302)
!1312 = !DILocation(line: 413, column: 84, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1302, file: !684, line: 411, column: 17)
!1314 = !DILocation(line: 413, column: 70, scope: !1313)
!1315 = !DILocation(line: 413, column: 64, scope: !1313)
!1316 = !DILocation(line: 413, column: 61, scope: !1313)
!1317 = !DILocation(line: 414, column: 79, scope: !1313)
!1318 = !DILocation(line: 414, column: 83, scope: !1313)
!1319 = !DILocation(line: 414, column: 88, scope: !1313)
!1320 = !DILocation(line: 414, column: 61, scope: !1313)
!1321 = !DILocation(line: 415, column: 13, scope: !1313)
!1322 = !DILocation(line: 417, column: 27, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1313, file: !684, line: 417, column: 17)
!1324 = !DILocation(line: 417, column: 17, scope: !1313)
!1325 = !DILocation(line: 418, column: 88, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !684, line: 417, column: 33)
!1327 = !DILocation(line: 418, column: 74, scope: !1326)
!1328 = !DILocation(line: 418, column: 68, scope: !1326)
!1329 = !DILocation(line: 418, column: 65, scope: !1326)
!1330 = !DILocation(line: 419, column: 83, scope: !1326)
!1331 = !DILocation(line: 419, column: 87, scope: !1326)
!1332 = !DILocation(line: 419, column: 92, scope: !1326)
!1333 = !DILocation(line: 419, column: 65, scope: !1326)
!1334 = !DILocation(line: 420, column: 13, scope: !1326)
!1335 = !DILocation(line: 420, column: 24, scope: !1323)
!1336 = !DILocation(line: 421, column: 73, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !684, line: 420, column: 41)
!1338 = distinct !DILexicalBlock(scope: !1323, file: !684, line: 420, column: 24)
!1339 = !DILocation(line: 422, column: 91, scope: !1337)
!1340 = !DILocation(line: 422, column: 100, scope: !1337)
!1341 = !DILocation(line: 422, column: 73, scope: !1337)
!1342 = !DILocation(line: 423, column: 73, scope: !1337)
!1343 = !DILocation(line: 424, column: 13, scope: !1337)
!1344 = !DILocation(line: 425, column: 73, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !684, line: 424, column: 41)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !684, line: 424, column: 24)
!1347 = !DILocation(line: 426, column: 91, scope: !1345)
!1348 = !DILocation(line: 426, column: 100, scope: !1345)
!1349 = !DILocation(line: 426, column: 73, scope: !1345)
!1350 = !DILocation(line: 427, column: 73, scope: !1345)
!1351 = !DILocation(line: 428, column: 13, scope: !1345)
!1352 = !DILocation(line: 429, column: 75, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !684, line: 428, column: 41)
!1354 = distinct !DILexicalBlock(scope: !1346, file: !684, line: 428, column: 24)
!1355 = !DILocation(line: 430, column: 93, scope: !1353)
!1356 = !DILocation(line: 430, column: 102, scope: !1353)
!1357 = !DILocation(line: 430, column: 75, scope: !1353)
!1358 = !DILocation(line: 431, column: 75, scope: !1353)
!1359 = !DILocation(line: 432, column: 13, scope: !1353)
!1360 = !DILocation(line: 433, column: 75, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !684, line: 432, column: 41)
!1362 = distinct !DILexicalBlock(scope: !1354, file: !684, line: 432, column: 24)
!1363 = !DILocation(line: 434, column: 93, scope: !1361)
!1364 = !DILocation(line: 434, column: 102, scope: !1361)
!1365 = !DILocation(line: 434, column: 75, scope: !1361)
!1366 = !DILocation(line: 435, column: 75, scope: !1361)
!1367 = !DILocation(line: 436, column: 13, scope: !1361)
!1368 = !DILocation(line: 437, column: 75, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !684, line: 436, column: 41)
!1370 = distinct !DILexicalBlock(scope: !1362, file: !684, line: 436, column: 24)
!1371 = !DILocation(line: 438, column: 93, scope: !1369)
!1372 = !DILocation(line: 438, column: 102, scope: !1369)
!1373 = !DILocation(line: 438, column: 75, scope: !1369)
!1374 = !DILocation(line: 439, column: 75, scope: !1369)
!1375 = !DILocation(line: 440, column: 13, scope: !1369)
!1376 = !DILocation(line: 443, column: 18, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1313, file: !684, line: 443, column: 17)
!1378 = !DILocation(line: 443, column: 17, scope: !1313)
!1379 = !DILocation(line: 444, column: 75, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1377, file: !684, line: 443, column: 29)
!1381 = !DILocation(line: 445, column: 93, scope: !1380)
!1382 = !DILocation(line: 445, column: 102, scope: !1380)
!1383 = !DILocation(line: 445, column: 75, scope: !1380)
!1384 = !DILocation(line: 446, column: 75, scope: !1380)
!1385 = !DILocation(line: 447, column: 13, scope: !1380)
!1386 = !DILocation(line: 448, column: 88, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !684, line: 447, column: 20)
!1388 = !DILocation(line: 448, column: 74, scope: !1387)
!1389 = !DILocation(line: 448, column: 68, scope: !1387)
!1390 = !DILocation(line: 448, column: 65, scope: !1387)
!1391 = !DILocation(line: 449, column: 83, scope: !1387)
!1392 = !DILocation(line: 449, column: 87, scope: !1387)
!1393 = !DILocation(line: 449, column: 92, scope: !1387)
!1394 = !DILocation(line: 449, column: 65, scope: !1387)
!1395 = !DILocation(line: 453, column: 84, scope: !1313)
!1396 = !DILocation(line: 453, column: 70, scope: !1313)
!1397 = !DILocation(line: 453, column: 64, scope: !1313)
!1398 = !DILocation(line: 453, column: 61, scope: !1313)
!1399 = !DILocation(line: 454, column: 79, scope: !1313)
!1400 = !DILocation(line: 454, column: 83, scope: !1313)
!1401 = !DILocation(line: 454, column: 88, scope: !1313)
!1402 = !DILocation(line: 454, column: 61, scope: !1313)
!1403 = !DILocation(line: 455, column: 13, scope: !1313)
!1404 = !DILocation(line: 460, column: 1, scope: !1302)
!1405 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !684, file: !684, line: 463, type: !1406, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1409)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!900, !72, !1408}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!1409 = !{!1410, !1411, !1412, !1413, !1414}
!1410 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1405, file: !684, line: 463, type: !72)
!1411 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1405, file: !684, line: 463, type: !1408)
!1412 = !DILocalVariable(name: "no", scope: !1405, file: !684, line: 465, type: !905)
!1413 = !DILocalVariable(name: "remainder", scope: !1405, file: !684, line: 466, type: !905)
!1414 = !DILocalVariable(name: "temp", scope: !1405, file: !684, line: 467, type: !72)
!1415 = !DILocation(line: 0, scope: !1405)
!1416 = !DILocation(line: 468, column: 19, scope: !1405)
!1417 = !DILocation(line: 469, column: 17, scope: !1405)
!1418 = !DILocation(line: 471, column: 5, scope: !1405)
!1419 = !DILocation(line: 473, column: 20, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1405, file: !684, line: 471, column: 17)
!1421 = !DILocation(line: 474, column: 40, scope: !1420)
!1422 = !DILocation(line: 474, column: 26, scope: !1420)
!1423 = !DILocation(line: 474, column: 18, scope: !1420)
!1424 = !DILocation(line: 475, column: 40, scope: !1420)
!1425 = !DILocation(line: 475, column: 29, scope: !1420)
!1426 = !DILocation(line: 476, column: 13, scope: !1420)
!1427 = !DILocation(line: 478, column: 27, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1420, file: !684, line: 478, column: 17)
!1429 = !DILocation(line: 478, column: 17, scope: !1420)
!1430 = !DILocation(line: 479, column: 24, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !684, line: 478, column: 33)
!1432 = !DILocation(line: 480, column: 44, scope: !1431)
!1433 = !DILocation(line: 480, column: 30, scope: !1431)
!1434 = !DILocation(line: 480, column: 22, scope: !1431)
!1435 = !DILocation(line: 481, column: 44, scope: !1431)
!1436 = !DILocation(line: 481, column: 33, scope: !1431)
!1437 = !DILocation(line: 482, column: 13, scope: !1431)
!1438 = !DILocation(line: 482, column: 24, scope: !1428)
!1439 = !DILocation(line: 483, column: 24, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !684, line: 482, column: 41)
!1441 = distinct !DILexicalBlock(scope: !1428, file: !684, line: 482, column: 24)
!1442 = !DILocation(line: 485, column: 53, scope: !1440)
!1443 = !DILocation(line: 485, column: 33, scope: !1440)
!1444 = !DILocation(line: 486, column: 13, scope: !1440)
!1445 = !DILocation(line: 487, column: 24, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !684, line: 486, column: 41)
!1447 = distinct !DILexicalBlock(scope: !1441, file: !684, line: 486, column: 24)
!1448 = !DILocation(line: 489, column: 53, scope: !1446)
!1449 = !DILocation(line: 489, column: 33, scope: !1446)
!1450 = !DILocation(line: 490, column: 13, scope: !1446)
!1451 = !DILocation(line: 491, column: 24, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !684, line: 490, column: 41)
!1453 = distinct !DILexicalBlock(scope: !1447, file: !684, line: 490, column: 24)
!1454 = !DILocation(line: 493, column: 53, scope: !1452)
!1455 = !DILocation(line: 493, column: 33, scope: !1452)
!1456 = !DILocation(line: 494, column: 13, scope: !1452)
!1457 = !DILocation(line: 495, column: 24, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !684, line: 494, column: 41)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !684, line: 494, column: 24)
!1460 = !DILocation(line: 497, column: 53, scope: !1458)
!1461 = !DILocation(line: 497, column: 33, scope: !1458)
!1462 = !DILocation(line: 498, column: 13, scope: !1458)
!1463 = !DILocation(line: 499, column: 24, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !684, line: 498, column: 41)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !684, line: 498, column: 24)
!1466 = !DILocation(line: 501, column: 53, scope: !1464)
!1467 = !DILocation(line: 501, column: 33, scope: !1464)
!1468 = !DILocation(line: 502, column: 13, scope: !1464)
!1469 = !DILocation(line: 505, column: 18, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1420, file: !684, line: 505, column: 17)
!1471 = !DILocation(line: 505, column: 17, scope: !1420)
!1472 = !DILocation(line: 506, column: 24, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !684, line: 505, column: 29)
!1474 = !DILocation(line: 508, column: 53, scope: !1473)
!1475 = !DILocation(line: 508, column: 33, scope: !1473)
!1476 = !DILocation(line: 509, column: 13, scope: !1473)
!1477 = !DILocation(line: 510, column: 24, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1470, file: !684, line: 509, column: 20)
!1479 = !DILocation(line: 511, column: 44, scope: !1478)
!1480 = !DILocation(line: 511, column: 30, scope: !1478)
!1481 = !DILocation(line: 511, column: 22, scope: !1478)
!1482 = !DILocation(line: 512, column: 44, scope: !1478)
!1483 = !DILocation(line: 512, column: 33, scope: !1478)
!1484 = !DILocation(line: 516, column: 20, scope: !1420)
!1485 = !DILocation(line: 517, column: 40, scope: !1420)
!1486 = !DILocation(line: 517, column: 26, scope: !1420)
!1487 = !DILocation(line: 517, column: 18, scope: !1420)
!1488 = !DILocation(line: 518, column: 40, scope: !1420)
!1489 = !DILocation(line: 518, column: 29, scope: !1420)
!1490 = !DILocation(line: 519, column: 13, scope: !1420)
!1491 = !DILocation(line: 0, scope: !1420)
!1492 = !DILocation(line: 524, column: 1, scope: !1405)
!1493 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !684, file: !684, line: 526, type: !1494, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1497)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !72, !1496}
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !43, line: 1212, baseType: !42)
!1497 = !{!1498, !1499, !1500, !1501}
!1498 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1493, file: !684, line: 526, type: !72)
!1499 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1493, file: !684, line: 526, type: !1496)
!1500 = !DILocalVariable(name: "no", scope: !1493, file: !684, line: 529, type: !905)
!1501 = !DILocalVariable(name: "remainder", scope: !1493, file: !684, line: 530, type: !905)
!1502 = !DILocation(line: 0, scope: !1493)
!1503 = !DILocation(line: 531, column: 19, scope: !1493)
!1504 = !DILocation(line: 532, column: 17, scope: !1493)
!1505 = !DILocation(line: 534, column: 9, scope: !1493)
!1506 = !DILocation(line: 536, column: 9, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !684, line: 534, column: 45)
!1508 = distinct !DILexicalBlock(scope: !1493, file: !684, line: 534, column: 9)
!1509 = !DILocation(line: 538, column: 56, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !684, line: 536, column: 21)
!1511 = !DILocation(line: 538, column: 53, scope: !1510)
!1512 = !DILocation(line: 538, column: 47, scope: !1510)
!1513 = !DILocation(line: 539, column: 17, scope: !1510)
!1514 = !DILocation(line: 541, column: 56, scope: !1510)
!1515 = !DILocation(line: 541, column: 53, scope: !1510)
!1516 = !DILocation(line: 541, column: 47, scope: !1510)
!1517 = !DILocation(line: 542, column: 17, scope: !1510)
!1518 = !DILocation(line: 548, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !684, line: 547, column: 51)
!1520 = distinct !DILexicalBlock(scope: !1508, file: !684, line: 547, column: 16)
!1521 = !DILocation(line: 550, column: 57, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !684, line: 548, column: 21)
!1523 = !DILocation(line: 550, column: 54, scope: !1522)
!1524 = !DILocation(line: 550, column: 50, scope: !1522)
!1525 = !DILocation(line: 550, column: 47, scope: !1522)
!1526 = !DILocation(line: 551, column: 17, scope: !1522)
!1527 = !DILocation(line: 553, column: 57, scope: !1522)
!1528 = !DILocation(line: 553, column: 54, scope: !1522)
!1529 = !DILocation(line: 553, column: 50, scope: !1522)
!1530 = !DILocation(line: 553, column: 47, scope: !1522)
!1531 = !DILocation(line: 554, column: 17, scope: !1522)
!1532 = !DILocation(line: 560, column: 1, scope: !1493)
!1533 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !688, file: !688, line: 85, type: !1534, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !1538)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1536, !1537, !113}
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !51, line: 79, baseType: null)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !691, line: 225, baseType: !690)
!1538 = !{!1539, !1540, !1541}
!1539 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1533, file: !688, line: 85, type: !1537)
!1540 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1533, file: !688, line: 85, type: !113)
!1541 = !DILocalVariable(name: "temp", scope: !1533, file: !688, line: 87, type: !58)
!1542 = !DILocation(line: 0, scope: !1533)
!1543 = !DILocation(line: 88, column: 5, scope: !1533)
!1544 = !DILocation(line: 91, column: 20, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1533, file: !688, line: 88, column: 24)
!1546 = !DILocation(line: 92, column: 18, scope: !1545)
!1547 = !DILocation(line: 93, column: 66, scope: !1545)
!1548 = !DILocation(line: 93, column: 63, scope: !1545)
!1549 = !DILocation(line: 93, column: 56, scope: !1545)
!1550 = !DILocation(line: 94, column: 13, scope: !1545)
!1551 = !DILocation(line: 97, column: 20, scope: !1545)
!1552 = !DILocation(line: 98, column: 18, scope: !1545)
!1553 = !DILocation(line: 99, column: 67, scope: !1545)
!1554 = !DILocation(line: 99, column: 74, scope: !1545)
!1555 = !DILocation(line: 99, column: 64, scope: !1545)
!1556 = !DILocation(line: 99, column: 56, scope: !1545)
!1557 = !DILocation(line: 100, column: 13, scope: !1545)
!1558 = !DILocation(line: 103, column: 20, scope: !1545)
!1559 = !DILocation(line: 104, column: 18, scope: !1545)
!1560 = !DILocation(line: 105, column: 67, scope: !1545)
!1561 = !DILocation(line: 105, column: 74, scope: !1545)
!1562 = !DILocation(line: 105, column: 64, scope: !1545)
!1563 = !DILocation(line: 105, column: 56, scope: !1545)
!1564 = !DILocation(line: 106, column: 13, scope: !1545)
!1565 = !DILocation(line: 109, column: 20, scope: !1545)
!1566 = !DILocation(line: 110, column: 18, scope: !1545)
!1567 = !DILocation(line: 111, column: 67, scope: !1545)
!1568 = !DILocation(line: 111, column: 74, scope: !1545)
!1569 = !DILocation(line: 111, column: 64, scope: !1545)
!1570 = !DILocation(line: 111, column: 56, scope: !1545)
!1571 = !DILocation(line: 112, column: 13, scope: !1545)
!1572 = !DILocation(line: 115, column: 20, scope: !1545)
!1573 = !DILocation(line: 116, column: 18, scope: !1545)
!1574 = !DILocation(line: 117, column: 67, scope: !1545)
!1575 = !DILocation(line: 117, column: 74, scope: !1545)
!1576 = !DILocation(line: 117, column: 64, scope: !1545)
!1577 = !DILocation(line: 117, column: 56, scope: !1545)
!1578 = !DILocation(line: 118, column: 13, scope: !1545)
!1579 = !DILocation(line: 121, column: 20, scope: !1545)
!1580 = !DILocation(line: 122, column: 18, scope: !1545)
!1581 = !DILocation(line: 123, column: 67, scope: !1545)
!1582 = !DILocation(line: 123, column: 74, scope: !1545)
!1583 = !DILocation(line: 123, column: 64, scope: !1545)
!1584 = !DILocation(line: 123, column: 56, scope: !1545)
!1585 = !DILocation(line: 124, column: 13, scope: !1545)
!1586 = !DILocation(line: 127, column: 20, scope: !1545)
!1587 = !DILocation(line: 128, column: 18, scope: !1545)
!1588 = !DILocation(line: 129, column: 67, scope: !1545)
!1589 = !DILocation(line: 129, column: 74, scope: !1545)
!1590 = !DILocation(line: 129, column: 64, scope: !1545)
!1591 = !DILocation(line: 129, column: 56, scope: !1545)
!1592 = !DILocation(line: 130, column: 13, scope: !1545)
!1593 = !DILocation(line: 133, column: 20, scope: !1545)
!1594 = !DILocation(line: 134, column: 18, scope: !1545)
!1595 = !DILocation(line: 135, column: 67, scope: !1545)
!1596 = !DILocation(line: 135, column: 74, scope: !1545)
!1597 = !DILocation(line: 135, column: 64, scope: !1545)
!1598 = !DILocation(line: 135, column: 56, scope: !1545)
!1599 = !DILocation(line: 136, column: 13, scope: !1545)
!1600 = !DILocation(line: 139, column: 20, scope: !1545)
!1601 = !DILocation(line: 140, column: 18, scope: !1545)
!1602 = !DILocation(line: 141, column: 67, scope: !1545)
!1603 = !DILocation(line: 141, column: 64, scope: !1545)
!1604 = !DILocation(line: 141, column: 56, scope: !1545)
!1605 = !DILocation(line: 142, column: 13, scope: !1545)
!1606 = !DILocation(line: 145, column: 20, scope: !1545)
!1607 = !DILocation(line: 146, column: 18, scope: !1545)
!1608 = !DILocation(line: 147, column: 67, scope: !1545)
!1609 = !DILocation(line: 147, column: 74, scope: !1545)
!1610 = !DILocation(line: 147, column: 64, scope: !1545)
!1611 = !DILocation(line: 147, column: 56, scope: !1545)
!1612 = !DILocation(line: 148, column: 13, scope: !1545)
!1613 = !DILocation(line: 151, column: 20, scope: !1545)
!1614 = !DILocation(line: 152, column: 18, scope: !1545)
!1615 = !DILocation(line: 153, column: 67, scope: !1545)
!1616 = !DILocation(line: 153, column: 74, scope: !1545)
!1617 = !DILocation(line: 153, column: 64, scope: !1545)
!1618 = !DILocation(line: 153, column: 56, scope: !1545)
!1619 = !DILocation(line: 154, column: 13, scope: !1545)
!1620 = !DILocation(line: 157, column: 20, scope: !1545)
!1621 = !DILocation(line: 158, column: 18, scope: !1545)
!1622 = !DILocation(line: 159, column: 67, scope: !1545)
!1623 = !DILocation(line: 159, column: 74, scope: !1545)
!1624 = !DILocation(line: 159, column: 64, scope: !1545)
!1625 = !DILocation(line: 159, column: 56, scope: !1545)
!1626 = !DILocation(line: 160, column: 29, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1545, file: !688, line: 160, column: 17)
!1628 = !DILocation(line: 161, column: 17, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1627, file: !688, line: 160, column: 60)
!1630 = !DILocation(line: 162, column: 13, scope: !1629)
!1631 = !DILocation(line: 166, column: 20, scope: !1545)
!1632 = !DILocation(line: 167, column: 18, scope: !1545)
!1633 = !DILocation(line: 168, column: 67, scope: !1545)
!1634 = !DILocation(line: 168, column: 74, scope: !1545)
!1635 = !DILocation(line: 168, column: 64, scope: !1545)
!1636 = !DILocation(line: 168, column: 56, scope: !1545)
!1637 = !DILocation(line: 169, column: 29, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1545, file: !688, line: 169, column: 17)
!1639 = !DILocation(line: 170, column: 17, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1638, file: !688, line: 169, column: 45)
!1641 = !DILocation(line: 171, column: 13, scope: !1640)
!1642 = !DILocation(line: 175, column: 20, scope: !1545)
!1643 = !DILocation(line: 176, column: 18, scope: !1545)
!1644 = !DILocation(line: 177, column: 67, scope: !1545)
!1645 = !DILocation(line: 177, column: 74, scope: !1545)
!1646 = !DILocation(line: 177, column: 64, scope: !1545)
!1647 = !DILocation(line: 177, column: 56, scope: !1545)
!1648 = !DILocation(line: 178, column: 19, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1545, file: !688, line: 178, column: 17)
!1650 = !DILocation(line: 178, column: 17, scope: !1545)
!1651 = !DILocation(line: 179, column: 17, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1649, file: !688, line: 178, column: 30)
!1653 = !DILocation(line: 180, column: 13, scope: !1652)
!1654 = !DILocation(line: 184, column: 20, scope: !1545)
!1655 = !DILocation(line: 185, column: 18, scope: !1545)
!1656 = !DILocation(line: 186, column: 67, scope: !1545)
!1657 = !DILocation(line: 186, column: 74, scope: !1545)
!1658 = !DILocation(line: 186, column: 64, scope: !1545)
!1659 = !DILocation(line: 186, column: 56, scope: !1545)
!1660 = !DILocation(line: 187, column: 29, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1545, file: !688, line: 187, column: 17)
!1662 = !DILocation(line: 188, column: 17, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1661, file: !688, line: 187, column: 45)
!1664 = !DILocation(line: 189, column: 13, scope: !1663)
!1665 = !DILocation(line: 193, column: 20, scope: !1545)
!1666 = !DILocation(line: 194, column: 18, scope: !1545)
!1667 = !DILocation(line: 195, column: 67, scope: !1545)
!1668 = !DILocation(line: 195, column: 74, scope: !1545)
!1669 = !DILocation(line: 195, column: 64, scope: !1545)
!1670 = !DILocation(line: 195, column: 56, scope: !1545)
!1671 = !DILocation(line: 196, column: 29, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1545, file: !688, line: 196, column: 17)
!1673 = !DILocation(line: 197, column: 17, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1672, file: !688, line: 196, column: 45)
!1675 = !DILocation(line: 198, column: 13, scope: !1674)
!1676 = !DILocation(line: 202, column: 20, scope: !1545)
!1677 = !DILocation(line: 203, column: 18, scope: !1545)
!1678 = !DILocation(line: 204, column: 67, scope: !1545)
!1679 = !DILocation(line: 204, column: 64, scope: !1545)
!1680 = !DILocation(line: 204, column: 56, scope: !1545)
!1681 = !DILocation(line: 205, column: 29, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1545, file: !688, line: 205, column: 17)
!1683 = !DILocation(line: 206, column: 17, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1682, file: !688, line: 205, column: 45)
!1685 = !DILocation(line: 207, column: 13, scope: !1684)
!1686 = !DILocation(line: 211, column: 20, scope: !1545)
!1687 = !DILocation(line: 212, column: 18, scope: !1545)
!1688 = !DILocation(line: 213, column: 67, scope: !1545)
!1689 = !DILocation(line: 213, column: 74, scope: !1545)
!1690 = !DILocation(line: 213, column: 64, scope: !1545)
!1691 = !DILocation(line: 213, column: 56, scope: !1545)
!1692 = !DILocation(line: 214, column: 13, scope: !1545)
!1693 = !DILocation(line: 217, column: 20, scope: !1545)
!1694 = !DILocation(line: 218, column: 18, scope: !1545)
!1695 = !DILocation(line: 219, column: 67, scope: !1545)
!1696 = !DILocation(line: 219, column: 74, scope: !1545)
!1697 = !DILocation(line: 219, column: 64, scope: !1545)
!1698 = !DILocation(line: 219, column: 56, scope: !1545)
!1699 = !DILocation(line: 220, column: 13, scope: !1545)
!1700 = !DILocation(line: 223, column: 20, scope: !1545)
!1701 = !DILocation(line: 224, column: 18, scope: !1545)
!1702 = !DILocation(line: 225, column: 67, scope: !1545)
!1703 = !DILocation(line: 225, column: 74, scope: !1545)
!1704 = !DILocation(line: 225, column: 64, scope: !1545)
!1705 = !DILocation(line: 225, column: 56, scope: !1545)
!1706 = !DILocation(line: 226, column: 13, scope: !1545)
!1707 = !DILocation(line: 229, column: 20, scope: !1545)
!1708 = !DILocation(line: 230, column: 18, scope: !1545)
!1709 = !DILocation(line: 231, column: 67, scope: !1545)
!1710 = !DILocation(line: 231, column: 74, scope: !1545)
!1711 = !DILocation(line: 231, column: 64, scope: !1545)
!1712 = !DILocation(line: 231, column: 56, scope: !1545)
!1713 = !DILocation(line: 232, column: 13, scope: !1545)
!1714 = !DILocation(line: 235, column: 20, scope: !1545)
!1715 = !DILocation(line: 236, column: 18, scope: !1545)
!1716 = !DILocation(line: 237, column: 66, scope: !1545)
!1717 = !DILocation(line: 237, column: 73, scope: !1545)
!1718 = !DILocation(line: 237, column: 63, scope: !1545)
!1719 = !DILocation(line: 237, column: 56, scope: !1545)
!1720 = !DILocation(line: 238, column: 13, scope: !1545)
!1721 = !DILocation(line: 241, column: 20, scope: !1545)
!1722 = !DILocation(line: 242, column: 18, scope: !1545)
!1723 = !DILocation(line: 243, column: 67, scope: !1545)
!1724 = !DILocation(line: 243, column: 74, scope: !1545)
!1725 = !DILocation(line: 243, column: 64, scope: !1545)
!1726 = !DILocation(line: 243, column: 56, scope: !1545)
!1727 = !DILocation(line: 244, column: 13, scope: !1545)
!1728 = !DILocation(line: 247, column: 20, scope: !1545)
!1729 = !DILocation(line: 248, column: 18, scope: !1545)
!1730 = !DILocation(line: 249, column: 67, scope: !1545)
!1731 = !DILocation(line: 249, column: 74, scope: !1545)
!1732 = !DILocation(line: 249, column: 64, scope: !1545)
!1733 = !DILocation(line: 249, column: 56, scope: !1545)
!1734 = !DILocation(line: 250, column: 13, scope: !1545)
!1735 = !DILocation(line: 253, column: 20, scope: !1545)
!1736 = !DILocation(line: 254, column: 18, scope: !1545)
!1737 = !DILocation(line: 255, column: 67, scope: !1545)
!1738 = !DILocation(line: 255, column: 74, scope: !1545)
!1739 = !DILocation(line: 255, column: 64, scope: !1545)
!1740 = !DILocation(line: 255, column: 56, scope: !1545)
!1741 = !DILocation(line: 256, column: 13, scope: !1545)
!1742 = !DILocation(line: 259, column: 20, scope: !1545)
!1743 = !DILocation(line: 260, column: 18, scope: !1545)
!1744 = !DILocation(line: 261, column: 67, scope: !1545)
!1745 = !DILocation(line: 261, column: 74, scope: !1545)
!1746 = !DILocation(line: 261, column: 64, scope: !1545)
!1747 = !DILocation(line: 261, column: 56, scope: !1545)
!1748 = !DILocation(line: 262, column: 13, scope: !1545)
!1749 = !DILocation(line: 265, column: 20, scope: !1545)
!1750 = !DILocation(line: 266, column: 18, scope: !1545)
!1751 = !DILocation(line: 267, column: 67, scope: !1545)
!1752 = !DILocation(line: 267, column: 74, scope: !1545)
!1753 = !DILocation(line: 267, column: 64, scope: !1545)
!1754 = !DILocation(line: 267, column: 56, scope: !1545)
!1755 = !DILocation(line: 268, column: 13, scope: !1545)
!1756 = !DILocation(line: 271, column: 20, scope: !1545)
!1757 = !DILocation(line: 272, column: 18, scope: !1545)
!1758 = !DILocation(line: 273, column: 67, scope: !1545)
!1759 = !DILocation(line: 273, column: 74, scope: !1545)
!1760 = !DILocation(line: 273, column: 64, scope: !1545)
!1761 = !DILocation(line: 273, column: 56, scope: !1545)
!1762 = !DILocation(line: 274, column: 13, scope: !1545)
!1763 = !DILocation(line: 278, column: 1, scope: !1533)
!1764 = distinct !DISubprogram(name: "gpio_direction", scope: !3, file: !3, line: 107, type: !1765, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!181, !880, !883}
!1767 = !{!1768, !1769}
!1768 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1764, file: !3, line: 107, type: !880)
!1769 = !DILocalVariable(name: "direction", arg: 2, scope: !1764, file: !3, line: 107, type: !883)
!1770 = !DILocation(line: 0, scope: !1764)
!1771 = !DILocation(line: 109, column: 45, scope: !1764)
!1772 = !DILocation(line: 109, column: 12, scope: !1764)
!1773 = !DILocation(line: 109, column: 5, scope: !1764)
!1774 = distinct !DISubprogram(name: "gpio_write", scope: !3, file: !3, line: 113, type: !1775, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!181, !880, !210}
!1777 = !{!1778, !1779}
!1778 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1774, file: !3, line: 113, type: !880)
!1779 = !DILocalVariable(name: "data", arg: 2, scope: !1774, file: !3, line: 113, type: !210)
!1780 = !DILocation(line: 0, scope: !1774)
!1781 = !DILocation(line: 115, column: 12, scope: !1774)
!1782 = !DILocation(line: 115, column: 5, scope: !1774)
!1783 = distinct !DISubprogram(name: "gpio_get_status", scope: !3, file: !3, line: 169, type: !1784, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1793)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!1786, !880}
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !38, line: 67, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 62, size: 64, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !1787, file: !38, line: 63, baseType: !58, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !1787, file: !38, line: 64, baseType: !210, size: 8, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !1787, file: !38, line: 65, baseType: !210, size: 8, offset: 40)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !1787, file: !38, line: 66, baseType: !210, size: 8, offset: 48)
!1793 = !{!1794, !1795}
!1794 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1783, file: !3, line: 169, type: !880)
!1795 = !DILocalVariable(name: "p", scope: !1783, file: !3, line: 171, type: !1786)
!1796 = !DILocation(line: 0, scope: !1783)
!1797 = !DILocation(line: 171, column: 17, scope: !1783)
!1798 = !DILocation(line: 172, column: 7, scope: !1783)
!1799 = !DILocation(line: 172, column: 16, scope: !1783)
!1800 = !DILocation(line: 173, column: 20, scope: !1783)
!1801 = !DILocation(line: 173, column: 7, scope: !1783)
!1802 = !DILocation(line: 173, column: 18, scope: !1783)
!1803 = !DILocation(line: 174, column: 17, scope: !1783)
!1804 = !DILocation(line: 174, column: 7, scope: !1783)
!1805 = !DILocation(line: 174, column: 15, scope: !1783)
!1806 = !DILocation(line: 175, column: 18, scope: !1783)
!1807 = !DILocation(line: 175, column: 7, scope: !1783)
!1808 = !DILocation(line: 175, column: 16, scope: !1783)
!1809 = !DILocation(line: 176, column: 5, scope: !1783)
!1810 = distinct !DISubprogram(name: "gpio_PullUp", scope: !3, file: !3, line: 179, type: !1811, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1813)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!181, !880}
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1810, file: !3, line: 179, type: !880)
!1815 = !DILocalVariable(name: "ret", scope: !1810, file: !3, line: 181, type: !900)
!1816 = !DILocation(line: 0, scope: !1810)
!1817 = !DILocation(line: 182, column: 5, scope: !1810)
!1818 = !DILocation(line: 183, column: 11, scope: !1810)
!1819 = !DILocation(line: 184, column: 5, scope: !1810)
!1820 = distinct !DISubprogram(name: "gpio_PullDown", scope: !3, file: !3, line: 187, type: !1811, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1821 = !{!1822, !1823}
!1822 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1820, file: !3, line: 187, type: !880)
!1823 = !DILocalVariable(name: "ret", scope: !1820, file: !3, line: 189, type: !900)
!1824 = !DILocation(line: 0, scope: !1820)
!1825 = !DILocation(line: 190, column: 5, scope: !1820)
!1826 = !DILocation(line: 191, column: 11, scope: !1820)
!1827 = !DILocation(line: 192, column: 5, scope: !1820)
!1828 = distinct !DISubprogram(name: "gpio_PullDisable", scope: !3, file: !3, line: 194, type: !1811, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1829 = !{!1830, !1831}
!1830 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1828, file: !3, line: 194, type: !880)
!1831 = !DILocalVariable(name: "ret", scope: !1828, file: !3, line: 196, type: !900)
!1832 = !DILocation(line: 0, scope: !1828)
!1833 = !DILocation(line: 197, column: 5, scope: !1828)
!1834 = !DILocation(line: 198, column: 11, scope: !1828)
!1835 = !DILocation(line: 199, column: 11, scope: !1828)
!1836 = !DILocation(line: 200, column: 5, scope: !1828)
!1837 = distinct !DISubprogram(name: "gpio_SetDriving", scope: !3, file: !3, line: 202, type: !1775, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1838)
!1838 = !{!1839, !1840, !1841}
!1839 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1837, file: !3, line: 202, type: !880)
!1840 = !DILocalVariable(name: "driving", arg: 2, scope: !1837, file: !3, line: 202, type: !210)
!1841 = !DILocalVariable(name: "ret", scope: !1837, file: !3, line: 204, type: !900)
!1842 = !DILocation(line: 0, scope: !1837)
!1843 = !DILocation(line: 205, column: 11, scope: !1837)
!1844 = !DILocation(line: 206, column: 5, scope: !1837)
!1845 = distinct !DISubprogram(name: "gpio_GetDriving", scope: !3, file: !3, line: 209, type: !1846, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!181, !880, !378}
!1848 = !{!1849, !1850, !1851}
!1849 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1845, file: !3, line: 209, type: !880)
!1850 = !DILocalVariable(name: "driving", arg: 2, scope: !1845, file: !3, line: 209, type: !378)
!1851 = !DILocalVariable(name: "ret", scope: !1845, file: !3, line: 211, type: !900)
!1852 = !DILocation(line: 0, scope: !1845)
!1853 = !DILocation(line: 212, column: 11, scope: !1845)
!1854 = !DILocation(line: 213, column: 5, scope: !1845)
!1855 = distinct !DISubprogram(name: "gpio_backup_all_registers", scope: !3, file: !3, line: 216, type: !335, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1856)
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "i", scope: !1855, file: !3, line: 218, type: !58)
!1858 = !DILocation(line: 0, scope: !1855)
!1859 = !DILocation(line: 220, column: 5, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !3, line: 220, column: 5)
!1861 = !DILocation(line: 221, column: 40, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 220, column: 78)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 220, column: 5)
!1864 = !DILocation(line: 221, column: 29, scope: !1862)
!1865 = !DILocation(line: 221, column: 38, scope: !1862)
!1866 = !DILocation(line: 220, column: 74, scope: !1863)
!1867 = !DILocation(line: 220, column: 15, scope: !1863)
!1868 = distinct !{!1868, !1859, !1869}
!1869 = !DILocation(line: 222, column: 5, scope: !1860)
!1870 = !DILocation(line: 224, column: 1, scope: !1855)
!1871 = distinct !DISubprogram(name: "gpio_restore_all_registers", scope: !3, file: !3, line: 226, type: !335, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1872)
!1872 = !{!1873}
!1873 = !DILocalVariable(name: "i", scope: !1871, file: !3, line: 228, type: !58)
!1874 = !DILocation(line: 0, scope: !1871)
!1875 = !DILocation(line: 230, column: 5, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 230, column: 5)
!1877 = !DILocation(line: 231, column: 71, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 230, column: 78)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 230, column: 5)
!1880 = !DILocation(line: 231, column: 9, scope: !1878)
!1881 = !DILocation(line: 231, column: 49, scope: !1878)
!1882 = !DILocation(line: 230, column: 74, scope: !1879)
!1883 = !DILocation(line: 230, column: 15, scope: !1879)
!1884 = distinct !{!1884, !1875, !1885}
!1885 = !DILocation(line: 233, column: 5, scope: !1876)
!1886 = !DILocation(line: 234, column: 1, scope: !1871)
!1887 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !769, file: !769, line: 47, type: !1888, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !58}
!1890 = !{!1891}
!1891 = !DILocalVariable(name: "addr", arg: 1, scope: !1887, file: !769, line: 47, type: !58)
!1892 = !DILocation(line: 0, scope: !1887)
!1893 = !DILocation(line: 49, column: 15, scope: !1887)
!1894 = !DILocation(line: 51, column: 5, scope: !1887)
!1895 = !{i64 2624}
!1896 = !DILocation(line: 52, column: 5, scope: !1887)
!1897 = !{i64 2651}
!1898 = !DILocation(line: 53, column: 1, scope: !1887)
!1899 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !769, file: !769, line: 56, type: !1900, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !1902)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{null, !7}
!1902 = !{!1903}
!1903 = !DILocalVariable(name: "source", arg: 1, scope: !1899, file: !769, line: 56, type: !7)
!1904 = !DILocation(line: 0, scope: !1899)
!1905 = !DILocation(line: 58, column: 16, scope: !1899)
!1906 = !DILocation(line: 59, column: 1, scope: !1899)
!1907 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !769, file: !769, line: 61, type: !1908, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!58}
!1910 = !{!1911}
!1911 = !DILocalVariable(name: "mask", scope: !1907, file: !769, line: 63, type: !58)
!1912 = !DILocation(line: 470, column: 3, scope: !1913, inlinedAt: !1917)
!1913 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1914, file: !1914, line: 466, type: !1908, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !1915)
!1914 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!1915 = !{!1916}
!1916 = !DILocalVariable(name: "result", scope: !1913, file: !1914, line: 468, type: !58)
!1917 = distinct !DILocation(line: 64, column: 5, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1907, file: !769, line: 64, column: 5)
!1919 = !{i64 302173}
!1920 = !DILocation(line: 0, scope: !1913, inlinedAt: !1917)
!1921 = !DILocation(line: 0, scope: !1907)
!1922 = !DILocation(line: 330, column: 3, scope: !1923, inlinedAt: !1925)
!1923 = distinct !DISubprogram(name: "__disable_irq", scope: !1914, file: !1914, line: 328, type: !335, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !1924)
!1924 = !{}
!1925 = distinct !DILocation(line: 64, column: 5, scope: !1918)
!1926 = !{i64 298837}
!1927 = !DILocation(line: 65, column: 5, scope: !1907)
!1928 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !769, file: !769, line: 68, type: !1888, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !1929)
!1929 = !{!1930}
!1930 = !DILocalVariable(name: "mask", arg: 1, scope: !1928, file: !769, line: 68, type: !58)
!1931 = !DILocation(line: 0, scope: !1928)
!1932 = !DILocalVariable(name: "priMask", arg: 1, scope: !1933, file: !1914, line: 481, type: !58)
!1933 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1914, file: !1914, line: 481, type: !1888, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !1934)
!1934 = !{!1932}
!1935 = !DILocation(line: 0, scope: !1933, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 70, column: 5, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1928, file: !769, line: 70, column: 5)
!1938 = !DILocation(line: 483, column: 3, scope: !1933, inlinedAt: !1936)
!1939 = !{i64 302491}
!1940 = !DILocation(line: 71, column: 1, scope: !1928)
!1941 = distinct !DISubprogram(name: "pinmux_config", scope: !814, file: !814, line: 54, type: !1942, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!181, !880, !58}
!1944 = !{!1945, !1946, !1947}
!1945 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !1941, file: !814, line: 54, type: !880)
!1946 = !DILocalVariable(name: "function", arg: 2, scope: !1941, file: !814, line: 54, type: !58)
!1947 = !DILocalVariable(name: "ePadIndex", scope: !1941, file: !814, line: 56, type: !1537)
!1948 = !DILocation(line: 0, scope: !1941)
!1949 = !DILocation(line: 60, column: 5, scope: !1941)
!1950 = !DILocation(line: 205, column: 38, scope: !1941)
!1951 = !DILocation(line: 205, column: 5, scope: !1941)
!1952 = !DILocation(line: 207, column: 5, scope: !1941)
!1953 = !DILocation(line: 208, column: 1, scope: !1941)
!1954 = distinct !DISubprogram(name: "top_xtal_init", scope: !68, file: !68, line: 52, type: !335, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1955)
!1955 = !{!1956, !1957}
!1956 = !DILocalVariable(name: "u4RegVal", scope: !1954, file: !68, line: 54, type: !58)
!1957 = !DILocalVariable(name: "reg", scope: !1954, file: !68, line: 55, type: !568)
!1958 = !DILocation(line: 0, scope: !1954)
!1959 = !DILocation(line: 55, column: 25, scope: !1954)
!1960 = !DILocation(line: 56, column: 16, scope: !1954)
!1961 = !DILocation(line: 56, column: 23, scope: !1954)
!1962 = !DILocation(line: 58, column: 16, scope: !1954)
!1963 = !DILocation(line: 61, column: 5, scope: !1954)
!1964 = !DILocation(line: 59, column: 14, scope: !1954)
!1965 = !DILocation(line: 0, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1954, file: !68, line: 61, column: 18)
!1967 = !DILocation(line: 87, column: 38, scope: !1954)
!1968 = !DILocation(line: 88, column: 21, scope: !1954)
!1969 = !DILocation(line: 88, column: 19, scope: !1954)
!1970 = !DILocation(line: 89, column: 5, scope: !1954)
!1971 = !DILocation(line: 90, column: 17, scope: !1954)
!1972 = !DILocation(line: 90, column: 33, scope: !1954)
!1973 = !DILocation(line: 90, column: 5, scope: !1954)
!1974 = !DILocation(line: 91, column: 1, scope: !1954)
!1975 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !68, file: !68, line: 98, type: !1908, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1924)
!1976 = !DILocation(line: 100, column: 12, scope: !1975)
!1977 = !DILocation(line: 100, column: 5, scope: !1975)
!1978 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !68, file: !68, line: 108, type: !1908, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1924)
!1979 = !DILocation(line: 110, column: 12, scope: !1978)
!1980 = !DILocation(line: 110, column: 5, scope: !1978)
!1981 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !68, file: !68, line: 118, type: !335, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1982)
!1982 = !{!1983, !1984}
!1983 = !DILocalVariable(name: "reg", scope: !1981, file: !68, line: 120, type: !74)
!1984 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1981, file: !68, line: 121, type: !73)
!1985 = !DILocation(line: 120, column: 5, scope: !1981)
!1986 = !DILocation(line: 120, column: 23, scope: !1981)
!1987 = !DILocation(line: 0, scope: !1981)
!1988 = !DILocation(line: 123, column: 11, scope: !1981)
!1989 = !DILocation(line: 123, column: 9, scope: !1981)
!1990 = !DILocation(line: 124, column: 12, scope: !1981)
!1991 = !DILocation(line: 124, column: 16, scope: !1981)
!1992 = !DILocation(line: 124, column: 39, scope: !1981)
!1993 = !DILocation(line: 124, column: 9, scope: !1981)
!1994 = !DILocation(line: 126, column: 9, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1981, file: !68, line: 126, column: 9)
!1996 = !DILocation(line: 126, column: 13, scope: !1995)
!1997 = !DILocation(line: 126, column: 9, scope: !1981)
!1998 = !DILocation(line: 127, column: 15, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !68, line: 126, column: 47)
!2000 = !DILocation(line: 127, column: 13, scope: !1999)
!2001 = !DILocation(line: 128, column: 15, scope: !1999)
!2002 = !DILocation(line: 128, column: 19, scope: !1999)
!2003 = !DILocation(line: 128, column: 13, scope: !1999)
!2004 = !DILocation(line: 129, column: 15, scope: !1999)
!2005 = !DILocation(line: 129, column: 19, scope: !1999)
!2006 = !DILocation(line: 129, column: 13, scope: !1999)
!2007 = !DILocation(line: 130, column: 46, scope: !1999)
!2008 = !DILocation(line: 130, column: 9, scope: !1999)
!2009 = !DILocation(line: 132, column: 9, scope: !1999)
!2010 = !DILocation(line: 133, column: 19, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1999, file: !68, line: 132, column: 12)
!2012 = !DILocation(line: 133, column: 17, scope: !2011)
!2013 = !DILocation(line: 134, column: 19, scope: !2011)
!2014 = !DILocation(line: 134, column: 23, scope: !2011)
!2015 = !DILocation(line: 134, column: 17, scope: !2011)
!2016 = !DILocation(line: 135, column: 19, scope: !1999)
!2017 = !DILocation(line: 135, column: 18, scope: !1999)
!2018 = !DILocation(line: 135, column: 9, scope: !2011)
!2019 = distinct !{!2019, !2009, !2020}
!2020 = !DILocation(line: 135, column: 22, scope: !1999)
!2021 = !DILocation(line: 138, column: 1, scope: !1981)
!2022 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2023, file: !2023, line: 176, type: !2024, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2028)
!2023 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/linkit7697_hdk/hal_examples/gpio_configure_pull_state/GCC")
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!58, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2028 = !{!2029}
!2029 = !DILocalVariable(name: "Register", arg: 1, scope: !2022, file: !2023, line: 176, type: !2026)
!2030 = !DILocation(line: 0, scope: !2022)
!2031 = !DILocation(line: 178, column: 13, scope: !2022)
!2032 = !DILocation(line: 178, column: 12, scope: !2022)
!2033 = !DILocation(line: 178, column: 5, scope: !2022)
!2034 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2023, file: !2023, line: 171, type: !2035, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !2026, !58}
!2037 = !{!2038, !2039}
!2038 = !DILocalVariable(name: "Register", arg: 1, scope: !2034, file: !2023, line: 171, type: !2026)
!2039 = !DILocalVariable(name: "Value", arg: 2, scope: !2034, file: !2023, line: 171, type: !58)
!2040 = !DILocation(line: 0, scope: !2034)
!2041 = !DILocation(line: 173, column: 6, scope: !2034)
!2042 = !DILocation(line: 173, column: 36, scope: !2034)
!2043 = !DILocation(line: 174, column: 1, scope: !2034)
!2044 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !68, file: !68, line: 145, type: !2045, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !210}
!2047 = !{!2048, !2049, !2050}
!2048 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2044, file: !68, line: 145, type: !210)
!2049 = !DILocalVariable(name: "reg", scope: !2044, file: !68, line: 147, type: !74)
!2050 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2044, file: !68, line: 148, type: !73)
!2051 = !DILocation(line: 0, scope: !2044)
!2052 = !DILocation(line: 147, column: 5, scope: !2044)
!2053 = !DILocation(line: 147, column: 23, scope: !2044)
!2054 = !DILocation(line: 150, column: 11, scope: !2044)
!2055 = !DILocation(line: 150, column: 9, scope: !2044)
!2056 = !DILocation(line: 151, column: 12, scope: !2044)
!2057 = !DILocation(line: 151, column: 16, scope: !2044)
!2058 = !DILocation(line: 151, column: 39, scope: !2044)
!2059 = !DILocation(line: 151, column: 9, scope: !2044)
!2060 = !DILocation(line: 153, column: 9, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2044, file: !68, line: 153, column: 9)
!2062 = !DILocation(line: 153, column: 13, scope: !2061)
!2063 = !DILocation(line: 153, column: 9, scope: !2044)
!2064 = !DILocation(line: 154, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !68, line: 153, column: 45)
!2066 = !DILocation(line: 154, column: 13, scope: !2065)
!2067 = !DILocation(line: 155, column: 15, scope: !2065)
!2068 = !DILocation(line: 155, column: 19, scope: !2065)
!2069 = !DILocation(line: 155, column: 13, scope: !2065)
!2070 = !DILocation(line: 156, column: 15, scope: !2065)
!2071 = !DILocation(line: 156, column: 19, scope: !2065)
!2072 = !DILocation(line: 156, column: 13, scope: !2065)
!2073 = !DILocation(line: 157, column: 15, scope: !2065)
!2074 = !DILocation(line: 157, column: 13, scope: !2065)
!2075 = !DILocation(line: 158, column: 46, scope: !2065)
!2076 = !DILocation(line: 158, column: 9, scope: !2065)
!2077 = !DILocation(line: 160, column: 15, scope: !2065)
!2078 = !DILocation(line: 160, column: 13, scope: !2065)
!2079 = !DILocation(line: 161, column: 15, scope: !2065)
!2080 = !DILocation(line: 161, column: 19, scope: !2065)
!2081 = !DILocation(line: 161, column: 13, scope: !2065)
!2082 = !DILocation(line: 162, column: 15, scope: !2065)
!2083 = !DILocation(line: 162, column: 19, scope: !2065)
!2084 = !DILocation(line: 162, column: 13, scope: !2065)
!2085 = !DILocation(line: 163, column: 15, scope: !2065)
!2086 = !DILocation(line: 163, column: 19, scope: !2065)
!2087 = !DILocation(line: 163, column: 13, scope: !2065)
!2088 = !DILocation(line: 164, column: 46, scope: !2065)
!2089 = !DILocation(line: 164, column: 9, scope: !2065)
!2090 = !DILocation(line: 166, column: 9, scope: !2065)
!2091 = !DILocation(line: 167, column: 19, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2065, file: !68, line: 166, column: 12)
!2093 = !DILocation(line: 167, column: 17, scope: !2092)
!2094 = !DILocation(line: 168, column: 19, scope: !2092)
!2095 = !DILocation(line: 168, column: 23, scope: !2092)
!2096 = !DILocation(line: 168, column: 17, scope: !2092)
!2097 = !DILocation(line: 169, column: 19, scope: !2065)
!2098 = !DILocation(line: 169, column: 18, scope: !2065)
!2099 = !DILocation(line: 169, column: 9, scope: !2092)
!2100 = distinct !{!2100, !2090, !2101}
!2101 = !DILocation(line: 169, column: 22, scope: !2065)
!2102 = !DILocation(line: 171, column: 15, scope: !2065)
!2103 = !DILocation(line: 171, column: 13, scope: !2065)
!2104 = !DILocation(line: 172, column: 15, scope: !2065)
!2105 = !DILocation(line: 172, column: 19, scope: !2065)
!2106 = !DILocation(line: 172, column: 13, scope: !2065)
!2107 = !DILocation(line: 173, column: 15, scope: !2065)
!2108 = !DILocation(line: 173, column: 19, scope: !2065)
!2109 = !DILocation(line: 173, column: 13, scope: !2065)
!2110 = !DILocation(line: 174, column: 5, scope: !2065)
!2111 = !DILocation(line: 176, column: 11, scope: !2044)
!2112 = !DILocation(line: 176, column: 9, scope: !2044)
!2113 = !DILocation(line: 177, column: 9, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2044, file: !68, line: 177, column: 9)
!2115 = !DILocation(line: 0, scope: !2114)
!2116 = !DILocation(line: 177, column: 9, scope: !2044)
!2117 = !DILocation(line: 178, column: 19, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !68, line: 177, column: 17)
!2119 = !DILocation(line: 178, column: 13, scope: !2118)
!2120 = !DILocation(line: 179, column: 5, scope: !2118)
!2121 = !DILocation(line: 180, column: 13, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2114, file: !68, line: 179, column: 12)
!2123 = !DILocation(line: 182, column: 42, scope: !2044)
!2124 = !DILocation(line: 182, column: 5, scope: !2044)
!2125 = !DILocation(line: 184, column: 1, scope: !2044)
!2126 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !68, file: !68, line: 191, type: !335, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2127)
!2127 = !{!2128, !2129}
!2128 = !DILocalVariable(name: "reg", scope: !2126, file: !68, line: 193, type: !74)
!2129 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2126, file: !68, line: 194, type: !73)
!2130 = !DILocation(line: 193, column: 5, scope: !2126)
!2131 = !DILocation(line: 193, column: 23, scope: !2126)
!2132 = !DILocation(line: 0, scope: !2126)
!2133 = !DILocation(line: 196, column: 11, scope: !2126)
!2134 = !DILocation(line: 196, column: 9, scope: !2126)
!2135 = !DILocation(line: 197, column: 11, scope: !2126)
!2136 = !DILocation(line: 197, column: 15, scope: !2126)
!2137 = !DILocation(line: 197, column: 9, scope: !2126)
!2138 = !DILocation(line: 198, column: 11, scope: !2126)
!2139 = !DILocation(line: 198, column: 15, scope: !2126)
!2140 = !DILocation(line: 198, column: 9, scope: !2126)
!2141 = !DILocation(line: 199, column: 11, scope: !2126)
!2142 = !DILocation(line: 199, column: 9, scope: !2126)
!2143 = !DILocation(line: 200, column: 42, scope: !2126)
!2144 = !DILocation(line: 200, column: 5, scope: !2126)
!2145 = !DILocation(line: 202, column: 11, scope: !2126)
!2146 = !DILocation(line: 202, column: 9, scope: !2126)
!2147 = !DILocation(line: 203, column: 11, scope: !2126)
!2148 = !DILocation(line: 203, column: 15, scope: !2126)
!2149 = !DILocation(line: 203, column: 9, scope: !2126)
!2150 = !DILocation(line: 204, column: 11, scope: !2126)
!2151 = !DILocation(line: 204, column: 15, scope: !2126)
!2152 = !DILocation(line: 204, column: 9, scope: !2126)
!2153 = !DILocation(line: 205, column: 11, scope: !2126)
!2154 = !DILocation(line: 205, column: 9, scope: !2126)
!2155 = !DILocation(line: 206, column: 42, scope: !2126)
!2156 = !DILocation(line: 206, column: 5, scope: !2126)
!2157 = !DILocation(line: 209, column: 1, scope: !2126)
!2158 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !68, file: !68, line: 216, type: !335, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2159)
!2159 = !{!2160, !2161}
!2160 = !DILocalVariable(name: "reg", scope: !2158, file: !68, line: 218, type: !74)
!2161 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2158, file: !68, line: 219, type: !73)
!2162 = !DILocation(line: 218, column: 5, scope: !2158)
!2163 = !DILocation(line: 218, column: 23, scope: !2158)
!2164 = !DILocation(line: 0, scope: !2158)
!2165 = !DILocation(line: 222, column: 11, scope: !2158)
!2166 = !DILocation(line: 222, column: 9, scope: !2158)
!2167 = !DILocation(line: 223, column: 11, scope: !2158)
!2168 = !DILocation(line: 223, column: 15, scope: !2158)
!2169 = !DILocation(line: 223, column: 9, scope: !2158)
!2170 = !DILocation(line: 224, column: 11, scope: !2158)
!2171 = !DILocation(line: 224, column: 9, scope: !2158)
!2172 = !DILocation(line: 225, column: 39, scope: !2158)
!2173 = !DILocation(line: 225, column: 5, scope: !2158)
!2174 = !DILocation(line: 228, column: 11, scope: !2158)
!2175 = !DILocation(line: 228, column: 9, scope: !2158)
!2176 = !DILocation(line: 229, column: 11, scope: !2158)
!2177 = !DILocation(line: 229, column: 15, scope: !2158)
!2178 = !DILocation(line: 229, column: 9, scope: !2158)
!2179 = !DILocation(line: 230, column: 11, scope: !2158)
!2180 = !DILocation(line: 230, column: 9, scope: !2158)
!2181 = !DILocation(line: 231, column: 39, scope: !2158)
!2182 = !DILocation(line: 231, column: 5, scope: !2158)
!2183 = !DILocation(line: 233, column: 5, scope: !2158)
!2184 = !DILocation(line: 233, column: 12, scope: !2158)
!2185 = !DILocation(line: 233, column: 19, scope: !2158)
!2186 = !DILocation(line: 233, column: 16, scope: !2158)
!2187 = distinct !{!2187, !2183, !2188}
!2188 = !DILocation(line: 233, column: 52, scope: !2158)
!2189 = !DILocation(line: 235, column: 21, scope: !2158)
!2190 = !DILocation(line: 235, column: 19, scope: !2158)
!2191 = !DILocation(line: 236, column: 5, scope: !2158)
!2192 = !DILocation(line: 237, column: 17, scope: !2158)
!2193 = !DILocation(line: 237, column: 33, scope: !2158)
!2194 = !DILocation(line: 237, column: 5, scope: !2158)
!2195 = !DILocation(line: 239, column: 1, scope: !2158)
!2196 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !68, file: !68, line: 246, type: !335, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2197)
!2197 = !{!2198, !2199}
!2198 = !DILocalVariable(name: "reg", scope: !2196, file: !68, line: 248, type: !74)
!2199 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2196, file: !68, line: 249, type: !73)
!2200 = !DILocation(line: 248, column: 5, scope: !2196)
!2201 = !DILocation(line: 248, column: 23, scope: !2196)
!2202 = !DILocation(line: 0, scope: !2196)
!2203 = !DILocation(line: 252, column: 5, scope: !2196)
!2204 = !DILocation(line: 255, column: 11, scope: !2196)
!2205 = !DILocation(line: 255, column: 9, scope: !2196)
!2206 = !DILocation(line: 256, column: 11, scope: !2196)
!2207 = !DILocation(line: 256, column: 15, scope: !2196)
!2208 = !DILocation(line: 256, column: 9, scope: !2196)
!2209 = !DILocation(line: 257, column: 11, scope: !2196)
!2210 = !DILocation(line: 257, column: 15, scope: !2196)
!2211 = !DILocation(line: 257, column: 9, scope: !2196)
!2212 = !DILocation(line: 258, column: 39, scope: !2196)
!2213 = !DILocation(line: 258, column: 5, scope: !2196)
!2214 = !DILocation(line: 260, column: 5, scope: !2196)
!2215 = !DILocation(line: 260, column: 12, scope: !2196)
!2216 = !DILocation(line: 260, column: 19, scope: !2196)
!2217 = !DILocation(line: 260, column: 16, scope: !2196)
!2218 = distinct !{!2218, !2214, !2219}
!2219 = !DILocation(line: 260, column: 52, scope: !2196)
!2220 = !DILocation(line: 263, column: 11, scope: !2196)
!2221 = !DILocation(line: 263, column: 9, scope: !2196)
!2222 = !DILocation(line: 264, column: 11, scope: !2196)
!2223 = !DILocation(line: 264, column: 15, scope: !2196)
!2224 = !DILocation(line: 264, column: 9, scope: !2196)
!2225 = !DILocation(line: 265, column: 11, scope: !2196)
!2226 = !DILocation(line: 265, column: 15, scope: !2196)
!2227 = !DILocation(line: 265, column: 9, scope: !2196)
!2228 = !DILocation(line: 266, column: 39, scope: !2196)
!2229 = !DILocation(line: 266, column: 5, scope: !2196)
!2230 = !DILocation(line: 269, column: 11, scope: !2196)
!2231 = !DILocation(line: 269, column: 9, scope: !2196)
!2232 = !DILocation(line: 270, column: 11, scope: !2196)
!2233 = !DILocation(line: 270, column: 15, scope: !2196)
!2234 = !DILocation(line: 270, column: 9, scope: !2196)
!2235 = !DILocation(line: 271, column: 11, scope: !2196)
!2236 = !DILocation(line: 271, column: 15, scope: !2196)
!2237 = !DILocation(line: 271, column: 9, scope: !2196)
!2238 = !DILocation(line: 272, column: 39, scope: !2196)
!2239 = !DILocation(line: 272, column: 5, scope: !2196)
!2240 = !DILocation(line: 273, column: 19, scope: !2196)
!2241 = !DILocation(line: 274, column: 5, scope: !2196)
!2242 = !DILocation(line: 275, column: 17, scope: !2196)
!2243 = !DILocation(line: 275, column: 33, scope: !2196)
!2244 = !DILocation(line: 275, column: 5, scope: !2196)
!2245 = !DILocation(line: 277, column: 1, scope: !2196)
!2246 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !68, file: !68, line: 284, type: !335, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2247)
!2247 = !{!2248, !2249}
!2248 = !DILocalVariable(name: "reg", scope: !2246, file: !68, line: 286, type: !74)
!2249 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2246, file: !68, line: 287, type: !73)
!2250 = !DILocation(line: 286, column: 5, scope: !2246)
!2251 = !DILocation(line: 286, column: 23, scope: !2246)
!2252 = !DILocation(line: 0, scope: !2246)
!2253 = !DILocation(line: 290, column: 5, scope: !2246)
!2254 = !DILocation(line: 293, column: 11, scope: !2246)
!2255 = !DILocation(line: 293, column: 9, scope: !2246)
!2256 = !DILocation(line: 294, column: 11, scope: !2246)
!2257 = !DILocation(line: 294, column: 15, scope: !2246)
!2258 = !DILocation(line: 294, column: 9, scope: !2246)
!2259 = !DILocation(line: 295, column: 11, scope: !2246)
!2260 = !DILocation(line: 295, column: 15, scope: !2246)
!2261 = !DILocation(line: 295, column: 9, scope: !2246)
!2262 = !DILocation(line: 296, column: 39, scope: !2246)
!2263 = !DILocation(line: 296, column: 5, scope: !2246)
!2264 = !DILocation(line: 298, column: 5, scope: !2246)
!2265 = !DILocation(line: 298, column: 12, scope: !2246)
!2266 = !DILocation(line: 298, column: 19, scope: !2246)
!2267 = !DILocation(line: 298, column: 16, scope: !2246)
!2268 = distinct !{!2268, !2264, !2269}
!2269 = !DILocation(line: 298, column: 52, scope: !2246)
!2270 = !DILocation(line: 301, column: 11, scope: !2246)
!2271 = !DILocation(line: 301, column: 9, scope: !2246)
!2272 = !DILocation(line: 302, column: 11, scope: !2246)
!2273 = !DILocation(line: 302, column: 15, scope: !2246)
!2274 = !DILocation(line: 302, column: 9, scope: !2246)
!2275 = !DILocation(line: 303, column: 11, scope: !2246)
!2276 = !DILocation(line: 303, column: 15, scope: !2246)
!2277 = !DILocation(line: 303, column: 9, scope: !2246)
!2278 = !DILocation(line: 304, column: 39, scope: !2246)
!2279 = !DILocation(line: 304, column: 5, scope: !2246)
!2280 = !DILocation(line: 307, column: 11, scope: !2246)
!2281 = !DILocation(line: 307, column: 9, scope: !2246)
!2282 = !DILocation(line: 308, column: 11, scope: !2246)
!2283 = !DILocation(line: 308, column: 15, scope: !2246)
!2284 = !DILocation(line: 308, column: 9, scope: !2246)
!2285 = !DILocation(line: 309, column: 11, scope: !2246)
!2286 = !DILocation(line: 309, column: 15, scope: !2246)
!2287 = !DILocation(line: 309, column: 9, scope: !2246)
!2288 = !DILocation(line: 310, column: 39, scope: !2246)
!2289 = !DILocation(line: 310, column: 5, scope: !2246)
!2290 = !DILocation(line: 311, column: 19, scope: !2246)
!2291 = !DILocation(line: 312, column: 5, scope: !2246)
!2292 = !DILocation(line: 313, column: 17, scope: !2246)
!2293 = !DILocation(line: 313, column: 33, scope: !2246)
!2294 = !DILocation(line: 313, column: 5, scope: !2246)
!2295 = !DILocation(line: 315, column: 1, scope: !2246)
!2296 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !68, file: !68, line: 323, type: !335, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2297)
!2297 = !{!2298, !2299}
!2298 = !DILocalVariable(name: "reg", scope: !2296, file: !68, line: 325, type: !74)
!2299 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2296, file: !68, line: 326, type: !73)
!2300 = !DILocation(line: 325, column: 5, scope: !2296)
!2301 = !DILocation(line: 325, column: 23, scope: !2296)
!2302 = !DILocation(line: 0, scope: !2296)
!2303 = !DILocation(line: 329, column: 5, scope: !2296)
!2304 = !DILocation(line: 332, column: 11, scope: !2296)
!2305 = !DILocation(line: 332, column: 9, scope: !2296)
!2306 = !DILocation(line: 333, column: 11, scope: !2296)
!2307 = !DILocation(line: 333, column: 15, scope: !2296)
!2308 = !DILocation(line: 333, column: 9, scope: !2296)
!2309 = !DILocation(line: 334, column: 11, scope: !2296)
!2310 = !DILocation(line: 334, column: 9, scope: !2296)
!2311 = !DILocation(line: 335, column: 39, scope: !2296)
!2312 = !DILocation(line: 335, column: 5, scope: !2296)
!2313 = !DILocation(line: 337, column: 5, scope: !2296)
!2314 = !DILocation(line: 337, column: 12, scope: !2296)
!2315 = !DILocation(line: 337, column: 19, scope: !2296)
!2316 = !DILocation(line: 337, column: 16, scope: !2296)
!2317 = distinct !{!2317, !2313, !2318}
!2318 = !DILocation(line: 337, column: 52, scope: !2296)
!2319 = !DILocation(line: 340, column: 11, scope: !2296)
!2320 = !DILocation(line: 340, column: 9, scope: !2296)
!2321 = !DILocation(line: 341, column: 11, scope: !2296)
!2322 = !DILocation(line: 341, column: 15, scope: !2296)
!2323 = !DILocation(line: 341, column: 9, scope: !2296)
!2324 = !DILocation(line: 342, column: 11, scope: !2296)
!2325 = !DILocation(line: 342, column: 15, scope: !2296)
!2326 = !DILocation(line: 342, column: 9, scope: !2296)
!2327 = !DILocation(line: 343, column: 39, scope: !2296)
!2328 = !DILocation(line: 343, column: 5, scope: !2296)
!2329 = !DILocation(line: 344, column: 19, scope: !2296)
!2330 = !DILocation(line: 345, column: 5, scope: !2296)
!2331 = !DILocation(line: 346, column: 17, scope: !2296)
!2332 = !DILocation(line: 346, column: 33, scope: !2296)
!2333 = !DILocation(line: 346, column: 5, scope: !2296)
!2334 = !DILocation(line: 348, column: 1, scope: !2296)
!2335 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !68, file: !68, line: 353, type: !335, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2336)
!2336 = !{!2337, !2338}
!2337 = !DILocalVariable(name: "reg", scope: !2335, file: !68, line: 355, type: !76)
!2338 = !DILocalVariable(name: "pTopCfgHclk", scope: !2335, file: !68, line: 356, type: !75)
!2339 = !DILocation(line: 355, column: 5, scope: !2335)
!2340 = !DILocation(line: 355, column: 21, scope: !2335)
!2341 = !DILocation(line: 0, scope: !2335)
!2342 = !DILocation(line: 358, column: 11, scope: !2335)
!2343 = !DILocation(line: 358, column: 9, scope: !2335)
!2344 = !DILocation(line: 359, column: 11, scope: !2335)
!2345 = !DILocation(line: 359, column: 15, scope: !2335)
!2346 = !DILocation(line: 359, column: 9, scope: !2335)
!2347 = !DILocation(line: 360, column: 11, scope: !2335)
!2348 = !DILocation(line: 360, column: 9, scope: !2335)
!2349 = !DILocation(line: 361, column: 37, scope: !2335)
!2350 = !DILocation(line: 361, column: 5, scope: !2335)
!2351 = !DILocation(line: 362, column: 1, scope: !2335)
!2352 = distinct !DISubprogram(name: "getc", scope: !83, file: !83, line: 68, type: !2353, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!125}
!2355 = !{!2356}
!2356 = !DILocalVariable(name: "rc", scope: !2352, file: !83, line: 71, type: !125)
!2357 = !DILocation(line: 71, column: 14, scope: !2352)
!2358 = !DILocation(line: 0, scope: !2352)
!2359 = !DILocation(line: 72, column: 5, scope: !2352)
!2360 = distinct !DISubprogram(name: "getc_nowait", scope: !83, file: !83, line: 80, type: !2353, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2361)
!2361 = !{!2362}
!2362 = !DILocalVariable(name: "c", scope: !2360, file: !83, line: 82, type: !326)
!2363 = !DILocation(line: 84, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2360, file: !83, line: 84, column: 9)
!2365 = !DILocation(line: 84, column: 40, scope: !2364)
!2366 = !DILocation(line: 84, column: 9, scope: !2360)
!2367 = !DILocation(line: 85, column: 13, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2364, file: !83, line: 84, column: 47)
!2369 = !DILocation(line: 86, column: 16, scope: !2368)
!2370 = !DILocation(line: 0, scope: !2360)
!2371 = !DILocation(line: 86, column: 9, scope: !2368)
!2372 = !DILocation(line: 0, scope: !2364)
!2373 = !DILocation(line: 90, column: 1, scope: !2360)
!2374 = distinct !DISubprogram(name: "uart_output_char", scope: !83, file: !83, line: 93, type: !2375, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2378)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !2377, !114}
!2377 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !86, line: 75, baseType: !85)
!2378 = !{!2379, !2380, !2381}
!2379 = !DILocalVariable(name: "port_no", arg: 1, scope: !2374, file: !83, line: 93, type: !2377)
!2380 = !DILocalVariable(name: "c", arg: 2, scope: !2374, file: !83, line: 93, type: !114)
!2381 = !DILocalVariable(name: "base", scope: !2374, file: !83, line: 95, type: !7)
!2382 = !DILocation(line: 0, scope: !2374)
!2383 = !DILocation(line: 95, column: 25, scope: !2374)
!2384 = !DILocation(line: 97, column: 5, scope: !2374)
!2385 = !DILocation(line: 97, column: 14, scope: !2374)
!2386 = !DILocation(line: 97, column: 42, scope: !2374)
!2387 = !DILocation(line: 97, column: 12, scope: !2374)
!2388 = distinct !{!2388, !2384, !2389}
!2389 = !DILocation(line: 98, column: 9, scope: !2374)
!2390 = !DILocation(line: 99, column: 35, scope: !2374)
!2391 = !DILocation(line: 99, column: 5, scope: !2374)
!2392 = !DILocation(line: 99, column: 33, scope: !2374)
!2393 = !DILocation(line: 102, column: 1, scope: !2374)
!2394 = distinct !DISubprogram(name: "uart_input_char", scope: !83, file: !83, line: 106, type: !2395, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!210, !2377}
!2397 = !{!2398, !2399, !2400}
!2398 = !DILocalVariable(name: "port_no", arg: 1, scope: !2394, file: !83, line: 106, type: !2377)
!2399 = !DILocalVariable(name: "base", scope: !2394, file: !83, line: 108, type: !7)
!2400 = !DILocalVariable(name: "c", scope: !2394, file: !83, line: 109, type: !326)
!2401 = !DILocation(line: 0, scope: !2394)
!2402 = !DILocation(line: 108, column: 25, scope: !2394)
!2403 = !DILocation(line: 111, column: 5, scope: !2394)
!2404 = !DILocation(line: 111, column: 14, scope: !2394)
!2405 = !DILocation(line: 111, column: 42, scope: !2394)
!2406 = !DILocation(line: 111, column: 12, scope: !2394)
!2407 = distinct !{!2407, !2403, !2408}
!2408 = !DILocation(line: 112, column: 9, scope: !2394)
!2409 = !DILocation(line: 114, column: 9, scope: !2394)
!2410 = !DILocation(line: 116, column: 5, scope: !2394)
!2411 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !83, file: !83, line: 120, type: !2412, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!58, !2377}
!2414 = !{!2415, !2416, !2417}
!2415 = !DILocalVariable(name: "port_no", arg: 1, scope: !2411, file: !83, line: 120, type: !2377)
!2416 = !DILocalVariable(name: "base", scope: !2411, file: !83, line: 122, type: !7)
!2417 = !DILocalVariable(name: "c", scope: !2411, file: !83, line: 123, type: !326)
!2418 = !DILocation(line: 0, scope: !2411)
!2419 = !DILocation(line: 122, column: 25, scope: !2411)
!2420 = !DILocation(line: 125, column: 9, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2411, file: !83, line: 125, column: 9)
!2422 = !DILocation(line: 125, column: 37, scope: !2421)
!2423 = !DILocation(line: 125, column: 9, scope: !2411)
!2424 = !DILocation(line: 126, column: 13, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !83, line: 125, column: 44)
!2426 = !DILocation(line: 127, column: 16, scope: !2425)
!2427 = !DILocation(line: 127, column: 9, scope: !2425)
!2428 = !DILocation(line: 0, scope: !2421)
!2429 = !DILocation(line: 131, column: 1, scope: !2411)
!2430 = distinct !DISubprogram(name: "halUART_HWInit", scope: !83, file: !83, line: 136, type: !2431, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !2377}
!2433 = !{!2434}
!2434 = !DILocalVariable(name: "u_port", arg: 1, scope: !2430, file: !83, line: 136, type: !2377)
!2435 = !DILocation(line: 0, scope: !2430)
!2436 = !DILocation(line: 139, column: 5, scope: !2430)
!2437 = !DILocation(line: 140, column: 9, scope: !2430)
!2438 = !DILocation(line: 153, column: 5, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !83, line: 147, column: 38)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !83, line: 147, column: 16)
!2441 = distinct !DILexicalBlock(scope: !2430, file: !83, line: 140, column: 9)
!2442 = !DILocation(line: 0, scope: !2441)
!2443 = !DILocation(line: 155, column: 1, scope: !2430)
!2444 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !83, file: !83, line: 158, type: !2445, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2449)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !2377, !58, !2447, !2447, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !59, line: 36, baseType: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !61, line: 57, baseType: !112)
!2449 = !{!2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2465, !2466}
!2450 = !DILocalVariable(name: "u_port", arg: 1, scope: !2444, file: !83, line: 158, type: !2377)
!2451 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2444, file: !83, line: 158, type: !58)
!2452 = !DILocalVariable(name: "databit", arg: 3, scope: !2444, file: !83, line: 158, type: !2447)
!2453 = !DILocalVariable(name: "parity", arg: 4, scope: !2444, file: !83, line: 158, type: !2447)
!2454 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2444, file: !83, line: 158, type: !2447)
!2455 = !DILocalVariable(name: "control_word", scope: !2444, file: !83, line: 160, type: !2447)
!2456 = !DILocalVariable(name: "UART_BASE", scope: !2444, file: !83, line: 161, type: !58)
!2457 = !DILocalVariable(name: "data", scope: !2444, file: !83, line: 162, type: !58)
!2458 = !DILocalVariable(name: "uart_lcr", scope: !2444, file: !83, line: 162, type: !58)
!2459 = !DILocalVariable(name: "high_speed_div", scope: !2444, file: !83, line: 162, type: !58)
!2460 = !DILocalVariable(name: "sample_count", scope: !2444, file: !83, line: 162, type: !58)
!2461 = !DILocalVariable(name: "sample_point", scope: !2444, file: !83, line: 162, type: !58)
!2462 = !DILocalVariable(name: "fraction", scope: !2444, file: !83, line: 162, type: !58)
!2463 = !DILocalVariable(name: "fraction_L_mapping", scope: !2444, file: !83, line: 163, type: !2464)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2447, size: 176, elements: !673)
!2465 = !DILocalVariable(name: "fraction_M_mapping", scope: !2444, file: !83, line: 164, type: !2464)
!2466 = !DILocalVariable(name: "status", scope: !2444, file: !83, line: 165, type: !181)
!2467 = !DILocation(line: 0, scope: !2444)
!2468 = !DILocation(line: 163, column: 15, scope: !2444)
!2469 = !DILocation(line: 164, column: 15, scope: !2444)
!2470 = !DILocation(line: 166, column: 20, scope: !2444)
!2471 = !DILocation(line: 166, column: 18, scope: !2444)
!2472 = !DILocation(line: 168, column: 9, scope: !2444)
!2473 = !DILocation(line: 176, column: 5, scope: !2444)
!2474 = !DILocation(line: 176, column: 44, scope: !2444)
!2475 = !DILocation(line: 177, column: 16, scope: !2444)
!2476 = !DILocation(line: 178, column: 50, scope: !2444)
!2477 = !DILocation(line: 178, column: 38, scope: !2444)
!2478 = !DILocation(line: 179, column: 12, scope: !2444)
!2479 = !DILocation(line: 179, column: 25, scope: !2444)
!2480 = !DILocation(line: 180, column: 28, scope: !2444)
!2481 = !DILocation(line: 180, column: 34, scope: !2444)
!2482 = !DILocation(line: 182, column: 29, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2444, file: !83, line: 181, column: 5)
!2484 = !DILocation(line: 182, column: 46, scope: !2483)
!2485 = !DILocation(line: 183, column: 26, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !83, line: 183, column: 13)
!2487 = !DILocation(line: 183, column: 13, scope: !2483)
!2488 = !DILocation(line: 192, column: 30, scope: !2444)
!2489 = !DILocation(line: 192, column: 35, scope: !2444)
!2490 = !DILocation(line: 192, column: 46, scope: !2444)
!2491 = !DILocation(line: 192, column: 74, scope: !2444)
!2492 = !DILocation(line: 192, column: 53, scope: !2444)
!2493 = !DILocation(line: 192, column: 80, scope: !2444)
!2494 = !DILocation(line: 193, column: 56, scope: !2444)
!2495 = !DILocation(line: 193, column: 5, scope: !2444)
!2496 = !DILocation(line: 193, column: 38, scope: !2444)
!2497 = !DILocation(line: 194, column: 57, scope: !2444)
!2498 = !DILocation(line: 194, column: 63, scope: !2444)
!2499 = !DILocation(line: 194, column: 5, scope: !2444)
!2500 = !DILocation(line: 194, column: 38, scope: !2444)
!2501 = !DILocation(line: 195, column: 5, scope: !2444)
!2502 = !DILocation(line: 195, column: 45, scope: !2444)
!2503 = !DILocation(line: 196, column: 5, scope: !2444)
!2504 = !DILocation(line: 196, column: 47, scope: !2444)
!2505 = !DILocation(line: 197, column: 46, scope: !2444)
!2506 = !DILocation(line: 197, column: 5, scope: !2444)
!2507 = !DILocation(line: 197, column: 44, scope: !2444)
!2508 = !DILocation(line: 198, column: 46, scope: !2444)
!2509 = !DILocation(line: 198, column: 5, scope: !2444)
!2510 = !DILocation(line: 198, column: 44, scope: !2444)
!2511 = !DILocation(line: 199, column: 38, scope: !2444)
!2512 = !DILocation(line: 200, column: 5, scope: !2444)
!2513 = !DILocation(line: 200, column: 38, scope: !2444)
!2514 = !DILocation(line: 202, column: 20, scope: !2444)
!2515 = !DILocation(line: 203, column: 18, scope: !2444)
!2516 = !DILocation(line: 205, column: 18, scope: !2444)
!2517 = !DILocation(line: 207, column: 18, scope: !2444)
!2518 = !DILocation(line: 208, column: 18, scope: !2444)
!2519 = !DILocation(line: 209, column: 5, scope: !2444)
!2520 = !DILocation(line: 213, column: 1, scope: !2444)
!2521 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !83, file: !83, line: 215, type: !2522, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2525)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{null, !2377, !181, !2524}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!2525 = !{!2526, !2527, !2528}
!2526 = !DILocalVariable(name: "u_port", arg: 1, scope: !2521, file: !83, line: 215, type: !2377)
!2527 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2521, file: !83, line: 215, type: !181)
!2528 = !DILocalVariable(name: "length", arg: 3, scope: !2521, file: !83, line: 215, type: !2524)
!2529 = !DILocation(line: 0, scope: !2521)
!2530 = !DILocation(line: 217, column: 16, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2521, file: !83, line: 217, column: 9)
!2532 = !DILocation(line: 0, scope: !2531)
!2533 = !DILocation(line: 217, column: 9, scope: !2521)
!2534 = !DILocation(line: 218, column: 13, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2531, file: !83, line: 217, column: 31)
!2536 = !DILocation(line: 219, column: 23, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !83, line: 218, column: 20)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !83, line: 218, column: 13)
!2539 = !DILocation(line: 220, column: 9, scope: !2537)
!2540 = !DILocation(line: 221, column: 23, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2538, file: !83, line: 220, column: 16)
!2542 = !DILocation(line: 221, column: 21, scope: !2541)
!2543 = !DILocation(line: 222, column: 24, scope: !2541)
!2544 = !DILocation(line: 222, column: 21, scope: !2541)
!2545 = !DILocation(line: 225, column: 13, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2531, file: !83, line: 224, column: 12)
!2547 = !DILocation(line: 226, column: 23, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !83, line: 225, column: 20)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !83, line: 225, column: 13)
!2550 = !DILocation(line: 227, column: 9, scope: !2548)
!2551 = !DILocation(line: 228, column: 23, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2549, file: !83, line: 227, column: 16)
!2553 = !DILocation(line: 228, column: 21, scope: !2552)
!2554 = !DILocation(line: 229, column: 24, scope: !2552)
!2555 = !DILocation(line: 229, column: 21, scope: !2552)
!2556 = !DILocation(line: 233, column: 5, scope: !2521)
!2557 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !83, file: !83, line: 236, type: !2558, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !2377, !378, !58}
!2560 = !{!2561, !2562, !2563, !2564}
!2561 = !DILocalVariable(name: "u_port", arg: 1, scope: !2557, file: !83, line: 236, type: !2377)
!2562 = !DILocalVariable(name: "data", arg: 2, scope: !2557, file: !83, line: 236, type: !378)
!2563 = !DILocalVariable(name: "length", arg: 3, scope: !2557, file: !83, line: 236, type: !58)
!2564 = !DILocalVariable(name: "idx", scope: !2557, file: !83, line: 238, type: !72)
!2565 = !DILocation(line: 0, scope: !2557)
!2566 = !DILocation(line: 239, column: 23, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !83, line: 239, column: 5)
!2568 = distinct !DILexicalBlock(scope: !2557, file: !83, line: 239, column: 5)
!2569 = !DILocation(line: 239, column: 5, scope: !2568)
!2570 = !DILocation(line: 240, column: 13, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2567, file: !83, line: 239, column: 40)
!2572 = !DILocation(line: 244, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !83, line: 242, column: 42)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !83, line: 242, column: 20)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !83, line: 240, column: 13)
!2576 = !DILocation(line: 0, scope: !2575)
!2577 = !DILocation(line: 239, column: 36, scope: !2567)
!2578 = distinct !{!2578, !2569, !2579}
!2579 = !DILocation(line: 246, column: 5, scope: !2568)
!2580 = !DILocation(line: 249, column: 1, scope: !2557)
!2581 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !83, file: !83, line: 251, type: !2582, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2586)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{null, !2377, !2584, !58}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "u_port", arg: 1, scope: !2581, file: !83, line: 251, type: !2377)
!2588 = !DILocalVariable(name: "data", arg: 2, scope: !2581, file: !83, line: 251, type: !2584)
!2589 = !DILocalVariable(name: "length", arg: 3, scope: !2581, file: !83, line: 251, type: !58)
!2590 = !DILocalVariable(name: "idx", scope: !2581, file: !83, line: 253, type: !72)
!2591 = !DILocation(line: 0, scope: !2581)
!2592 = !DILocation(line: 254, column: 23, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !83, line: 254, column: 5)
!2594 = distinct !DILexicalBlock(scope: !2581, file: !83, line: 254, column: 5)
!2595 = !DILocation(line: 254, column: 5, scope: !2594)
!2596 = !DILocation(line: 255, column: 13, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2593, file: !83, line: 254, column: 40)
!2598 = !DILocation(line: 256, column: 61, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !83, line: 255, column: 35)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !83, line: 255, column: 13)
!2601 = !DILocation(line: 256, column: 59, scope: !2599)
!2602 = !DILocation(line: 257, column: 9, scope: !2599)
!2603 = !DILocation(line: 258, column: 61, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !83, line: 257, column: 42)
!2605 = distinct !DILexicalBlock(scope: !2600, file: !83, line: 257, column: 20)
!2606 = !DILocation(line: 258, column: 59, scope: !2604)
!2607 = !DILocation(line: 259, column: 9, scope: !2604)
!2608 = !DILocation(line: 254, column: 36, scope: !2593)
!2609 = distinct !{!2609, !2595, !2610}
!2610 = !DILocation(line: 261, column: 5, scope: !2594)
!2611 = !DILocation(line: 264, column: 1, scope: !2581)
!2612 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !83, file: !83, line: 266, type: !2613, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !2377, !378, !58, !58}
!2615 = !{!2616, !2617, !2618, !2619}
!2616 = !DILocalVariable(name: "u_port", arg: 1, scope: !2612, file: !83, line: 266, type: !2377)
!2617 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2612, file: !83, line: 266, type: !378)
!2618 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2612, file: !83, line: 266, type: !58)
!2619 = !DILocalVariable(name: "threshold", arg: 4, scope: !2612, file: !83, line: 266, type: !58)
!2620 = !DILocation(line: 0, scope: !2612)
!2621 = !DILocation(line: 268, column: 9, scope: !2612)
!2622 = !DILocation(line: 274, column: 5, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !83, line: 271, column: 38)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !83, line: 271, column: 16)
!2625 = distinct !DILexicalBlock(scope: !2612, file: !83, line: 268, column: 9)
!2626 = !DILocation(line: 0, scope: !2625)
!2627 = !DILocation(line: 276, column: 1, scope: !2612)
!2628 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !83, file: !83, line: 278, type: !2629, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !2377, !378, !58, !58, !58, !58}
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637}
!2632 = !DILocalVariable(name: "u_port", arg: 1, scope: !2628, file: !83, line: 278, type: !2377)
!2633 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2628, file: !83, line: 278, type: !378)
!2634 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2628, file: !83, line: 278, type: !58)
!2635 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2628, file: !83, line: 278, type: !58)
!2636 = !DILocalVariable(name: "threshold", arg: 5, scope: !2628, file: !83, line: 278, type: !58)
!2637 = !DILocalVariable(name: "timeout", arg: 6, scope: !2628, file: !83, line: 278, type: !58)
!2638 = !DILocation(line: 0, scope: !2628)
!2639 = !DILocation(line: 280, column: 9, scope: !2628)
!2640 = !DILocation(line: 286, column: 5, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !83, line: 283, column: 38)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !83, line: 283, column: 16)
!2643 = distinct !DILexicalBlock(scope: !2628, file: !83, line: 280, column: 9)
!2644 = !DILocation(line: 0, scope: !2643)
!2645 = !DILocation(line: 288, column: 1, scope: !2628)
!2646 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !83, file: !83, line: 290, type: !2647, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{null, !2377, !333}
!2649 = !{!2650, !2651}
!2650 = !DILocalVariable(name: "u_port", arg: 1, scope: !2646, file: !83, line: 290, type: !2377)
!2651 = !DILocalVariable(name: "func", arg: 2, scope: !2646, file: !83, line: 290, type: !333)
!2652 = !DILocation(line: 0, scope: !2646)
!2653 = !DILocation(line: 292, column: 9, scope: !2646)
!2654 = !DILocation(line: 296, column: 5, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !83, line: 294, column: 38)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !83, line: 294, column: 16)
!2657 = distinct !DILexicalBlock(scope: !2646, file: !83, line: 292, column: 9)
!2658 = !DILocation(line: 0, scope: !2657)
!2659 = !DILocation(line: 298, column: 1, scope: !2646)
!2660 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !83, file: !83, line: 300, type: !2647, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2661)
!2661 = !{!2662, !2663}
!2662 = !DILocalVariable(name: "u_port", arg: 1, scope: !2660, file: !83, line: 300, type: !2377)
!2663 = !DILocalVariable(name: "func", arg: 2, scope: !2660, file: !83, line: 300, type: !333)
!2664 = !DILocation(line: 0, scope: !2660)
!2665 = !DILocation(line: 302, column: 9, scope: !2660)
!2666 = !DILocation(line: 306, column: 5, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !83, line: 304, column: 38)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !83, line: 304, column: 16)
!2669 = distinct !DILexicalBlock(scope: !2660, file: !83, line: 302, column: 9)
!2670 = !DILocation(line: 0, scope: !2669)
!2671 = !DILocation(line: 308, column: 1, scope: !2660)
!2672 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !83, file: !83, line: 310, type: !2431, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2673)
!2673 = !{!2674, !2675, !2676, !2677}
!2674 = !DILocalVariable(name: "u_port", arg: 1, scope: !2672, file: !83, line: 310, type: !2377)
!2675 = !DILocalVariable(name: "base", scope: !2672, file: !83, line: 312, type: !7)
!2676 = !DILocalVariable(name: "EFR", scope: !2672, file: !83, line: 313, type: !2447)
!2677 = !DILocalVariable(name: "LCR", scope: !2672, file: !83, line: 313, type: !2447)
!2678 = !DILocation(line: 0, scope: !2672)
!2679 = !DILocation(line: 312, column: 25, scope: !2672)
!2680 = !DILocation(line: 315, column: 11, scope: !2672)
!2681 = !DILocation(line: 317, column: 33, scope: !2672)
!2682 = !DILocation(line: 318, column: 11, scope: !2672)
!2683 = !DILocation(line: 320, column: 35, scope: !2672)
!2684 = !DILocation(line: 320, column: 33, scope: !2672)
!2685 = !DILocation(line: 322, column: 5, scope: !2672)
!2686 = !DILocation(line: 322, column: 39, scope: !2672)
!2687 = !DILocation(line: 324, column: 33, scope: !2672)
!2688 = !DILocation(line: 325, column: 5, scope: !2672)
!2689 = !DILocation(line: 325, column: 33, scope: !2672)
!2690 = !DILocation(line: 327, column: 35, scope: !2672)
!2691 = !DILocation(line: 327, column: 33, scope: !2672)
!2692 = !DILocation(line: 328, column: 1, scope: !2672)
!2693 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !83, file: !83, line: 330, type: !2694, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !2377, !210, !210, !210}
!2696 = !{!2697, !2698, !2699, !2700, !2701, !2702, !2703}
!2697 = !DILocalVariable(name: "u_port", arg: 1, scope: !2693, file: !83, line: 330, type: !2377)
!2698 = !DILocalVariable(name: "xon", arg: 2, scope: !2693, file: !83, line: 330, type: !210)
!2699 = !DILocalVariable(name: "xoff", arg: 3, scope: !2693, file: !83, line: 330, type: !210)
!2700 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2693, file: !83, line: 330, type: !210)
!2701 = !DILocalVariable(name: "base", scope: !2693, file: !83, line: 332, type: !7)
!2702 = !DILocalVariable(name: "EFR", scope: !2693, file: !83, line: 333, type: !2447)
!2703 = !DILocalVariable(name: "LCR", scope: !2693, file: !83, line: 333, type: !2447)
!2704 = !DILocation(line: 0, scope: !2693)
!2705 = !DILocation(line: 332, column: 25, scope: !2693)
!2706 = !DILocation(line: 335, column: 11, scope: !2693)
!2707 = !DILocation(line: 337, column: 33, scope: !2693)
!2708 = !DILocation(line: 338, column: 36, scope: !2693)
!2709 = !DILocation(line: 338, column: 5, scope: !2693)
!2710 = !DILocation(line: 338, column: 34, scope: !2693)
!2711 = !DILocation(line: 339, column: 5, scope: !2693)
!2712 = !DILocation(line: 339, column: 34, scope: !2693)
!2713 = !DILocation(line: 340, column: 37, scope: !2693)
!2714 = !DILocation(line: 340, column: 5, scope: !2693)
!2715 = !DILocation(line: 340, column: 35, scope: !2693)
!2716 = !DILocation(line: 341, column: 5, scope: !2693)
!2717 = !DILocation(line: 341, column: 35, scope: !2693)
!2718 = !DILocation(line: 343, column: 11, scope: !2693)
!2719 = !DILocation(line: 345, column: 35, scope: !2693)
!2720 = !DILocation(line: 345, column: 33, scope: !2693)
!2721 = !DILocation(line: 347, column: 35, scope: !2693)
!2722 = !DILocation(line: 347, column: 33, scope: !2693)
!2723 = !DILocation(line: 349, column: 43, scope: !2693)
!2724 = !DILocation(line: 349, column: 5, scope: !2693)
!2725 = !DILocation(line: 349, column: 41, scope: !2693)
!2726 = !DILocation(line: 350, column: 5, scope: !2693)
!2727 = !DILocation(line: 350, column: 39, scope: !2693)
!2728 = !DILocation(line: 351, column: 1, scope: !2693)
!2729 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !83, file: !83, line: 353, type: !2431, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2730)
!2730 = !{!2731, !2732, !2733}
!2731 = !DILocalVariable(name: "u_port", arg: 1, scope: !2729, file: !83, line: 353, type: !2377)
!2732 = !DILocalVariable(name: "base", scope: !2729, file: !83, line: 355, type: !7)
!2733 = !DILocalVariable(name: "LCR", scope: !2729, file: !83, line: 356, type: !2447)
!2734 = !DILocation(line: 0, scope: !2729)
!2735 = !DILocation(line: 355, column: 25, scope: !2729)
!2736 = !DILocation(line: 358, column: 11, scope: !2729)
!2737 = !DILocation(line: 360, column: 33, scope: !2729)
!2738 = !DILocation(line: 362, column: 5, scope: !2729)
!2739 = !DILocation(line: 362, column: 33, scope: !2729)
!2740 = !DILocation(line: 364, column: 33, scope: !2729)
!2741 = !DILocation(line: 366, column: 35, scope: !2729)
!2742 = !DILocation(line: 366, column: 33, scope: !2729)
!2743 = !DILocation(line: 367, column: 1, scope: !2729)
!2744 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !83, file: !83, line: 436, type: !2431, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2745)
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "u_port", arg: 1, scope: !2744, file: !83, line: 436, type: !2377)
!2747 = !DILocalVariable(name: "base", scope: !2744, file: !83, line: 438, type: !7)
!2748 = !DILocation(line: 0, scope: !2744)
!2749 = !DILocation(line: 438, column: 25, scope: !2744)
!2750 = !DILocation(line: 440, column: 5, scope: !2744)
!2751 = !DILocation(line: 440, column: 33, scope: !2744)
!2752 = !DILocation(line: 441, column: 5, scope: !2744)
!2753 = !DILocation(line: 441, column: 33, scope: !2744)
!2754 = !DILocation(line: 442, column: 5, scope: !2744)
!2755 = !DILocation(line: 442, column: 34, scope: !2744)
!2756 = !DILocation(line: 443, column: 5, scope: !2744)
!2757 = !DILocation(line: 443, column: 35, scope: !2744)
!2758 = !DILocation(line: 445, column: 33, scope: !2744)
!2759 = !DILocation(line: 446, column: 5, scope: !2744)
!2760 = !DILocation(line: 446, column: 33, scope: !2744)
!2761 = !DILocation(line: 447, column: 5, scope: !2744)
!2762 = !DILocation(line: 447, column: 33, scope: !2744)
!2763 = !DILocation(line: 449, column: 33, scope: !2744)
!2764 = !DILocation(line: 450, column: 33, scope: !2744)
!2765 = !DILocation(line: 451, column: 33, scope: !2744)
!2766 = !DILocation(line: 453, column: 33, scope: !2744)
!2767 = !DILocation(line: 454, column: 33, scope: !2744)
!2768 = !DILocation(line: 455, column: 33, scope: !2744)
!2769 = !DILocation(line: 457, column: 33, scope: !2744)
!2770 = !DILocation(line: 458, column: 5, scope: !2744)
!2771 = !DILocation(line: 458, column: 33, scope: !2744)
!2772 = !DILocation(line: 459, column: 5, scope: !2744)
!2773 = !DILocation(line: 459, column: 39, scope: !2744)
!2774 = !DILocation(line: 460, column: 5, scope: !2744)
!2775 = !DILocation(line: 460, column: 40, scope: !2744)
!2776 = !DILocation(line: 461, column: 5, scope: !2744)
!2777 = !DILocation(line: 461, column: 42, scope: !2744)
!2778 = !DILocation(line: 462, column: 5, scope: !2744)
!2779 = !DILocation(line: 462, column: 42, scope: !2744)
!2780 = !DILocation(line: 463, column: 5, scope: !2744)
!2781 = !DILocation(line: 463, column: 35, scope: !2744)
!2782 = !DILocation(line: 464, column: 5, scope: !2744)
!2783 = !DILocation(line: 464, column: 41, scope: !2744)
!2784 = !DILocation(line: 465, column: 5, scope: !2744)
!2785 = !DILocation(line: 465, column: 39, scope: !2744)
!2786 = !DILocation(line: 466, column: 5, scope: !2744)
!2787 = !DILocation(line: 466, column: 38, scope: !2744)
!2788 = !DILocation(line: 467, column: 5, scope: !2744)
!2789 = !DILocation(line: 467, column: 42, scope: !2744)
!2790 = !DILocation(line: 468, column: 5, scope: !2744)
!2791 = !DILocation(line: 468, column: 45, scope: !2744)
!2792 = !DILocation(line: 469, column: 5, scope: !2744)
!2793 = !DILocation(line: 469, column: 39, scope: !2744)
!2794 = !DILocation(line: 470, column: 5, scope: !2744)
!2795 = !DILocation(line: 470, column: 39, scope: !2744)
!2796 = !DILocation(line: 471, column: 5, scope: !2744)
!2797 = !DILocation(line: 471, column: 42, scope: !2744)
!2798 = !DILocation(line: 472, column: 1, scope: !2744)
!2799 = distinct !DISubprogram(name: "uart_query_empty", scope: !83, file: !83, line: 474, type: !2431, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2800)
!2800 = !{!2801, !2802}
!2801 = !DILocalVariable(name: "u_port", arg: 1, scope: !2799, file: !83, line: 474, type: !2377)
!2802 = !DILocalVariable(name: "base", scope: !2799, file: !83, line: 476, type: !7)
!2803 = !DILocation(line: 0, scope: !2799)
!2804 = !DILocation(line: 476, column: 25, scope: !2799)
!2805 = !DILocation(line: 478, column: 5, scope: !2799)
!2806 = !DILocation(line: 478, column: 14, scope: !2799)
!2807 = !DILocation(line: 478, column: 42, scope: !2799)
!2808 = !DILocation(line: 478, column: 12, scope: !2799)
!2809 = distinct !{!2809, !2805, !2810}
!2810 = !DILocation(line: 478, column: 50, scope: !2799)
!2811 = !DILocation(line: 479, column: 1, scope: !2799)
!2812 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !817, file: !817, line: 64, type: !2813, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{null, !497, !125, !497, null}
!2815 = !{!2816, !2817, !2818, !2819, !2828}
!2816 = !DILocalVariable(name: "func", arg: 1, scope: !2812, file: !817, line: 64, type: !497)
!2817 = !DILocalVariable(name: "line", arg: 2, scope: !2812, file: !817, line: 64, type: !125)
!2818 = !DILocalVariable(name: "message", arg: 3, scope: !2812, file: !817, line: 64, type: !497)
!2819 = !DILocalVariable(name: "ap", scope: !2812, file: !817, line: 66, type: !2820)
!2820 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2821, line: 46, baseType: !2822)
!2821 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2823, line: 32, baseType: !2824)
!2823 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!2824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !817, baseType: !2825)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !2826)
!2826 = !{!2827}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2825, file: !817, line: 66, baseType: !180, size: 32)
!2828 = !DILocalVariable(name: "mask", scope: !2812, file: !817, line: 68, type: !58)
!2829 = !DILocation(line: 0, scope: !2812)
!2830 = !DILocation(line: 66, column: 5, scope: !2812)
!2831 = !DILocation(line: 66, column: 13, scope: !2812)
!2832 = !DILocation(line: 68, column: 5, scope: !2812)
!2833 = !DILocation(line: 69, column: 5, scope: !2812)
!2834 = !DILocation(line: 71, column: 5, scope: !2812)
!2835 = !DILocation(line: 72, column: 5, scope: !2812)
!2836 = !DILocation(line: 73, column: 5, scope: !2812)
!2837 = !DILocation(line: 75, column: 37, scope: !2812)
!2838 = !DILocation(line: 75, column: 5, scope: !2812)
!2839 = !DILocation(line: 77, column: 1, scope: !2812)
!2840 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !817, file: !817, line: 78, type: !2813, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2841)
!2841 = !{!2842, !2843, !2844, !2845, !2846}
!2842 = !DILocalVariable(name: "func", arg: 1, scope: !2840, file: !817, line: 78, type: !497)
!2843 = !DILocalVariable(name: "line", arg: 2, scope: !2840, file: !817, line: 78, type: !125)
!2844 = !DILocalVariable(name: "message", arg: 3, scope: !2840, file: !817, line: 78, type: !497)
!2845 = !DILocalVariable(name: "ap", scope: !2840, file: !817, line: 80, type: !2820)
!2846 = !DILocalVariable(name: "mask", scope: !2840, file: !817, line: 82, type: !58)
!2847 = !DILocation(line: 0, scope: !2840)
!2848 = !DILocation(line: 80, column: 5, scope: !2840)
!2849 = !DILocation(line: 80, column: 13, scope: !2840)
!2850 = !DILocation(line: 82, column: 5, scope: !2840)
!2851 = !DILocation(line: 83, column: 5, scope: !2840)
!2852 = !DILocation(line: 85, column: 5, scope: !2840)
!2853 = !DILocation(line: 86, column: 5, scope: !2840)
!2854 = !DILocation(line: 87, column: 5, scope: !2840)
!2855 = !DILocation(line: 89, column: 37, scope: !2840)
!2856 = !DILocation(line: 89, column: 5, scope: !2840)
!2857 = !DILocation(line: 91, column: 1, scope: !2840)
!2858 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !817, file: !817, line: 92, type: !2813, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2859)
!2859 = !{!2860, !2861, !2862, !2863, !2864}
!2860 = !DILocalVariable(name: "func", arg: 1, scope: !2858, file: !817, line: 92, type: !497)
!2861 = !DILocalVariable(name: "line", arg: 2, scope: !2858, file: !817, line: 92, type: !125)
!2862 = !DILocalVariable(name: "message", arg: 3, scope: !2858, file: !817, line: 92, type: !497)
!2863 = !DILocalVariable(name: "ap", scope: !2858, file: !817, line: 94, type: !2820)
!2864 = !DILocalVariable(name: "mask", scope: !2858, file: !817, line: 96, type: !58)
!2865 = !DILocation(line: 0, scope: !2858)
!2866 = !DILocation(line: 94, column: 5, scope: !2858)
!2867 = !DILocation(line: 94, column: 13, scope: !2858)
!2868 = !DILocation(line: 96, column: 5, scope: !2858)
!2869 = !DILocation(line: 97, column: 5, scope: !2858)
!2870 = !DILocation(line: 99, column: 5, scope: !2858)
!2871 = !DILocation(line: 100, column: 5, scope: !2858)
!2872 = !DILocation(line: 101, column: 5, scope: !2858)
!2873 = !DILocation(line: 103, column: 37, scope: !2858)
!2874 = !DILocation(line: 103, column: 5, scope: !2858)
!2875 = !DILocation(line: 105, column: 1, scope: !2858)
!2876 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !817, file: !817, line: 106, type: !2813, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2877)
!2877 = !{!2878, !2879, !2880, !2881, !2882}
!2878 = !DILocalVariable(name: "func", arg: 1, scope: !2876, file: !817, line: 106, type: !497)
!2879 = !DILocalVariable(name: "line", arg: 2, scope: !2876, file: !817, line: 106, type: !125)
!2880 = !DILocalVariable(name: "message", arg: 3, scope: !2876, file: !817, line: 106, type: !497)
!2881 = !DILocalVariable(name: "ap", scope: !2876, file: !817, line: 108, type: !2820)
!2882 = !DILocalVariable(name: "mask", scope: !2876, file: !817, line: 110, type: !58)
!2883 = !DILocation(line: 0, scope: !2876)
!2884 = !DILocation(line: 108, column: 5, scope: !2876)
!2885 = !DILocation(line: 108, column: 13, scope: !2876)
!2886 = !DILocation(line: 110, column: 5, scope: !2876)
!2887 = !DILocation(line: 111, column: 5, scope: !2876)
!2888 = !DILocation(line: 113, column: 5, scope: !2876)
!2889 = !DILocation(line: 114, column: 5, scope: !2876)
!2890 = !DILocation(line: 115, column: 5, scope: !2876)
!2891 = !DILocation(line: 117, column: 37, scope: !2876)
!2892 = !DILocation(line: 117, column: 5, scope: !2876)
!2893 = !DILocation(line: 119, column: 1, scope: !2876)
!2894 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !817, file: !817, line: 121, type: !2895, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !816, retainedNodes: !2899)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !497, !125, !497, !2897, !125, null}
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2899 = !{!2900, !2901, !2902, !2903, !2904}
!2900 = !DILocalVariable(name: "func", arg: 1, scope: !2894, file: !817, line: 121, type: !497)
!2901 = !DILocalVariable(name: "line", arg: 2, scope: !2894, file: !817, line: 121, type: !125)
!2902 = !DILocalVariable(name: "message", arg: 3, scope: !2894, file: !817, line: 121, type: !497)
!2903 = !DILocalVariable(name: "data", arg: 4, scope: !2894, file: !817, line: 121, type: !2897)
!2904 = !DILocalVariable(name: "length", arg: 5, scope: !2894, file: !817, line: 121, type: !125)
!2905 = !DILocation(line: 0, scope: !2894)
!2906 = !DILocation(line: 123, column: 1, scope: !2894)
!2907 = distinct !DISubprogram(name: "hal_nvic_init", scope: !121, file: !121, line: 60, type: !2908, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !1924)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!2910}
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !124, line: 158, baseType: !123)
!2911 = !DILocation(line: 62, column: 5, scope: !2907)
!2912 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !121, file: !121, line: 65, type: !2913, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!2910, !178}
!2915 = !{!2916, !2917}
!2916 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2912, file: !121, line: 65, type: !178)
!2917 = !DILocalVariable(name: "status", scope: !2912, file: !121, line: 67, type: !2910)
!2918 = !DILocation(line: 0, scope: !2912)
!2919 = !DILocation(line: 69, column: 40, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2912, file: !121, line: 69, column: 9)
!2921 = !DILocation(line: 73, column: 9, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2920, file: !121, line: 72, column: 12)
!2923 = !DILocation(line: 77, column: 5, scope: !2912)
!2924 = !DILocation(line: 78, column: 1, scope: !2912)
!2925 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !185, file: !185, line: 1494, type: !2926, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !179}
!2928 = !{!2929}
!2929 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2925, file: !185, line: 1494, type: !179)
!2930 = !DILocation(line: 0, scope: !2925)
!2931 = !DILocation(line: 1497, column: 91, scope: !2925)
!2932 = !DILocation(line: 1497, column: 61, scope: !2925)
!2933 = !DILocation(line: 1497, column: 40, scope: !2925)
!2934 = !DILocation(line: 1497, column: 3, scope: !2925)
!2935 = !DILocation(line: 1497, column: 46, scope: !2925)
!2936 = !DILocation(line: 1498, column: 1, scope: !2925)
!2937 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !121, file: !121, line: 80, type: !2913, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2938)
!2938 = !{!2939, !2940}
!2939 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2937, file: !121, line: 80, type: !178)
!2940 = !DILocalVariable(name: "status", scope: !2937, file: !121, line: 82, type: !2910)
!2941 = !DILocation(line: 0, scope: !2937)
!2942 = !DILocation(line: 84, column: 40, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2937, file: !121, line: 84, column: 9)
!2944 = !DILocation(line: 88, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2943, file: !121, line: 87, column: 12)
!2946 = !DILocation(line: 92, column: 5, scope: !2937)
!2947 = !DILocation(line: 93, column: 1, scope: !2937)
!2948 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !185, file: !185, line: 1507, type: !2926, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2949)
!2949 = !{!2950}
!2950 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2948, file: !185, line: 1507, type: !179)
!2951 = !DILocation(line: 0, scope: !2948)
!2952 = !DILocation(line: 1509, column: 65, scope: !2948)
!2953 = !DILocation(line: 1509, column: 44, scope: !2948)
!2954 = !DILocation(line: 1509, column: 32, scope: !2948)
!2955 = !DILocation(line: 1509, column: 3, scope: !2948)
!2956 = !DILocation(line: 1509, column: 39, scope: !2948)
!2957 = !DILocation(line: 1510, column: 1, scope: !2948)
!2958 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !121, file: !121, line: 95, type: !2959, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!58, !178}
!2961 = !{!2962, !2963}
!2962 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2958, file: !121, line: 95, type: !178)
!2963 = !DILocalVariable(name: "ret", scope: !2958, file: !121, line: 97, type: !58)
!2964 = !DILocation(line: 0, scope: !2958)
!2965 = !DILocation(line: 99, column: 40, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !121, line: 99, column: 9)
!2967 = !DILocation(line: 102, column: 15, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2966, file: !121, line: 101, column: 12)
!2969 = !DILocation(line: 105, column: 5, scope: !2958)
!2970 = !DILocation(line: 106, column: 1, scope: !2958)
!2971 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !185, file: !185, line: 1523, type: !2972, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!58, !179}
!2974 = !{!2975}
!2975 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2971, file: !185, line: 1523, type: !179)
!2976 = !DILocation(line: 0, scope: !2971)
!2977 = !DILocation(line: 1525, column: 51, scope: !2971)
!2978 = !DILocation(line: 1525, column: 23, scope: !2971)
!2979 = !DILocation(line: 1525, column: 83, scope: !2971)
!2980 = !DILocation(line: 1525, column: 22, scope: !2971)
!2981 = !DILocation(line: 1525, column: 3, scope: !2971)
!2982 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !121, file: !121, line: 108, type: !2913, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2983)
!2983 = !{!2984, !2985}
!2984 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2982, file: !121, line: 108, type: !178)
!2985 = !DILocalVariable(name: "status", scope: !2982, file: !121, line: 110, type: !2910)
!2986 = !DILocation(line: 0, scope: !2982)
!2987 = !DILocation(line: 112, column: 40, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2982, file: !121, line: 112, column: 9)
!2989 = !DILocation(line: 116, column: 9, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2988, file: !121, line: 115, column: 12)
!2991 = !DILocation(line: 120, column: 5, scope: !2982)
!2992 = !DILocation(line: 121, column: 1, scope: !2982)
!2993 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !185, file: !185, line: 1535, type: !2926, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2994)
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2993, file: !185, line: 1535, type: !179)
!2996 = !DILocation(line: 0, scope: !2993)
!2997 = !DILocation(line: 1537, column: 65, scope: !2993)
!2998 = !DILocation(line: 1537, column: 44, scope: !2993)
!2999 = !DILocation(line: 1537, column: 32, scope: !2993)
!3000 = !DILocation(line: 1537, column: 3, scope: !2993)
!3001 = !DILocation(line: 1537, column: 39, scope: !2993)
!3002 = !DILocation(line: 1538, column: 1, scope: !2993)
!3003 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !121, file: !121, line: 123, type: !2913, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3004)
!3004 = !{!3005, !3006}
!3005 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3003, file: !121, line: 123, type: !178)
!3006 = !DILocalVariable(name: "status", scope: !3003, file: !121, line: 125, type: !2910)
!3007 = !DILocation(line: 0, scope: !3003)
!3008 = !DILocation(line: 127, column: 40, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3003, file: !121, line: 127, column: 9)
!3010 = !DILocation(line: 131, column: 9, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3009, file: !121, line: 130, column: 12)
!3012 = !DILocation(line: 135, column: 5, scope: !3003)
!3013 = !DILocation(line: 136, column: 1, scope: !3003)
!3014 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !185, file: !185, line: 1547, type: !2926, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3015)
!3015 = !{!3016}
!3016 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3014, file: !185, line: 1547, type: !179)
!3017 = !DILocation(line: 0, scope: !3014)
!3018 = !DILocation(line: 1549, column: 65, scope: !3014)
!3019 = !DILocation(line: 1549, column: 44, scope: !3014)
!3020 = !DILocation(line: 1549, column: 32, scope: !3014)
!3021 = !DILocation(line: 1549, column: 3, scope: !3014)
!3022 = !DILocation(line: 1549, column: 39, scope: !3014)
!3023 = !DILocation(line: 1550, column: 1, scope: !3014)
!3024 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !121, file: !121, line: 138, type: !3025, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!2910, !178, !58}
!3027 = !{!3028, !3029, !3030}
!3028 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3024, file: !121, line: 138, type: !178)
!3029 = !DILocalVariable(name: "priority", arg: 2, scope: !3024, file: !121, line: 138, type: !58)
!3030 = !DILocalVariable(name: "status", scope: !3024, file: !121, line: 140, type: !2910)
!3031 = !DILocation(line: 0, scope: !3024)
!3032 = !DILocation(line: 142, column: 40, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3024, file: !121, line: 142, column: 9)
!3034 = !DILocation(line: 146, column: 9, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3033, file: !121, line: 145, column: 12)
!3036 = !DILocation(line: 150, column: 5, scope: !3024)
!3037 = !DILocation(line: 151, column: 1, scope: !3024)
!3038 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !185, file: !185, line: 1577, type: !3039, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{null, !179, !58}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3038, file: !185, line: 1577, type: !179)
!3043 = !DILocalVariable(name: "priority", arg: 2, scope: !3038, file: !185, line: 1577, type: !58)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocation(line: 1582, column: 34, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !185, line: 1581, column: 8)
!3047 = distinct !DILexicalBlock(scope: !3038, file: !185, line: 1579, column: 6)
!3048 = !DILocation(line: 1582, column: 5, scope: !3046)
!3049 = !DILocation(line: 1582, column: 32, scope: !3046)
!3050 = !DILocation(line: 1583, column: 1, scope: !3038)
!3051 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !121, file: !121, line: 153, type: !2959, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3052)
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3051, file: !121, line: 153, type: !178)
!3054 = !DILocalVariable(name: "ret", scope: !3051, file: !121, line: 155, type: !58)
!3055 = !DILocation(line: 0, scope: !3051)
!3056 = !DILocation(line: 157, column: 40, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3051, file: !121, line: 157, column: 9)
!3058 = !DILocation(line: 160, column: 15, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3057, file: !121, line: 159, column: 12)
!3060 = !DILocation(line: 163, column: 5, scope: !3051)
!3061 = !DILocation(line: 164, column: 1, scope: !3051)
!3062 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !185, file: !185, line: 1597, type: !2972, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3063)
!3063 = !{!3064}
!3064 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3062, file: !185, line: 1597, type: !179)
!3065 = !DILocation(line: 0, scope: !3062)
!3066 = !DILocation(line: 1603, column: 23, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !185, line: 1602, column: 8)
!3068 = distinct !DILexicalBlock(scope: !3062, file: !185, line: 1600, column: 6)
!3069 = !DILocation(line: 1603, column: 60, scope: !3067)
!3070 = !DILocation(line: 1604, column: 1, scope: !3062)
!3071 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !121, file: !121, line: 173, type: !335, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !1924)
!3072 = !DILocation(line: 175, column: 1, scope: !3071)
!3073 = distinct !DISubprogram(name: "isrC_main", scope: !121, file: !121, line: 178, type: !2908, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3074)
!3074 = !{!3075, !3076}
!3075 = !DILocalVariable(name: "status", scope: !3073, file: !121, line: 180, type: !2910)
!3076 = !DILocalVariable(name: "irq_number", scope: !3073, file: !121, line: 181, type: !178)
!3077 = !DILocation(line: 0, scope: !3073)
!3078 = !DILocation(line: 188, column: 34, scope: !3073)
!3079 = !DILocation(line: 189, column: 24, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3073, file: !121, line: 189, column: 9)
!3081 = !DILocation(line: 192, column: 48, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3080, file: !121, line: 192, column: 16)
!3083 = !DILocation(line: 192, column: 62, scope: !3082)
!3084 = !DILocation(line: 192, column: 16, scope: !3080)
!3085 = !DILocation(line: 194, column: 9, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !121, line: 192, column: 71)
!3087 = !DILocation(line: 195, column: 9, scope: !3086)
!3088 = !DILocation(line: 197, column: 55, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3082, file: !121, line: 196, column: 12)
!3090 = !DILocation(line: 197, column: 41, scope: !3089)
!3091 = !DILocation(line: 197, column: 53, scope: !3089)
!3092 = !DILocation(line: 198, column: 41, scope: !3089)
!3093 = !DILocation(line: 198, column: 9, scope: !3089)
!3094 = !DILocation(line: 202, column: 5, scope: !3073)
!3095 = !DILocation(line: 203, column: 1, scope: !3073)
!3096 = distinct !DISubprogram(name: "get_current_irq", scope: !121, file: !121, line: 166, type: !1908, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3097)
!3097 = !{!3098}
!3098 = !DILocalVariable(name: "irq_num", scope: !3096, file: !121, line: 168, type: !58)
!3099 = !DILocation(line: 168, column: 31, scope: !3096)
!3100 = !DILocation(line: 168, column: 36, scope: !3096)
!3101 = !DILocation(line: 0, scope: !3096)
!3102 = !DILocation(line: 169, column: 21, scope: !3096)
!3103 = !DILocation(line: 169, column: 5, scope: !3096)
!3104 = distinct !DISubprogram(name: "get_pending_irq", scope: !121, file: !121, line: 55, type: !1908, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !1924)
!3105 = !DILocation(line: 57, column: 19, scope: !3104)
!3106 = !DILocation(line: 57, column: 51, scope: !3104)
!3107 = !DILocation(line: 57, column: 5, scope: !3104)
!3108 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !121, file: !121, line: 205, type: !3109, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3112)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!2910, !178, !3111}
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !124, line: 175, baseType: !264)
!3112 = !{!3113, !3114, !3115}
!3113 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3108, file: !121, line: 205, type: !178)
!3114 = !DILocalVariable(name: "callback", arg: 2, scope: !3108, file: !121, line: 205, type: !3111)
!3115 = !DILocalVariable(name: "mask", scope: !3108, file: !121, line: 207, type: !58)
!3116 = !DILocation(line: 0, scope: !3108)
!3117 = !DILocation(line: 209, column: 24, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3108, file: !121, line: 209, column: 9)
!3119 = !DILocation(line: 213, column: 12, scope: !3108)
!3120 = !DILocation(line: 214, column: 5, scope: !3108)
!3121 = !DILocation(line: 215, column: 37, scope: !3108)
!3122 = !DILocation(line: 215, column: 51, scope: !3108)
!3123 = !DILocation(line: 216, column: 37, scope: !3108)
!3124 = !DILocation(line: 216, column: 49, scope: !3108)
!3125 = !DILocation(line: 217, column: 5, scope: !3108)
!3126 = !DILocation(line: 219, column: 5, scope: !3108)
!3127 = !DILocation(line: 220, column: 1, scope: !3108)
!3128 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !121, file: !121, line: 222, type: !3129, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!2910, !2524}
!3131 = !{!3132}
!3132 = !DILocalVariable(name: "mask", arg: 1, scope: !3128, file: !121, line: 222, type: !2524)
!3133 = !DILocation(line: 0, scope: !3128)
!3134 = !DILocation(line: 224, column: 13, scope: !3128)
!3135 = !DILocation(line: 224, column: 11, scope: !3128)
!3136 = !DILocation(line: 225, column: 5, scope: !3128)
!3137 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !121, file: !121, line: 228, type: !3138, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!2910, !58}
!3140 = !{!3141}
!3141 = !DILocalVariable(name: "mask", arg: 1, scope: !3137, file: !121, line: 228, type: !58)
!3142 = !DILocation(line: 0, scope: !3137)
!3143 = !DILocation(line: 230, column: 5, scope: !3137)
!3144 = !DILocation(line: 231, column: 5, scope: !3137)
!3145 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !819, file: !819, line: 50, type: !3146, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3150)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!3148, !3149, !210}
!3148 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !822, line: 238, baseType: !821)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !284, line: 281, baseType: !828)
!3150 = !{!3151, !3152, !3153}
!3151 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3145, file: !819, line: 50, type: !3149)
!3152 = !DILocalVariable(name: "function_index", arg: 2, scope: !3145, file: !819, line: 50, type: !210)
!3153 = !DILocalVariable(name: "ret_value", scope: !3145, file: !819, line: 52, type: !181)
!3154 = !DILocation(line: 0, scope: !3145)
!3155 = !DILocation(line: 53, column: 18, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3145, file: !819, line: 53, column: 9)
!3157 = !DILocation(line: 53, column: 9, scope: !3145)
!3158 = !DILocation(line: 57, column: 24, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3145, file: !819, line: 57, column: 9)
!3160 = !DILocation(line: 57, column: 9, scope: !3145)
!3161 = !DILocation(line: 57, column: 9, scope: !3159)
!3162 = !DILocation(line: 60, column: 17, scope: !3145)
!3163 = !DILocation(line: 61, column: 12, scope: !3145)
!3164 = !DILocation(line: 61, column: 5, scope: !3145)
!3165 = !DILocation(line: 62, column: 1, scope: !3145)
!3166 = distinct !DISubprogram(name: "hal_gpio_init", scope: !819, file: !819, line: 64, type: !3167, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3170)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!3169, !3149}
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !822, line: 229, baseType: !859)
!3170 = !{!3171}
!3171 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3166, file: !819, line: 64, type: !3149)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 66, column: 5, scope: !3166)
!3174 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !819, file: !819, line: 69, type: !3167, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3175)
!3175 = !{!3176}
!3176 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3174, file: !819, line: 69, type: !3149)
!3177 = !DILocation(line: 0, scope: !3174)
!3178 = !DILocation(line: 71, column: 5, scope: !3174)
!3179 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !819, file: !819, line: 74, type: !3180, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3183)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!3169, !3149, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 32)
!3183 = !{!3184, !3185, !3186}
!3184 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3179, file: !819, line: 74, type: !3149)
!3185 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3179, file: !819, line: 74, type: !3182)
!3186 = !DILocalVariable(name: "status", scope: !3179, file: !819, line: 76, type: !3187)
!3187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !38, line: 67, baseType: !3188)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 62, size: 64, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3188, file: !38, line: 63, baseType: !58, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3188, file: !38, line: 64, baseType: !210, size: 8, offset: 32)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3188, file: !38, line: 65, baseType: !210, size: 8, offset: 40)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3188, file: !38, line: 66, baseType: !210, size: 8, offset: 48)
!3194 = !DILocation(line: 0, scope: !3179)
!3195 = !DILocation(line: 77, column: 14, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3179, file: !819, line: 77, column: 9)
!3197 = !DILocation(line: 77, column: 9, scope: !3179)
!3198 = !DILocation(line: 81, column: 18, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3179, file: !819, line: 81, column: 9)
!3200 = !DILocation(line: 81, column: 9, scope: !3179)
!3201 = !DILocation(line: 85, column: 14, scope: !3179)
!3202 = !DILocation(line: 86, column: 18, scope: !3179)
!3203 = !DILocation(line: 86, column: 16, scope: !3179)
!3204 = !DILocation(line: 87, column: 5, scope: !3179)
!3205 = !DILocation(line: 88, column: 1, scope: !3179)
!3206 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !819, file: !819, line: 90, type: !3207, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!3169, !3149, !881}
!3209 = !{!3210, !3211, !3212}
!3210 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3206, file: !819, line: 90, type: !3149)
!3211 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3206, file: !819, line: 90, type: !881)
!3212 = !DILocalVariable(name: "ret_value", scope: !3206, file: !819, line: 92, type: !181)
!3213 = !DILocation(line: 0, scope: !3206)
!3214 = !DILocation(line: 93, column: 18, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3206, file: !819, line: 93, column: 9)
!3216 = !DILocation(line: 93, column: 9, scope: !3206)
!3217 = !DILocation(line: 97, column: 60, scope: !3206)
!3218 = !DILocation(line: 97, column: 17, scope: !3206)
!3219 = !DILocation(line: 98, column: 12, scope: !3206)
!3220 = !DILocation(line: 98, column: 5, scope: !3206)
!3221 = !DILocation(line: 99, column: 1, scope: !3206)
!3222 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !819, file: !819, line: 101, type: !3180, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3223)
!3223 = !{!3224, !3225, !3226}
!3224 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3222, file: !819, line: 101, type: !3149)
!3225 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3222, file: !819, line: 101, type: !3182)
!3226 = !DILocalVariable(name: "status", scope: !3222, file: !819, line: 103, type: !3187)
!3227 = !DILocation(line: 0, scope: !3222)
!3228 = !DILocation(line: 104, column: 18, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3222, file: !819, line: 104, column: 9)
!3230 = !DILocation(line: 104, column: 9, scope: !3222)
!3231 = !DILocation(line: 108, column: 14, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3222, file: !819, line: 108, column: 9)
!3233 = !DILocation(line: 108, column: 9, scope: !3222)
!3234 = !DILocation(line: 112, column: 14, scope: !3222)
!3235 = !DILocation(line: 113, column: 18, scope: !3222)
!3236 = !DILocation(line: 113, column: 16, scope: !3222)
!3237 = !DILocation(line: 114, column: 5, scope: !3222)
!3238 = !DILocation(line: 115, column: 1, scope: !3222)
!3239 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !819, file: !819, line: 117, type: !3240, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3243)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!3169, !3149, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !822, line: 213, baseType: !869)
!3243 = !{!3244, !3245, !3246}
!3244 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3239, file: !819, line: 117, type: !3149)
!3245 = !DILocalVariable(name: "direction", arg: 2, scope: !3239, file: !819, line: 117, type: !3242)
!3246 = !DILocalVariable(name: "ret_value", scope: !3239, file: !819, line: 119, type: !181)
!3247 = !DILocation(line: 0, scope: !3239)
!3248 = !DILocation(line: 120, column: 18, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3239, file: !819, line: 120, column: 9)
!3250 = !DILocation(line: 120, column: 9, scope: !3239)
!3251 = !DILocation(line: 123, column: 17, scope: !3239)
!3252 = !DILocation(line: 125, column: 12, scope: !3239)
!3253 = !DILocation(line: 125, column: 5, scope: !3239)
!3254 = !DILocation(line: 126, column: 1, scope: !3239)
!3255 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !819, file: !819, line: 128, type: !3256, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3259)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!3169, !3149, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 32)
!3259 = !{!3260, !3261, !3262}
!3260 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3255, file: !819, line: 128, type: !3149)
!3261 = !DILocalVariable(name: "direction", arg: 2, scope: !3255, file: !819, line: 128, type: !3258)
!3262 = !DILocalVariable(name: "status", scope: !3255, file: !819, line: 131, type: !3187)
!3263 = !DILocation(line: 0, scope: !3255)
!3264 = !DILocation(line: 132, column: 18, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3255, file: !819, line: 132, column: 9)
!3266 = !DILocation(line: 132, column: 9, scope: !3255)
!3267 = !DILocation(line: 136, column: 14, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3255, file: !819, line: 136, column: 9)
!3269 = !DILocation(line: 136, column: 9, scope: !3255)
!3270 = !DILocation(line: 140, column: 14, scope: !3255)
!3271 = !DILocation(line: 141, column: 18, scope: !3255)
!3272 = !DILocation(line: 141, column: 16, scope: !3255)
!3273 = !DILocation(line: 142, column: 5, scope: !3255)
!3274 = !DILocation(line: 143, column: 1, scope: !3255)
!3275 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !819, file: !819, line: 146, type: !3167, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3276)
!3276 = !{!3277, !3278}
!3277 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3275, file: !819, line: 146, type: !3149)
!3278 = !DILocalVariable(name: "status", scope: !3275, file: !819, line: 148, type: !3187)
!3279 = !DILocation(line: 0, scope: !3275)
!3280 = !DILocation(line: 149, column: 18, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3275, file: !819, line: 149, column: 9)
!3282 = !DILocation(line: 149, column: 9, scope: !3275)
!3283 = !DILocation(line: 153, column: 14, scope: !3275)
!3284 = !DILocation(line: 154, column: 76, scope: !3275)
!3285 = !DILocation(line: 154, column: 12, scope: !3275)
!3286 = !DILocation(line: 154, column: 5, scope: !3275)
!3287 = !DILocation(line: 155, column: 1, scope: !3275)
!3288 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !819, file: !819, line: 157, type: !3167, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3289)
!3289 = !{!3290, !3291}
!3290 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3288, file: !819, line: 157, type: !3149)
!3291 = !DILocalVariable(name: "ret_value", scope: !3288, file: !819, line: 159, type: !181)
!3292 = !DILocation(line: 0, scope: !3288)
!3293 = !DILocation(line: 160, column: 18, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3288, file: !819, line: 160, column: 9)
!3295 = !DILocation(line: 160, column: 9, scope: !3288)
!3296 = !DILocation(line: 164, column: 17, scope: !3288)
!3297 = !DILocation(line: 165, column: 19, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3288, file: !819, line: 165, column: 9)
!3299 = !DILocation(line: 165, column: 9, scope: !3288)
!3300 = !DILocation(line: 168, column: 17, scope: !3288)
!3301 = !DILocation(line: 169, column: 12, scope: !3288)
!3302 = !DILocation(line: 169, column: 5, scope: !3288)
!3303 = !DILocation(line: 170, column: 1, scope: !3288)
!3304 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !819, file: !819, line: 172, type: !3167, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3305)
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3304, file: !819, line: 172, type: !3149)
!3307 = !DILocalVariable(name: "ret_value", scope: !3304, file: !819, line: 174, type: !181)
!3308 = !DILocation(line: 0, scope: !3304)
!3309 = !DILocation(line: 175, column: 18, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3304, file: !819, line: 175, column: 9)
!3311 = !DILocation(line: 175, column: 9, scope: !3304)
!3312 = !DILocation(line: 179, column: 17, scope: !3304)
!3313 = !DILocation(line: 180, column: 19, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3304, file: !819, line: 180, column: 9)
!3315 = !DILocation(line: 180, column: 9, scope: !3304)
!3316 = !DILocation(line: 183, column: 17, scope: !3304)
!3317 = !DILocation(line: 184, column: 12, scope: !3304)
!3318 = !DILocation(line: 184, column: 5, scope: !3304)
!3319 = !DILocation(line: 185, column: 1, scope: !3304)
!3320 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !819, file: !819, line: 187, type: !3167, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3321)
!3321 = !{!3322, !3323}
!3322 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3320, file: !819, line: 187, type: !3149)
!3323 = !DILocalVariable(name: "ret_value", scope: !3320, file: !819, line: 189, type: !181)
!3324 = !DILocation(line: 0, scope: !3320)
!3325 = !DILocation(line: 191, column: 18, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3320, file: !819, line: 191, column: 9)
!3327 = !DILocation(line: 191, column: 9, scope: !3320)
!3328 = !DILocation(line: 195, column: 17, scope: !3320)
!3329 = !DILocation(line: 196, column: 12, scope: !3320)
!3330 = !DILocation(line: 196, column: 5, scope: !3320)
!3331 = !DILocation(line: 197, column: 1, scope: !3320)
!3332 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !819, file: !819, line: 200, type: !3333, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!3169, !3149, !882}
!3335 = !{!3336, !3337, !3338}
!3336 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3332, file: !819, line: 200, type: !3149)
!3337 = !DILocalVariable(name: "driving", arg: 2, scope: !3332, file: !819, line: 200, type: !882)
!3338 = !DILocalVariable(name: "ret_value", scope: !3332, file: !819, line: 202, type: !181)
!3339 = !DILocation(line: 0, scope: !3332)
!3340 = !DILocation(line: 204, column: 18, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3332, file: !819, line: 204, column: 9)
!3342 = !DILocation(line: 204, column: 9, scope: !3332)
!3343 = !DILocation(line: 208, column: 64, scope: !3332)
!3344 = !DILocation(line: 208, column: 17, scope: !3332)
!3345 = !DILocation(line: 210, column: 12, scope: !3332)
!3346 = !DILocation(line: 210, column: 5, scope: !3332)
!3347 = !DILocation(line: 211, column: 1, scope: !3332)
!3348 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !819, file: !819, line: 214, type: !3349, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !818, retainedNodes: !3352)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!3169, !3149, !3351}
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 32)
!3352 = !{!3353, !3354, !3355, !3356}
!3353 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3348, file: !819, line: 214, type: !3149)
!3354 = !DILocalVariable(name: "driving", arg: 2, scope: !3348, file: !819, line: 214, type: !3351)
!3355 = !DILocalVariable(name: "ret_value", scope: !3348, file: !819, line: 216, type: !181)
!3356 = !DILocalVariable(name: "value", scope: !3348, file: !819, line: 217, type: !210)
!3357 = !DILocation(line: 0, scope: !3348)
!3358 = !DILocation(line: 217, column: 5, scope: !3348)
!3359 = !DILocation(line: 219, column: 18, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3348, file: !819, line: 219, column: 9)
!3361 = !DILocation(line: 219, column: 9, scope: !3348)
!3362 = !DILocation(line: 223, column: 17, scope: !3348)
!3363 = !DILocation(line: 225, column: 44, scope: !3348)
!3364 = !DILocation(line: 225, column: 16, scope: !3348)
!3365 = !DILocation(line: 225, column: 14, scope: !3348)
!3366 = !DILocation(line: 227, column: 12, scope: !3348)
!3367 = !DILocation(line: 227, column: 5, scope: !3348)
!3368 = !DILocation(line: 228, column: 1, scope: !3348)
!3369 = distinct !DISubprogram(name: "hal_uart_init", scope: !273, file: !273, line: 234, type: !3370, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3374)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!3372, !337, !3373}
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !276, line: 351, baseType: !275)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3369, file: !273, line: 234, type: !337)
!3376 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3369, file: !273, line: 234, type: !3373)
!3377 = !DILocation(line: 0, scope: !3369)
!3378 = !DILocation(line: 236, column: 10, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3369, file: !273, line: 236, column: 9)
!3380 = !DILocation(line: 236, column: 9, scope: !3369)
!3381 = !DILocation(line: 239, column: 41, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3369, file: !273, line: 239, column: 9)
!3383 = !{i8 0, i8 2}
!3384 = !DILocation(line: 239, column: 9, scope: !3369)
!3385 = !DILocation(line: 242, column: 5, scope: !3369)
!3386 = !DILocation(line: 243, column: 45, scope: !3369)
!3387 = !DILocation(line: 243, column: 12, scope: !3369)
!3388 = !DILocation(line: 244, column: 12, scope: !3369)
!3389 = !DILocation(line: 243, column: 5, scope: !3369)
!3390 = !DILocation(line: 245, column: 58, scope: !3369)
!3391 = !DILocation(line: 246, column: 30, scope: !3369)
!3392 = !{i32 0, i32 2}
!3393 = !DILocation(line: 246, column: 5, scope: !3369)
!3394 = !DILocation(line: 247, column: 5, scope: !3369)
!3395 = !DILocation(line: 249, column: 31, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3369, file: !273, line: 249, column: 9)
!3397 = !DILocation(line: 249, column: 28, scope: !3396)
!3398 = !DILocation(line: 261, column: 1, scope: !3369)
!3399 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !273, file: !273, line: 93, type: !3400, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3404)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!347, !337, !3402}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 32)
!3403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!3404 = !{!3405, !3406}
!3405 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3399, file: !273, line: 93, type: !337)
!3406 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3399, file: !273, line: 93, type: !3402)
!3407 = !DILocation(line: 0, scope: !3399)
!3408 = !DILocation(line: 95, column: 10, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3399, file: !273, line: 95, column: 9)
!3410 = !DILocation(line: 95, column: 9, scope: !3399)
!3411 = !DILocation(line: 101, column: 23, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3399, file: !273, line: 101, column: 9)
!3413 = !DILocation(line: 101, column: 32, scope: !3412)
!3414 = !DILocation(line: 101, column: 60, scope: !3412)
!3415 = !DILocation(line: 102, column: 27, scope: !3412)
!3416 = !DILocation(line: 102, column: 34, scope: !3412)
!3417 = !DILocation(line: 102, column: 58, scope: !3412)
!3418 = !DILocation(line: 103, column: 27, scope: !3412)
!3419 = !DILocation(line: 103, column: 36, scope: !3412)
!3420 = !DILocation(line: 103, column: 59, scope: !3412)
!3421 = !DILocation(line: 104, column: 27, scope: !3412)
!3422 = !DILocation(line: 104, column: 39, scope: !3412)
!3423 = !DILocation(line: 101, column: 9, scope: !3399)
!3424 = !DILocation(line: 109, column: 1, scope: !3399)
!3425 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !273, file: !273, line: 139, type: !3426, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!2377, !337}
!3428 = !{!3429}
!3429 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3425, file: !273, line: 139, type: !337)
!3430 = !DILocation(line: 0, scope: !3425)
!3431 = !DILocation(line: 141, column: 24, scope: !3425)
!3432 = !DILocation(line: 141, column: 12, scope: !3425)
!3433 = !DILocation(line: 141, column: 5, scope: !3425)
!3434 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !273, file: !273, line: 593, type: !3435, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!3372, !337, !3402}
!3437 = !{!3438, !3439}
!3438 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3434, file: !273, line: 593, type: !337)
!3439 = !DILocalVariable(name: "config", arg: 2, scope: !3434, file: !273, line: 593, type: !3402)
!3440 = !DILocation(line: 0, scope: !3434)
!3441 = !DILocation(line: 595, column: 10, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3434, file: !273, line: 595, column: 9)
!3443 = !DILocation(line: 595, column: 9, scope: !3434)
!3444 = !DILocation(line: 598, column: 45, scope: !3434)
!3445 = !DILocation(line: 598, column: 12, scope: !3434)
!3446 = !DILocation(line: 598, column: 59, scope: !3434)
!3447 = !DILocation(line: 598, column: 5, scope: !3434)
!3448 = !DILocation(line: 599, column: 23, scope: !3434)
!3449 = !DILocation(line: 600, column: 59, scope: !3434)
!3450 = !DILocation(line: 600, column: 23, scope: !3434)
!3451 = !DILocation(line: 601, column: 62, scope: !3434)
!3452 = !DILocation(line: 601, column: 23, scope: !3434)
!3453 = !DILocation(line: 602, column: 57, scope: !3434)
!3454 = !DILocation(line: 602, column: 23, scope: !3434)
!3455 = !DILocation(line: 603, column: 58, scope: !3434)
!3456 = !DILocation(line: 603, column: 23, scope: !3434)
!3457 = !DILocation(line: 599, column: 5, scope: !3434)
!3458 = !DILocation(line: 604, column: 5, scope: !3434)
!3459 = !DILocation(line: 605, column: 1, scope: !3434)
!3460 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !273, file: !273, line: 145, type: !3461, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!58, !353}
!3463 = !{!3464, !3465}
!3464 = !DILocalVariable(name: "bandrate", arg: 1, scope: !3460, file: !273, line: 145, type: !353)
!3465 = !DILocalVariable(name: "baudrate_tbl", scope: !3460, file: !273, line: 147, type: !3466)
!3466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 416, elements: !3467)
!3467 = !{!3468}
!3468 = !DISubrange(count: 13)
!3469 = !DILocation(line: 0, scope: !3460)
!3470 = !DILocation(line: 147, column: 14, scope: !3460)
!3471 = !DILocation(line: 151, column: 12, scope: !3460)
!3472 = !DILocation(line: 151, column: 5, scope: !3460)
!3473 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !273, file: !273, line: 155, type: !3474, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3476)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!2447, !355}
!3476 = !{!3477, !3478}
!3477 = !DILocalVariable(name: "word_length", arg: 1, scope: !3473, file: !273, line: 155, type: !355)
!3478 = !DILocalVariable(name: "databit_tbl", scope: !3473, file: !273, line: 157, type: !3479)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2447, size: 64, elements: !249)
!3480 = !DILocation(line: 0, scope: !3473)
!3481 = !DILocation(line: 157, column: 14, scope: !3473)
!3482 = !DILocation(line: 160, column: 12, scope: !3473)
!3483 = !DILocation(line: 160, column: 5, scope: !3473)
!3484 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !273, file: !273, line: 164, type: !3485, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3487)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!2447, !359}
!3487 = !{!3488, !3489}
!3488 = !DILocalVariable(name: "parity", arg: 1, scope: !3484, file: !273, line: 164, type: !359)
!3489 = !DILocalVariable(name: "parity_tbl", scope: !3484, file: !273, line: 166, type: !3490)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2447, size: 80, elements: !253)
!3491 = !DILocation(line: 0, scope: !3484)
!3492 = !DILocation(line: 166, column: 14, scope: !3484)
!3493 = !DILocation(line: 169, column: 12, scope: !3484)
!3494 = !DILocation(line: 169, column: 5, scope: !3484)
!3495 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !273, file: !273, line: 173, type: !3496, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3498)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!2447, !357}
!3498 = !{!3499, !3500}
!3499 = !DILocalVariable(name: "stopbit", arg: 1, scope: !3495, file: !273, line: 173, type: !357)
!3500 = !DILocalVariable(name: "stopbit_tbl", scope: !3495, file: !273, line: 175, type: !3501)
!3501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2447, size: 48, elements: !515)
!3502 = !DILocation(line: 0, scope: !3495)
!3503 = !DILocation(line: 175, column: 14, scope: !3495)
!3504 = !DILocation(line: 178, column: 12, scope: !3495)
!3505 = !DILocation(line: 178, column: 5, scope: !3495)
!3506 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !273, file: !273, line: 87, type: !3507, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!347, !337}
!3509 = !{!3510}
!3510 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3506, file: !273, line: 87, type: !337)
!3511 = !DILocation(line: 0, scope: !3506)
!3512 = !DILocation(line: 89, column: 23, scope: !3506)
!3513 = !DILocation(line: 89, column: 5, scope: !3506)
!3514 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !273, file: !273, line: 264, type: !3515, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!3372, !337}
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3514, file: !273, line: 264, type: !337)
!3519 = !DILocation(line: 0, scope: !3514)
!3520 = !DILocation(line: 266, column: 10, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3514, file: !273, line: 266, column: 9)
!3522 = !DILocation(line: 266, column: 9, scope: !3514)
!3523 = !DILocation(line: 269, column: 41, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3514, file: !273, line: 269, column: 9)
!3525 = !DILocation(line: 269, column: 62, scope: !3524)
!3526 = !DILocation(line: 269, column: 9, scope: !3514)
!3527 = !DILocation(line: 272, column: 5, scope: !3514)
!3528 = !DILocation(line: 275, column: 22, scope: !3514)
!3529 = !DILocation(line: 275, column: 5, scope: !3514)
!3530 = !DILocation(line: 284, column: 5, scope: !3514)
!3531 = !DILocation(line: 286, column: 5, scope: !3514)
!3532 = !DILocation(line: 287, column: 1, scope: !3514)
!3533 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !273, file: !273, line: 290, type: !3534, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !337, !326}
!3536 = !{!3537, !3538, !3539}
!3537 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3533, file: !273, line: 290, type: !337)
!3538 = !DILocalVariable(name: "byte", arg: 2, scope: !3533, file: !273, line: 290, type: !326)
!3539 = !DILocalVariable(name: "int_no", scope: !3533, file: !273, line: 292, type: !2377)
!3540 = !DILocation(line: 0, scope: !3533)
!3541 = !DILocation(line: 292, column: 26, scope: !3533)
!3542 = !DILocation(line: 294, column: 16, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3533, file: !273, line: 294, column: 9)
!3544 = !DILocation(line: 294, column: 9, scope: !3533)
!3545 = !DILocation(line: 295, column: 9, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3543, file: !273, line: 294, column: 34)
!3547 = !DILocation(line: 296, column: 5, scope: !3546)
!3548 = !DILocation(line: 299, column: 1, scope: !3533)
!3549 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !273, file: !273, line: 302, type: !3550, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3552)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!58, !337, !2584, !58}
!3552 = !{!3553, !3554, !3555, !3556, !3557}
!3553 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3549, file: !273, line: 302, type: !337)
!3554 = !DILocalVariable(name: "data", arg: 2, scope: !3549, file: !273, line: 302, type: !2584)
!3555 = !DILocalVariable(name: "size", arg: 3, scope: !3549, file: !273, line: 302, type: !58)
!3556 = !DILocalVariable(name: "int_no", scope: !3549, file: !273, line: 304, type: !2377)
!3557 = !DILocalVariable(name: "index", scope: !3549, file: !273, line: 305, type: !58)
!3558 = !DILocation(line: 0, scope: !3549)
!3559 = !DILocation(line: 304, column: 26, scope: !3549)
!3560 = !DILocation(line: 307, column: 14, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3549, file: !273, line: 307, column: 9)
!3562 = !DILocation(line: 307, column: 9, scope: !3549)
!3563 = !DILocation(line: 313, column: 53, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !273, line: 312, column: 48)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !273, line: 312, column: 9)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !273, line: 312, column: 9)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !273, line: 311, column: 33)
!3568 = distinct !DILexicalBlock(scope: !3549, file: !273, line: 311, column: 9)
!3569 = !DILocation(line: 313, column: 13, scope: !3564)
!3570 = !DILocation(line: 312, column: 44, scope: !3565)
!3571 = !DILocation(line: 312, column: 31, scope: !3565)
!3572 = !DILocation(line: 312, column: 9, scope: !3566)
!3573 = distinct !{!3573, !3572, !3574}
!3574 = !DILocation(line: 314, column: 9, scope: !3566)
!3575 = !DILocation(line: 318, column: 1, scope: !3549)
!3576 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !273, file: !273, line: 320, type: !3550, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3577)
!3577 = !{!3578, !3579, !3580, !3581, !3582, !3583}
!3578 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3576, file: !273, line: 320, type: !337)
!3579 = !DILocalVariable(name: "data", arg: 2, scope: !3576, file: !273, line: 320, type: !2584)
!3580 = !DILocalVariable(name: "size", arg: 3, scope: !3576, file: !273, line: 320, type: !58)
!3581 = !DILocalVariable(name: "actual_space", scope: !3576, file: !273, line: 322, type: !58)
!3582 = !DILocalVariable(name: "send_size", scope: !3576, file: !273, line: 322, type: !58)
!3583 = !DILocalVariable(name: "ch", scope: !3576, file: !273, line: 323, type: !3584)
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !92, line: 144, baseType: !91)
!3585 = !DILocation(line: 0, scope: !3576)
!3586 = !DILocation(line: 322, column: 5, scope: !3576)
!3587 = !DILocation(line: 328, column: 10, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3576, file: !273, line: 328, column: 9)
!3589 = !DILocation(line: 328, column: 9, scope: !3576)
!3590 = !DILocation(line: 332, column: 15, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3576, file: !273, line: 332, column: 9)
!3592 = !DILocation(line: 332, column: 24, scope: !3591)
!3593 = !DILocation(line: 335, column: 42, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3576, file: !273, line: 335, column: 9)
!3595 = !DILocation(line: 335, column: 9, scope: !3576)
!3596 = !DILocation(line: 349, column: 30, scope: !3576)
!3597 = !DILocation(line: 349, column: 5, scope: !3576)
!3598 = !DILocation(line: 350, column: 9, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3576, file: !273, line: 350, column: 9)
!3600 = !DILocation(line: 350, column: 22, scope: !3599)
!3601 = !DILocation(line: 355, column: 5, scope: !3576)
!3602 = !DILocation(line: 357, column: 22, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3576, file: !273, line: 357, column: 9)
!3604 = !DILocation(line: 357, column: 19, scope: !3603)
!3605 = !DILocation(line: 357, column: 9, scope: !3576)
!3606 = !DILocation(line: 358, column: 14, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3603, file: !273, line: 357, column: 36)
!3608 = !{i32 14, i32 18}
!3609 = !DILocation(line: 359, column: 9, scope: !3607)
!3610 = !DILocation(line: 360, column: 5, scope: !3607)
!3611 = !DILocation(line: 362, column: 1, scope: !3576)
!3612 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !273, file: !273, line: 191, type: !3613, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3615)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!3584, !2377, !347}
!3615 = !{!3616, !3617, !3618}
!3616 = !DILocalVariable(name: "port", arg: 1, scope: !3612, file: !273, line: 191, type: !2377)
!3617 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3612, file: !273, line: 191, type: !347)
!3618 = !DILocalVariable(name: "ch", scope: !3612, file: !273, line: 193, type: !3584)
!3619 = !DILocation(line: 0, scope: !3612)
!3620 = !DILocation(line: 195, column: 14, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3612, file: !273, line: 195, column: 9)
!3622 = !DILocation(line: 195, column: 9, scope: !3612)
!3623 = !DILocation(line: 209, column: 5, scope: !3612)
!3624 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !273, file: !273, line: 365, type: !3625, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!326, !337}
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3624, file: !273, line: 365, type: !337)
!3629 = !DILocalVariable(name: "int_no", scope: !3624, file: !273, line: 367, type: !2377)
!3630 = !DILocation(line: 0, scope: !3624)
!3631 = !DILocation(line: 367, column: 26, scope: !3624)
!3632 = !DILocation(line: 369, column: 16, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3624, file: !273, line: 369, column: 9)
!3634 = !DILocation(line: 369, column: 9, scope: !3624)
!3635 = !DILocation(line: 370, column: 22, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3633, file: !273, line: 369, column: 33)
!3637 = !DILocation(line: 370, column: 9, scope: !3636)
!3638 = !DILocation(line: 0, scope: !3633)
!3639 = !DILocation(line: 375, column: 1, scope: !3624)
!3640 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !273, file: !273, line: 377, type: !3641, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!58, !337}
!3643 = !{!3644, !3645}
!3644 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3640, file: !273, line: 377, type: !337)
!3645 = !DILocalVariable(name: "int_no", scope: !3640, file: !273, line: 379, type: !2377)
!3646 = !DILocation(line: 0, scope: !3640)
!3647 = !DILocation(line: 379, column: 26, scope: !3640)
!3648 = !DILocation(line: 381, column: 16, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3640, file: !273, line: 381, column: 9)
!3650 = !DILocation(line: 381, column: 9, scope: !3640)
!3651 = !DILocation(line: 382, column: 16, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3649, file: !273, line: 381, column: 33)
!3653 = !DILocation(line: 382, column: 9, scope: !3652)
!3654 = !DILocation(line: 0, scope: !3649)
!3655 = !DILocation(line: 387, column: 1, scope: !3640)
!3656 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !273, file: !273, line: 390, type: !3657, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!58, !337, !378, !58}
!3659 = !{!3660, !3661, !3662, !3663, !3664}
!3660 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3656, file: !273, line: 390, type: !337)
!3661 = !DILocalVariable(name: "buffer", arg: 2, scope: !3656, file: !273, line: 390, type: !378)
!3662 = !DILocalVariable(name: "size", arg: 3, scope: !3656, file: !273, line: 390, type: !58)
!3663 = !DILocalVariable(name: "int_no", scope: !3656, file: !273, line: 392, type: !2377)
!3664 = !DILocalVariable(name: "index", scope: !3656, file: !273, line: 393, type: !58)
!3665 = !DILocation(line: 0, scope: !3656)
!3666 = !DILocation(line: 392, column: 26, scope: !3656)
!3667 = !DILocation(line: 395, column: 16, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3656, file: !273, line: 395, column: 9)
!3669 = !DILocation(line: 395, column: 9, scope: !3656)
!3670 = !DILocation(line: 401, column: 38, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !273, line: 400, column: 48)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !273, line: 400, column: 9)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !273, line: 400, column: 9)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !273, line: 399, column: 33)
!3675 = distinct !DILexicalBlock(scope: !3656, file: !273, line: 399, column: 9)
!3676 = !DILocation(line: 401, column: 13, scope: !3671)
!3677 = !DILocation(line: 401, column: 27, scope: !3671)
!3678 = !DILocation(line: 400, column: 44, scope: !3672)
!3679 = !DILocation(line: 400, column: 31, scope: !3672)
!3680 = !DILocation(line: 400, column: 9, scope: !3673)
!3681 = distinct !{!3681, !3680, !3682}
!3682 = !DILocation(line: 402, column: 9, scope: !3673)
!3683 = !DILocation(line: 406, column: 1, scope: !3656)
!3684 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !273, file: !273, line: 408, type: !3657, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691}
!3686 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3684, file: !273, line: 408, type: !337)
!3687 = !DILocalVariable(name: "buffer", arg: 2, scope: !3684, file: !273, line: 408, type: !378)
!3688 = !DILocalVariable(name: "size", arg: 3, scope: !3684, file: !273, line: 408, type: !58)
!3689 = !DILocalVariable(name: "actual_size", scope: !3684, file: !273, line: 410, type: !58)
!3690 = !DILocalVariable(name: "receive_size", scope: !3684, file: !273, line: 410, type: !58)
!3691 = !DILocalVariable(name: "ch", scope: !3684, file: !273, line: 411, type: !3584)
!3692 = !DILocation(line: 0, scope: !3684)
!3693 = !DILocation(line: 410, column: 5, scope: !3684)
!3694 = !DILocation(line: 413, column: 10, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3684, file: !273, line: 413, column: 9)
!3696 = !DILocation(line: 413, column: 9, scope: !3684)
!3697 = !DILocation(line: 417, column: 17, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3684, file: !273, line: 417, column: 9)
!3699 = !DILocation(line: 417, column: 26, scope: !3698)
!3700 = !DILocation(line: 421, column: 30, scope: !3684)
!3701 = !DILocation(line: 421, column: 5, scope: !3684)
!3702 = !DILocation(line: 422, column: 9, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3684, file: !273, line: 422, column: 9)
!3704 = !DILocation(line: 422, column: 21, scope: !3703)
!3705 = !DILocation(line: 427, column: 5, scope: !3684)
!3706 = !DILocation(line: 429, column: 25, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3684, file: !273, line: 429, column: 9)
!3708 = !DILocation(line: 429, column: 22, scope: !3707)
!3709 = !DILocation(line: 429, column: 9, scope: !3684)
!3710 = !DILocation(line: 430, column: 14, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3707, file: !273, line: 429, column: 38)
!3712 = !DILocation(line: 431, column: 9, scope: !3711)
!3713 = !DILocation(line: 432, column: 5, scope: !3711)
!3714 = !DILocation(line: 435, column: 1, scope: !3684)
!3715 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !273, file: !273, line: 438, type: !3641, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3716)
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3715, file: !273, line: 438, type: !337)
!3718 = !DILocalVariable(name: "length", scope: !3715, file: !273, line: 440, type: !58)
!3719 = !DILocation(line: 0, scope: !3715)
!3720 = !DILocation(line: 440, column: 5, scope: !3715)
!3721 = !DILocation(line: 440, column: 14, scope: !3715)
!3722 = !DILocation(line: 442, column: 10, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3715, file: !273, line: 442, column: 9)
!3724 = !DILocation(line: 442, column: 9, scope: !3715)
!3725 = !DILocation(line: 446, column: 30, scope: !3715)
!3726 = !DILocation(line: 446, column: 5, scope: !3715)
!3727 = !DILocation(line: 447, column: 12, scope: !3715)
!3728 = !DILocation(line: 447, column: 5, scope: !3715)
!3729 = !DILocation(line: 448, column: 1, scope: !3715)
!3730 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !273, file: !273, line: 451, type: !3641, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3731)
!3731 = !{!3732, !3733}
!3732 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3730, file: !273, line: 451, type: !337)
!3733 = !DILocalVariable(name: "length", scope: !3730, file: !273, line: 453, type: !58)
!3734 = !DILocation(line: 0, scope: !3730)
!3735 = !DILocation(line: 453, column: 5, scope: !3730)
!3736 = !DILocation(line: 453, column: 14, scope: !3730)
!3737 = !DILocation(line: 455, column: 10, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3730, file: !273, line: 455, column: 9)
!3739 = !DILocation(line: 455, column: 9, scope: !3730)
!3740 = !DILocation(line: 459, column: 30, scope: !3730)
!3741 = !DILocation(line: 459, column: 5, scope: !3730)
!3742 = !DILocation(line: 461, column: 12, scope: !3730)
!3743 = !DILocation(line: 461, column: 5, scope: !3730)
!3744 = !DILocation(line: 462, column: 1, scope: !3730)
!3745 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !273, file: !273, line: 543, type: !3746, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!3372, !337, !366, !180}
!3748 = !{!3749, !3750, !3751, !3752}
!3749 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3745, file: !273, line: 543, type: !337)
!3750 = !DILocalVariable(name: "user_callback", arg: 2, scope: !3745, file: !273, line: 544, type: !366)
!3751 = !DILocalVariable(name: "user_data", arg: 3, scope: !3745, file: !273, line: 545, type: !180)
!3752 = !DILocalVariable(name: "ch", scope: !3745, file: !273, line: 547, type: !3584)
!3753 = !DILocation(line: 0, scope: !3745)
!3754 = !DILocation(line: 549, column: 10, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3745, file: !273, line: 549, column: 9)
!3756 = !DILocation(line: 549, column: 9, scope: !3745)
!3757 = !DILocation(line: 556, column: 53, scope: !3745)
!3758 = !DILocation(line: 556, column: 62, scope: !3745)
!3759 = !DILocation(line: 557, column: 53, scope: !3745)
!3760 = !DILocation(line: 557, column: 63, scope: !3745)
!3761 = !DILocation(line: 558, column: 37, scope: !3745)
!3762 = !DILocation(line: 558, column: 54, scope: !3745)
!3763 = !DILocation(line: 560, column: 39, scope: !3745)
!3764 = !DILocation(line: 561, column: 39, scope: !3745)
!3765 = !DILocation(line: 560, column: 5, scope: !3745)
!3766 = !DILocation(line: 562, column: 5, scope: !3745)
!3767 = !DILocation(line: 564, column: 44, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3745, file: !273, line: 564, column: 9)
!3769 = !DILocation(line: 564, column: 9, scope: !3745)
!3770 = !DILocation(line: 565, column: 9, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !273, line: 564, column: 59)
!3772 = !DILocation(line: 566, column: 5, scope: !3771)
!3773 = !DILocation(line: 567, column: 9, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3768, file: !273, line: 566, column: 12)
!3775 = !DILocation(line: 569, column: 10, scope: !3745)
!3776 = !DILocation(line: 570, column: 5, scope: !3745)
!3777 = !DILocation(line: 578, column: 5, scope: !3745)
!3778 = !DILocation(line: 579, column: 1, scope: !3745)
!3779 = !DILocation(line: 0, scope: !330)
!3780 = !DILocation(line: 539, column: 12, scope: !330)
!3781 = !DILocation(line: 539, column: 5, scope: !330)
!3782 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !273, file: !273, line: 511, type: !335, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3783)
!3783 = !{!3784}
!3784 = !DILocalVariable(name: "callback_context", scope: !3785, file: !273, line: 514, type: !3787)
!3785 = distinct !DILexicalBlock(scope: !3786, file: !273, line: 513, column: 60)
!3786 = distinct !DILexicalBlock(scope: !3782, file: !273, line: 513, column: 9)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!3788 = !DILocation(line: 513, column: 42, scope: !3786)
!3789 = !DILocation(line: 513, column: 9, scope: !3782)
!3790 = !DILocation(line: 515, column: 39, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3785, file: !273, line: 515, column: 13)
!3792 = !DILocation(line: 515, column: 18, scope: !3791)
!3793 = !DILocation(line: 515, column: 13, scope: !3785)
!3794 = !DILocation(line: 516, column: 89, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3791, file: !273, line: 515, column: 49)
!3796 = !DILocation(line: 516, column: 13, scope: !3795)
!3797 = !DILocation(line: 517, column: 9, scope: !3795)
!3798 = !DILocation(line: 519, column: 32, scope: !3782)
!3799 = !DILocation(line: 519, column: 5, scope: !3782)
!3800 = !DILocation(line: 520, column: 1, scope: !3782)
!3801 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !273, file: !273, line: 523, type: !335, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3802)
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "callback_context", scope: !3804, file: !273, line: 526, type: !3787)
!3804 = distinct !DILexicalBlock(scope: !3805, file: !273, line: 525, column: 60)
!3805 = distinct !DILexicalBlock(scope: !3801, file: !273, line: 525, column: 9)
!3806 = !DILocation(line: 525, column: 42, scope: !3805)
!3807 = !DILocation(line: 525, column: 9, scope: !3801)
!3808 = !DILocation(line: 527, column: 39, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3804, file: !273, line: 527, column: 13)
!3810 = !DILocation(line: 527, column: 18, scope: !3809)
!3811 = !DILocation(line: 527, column: 13, scope: !3804)
!3812 = !DILocation(line: 528, column: 89, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3809, file: !273, line: 527, column: 49)
!3814 = !DILocation(line: 528, column: 13, scope: !3813)
!3815 = !DILocation(line: 529, column: 9, scope: !3813)
!3816 = !DILocation(line: 531, column: 32, scope: !3801)
!3817 = !DILocation(line: 531, column: 5, scope: !3801)
!3818 = !DILocation(line: 532, column: 1, scope: !3801)
!3819 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !273, file: !273, line: 464, type: !3820, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !2377, !347}
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3829}
!3823 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3819, file: !273, line: 464, type: !2377)
!3824 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3819, file: !273, line: 464, type: !347)
!3825 = !DILocalVariable(name: "avail_size", scope: !3819, file: !273, line: 466, type: !58)
!3826 = !DILocalVariable(name: "avail_space", scope: !3819, file: !273, line: 466, type: !58)
!3827 = !DILocalVariable(name: "dma_config", scope: !3819, file: !273, line: 467, type: !3828)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!3829 = !DILocalVariable(name: "ch", scope: !3819, file: !273, line: 468, type: !3584)
!3830 = !DILocation(line: 0, scope: !3819)
!3831 = !DILocation(line: 466, column: 5, scope: !3819)
!3832 = !DILocation(line: 471, column: 9, scope: !3819)
!3833 = !DILocation(line: 472, column: 9, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !273, line: 471, column: 16)
!3835 = distinct !DILexicalBlock(scope: !3819, file: !273, line: 471, column: 9)
!3836 = !DILocation(line: 473, column: 13, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3834, file: !273, line: 473, column: 13)
!3838 = !DILocation(line: 473, column: 39, scope: !3837)
!3839 = !DILocation(line: 473, column: 24, scope: !3837)
!3840 = !DILocation(line: 473, column: 13, scope: !3834)
!3841 = !DILocation(line: 478, column: 9, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3835, file: !273, line: 477, column: 12)
!3843 = !DILocation(line: 479, column: 13, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3842, file: !273, line: 479, column: 13)
!3845 = !DILocation(line: 479, column: 40, scope: !3844)
!3846 = !DILocation(line: 479, column: 77, scope: !3844)
!3847 = !DILocation(line: 479, column: 63, scope: !3844)
!3848 = !DILocation(line: 479, column: 25, scope: !3844)
!3849 = !DILocation(line: 479, column: 13, scope: !3842)
!3850 = !DILocation(line: 0, scope: !3835)
!3851 = !DILocation(line: 484, column: 1, scope: !3819)
!3852 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !273, file: !273, line: 486, type: !335, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3853)
!3853 = !{!3854}
!3854 = !DILocalVariable(name: "callback_context", scope: !3855, file: !273, line: 490, type: !3787)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !273, line: 489, column: 70)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !273, line: 488, column: 9)
!3857 = !DILocation(line: 488, column: 43, scope: !3856)
!3858 = !DILocation(line: 488, column: 61, scope: !3856)
!3859 = !DILocation(line: 489, column: 14, scope: !3856)
!3860 = !DILocation(line: 489, column: 63, scope: !3856)
!3861 = !DILocation(line: 488, column: 9, scope: !3852)
!3862 = !DILocation(line: 491, column: 39, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3855, file: !273, line: 491, column: 13)
!3864 = !DILocation(line: 491, column: 18, scope: !3863)
!3865 = !DILocation(line: 491, column: 13, scope: !3855)
!3866 = !DILocation(line: 492, column: 88, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3863, file: !273, line: 491, column: 49)
!3868 = !DILocation(line: 492, column: 13, scope: !3867)
!3869 = !DILocation(line: 493, column: 9, scope: !3867)
!3870 = !DILocation(line: 495, column: 32, scope: !3852)
!3871 = !DILocation(line: 495, column: 5, scope: !3852)
!3872 = !DILocation(line: 496, column: 1, scope: !3852)
!3873 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !273, file: !273, line: 499, type: !335, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3874)
!3874 = !{!3875}
!3875 = !DILocalVariable(name: "callback_context", scope: !3876, file: !273, line: 503, type: !3787)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !273, line: 502, column: 70)
!3877 = distinct !DILexicalBlock(scope: !3873, file: !273, line: 501, column: 9)
!3878 = !DILocation(line: 501, column: 43, scope: !3877)
!3879 = !DILocation(line: 501, column: 61, scope: !3877)
!3880 = !DILocation(line: 502, column: 14, scope: !3877)
!3881 = !DILocation(line: 502, column: 63, scope: !3877)
!3882 = !DILocation(line: 501, column: 9, scope: !3873)
!3883 = !DILocation(line: 504, column: 39, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3876, file: !273, line: 504, column: 13)
!3885 = !DILocation(line: 504, column: 18, scope: !3884)
!3886 = !DILocation(line: 504, column: 13, scope: !3876)
!3887 = !DILocation(line: 505, column: 88, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3884, file: !273, line: 504, column: 49)
!3889 = !DILocation(line: 505, column: 13, scope: !3888)
!3890 = !DILocation(line: 506, column: 9, scope: !3888)
!3891 = !DILocation(line: 508, column: 32, scope: !3873)
!3892 = !DILocation(line: 508, column: 5, scope: !3873)
!3893 = !DILocation(line: 509, column: 1, scope: !3873)
!3894 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !273, file: !273, line: 582, type: !3895, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!3372, !337, !353}
!3897 = !{!3898, !3899}
!3898 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3894, file: !273, line: 582, type: !337)
!3899 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3894, file: !273, line: 582, type: !353)
!3900 = !DILocation(line: 0, scope: !3894)
!3901 = !DILocation(line: 584, column: 11, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3894, file: !273, line: 584, column: 9)
!3903 = !DILocation(line: 584, column: 46, scope: !3902)
!3904 = !DILocation(line: 588, column: 37, scope: !3894)
!3905 = !DILocation(line: 588, column: 50, scope: !3894)
!3906 = !DILocation(line: 588, column: 59, scope: !3894)
!3907 = !DILocation(line: 589, column: 12, scope: !3894)
!3908 = !DILocation(line: 589, column: 5, scope: !3894)
!3909 = !DILocation(line: 590, column: 1, scope: !3894)
!3910 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !273, file: !273, line: 608, type: !3911, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3915)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!3372, !337, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!3915 = !{!3916, !3917}
!3916 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3910, file: !273, line: 608, type: !337)
!3917 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !3910, file: !273, line: 608, type: !3913)
!3918 = !DILocation(line: 0, scope: !3910)
!3919 = !DILocation(line: 610, column: 10, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3910, file: !273, line: 610, column: 9)
!3921 = !DILocation(line: 610, column: 9, scope: !3910)
!3922 = !DILocation(line: 614, column: 10, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3910, file: !273, line: 614, column: 9)
!3924 = !DILocation(line: 614, column: 9, scope: !3910)
!3925 = !DILocation(line: 618, column: 37, scope: !3910)
!3926 = !DILocation(line: 618, column: 56, scope: !3910)
!3927 = !DILocation(line: 619, column: 45, scope: !3910)
!3928 = !DILocation(line: 619, column: 12, scope: !3910)
!3929 = !DILocation(line: 620, column: 12, scope: !3910)
!3930 = !DILocation(line: 619, column: 5, scope: !3910)
!3931 = !DILocation(line: 621, column: 5, scope: !3910)
!3932 = !DILocation(line: 622, column: 5, scope: !3910)
!3933 = !DILocation(line: 623, column: 33, scope: !3910)
!3934 = !DILocation(line: 624, column: 50, scope: !3910)
!3935 = !DILocation(line: 625, column: 50, scope: !3910)
!3936 = !DILocation(line: 626, column: 50, scope: !3910)
!3937 = !DILocation(line: 627, column: 50, scope: !3910)
!3938 = !DILocation(line: 628, column: 33, scope: !3910)
!3939 = !DILocation(line: 623, column: 5, scope: !3910)
!3940 = !DILocation(line: 630, column: 50, scope: !3910)
!3941 = !DILocation(line: 631, column: 50, scope: !3910)
!3942 = !DILocation(line: 632, column: 50, scope: !3910)
!3943 = !DILocation(line: 629, column: 5, scope: !3910)
!3944 = !DILocation(line: 634, column: 5, scope: !3910)
!3945 = !DILocation(line: 635, column: 1, scope: !3910)
!3946 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !273, file: !273, line: 112, type: !3947, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3949)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!347, !3913}
!3949 = !{!3950}
!3950 = !DILocalVariable(name: "dma_config", arg: 1, scope: !3946, file: !273, line: 112, type: !3913)
!3951 = !DILocation(line: 0, scope: !3946)
!3952 = !DILocation(line: 114, column: 14, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3946, file: !273, line: 114, column: 9)
!3954 = !DILocation(line: 114, column: 9, scope: !3946)
!3955 = !DILocation(line: 117, column: 29, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3946, file: !273, line: 117, column: 9)
!3957 = !DILocation(line: 117, column: 14, scope: !3956)
!3958 = !DILocation(line: 117, column: 9, scope: !3946)
!3959 = !DILocation(line: 120, column: 21, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3946, file: !273, line: 120, column: 9)
!3961 = !DILocation(line: 120, column: 61, scope: !3960)
!3962 = !DILocation(line: 120, column: 47, scope: !3960)
!3963 = !DILocation(line: 120, column: 9, scope: !3946)
!3964 = !DILocation(line: 123, column: 61, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3946, file: !273, line: 123, column: 9)
!3966 = !DILocation(line: 123, column: 47, scope: !3965)
!3967 = !DILocation(line: 123, column: 9, scope: !3946)
!3968 = !DILocation(line: 126, column: 29, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3946, file: !273, line: 126, column: 9)
!3970 = !DILocation(line: 126, column: 14, scope: !3969)
!3971 = !DILocation(line: 126, column: 9, scope: !3946)
!3972 = !DILocation(line: 129, column: 21, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3946, file: !273, line: 129, column: 9)
!3974 = !DILocation(line: 129, column: 58, scope: !3973)
!3975 = !DILocation(line: 129, column: 44, scope: !3973)
!3976 = !DILocation(line: 129, column: 9, scope: !3946)
!3977 = !DILocation(line: 136, column: 1, scope: !3946)
!3978 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !273, file: !273, line: 182, type: !3979, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!58, !58}
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !3978, file: !273, line: 182, type: !58)
!3983 = !DILocalVariable(name: "ticks_per_us", scope: !3978, file: !273, line: 184, type: !58)
!3984 = !DILocation(line: 0, scope: !3978)
!3985 = !DILocation(line: 186, column: 20, scope: !3978)
!3986 = !DILocation(line: 186, column: 39, scope: !3978)
!3987 = !DILocation(line: 188, column: 25, scope: !3978)
!3988 = !DILocation(line: 188, column: 5, scope: !3978)
!3989 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !273, file: !273, line: 637, type: !3515, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3990)
!3990 = !{!3991, !3992}
!3991 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3989, file: !273, line: 637, type: !337)
!3992 = !DILocalVariable(name: "int_no", scope: !3989, file: !273, line: 639, type: !2377)
!3993 = !DILocation(line: 0, scope: !3989)
!3994 = !DILocation(line: 641, column: 10, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3989, file: !273, line: 641, column: 9)
!3996 = !DILocation(line: 641, column: 9, scope: !3989)
!3997 = !DILocation(line: 645, column: 14, scope: !3989)
!3998 = !DILocation(line: 646, column: 5, scope: !3989)
!3999 = !DILocation(line: 648, column: 5, scope: !3989)
!4000 = !DILocation(line: 649, column: 1, scope: !3989)
!4001 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !273, file: !273, line: 651, type: !4002, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !4004)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!3372, !337, !210, !210, !210}
!4004 = !{!4005, !4006, !4007, !4008, !4009}
!4005 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4001, file: !273, line: 651, type: !337)
!4006 = !DILocalVariable(name: "xon", arg: 2, scope: !4001, file: !273, line: 652, type: !210)
!4007 = !DILocalVariable(name: "xoff", arg: 3, scope: !4001, file: !273, line: 653, type: !210)
!4008 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4001, file: !273, line: 654, type: !210)
!4009 = !DILocalVariable(name: "int_no", scope: !4001, file: !273, line: 656, type: !2377)
!4010 = !DILocation(line: 0, scope: !4001)
!4011 = !DILocation(line: 658, column: 10, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4001, file: !273, line: 658, column: 9)
!4013 = !DILocation(line: 658, column: 9, scope: !4001)
!4014 = !DILocation(line: 662, column: 14, scope: !4001)
!4015 = !DILocation(line: 663, column: 5, scope: !4001)
!4016 = !DILocation(line: 665, column: 5, scope: !4001)
!4017 = !DILocation(line: 666, column: 1, scope: !4001)
!4018 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !273, file: !273, line: 668, type: !3515, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !4019)
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4018, file: !273, line: 668, type: !337)
!4021 = !DILocalVariable(name: "int_no", scope: !4018, file: !273, line: 670, type: !2377)
!4022 = !DILocation(line: 0, scope: !4018)
!4023 = !DILocation(line: 672, column: 10, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4018, file: !273, line: 672, column: 9)
!4025 = !DILocation(line: 672, column: 9, scope: !4018)
!4026 = !DILocation(line: 676, column: 14, scope: !4018)
!4027 = !DILocation(line: 677, column: 5, scope: !4018)
!4028 = !DILocation(line: 679, column: 5, scope: !4018)
!4029 = !DILocation(line: 680, column: 1, scope: !4018)
!4030 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !273, file: !273, line: 683, type: !4031, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !4033)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!3372, !337, !58}
!4033 = !{!4034, !4035}
!4034 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4030, file: !273, line: 683, type: !337)
!4035 = !DILocalVariable(name: "timeout", arg: 2, scope: !4030, file: !273, line: 683, type: !58)
!4036 = !DILocation(line: 0, scope: !4030)
!4037 = !DILocation(line: 685, column: 10, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4030, file: !273, line: 685, column: 9)
!4039 = !DILocation(line: 685, column: 9, scope: !4030)
!4040 = !DILocation(line: 689, column: 19, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4030, file: !273, line: 689, column: 9)
!4042 = !DILocation(line: 0, scope: !4041)
!4043 = !DILocation(line: 696, column: 1, scope: !4030)
!4044 = distinct !DISubprogram(name: "__io_putchar", scope: !885, file: !885, line: 54, type: !4045, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!125, !125}
!4047 = !{!4048}
!4048 = !DILocalVariable(name: "ch", arg: 1, scope: !4044, file: !885, line: 54, type: !125)
!4049 = !DILocation(line: 0, scope: !4044)
!4050 = !DILocation(line: 61, column: 35, scope: !4044)
!4051 = !DILocation(line: 61, column: 5, scope: !4044)
!4052 = !DILocation(line: 62, column: 5, scope: !4044)
!4053 = distinct !DISubprogram(name: "main", scope: !885, file: !885, line: 200, type: !2353, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !1924)
!4054 = !DILocation(line: 203, column: 5, scope: !4053)
!4055 = !DILocation(line: 206, column: 5, scope: !4053)
!4056 = !DILocation(line: 319, column: 3, scope: !4057, inlinedAt: !4058)
!4057 = distinct !DISubprogram(name: "__enable_irq", scope: !1914, file: !1914, line: 317, type: !335, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !1924)
!4058 = distinct !DILocation(line: 209, column: 5, scope: !4053)
!4059 = !{i64 502558}
!4060 = !DILocation(line: 496, column: 3, scope: !4061, inlinedAt: !4062)
!4061 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1914, file: !1914, line: 494, type: !335, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !1924)
!4062 = distinct !DILocation(line: 210, column: 5, scope: !4053)
!4063 = !{i64 506833}
!4064 = !DILocation(line: 213, column: 5, scope: !4053)
!4065 = !DILocation(line: 214, column: 5, scope: !4053)
!4066 = !DILocation(line: 216, column: 5, scope: !4053)
!4067 = !DILocation(line: 218, column: 5, scope: !4053)
!4068 = !DILocation(line: 218, column: 5, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !885, line: 218, column: 5)
!4070 = distinct !DILexicalBlock(scope: !4053, file: !885, line: 218, column: 5)
!4071 = distinct !{!4071, !4072, !4073}
!4072 = !DILocation(line: 218, column: 5, scope: !4070)
!4073 = !DILocation(line: 218, column: 13, scope: !4070)
!4074 = distinct !DISubprogram(name: "SystemClock_Config", scope: !885, file: !885, line: 92, type: !335, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !1924)
!4075 = !DILocation(line: 94, column: 5, scope: !4074)
!4076 = !DILocation(line: 95, column: 1, scope: !4074)
!4077 = distinct !DISubprogram(name: "prvSetupHardware", scope: !885, file: !885, line: 103, type: !335, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !1924)
!4078 = !DILocation(line: 105, column: 5, scope: !4077)
!4079 = !DILocation(line: 106, column: 1, scope: !4077)
!4080 = distinct !DISubprogram(name: "gpio_configure_pull_state_example", scope: !885, file: !885, line: 114, type: !335, scopeLine: 115, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4081)
!4081 = !{!4082, !4083, !4084, !4085}
!4082 = !DILocalVariable(name: "data_pull_up", scope: !4080, file: !885, line: 117, type: !881)
!4083 = !DILocalVariable(name: "data_pull_down", scope: !4080, file: !885, line: 118, type: !881)
!4084 = !DILocalVariable(name: "ret", scope: !4080, file: !885, line: 119, type: !3169)
!4085 = !DILocalVariable(name: "ret_pinmux_status", scope: !4080, file: !885, line: 120, type: !3148)
!4086 = !DILocation(line: 117, column: 5, scope: !4080)
!4087 = !DILocation(line: 118, column: 5, scope: !4080)
!4088 = !DILocation(line: 122, column: 5, scope: !4080)
!4089 = !DILocation(line: 124, column: 11, scope: !4080)
!4090 = !DILocation(line: 0, scope: !4080)
!4091 = !DILocation(line: 125, column: 28, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 125, column: 9)
!4093 = !DILocation(line: 125, column: 9, scope: !4080)
!4094 = !DILocation(line: 126, column: 9, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4092, file: !885, line: 125, column: 36)
!4096 = !DILocation(line: 127, column: 9, scope: !4095)
!4097 = !DILocation(line: 128, column: 9, scope: !4095)
!4098 = !DILocation(line: 134, column: 25, scope: !4080)
!4099 = !DILocation(line: 135, column: 30, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 135, column: 9)
!4101 = !DILocation(line: 135, column: 9, scope: !4080)
!4102 = !DILocation(line: 136, column: 9, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !885, line: 135, column: 52)
!4104 = !DILocation(line: 137, column: 9, scope: !4103)
!4105 = !DILocation(line: 138, column: 9, scope: !4103)
!4106 = !DILocation(line: 142, column: 11, scope: !4080)
!4107 = !DILocation(line: 143, column: 28, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 143, column: 9)
!4109 = !DILocation(line: 143, column: 9, scope: !4080)
!4110 = !DILocation(line: 144, column: 9, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4108, file: !885, line: 143, column: 36)
!4112 = !DILocation(line: 145, column: 9, scope: !4111)
!4113 = !DILocation(line: 146, column: 9, scope: !4111)
!4114 = !DILocation(line: 150, column: 11, scope: !4080)
!4115 = !DILocation(line: 151, column: 28, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 151, column: 9)
!4117 = !DILocation(line: 151, column: 9, scope: !4080)
!4118 = !DILocation(line: 152, column: 9, scope: !4119)
!4119 = distinct !DILexicalBlock(scope: !4116, file: !885, line: 151, column: 36)
!4120 = !DILocation(line: 153, column: 9, scope: !4119)
!4121 = !DILocation(line: 154, column: 9, scope: !4119)
!4122 = !DILocation(line: 158, column: 11, scope: !4080)
!4123 = !DILocation(line: 159, column: 28, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 159, column: 9)
!4125 = !DILocation(line: 159, column: 9, scope: !4080)
!4126 = !DILocation(line: 160, column: 9, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4124, file: !885, line: 159, column: 36)
!4128 = !DILocation(line: 161, column: 9, scope: !4127)
!4129 = !DILocation(line: 162, column: 9, scope: !4127)
!4130 = !DILocation(line: 168, column: 11, scope: !4080)
!4131 = !DILocation(line: 169, column: 28, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 169, column: 9)
!4133 = !DILocation(line: 169, column: 9, scope: !4080)
!4134 = !DILocation(line: 170, column: 9, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !885, line: 169, column: 36)
!4136 = !DILocation(line: 171, column: 9, scope: !4135)
!4137 = !DILocation(line: 172, column: 9, scope: !4135)
!4138 = !DILocation(line: 176, column: 11, scope: !4080)
!4139 = !DILocation(line: 177, column: 28, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 177, column: 9)
!4141 = !DILocation(line: 177, column: 9, scope: !4080)
!4142 = !DILocation(line: 178, column: 9, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4140, file: !885, line: 177, column: 36)
!4144 = !DILocation(line: 179, column: 9, scope: !4143)
!4145 = !DILocation(line: 180, column: 9, scope: !4143)
!4146 = !DILocation(line: 185, column: 10, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 185, column: 9)
!4148 = !DILocation(line: 185, column: 25, scope: !4147)
!4149 = !DILocation(line: 185, column: 47, scope: !4147)
!4150 = !DILocation(line: 0, scope: !4147)
!4151 = !DILocation(line: 191, column: 11, scope: !4080)
!4152 = !DILocation(line: 192, column: 28, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4080, file: !885, line: 192, column: 9)
!4154 = !DILocation(line: 192, column: 9, scope: !4080)
!4155 = !DILocation(line: 193, column: 9, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4153, file: !885, line: 192, column: 36)
!4157 = !DILocation(line: 194, column: 9, scope: !4156)
!4158 = !DILocation(line: 197, column: 5, scope: !4080)
!4159 = !DILocation(line: 198, column: 1, scope: !4080)
!4160 = distinct !DISubprogram(name: "log_uart_init", scope: !885, file: !885, line: 70, type: !335, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !884, retainedNodes: !4161)
!4161 = !{!4162}
!4162 = !DILocalVariable(name: "uart_config", scope: !4160, file: !885, line: 72, type: !4163)
!4163 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !276, line: 378, baseType: !4164)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 373, size: 128, elements: !4165)
!4165 = !{!4166, !4167, !4168, !4169}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4164, file: !276, line: 374, baseType: !353, size: 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4164, file: !276, line: 375, baseType: !355, size: 32, offset: 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4164, file: !276, line: 376, baseType: !357, size: 32, offset: 64)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4164, file: !276, line: 377, baseType: !359, size: 32, offset: 96)
!4170 = !DILocation(line: 72, column: 5, scope: !4160)
!4171 = !DILocation(line: 72, column: 23, scope: !4160)
!4172 = !DILocation(line: 74, column: 5, scope: !4160)
!4173 = !DILocation(line: 75, column: 5, scope: !4160)
!4174 = !DILocation(line: 76, column: 5, scope: !4160)
!4175 = !DILocation(line: 77, column: 5, scope: !4160)
!4176 = !DILocation(line: 79, column: 17, scope: !4160)
!4177 = !DILocation(line: 79, column: 26, scope: !4160)
!4178 = !DILocation(line: 80, column: 17, scope: !4160)
!4179 = !DILocation(line: 80, column: 29, scope: !4160)
!4180 = !DILocation(line: 81, column: 17, scope: !4160)
!4181 = !DILocation(line: 81, column: 26, scope: !4160)
!4182 = !DILocation(line: 82, column: 17, scope: !4160)
!4183 = !DILocation(line: 82, column: 24, scope: !4160)
!4184 = !DILocation(line: 83, column: 5, scope: !4160)
!4185 = !DILocation(line: 85, column: 1, scope: !4160)
!4186 = distinct !DISubprogram(name: "SysTick_Set", scope: !388, file: !388, line: 70, type: !3979, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !4187)
!4187 = !{!4188, !4189}
!4188 = !DILocalVariable(name: "ticks", arg: 1, scope: !4186, file: !388, line: 70, type: !58)
!4189 = !DILocalVariable(name: "val", scope: !4186, file: !388, line: 72, type: !58)
!4190 = !DILocation(line: 0, scope: !4186)
!4191 = !DILocation(line: 74, column: 16, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4186, file: !388, line: 74, column: 9)
!4193 = !DILocation(line: 74, column: 21, scope: !4192)
!4194 = !DILocation(line: 74, column: 9, scope: !4186)
!4195 = !DILocation(line: 78, column: 20, scope: !4186)
!4196 = !DILocation(line: 80, column: 19, scope: !4186)
!4197 = !DILocation(line: 83, column: 20, scope: !4186)
!4198 = !DILocation(line: 84, column: 20, scope: !4186)
!4199 = !DILocation(line: 86, column: 19, scope: !4186)
!4200 = !DILocation(line: 88, column: 5, scope: !4186)
!4201 = !DILocation(line: 89, column: 1, scope: !4186)
!4202 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !388, file: !388, line: 98, type: !335, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1924)
!4203 = !DILocation(line: 100, column: 28, scope: !4202)
!4204 = !DILocation(line: 101, column: 1, scope: !4202)
!4205 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !388, file: !388, line: 110, type: !1908, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1924)
!4206 = !DILocation(line: 112, column: 12, scope: !4205)
!4207 = !DILocation(line: 112, column: 5, scope: !4205)
!4208 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !388, file: !388, line: 122, type: !335, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1924)
!4209 = !DILocation(line: 124, column: 23, scope: !4208)
!4210 = !DILocation(line: 124, column: 21, scope: !4208)
!4211 = !DILocation(line: 125, column: 1, scope: !4208)
!4212 = distinct !DISubprogram(name: "SystemInit", scope: !388, file: !388, line: 136, type: !335, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1924)
!4213 = !DILocation(line: 140, column: 16, scope: !4212)
!4214 = !DILocation(line: 144, column: 16, scope: !4212)
!4215 = !DILocation(line: 147, column: 16, scope: !4212)
!4216 = !DILocation(line: 150, column: 1, scope: !4212)
!4217 = distinct !DISubprogram(name: "CachePreInit", scope: !388, file: !388, line: 158, type: !335, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1924)
!4218 = !DILocation(line: 161, column: 22, scope: !4217)
!4219 = !DILocation(line: 164, column: 21, scope: !4217)
!4220 = !DILocation(line: 167, column: 21, scope: !4217)
!4221 = !DILocation(line: 170, column: 29, scope: !4217)
!4222 = !DILocation(line: 171, column: 33, scope: !4217)
!4223 = !DILocation(line: 173, column: 28, scope: !4217)
!4224 = !DILocation(line: 178, column: 30, scope: !4217)
!4225 = !DILocation(line: 192, column: 1, scope: !4217)
!4226 = distinct !DISubprogram(name: "_close", scope: !458, file: !458, line: 11, type: !4045, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4227)
!4227 = !{!4228}
!4228 = !DILocalVariable(name: "file", arg: 1, scope: !4226, file: !458, line: 11, type: !125)
!4229 = !DILocation(line: 0, scope: !4226)
!4230 = !DILocation(line: 13, column: 5, scope: !4226)
!4231 = distinct !DISubprogram(name: "_fstat", scope: !458, file: !458, line: 16, type: !4232, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4280)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!125, !125, !4234}
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 32)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4236, line: 27, size: 704, elements: !4237)
!4236 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!4237 = !{!4238, !4241, !4244, !4247, !4250, !4253, !4256, !4257, !4260, !4270, !4271, !4272, !4275, !4278}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4235, file: !4236, line: 29, baseType: !4239, size: 16)
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !462, line: 161, baseType: !4240)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !504, line: 56, baseType: !479)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4235, file: !4236, line: 30, baseType: !4242, size: 16, offset: 16)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !462, line: 139, baseType: !4243)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !504, line: 75, baseType: !112)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4235, file: !4236, line: 31, baseType: !4245, size: 32, offset: 32)
!4245 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !462, line: 189, baseType: !4246)
!4246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !504, line: 90, baseType: !60)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4235, file: !4236, line: 32, baseType: !4248, size: 16, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !462, line: 194, baseType: !4249)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !504, line: 209, baseType: !112)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4235, file: !4236, line: 33, baseType: !4251, size: 16, offset: 80)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !462, line: 165, baseType: !4252)
!4252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !504, line: 60, baseType: !112)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4235, file: !4236, line: 34, baseType: !4254, size: 16, offset: 96)
!4254 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !462, line: 169, baseType: !4255)
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !504, line: 63, baseType: !112)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4235, file: !4236, line: 35, baseType: !4239, size: 16, offset: 112)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4235, file: !4236, line: 36, baseType: !4258, size: 32, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !462, line: 157, baseType: !4259)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !504, line: 102, baseType: !522)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4235, file: !4236, line: 42, baseType: !4261, size: 128, offset: 192)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4262, line: 47, size: 128, elements: !4263)
!4262 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!4263 = !{!4264, !4269}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4261, file: !4262, line: 48, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !4266, line: 42, baseType: !4267)
!4266 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!4267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !61, line: 200, baseType: !4268)
!4268 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4261, file: !4262, line: 49, baseType: !505, size: 32, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4235, file: !4236, line: 43, baseType: !4261, size: 128, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4235, file: !4236, line: 44, baseType: !4261, size: 128, offset: 448)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4235, file: !4236, line: 45, baseType: !4273, size: 32, offset: 576)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !462, line: 102, baseType: !4274)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !504, line: 34, baseType: !505)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4235, file: !4236, line: 46, baseType: !4276, size: 32, offset: 608)
!4276 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !462, line: 97, baseType: !4277)
!4277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !504, line: 30, baseType: !505)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !4235, file: !4236, line: 48, baseType: !4279, size: 64, offset: 640)
!4279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 64, elements: !243)
!4280 = !{!4281, !4282}
!4281 = !DILocalVariable(name: "file", arg: 1, scope: !4231, file: !458, line: 16, type: !125)
!4282 = !DILocalVariable(name: "st", arg: 2, scope: !4231, file: !458, line: 16, type: !4234)
!4283 = !DILocation(line: 0, scope: !4231)
!4284 = !DILocation(line: 18, column: 5, scope: !4231)
!4285 = distinct !DISubprogram(name: "_isatty", scope: !458, file: !458, line: 22, type: !4045, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4286)
!4286 = !{!4287}
!4287 = !DILocalVariable(name: "file", arg: 1, scope: !4285, file: !458, line: 22, type: !125)
!4288 = !DILocation(line: 0, scope: !4285)
!4289 = !DILocation(line: 24, column: 5, scope: !4285)
!4290 = distinct !DISubprogram(name: "_lseek", scope: !458, file: !458, line: 27, type: !4291, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!125, !125, !125, !125}
!4293 = !{!4294, !4295, !4296}
!4294 = !DILocalVariable(name: "file", arg: 1, scope: !4290, file: !458, line: 27, type: !125)
!4295 = !DILocalVariable(name: "ptr", arg: 2, scope: !4290, file: !458, line: 27, type: !125)
!4296 = !DILocalVariable(name: "dir", arg: 3, scope: !4290, file: !458, line: 27, type: !125)
!4297 = !DILocation(line: 0, scope: !4290)
!4298 = !DILocation(line: 29, column: 5, scope: !4290)
!4299 = distinct !DISubprogram(name: "_open", scope: !458, file: !458, line: 32, type: !4300, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4302)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!125, !497, !125, !125}
!4302 = !{!4303, !4304, !4305}
!4303 = !DILocalVariable(name: "name", arg: 1, scope: !4299, file: !458, line: 32, type: !497)
!4304 = !DILocalVariable(name: "flags", arg: 2, scope: !4299, file: !458, line: 32, type: !125)
!4305 = !DILocalVariable(name: "mode", arg: 3, scope: !4299, file: !458, line: 32, type: !125)
!4306 = !DILocation(line: 0, scope: !4299)
!4307 = !DILocation(line: 34, column: 5, scope: !4299)
!4308 = distinct !DISubprogram(name: "_read", scope: !458, file: !458, line: 37, type: !4309, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4311)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!125, !125, !463, !125}
!4311 = !{!4312, !4313, !4314}
!4312 = !DILocalVariable(name: "file", arg: 1, scope: !4308, file: !458, line: 37, type: !125)
!4313 = !DILocalVariable(name: "ptr", arg: 2, scope: !4308, file: !458, line: 37, type: !463)
!4314 = !DILocalVariable(name: "len", arg: 3, scope: !4308, file: !458, line: 37, type: !125)
!4315 = !DILocation(line: 0, scope: !4308)
!4316 = !DILocation(line: 39, column: 5, scope: !4308)
!4317 = distinct !DISubprogram(name: "_write", scope: !458, file: !458, line: 52, type: !4309, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4318)
!4318 = !{!4319, !4320, !4321, !4322}
!4319 = !DILocalVariable(name: "file", arg: 1, scope: !4317, file: !458, line: 52, type: !125)
!4320 = !DILocalVariable(name: "ptr", arg: 2, scope: !4317, file: !458, line: 52, type: !463)
!4321 = !DILocalVariable(name: "len", arg: 3, scope: !4317, file: !458, line: 52, type: !125)
!4322 = !DILocalVariable(name: "i", scope: !4317, file: !458, line: 54, type: !125)
!4323 = !DILocation(line: 0, scope: !4317)
!4324 = !DILocation(line: 56, column: 19, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !458, line: 56, column: 5)
!4326 = distinct !DILexicalBlock(scope: !4317, file: !458, line: 56, column: 5)
!4327 = !DILocation(line: 56, column: 5, scope: !4326)
!4328 = !DILocation(line: 57, column: 26, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4325, file: !458, line: 56, column: 31)
!4330 = !DILocation(line: 57, column: 22, scope: !4329)
!4331 = !DILocation(line: 57, column: 9, scope: !4329)
!4332 = !DILocation(line: 56, column: 27, scope: !4325)
!4333 = distinct !{!4333, !4327, !4334}
!4334 = !DILocation(line: 58, column: 5, scope: !4326)
!4335 = !DILocation(line: 60, column: 5, scope: !4317)
!4336 = !DILocation(line: 0, scope: !457)
!4337 = !DILocation(line: 70, column: 5, scope: !457)
!4338 = !{i64 1109}
!4339 = !DILocation(line: 72, column: 14, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !457, file: !458, line: 72, column: 9)
!4341 = !DILocation(line: 72, column: 11, scope: !4340)
!4342 = !DILocation(line: 72, column: 9, scope: !457)
!4343 = !DILocation(line: 78, column: 32, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !457, file: !458, line: 78, column: 9)
!4345 = !DILocation(line: 78, column: 15, scope: !4344)
!4346 = !DILocation(line: 89, column: 1, scope: !457)
!4347 = !DILocation(line: 78, column: 9, scope: !457)
!4348 = distinct !DISubprogram(name: "_exit", scope: !458, file: !458, line: 91, type: !607, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4349)
!4349 = !{!4350}
!4350 = !DILocalVariable(name: "__status", arg: 1, scope: !4348, file: !458, line: 91, type: !125)
!4351 = !DILocation(line: 0, scope: !4348)
!4352 = !DILocation(line: 93, column: 5, scope: !4348)
!4353 = !DILocation(line: 94, column: 5, scope: !4348)
!4354 = distinct !{!4354, !4353, !4355}
!4355 = !DILocation(line: 96, column: 5, scope: !4348)
!4356 = distinct !DISubprogram(name: "_kill", scope: !458, file: !458, line: 100, type: !4357, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4359)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!125, !125, !125}
!4359 = !{!4360, !4361}
!4360 = !DILocalVariable(name: "pid", arg: 1, scope: !4356, file: !458, line: 100, type: !125)
!4361 = !DILocalVariable(name: "sig", arg: 2, scope: !4356, file: !458, line: 100, type: !125)
!4362 = !DILocation(line: 0, scope: !4356)
!4363 = !DILocation(line: 102, column: 5, scope: !4356)
!4364 = !DILocation(line: 103, column: 5, scope: !4356)
!4365 = distinct !DISubprogram(name: "_getpid", scope: !458, file: !458, line: 107, type: !4366, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !1924)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!4368}
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !462, line: 174, baseType: !4369)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !504, line: 52, baseType: !125)
!4370 = !DILocation(line: 109, column: 5, scope: !4365)
!4371 = !DILocation(line: 110, column: 5, scope: !4365)
