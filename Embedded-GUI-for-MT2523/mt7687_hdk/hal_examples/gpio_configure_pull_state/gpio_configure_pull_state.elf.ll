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
@.str.2 = private unnamed_addr constant [34 x i8] c"pls add your own code from here\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\0D\0A ---gpio_example begin---\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"hal_gpio_init failed\0D\0A\00", align 1
@.str.5.6 = private unnamed_addr constant [33 x i8] c"hal_pinmux_set_function failed\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"hal_gpio_set_direction failed\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"hal_gpio_pull_up failed\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"hal_gpio_get_input failed\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"hal_gpio_pull_down failed\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"GPIO pull state configuration is successful\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"GPIO pull state configuration failed\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"hal_gpio_deinit failed\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\0D\0A ---gpio_example finished!!!---\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"example project test success.\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !385
@System_Initialize_Done = internal global i32 0, align 4, !dbg !453
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !455
@end = external dso_local global i8, align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.16 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.17 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:08 GMT +00:00\00", align 1, !dbg !664
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !669
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !675

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !899, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i8 %1, metadata !900, metadata !DIExpression()), !dbg !904
  %3 = lshr i32 %0, 5, !dbg !905
  call void @llvm.dbg.value(metadata i32 %3, metadata !901, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !904
  %4 = trunc i32 %0 to i16, !dbg !906
  %5 = and i16 %4, 31, !dbg !906
  call void @llvm.dbg.value(metadata i16 %4, metadata !903, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !904
  %6 = trunc i32 %3 to i16, !dbg !907
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !907

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !908
  %9 = zext i16 %5 to i32, !dbg !911
  %10 = icmp ult i16 %5, 27, !dbg !911
  br i1 %8, label %11, label %46, !dbg !912

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !913

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !915
  %14 = xor i32 %13, -1, !dbg !918
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !919
  %16 = and i32 %15, %14, !dbg !919
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !919
  br label %44, !dbg !920

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !921
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !921

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !922
  %21 = and i32 %20, -3, !dbg !922
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !922
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !925
  %23 = or i32 %22, 2048, !dbg !925
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !925
  br label %44, !dbg !926

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !927
  %26 = and i32 %25, -3, !dbg !927
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !927
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !930
  %28 = or i32 %27, 2048, !dbg !930
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !930
  br label %44, !dbg !931

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !932
  %31 = and i32 %30, -3, !dbg !932
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !932
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !935
  %33 = or i32 %32, 2048, !dbg !935
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !935
  br label %44, !dbg !936

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !937
  %36 = and i32 %35, -3, !dbg !937
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !937
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !940
  %38 = or i32 %37, 2048, !dbg !940
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !940
  br label %44, !dbg !941

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !942
  %41 = and i32 %40, -3, !dbg !942
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !942
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !945
  %43 = or i32 %42, 2048, !dbg !945
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !945
  br label %44, !dbg !946

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !947
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !947
  br label %97, !dbg !948

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !949

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !951
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !954
  %50 = or i32 %49, %48, !dbg !954
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !954
  br label %68, !dbg !955

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !956
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !956

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !957
  %55 = or i32 %54, 2050, !dbg !957
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !957
  br label %68, !dbg !960

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !961
  %58 = or i32 %57, 2050, !dbg !961
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !961
  br label %68, !dbg !964

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !965
  %61 = or i32 %60, 2050, !dbg !965
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !965
  br label %68, !dbg !968

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !969
  %64 = or i32 %63, 2050, !dbg !969
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !969
  br label %68, !dbg !972

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !973
  %67 = or i32 %66, 2050, !dbg !973
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !973
  br label %68, !dbg !976

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !977
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !977
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !978
  %72 = zext i16 %5 to i32, !dbg !980
  %73 = icmp eq i16 %5, 0, !dbg !980
  br i1 %71, label %74, label %87, !dbg !981

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !982

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !984
  %77 = xor i32 %76, -1, !dbg !987
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !988
  %79 = and i32 %78, %77, !dbg !988
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !988
  br label %85, !dbg !989

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !990
  %82 = and i32 %81, -3, !dbg !990
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !990
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !992
  %84 = or i32 %83, 2048, !dbg !992
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !992
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !993
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !993
  br label %97, !dbg !994

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !995

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !997
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1000
  %91 = or i32 %90, %89, !dbg !1000
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1000
  br label %95, !dbg !1001

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1002
  %94 = or i32 %93, 2050, !dbg !1002
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1002
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1004
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1004
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !904
  ret i32 %98, !dbg !1005
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1006 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1008, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.value(metadata i8 %1, metadata !1009, metadata !DIExpression()), !dbg !1012
  %3 = lshr i32 %0, 5, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %3, metadata !1010, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1012
  %4 = trunc i32 %0 to i16, !dbg !1014
  %5 = and i16 %4, 31, !dbg !1014
  call void @llvm.dbg.value(metadata i16 %5, metadata !1011, metadata !DIExpression()), !dbg !1012
  %6 = trunc i32 %3 to i16, !dbg !1015
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1015

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1016
  %9 = zext i16 %5 to i32, !dbg !1019
  %10 = shl nuw i32 1, %9, !dbg !1019
  br i1 %8, label %12, label %11, !dbg !1020

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1021
  br label %19, !dbg !1023

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1024
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1026
  %15 = zext i16 %5 to i32, !dbg !1028
  %16 = shl nuw i32 1, %15, !dbg !1028
  br i1 %14, label %18, label %17, !dbg !1029

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1030
  br label %19, !dbg !1032

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1033
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1012
  ret i32 %20, !dbg !1035
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1040, metadata !DIExpression()), !dbg !1044
  %2 = lshr i32 %0, 5, !dbg !1045
  call void @llvm.dbg.value(metadata i32 %2, metadata !1041, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1044
  %3 = and i32 %0, 31, !dbg !1046
  call void @llvm.dbg.value(metadata i32 %0, metadata !1042, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1044
  call void @llvm.dbg.value(metadata i8 0, metadata !1043, metadata !DIExpression()), !dbg !1044
  %4 = trunc i32 %2 to i16, !dbg !1047
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1047

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1043, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1044
  br label %6, !dbg !1048

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1050
  %9 = lshr i32 %8, %3, !dbg !1050
  %10 = trunc i32 %9 to i8, !dbg !1050
  %11 = and i8 %10, 1, !dbg !1050
  call void @llvm.dbg.value(metadata i8 %11, metadata !1043, metadata !DIExpression()), !dbg !1044
  br label %12, !dbg !1051

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1044
  ret i8 %13, !dbg !1052
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1053 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1055, metadata !DIExpression()), !dbg !1059
  %2 = lshr i32 %0, 5, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %2, metadata !1056, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1059
  %3 = and i32 %0, 31, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %0, metadata !1057, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1059
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()), !dbg !1059
  %4 = trunc i32 %2 to i16, !dbg !1062
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1062

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1058, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1059
  br label %6, !dbg !1063

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1065
  %9 = lshr i32 %8, %3, !dbg !1065
  %10 = trunc i32 %9 to i8, !dbg !1065
  %11 = and i8 %10, 1, !dbg !1065
  call void @llvm.dbg.value(metadata i8 %11, metadata !1058, metadata !DIExpression()), !dbg !1059
  br label %12, !dbg !1066

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1059
  ret i8 %13, !dbg !1067
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1070, metadata !DIExpression()), !dbg !1074
  %2 = lshr i32 %0, 5, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %2, metadata !1071, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1074
  %3 = and i32 %0, 31, !dbg !1076
  call void @llvm.dbg.value(metadata i32 %0, metadata !1072, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1074
  call void @llvm.dbg.value(metadata i8 0, metadata !1073, metadata !DIExpression()), !dbg !1074
  %4 = trunc i32 %2 to i16, !dbg !1077
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1077

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1073, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1074
  br label %6, !dbg !1078

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1080
  %9 = lshr i32 %8, %3, !dbg !1080
  %10 = trunc i32 %9 to i8, !dbg !1080
  %11 = and i8 %10, 1, !dbg !1080
  call void @llvm.dbg.value(metadata i8 %11, metadata !1073, metadata !DIExpression()), !dbg !1074
  br label %12, !dbg !1081

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1074
  ret i8 %13, !dbg !1082
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1083 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1087, metadata !DIExpression()), !dbg !1090
  %2 = lshr i32 %0, 5, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %2, metadata !1088, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1090
  %3 = trunc i32 %0 to i16, !dbg !1092
  %4 = and i16 %3, 31, !dbg !1092
  call void @llvm.dbg.value(metadata i16 %3, metadata !1089, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1090
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #11, !dbg !1093
  %6 = trunc i32 %2 to i16, !dbg !1094
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1094

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1095
  br i1 %8, label %9, label %12, !dbg !1098

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1099
  %11 = shl nuw nsw i32 1, %10, !dbg !1100
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1100
  br label %49, !dbg !1102

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1103
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1103

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1104
  %16 = and i32 %15, -29, !dbg !1104
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1104
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1107
  %18 = or i32 %17, 2052, !dbg !1107
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1107
  br label %49, !dbg !1108

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1109
  %21 = and i32 %20, -29, !dbg !1109
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1109
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1112
  %23 = or i32 %22, 2052, !dbg !1112
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1112
  br label %49, !dbg !1113

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1114
  %26 = and i32 %25, -29, !dbg !1114
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1114
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1117
  %28 = or i32 %27, 2052, !dbg !1117
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1117
  br label %49, !dbg !1118

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1119
  %31 = and i32 %30, -29, !dbg !1119
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1119
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1122
  %33 = or i32 %32, 2052, !dbg !1122
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1122
  br label %49, !dbg !1123

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1124
  %36 = and i32 %35, -29, !dbg !1124
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1124
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1127
  %38 = or i32 %37, 2052, !dbg !1127
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1127
  br label %49, !dbg !1128

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1129
  br i1 %40, label %41, label %46, !dbg !1131

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1132
  %43 = and i32 %42, -29, !dbg !1132
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1132
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1134
  %45 = or i32 %44, 2052, !dbg !1134
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1134
  br label %49, !dbg !1135

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1136
  %48 = shl nuw i32 1, %47, !dbg !1136
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1136
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1090
  ret i32 %50, !dbg !1138
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1139 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1141, metadata !DIExpression()), !dbg !1144
  %2 = lshr i32 %0, 5, !dbg !1145
  call void @llvm.dbg.value(metadata i32 %2, metadata !1142, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1144
  %3 = trunc i32 %0 to i16, !dbg !1146
  %4 = and i16 %3, 31, !dbg !1146
  call void @llvm.dbg.value(metadata i16 %3, metadata !1143, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1144
  %5 = trunc i32 %2 to i16, !dbg !1147
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1147

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1148
  br i1 %7, label %8, label %11, !dbg !1151

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1152
  %10 = shl nuw nsw i32 1, %9, !dbg !1153
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1153
  br label %48, !dbg !1155

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1156
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1156

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1157
  %15 = and i32 %14, -29, !dbg !1157
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1157
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1160
  %17 = or i32 %16, 2048, !dbg !1160
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1160
  br label %48, !dbg !1161

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1162
  %20 = and i32 %19, -29, !dbg !1162
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1162
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1165
  %22 = or i32 %21, 2048, !dbg !1165
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1165
  br label %48, !dbg !1166

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1167
  %25 = and i32 %24, -29, !dbg !1167
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1167
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1170
  %27 = or i32 %26, 2048, !dbg !1170
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1170
  br label %48, !dbg !1171

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1172
  %30 = and i32 %29, -29, !dbg !1172
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1172
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1175
  %32 = or i32 %31, 2048, !dbg !1175
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1175
  br label %48, !dbg !1176

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1177
  %35 = and i32 %34, -29, !dbg !1177
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1177
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1180
  %37 = or i32 %36, 2048, !dbg !1180
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1180
  br label %48, !dbg !1181

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1182
  br i1 %39, label %40, label %45, !dbg !1184

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1185
  %42 = and i32 %41, -29, !dbg !1185
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1185
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1187
  %44 = or i32 %43, 2048, !dbg !1187
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1187
  br label %48, !dbg !1188

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1189
  %47 = shl nuw i32 1, %46, !dbg !1189
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1189
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1144
  ret i32 %49, !dbg !1191
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1192 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1194, metadata !DIExpression()), !dbg !1197
  %2 = lshr i32 %0, 5, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %2, metadata !1195, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1197
  %3 = trunc i32 %0 to i16, !dbg !1199
  %4 = and i16 %3, 31, !dbg !1199
  call void @llvm.dbg.value(metadata i16 %3, metadata !1196, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1197
  %5 = trunc i32 %2 to i16, !dbg !1200
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1200

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1201
  br i1 %7, label %8, label %11, !dbg !1204

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1205
  %10 = shl nuw nsw i32 1, %9, !dbg !1206
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1206
  br label %48, !dbg !1208

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1209
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1209

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1210
  %15 = and i32 %14, -29, !dbg !1210
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1210
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1213
  %17 = or i32 %16, 2048, !dbg !1213
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1213
  br label %48, !dbg !1214

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1215
  %20 = and i32 %19, -29, !dbg !1215
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1215
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1218
  %22 = or i32 %21, 2048, !dbg !1218
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1218
  br label %48, !dbg !1219

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1220
  %25 = and i32 %24, -29, !dbg !1220
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1220
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1223
  %27 = or i32 %26, 2048, !dbg !1223
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1223
  br label %48, !dbg !1224

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1225
  %30 = and i32 %29, -29, !dbg !1225
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1225
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1228
  %32 = or i32 %31, 2048, !dbg !1228
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1228
  br label %48, !dbg !1229

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1230
  %35 = and i32 %34, -29, !dbg !1230
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1230
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1233
  %37 = or i32 %36, 2048, !dbg !1233
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1233
  br label %48, !dbg !1234

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1235
  br i1 %39, label %40, label %45, !dbg !1237

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1238
  %42 = and i32 %41, -29, !dbg !1238
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1238
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1240
  %44 = or i32 %43, 2048, !dbg !1240
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1240
  br label %48, !dbg !1241

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1242
  %47 = shl nuw i32 1, %46, !dbg !1242
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1242
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1197
  ret i32 %49, !dbg !1244
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1247, metadata !DIExpression()), !dbg !1250
  %2 = lshr i32 %0, 5, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %2, metadata !1248, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1250
  %3 = trunc i32 %0 to i16, !dbg !1252
  %4 = and i16 %3, 31, !dbg !1252
  call void @llvm.dbg.value(metadata i16 %3, metadata !1249, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1250
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #11, !dbg !1253
  %6 = trunc i32 %2 to i16, !dbg !1254
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1254

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1255
  br i1 %8, label %9, label %12, !dbg !1258

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1259
  %11 = shl nuw nsw i32 1, %10, !dbg !1260
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1260
  br label %49, !dbg !1262

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1263
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1263

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1264
  %16 = and i32 %15, -29, !dbg !1264
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1264
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1267
  %18 = or i32 %17, 2068, !dbg !1267
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1267
  br label %49, !dbg !1268

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1269
  %21 = and i32 %20, -29, !dbg !1269
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1269
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1272
  %23 = or i32 %22, 2068, !dbg !1272
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1272
  br label %49, !dbg !1273

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1274
  %26 = and i32 %25, -29, !dbg !1274
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1274
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1277
  %28 = or i32 %27, 2068, !dbg !1277
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1277
  br label %49, !dbg !1278

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1279
  %31 = and i32 %30, -29, !dbg !1279
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1279
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1282
  %33 = or i32 %32, 2068, !dbg !1282
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1282
  br label %49, !dbg !1283

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1284
  %36 = and i32 %35, -29, !dbg !1284
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1284
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1287
  %38 = or i32 %37, 2068, !dbg !1287
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1287
  br label %49, !dbg !1288

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1289
  br i1 %40, label %41, label %46, !dbg !1291

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1292
  %43 = and i32 %42, -29, !dbg !1292
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1292
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1294
  %45 = or i32 %44, 2068, !dbg !1294
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1294
  br label %49, !dbg !1295

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1296
  %48 = shl nuw i32 1, %47, !dbg !1296
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1296
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1250
  ret i32 %50, !dbg !1298
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1299 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1301, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8 %1, metadata !1302, metadata !DIExpression()), !dbg !1305
  %3 = lshr i32 %0, 4, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %3, metadata !1303, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1305
  %4 = trunc i32 %0 to i16, !dbg !1307
  %5 = and i16 %4, 15, !dbg !1307
  call void @llvm.dbg.value(metadata i16 %4, metadata !1304, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1305
  %6 = trunc i32 %3 to i16, !dbg !1308
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1308

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1309
  %9 = zext i16 %8 to i32, !dbg !1309
  %10 = shl nuw i32 3, %9, !dbg !1311
  %11 = xor i32 %10, -1, !dbg !1312
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1313
  %13 = and i32 %12, %11, !dbg !1313
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1313
  %14 = lshr i8 %1, 2, !dbg !1314
  %15 = zext i8 %14 to i32, !dbg !1314
  %16 = add nsw i32 %15, -1, !dbg !1315
  %17 = shl i32 %16, %9, !dbg !1316
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1317
  %19 = or i32 %18, %17, !dbg !1317
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1317
  br label %131, !dbg !1318

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1319
  br i1 %21, label %22, label %35, !dbg !1321

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1322
  %24 = zext i16 %23 to i32, !dbg !1322
  %25 = shl nuw nsw i32 3, %24, !dbg !1324
  %26 = xor i32 %25, -1, !dbg !1325
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1326
  %28 = and i32 %27, %26, !dbg !1326
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1326
  %29 = lshr i8 %1, 2, !dbg !1327
  %30 = zext i8 %29 to i32, !dbg !1327
  %31 = add nsw i32 %30, -1, !dbg !1328
  %32 = shl nsw i32 %31, %24, !dbg !1329
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1330
  %34 = or i32 %33, %32, !dbg !1330
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1330
  br label %131, !dbg !1331

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1332
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1332

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1333
  %39 = and i32 %38, -449, !dbg !1333
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1333
  %40 = lshr i8 %1, 1, !dbg !1336
  %41 = zext i8 %40 to i32, !dbg !1336
  %42 = shl nuw nsw i32 %41, 6, !dbg !1337
  %43 = add nsw i32 %42, -64, !dbg !1337
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1338
  %45 = or i32 %44, %43, !dbg !1338
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1338
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1339
  %47 = or i32 %46, 2048, !dbg !1339
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1339
  br label %131, !dbg !1340

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1341
  %50 = and i32 %49, -449, !dbg !1341
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1341
  %51 = lshr i8 %1, 1, !dbg !1344
  %52 = zext i8 %51 to i32, !dbg !1344
  %53 = shl nuw nsw i32 %52, 6, !dbg !1345
  %54 = add nsw i32 %53, -64, !dbg !1345
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1346
  %56 = or i32 %55, %54, !dbg !1346
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1346
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1347
  %58 = or i32 %57, 2048, !dbg !1347
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1347
  br label %131, !dbg !1348

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1349
  %61 = and i32 %60, -449, !dbg !1349
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1349
  %62 = lshr i8 %1, 1, !dbg !1352
  %63 = zext i8 %62 to i32, !dbg !1352
  %64 = shl nuw nsw i32 %63, 6, !dbg !1353
  %65 = add nsw i32 %64, -64, !dbg !1353
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1354
  %67 = or i32 %66, %65, !dbg !1354
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1354
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1355
  %69 = or i32 %68, 2048, !dbg !1355
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1355
  br label %131, !dbg !1356

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1357
  %72 = and i32 %71, -449, !dbg !1357
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1357
  %73 = lshr i8 %1, 1, !dbg !1360
  %74 = zext i8 %73 to i32, !dbg !1360
  %75 = shl nuw nsw i32 %74, 6, !dbg !1361
  %76 = add nsw i32 %75, -64, !dbg !1361
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1362
  %78 = or i32 %77, %76, !dbg !1362
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1362
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1363
  %80 = or i32 %79, 2048, !dbg !1363
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1363
  br label %131, !dbg !1364

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1365
  %83 = and i32 %82, -449, !dbg !1365
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1365
  %84 = lshr i8 %1, 1, !dbg !1368
  %85 = zext i8 %84 to i32, !dbg !1368
  %86 = shl nuw nsw i32 %85, 6, !dbg !1369
  %87 = add nsw i32 %86, -64, !dbg !1369
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1370
  %89 = or i32 %88, %87, !dbg !1370
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1370
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1371
  %91 = or i32 %90, 2048, !dbg !1371
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1371
  br label %131, !dbg !1372

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1373
  br i1 %93, label %94, label %105, !dbg !1375

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1376
  %96 = and i32 %95, -449, !dbg !1376
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1376
  %97 = lshr i8 %1, 1, !dbg !1378
  %98 = zext i8 %97 to i32, !dbg !1378
  %99 = shl nuw nsw i32 %98, 6, !dbg !1379
  %100 = add nsw i32 %99, -64, !dbg !1379
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1380
  %102 = or i32 %101, %100, !dbg !1380
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1380
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1381
  %104 = or i32 %103, 2048, !dbg !1381
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1381
  br label %131, !dbg !1382

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1383
  %107 = zext i16 %106 to i32, !dbg !1383
  %108 = shl nuw i32 3, %107, !dbg !1385
  %109 = xor i32 %108, -1, !dbg !1386
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1387
  %111 = and i32 %110, %109, !dbg !1387
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1387
  %112 = lshr i8 %1, 2, !dbg !1388
  %113 = zext i8 %112 to i32, !dbg !1388
  %114 = add nsw i32 %113, -1, !dbg !1389
  %115 = shl i32 %114, %107, !dbg !1390
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1391
  %117 = or i32 %116, %115, !dbg !1391
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1391
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1392
  %120 = zext i16 %119 to i32, !dbg !1392
  %121 = shl nuw i32 3, %120, !dbg !1393
  %122 = xor i32 %121, -1, !dbg !1394
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1395
  %124 = and i32 %123, %122, !dbg !1395
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1395
  %125 = lshr i8 %1, 2, !dbg !1396
  %126 = zext i8 %125 to i32, !dbg !1396
  %127 = add nsw i32 %126, -1, !dbg !1397
  %128 = shl i32 %127, %120, !dbg !1398
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1399
  %130 = or i32 %129, %128, !dbg !1399
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1399
  br label %131, !dbg !1400

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1305
  ret i32 %132, !dbg !1401
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1402 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1407, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8* %1, metadata !1408, metadata !DIExpression()), !dbg !1412
  %3 = lshr i32 %0, 4, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %3, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1412
  %4 = trunc i32 %0 to i16, !dbg !1414
  %5 = and i16 %4, 15, !dbg !1414
  call void @llvm.dbg.value(metadata i16 %4, metadata !1410, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1412
  %6 = trunc i32 %3 to i16, !dbg !1415
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1415

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %8, metadata !1411, metadata !DIExpression()), !dbg !1412
  %9 = shl nuw nsw i16 %5, 1, !dbg !1418
  %10 = zext i16 %9 to i32, !dbg !1418
  %11 = shl nuw i32 3, %10, !dbg !1419
  %12 = and i32 %8, %11, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %12, metadata !1411, metadata !DIExpression()), !dbg !1412
  %13 = lshr i32 %12, %10, !dbg !1421
  %14 = trunc i32 %13 to i8, !dbg !1422
  %15 = shl i8 %14, 2, !dbg !1422
  %16 = add i8 %15, 4, !dbg !1422
  br label %89, !dbg !1423

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1424
  br i1 %18, label %19, label %29, !dbg !1426

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1427
  call void @llvm.dbg.value(metadata i32 %20, metadata !1411, metadata !DIExpression()), !dbg !1412
  %21 = shl nuw nsw i16 %5, 1, !dbg !1429
  %22 = zext i16 %21 to i32, !dbg !1429
  %23 = shl nuw nsw i32 3, %22, !dbg !1430
  %24 = and i32 %20, %23, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %24, metadata !1411, metadata !DIExpression()), !dbg !1412
  %25 = lshr i32 %24, %22, !dbg !1432
  %26 = trunc i32 %25 to i8, !dbg !1433
  %27 = shl i8 %26, 2, !dbg !1433
  %28 = add i8 %27, 4, !dbg !1433
  br label %89, !dbg !1434

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1435
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1435

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %32, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %32, metadata !1411, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1412
  %33 = lshr i32 %32, 5, !dbg !1439
  %34 = trunc i32 %33 to i8, !dbg !1440
  %35 = and i8 %34, 14, !dbg !1440
  %36 = add nuw nsw i8 %35, 2, !dbg !1440
  br label %89, !dbg !1441

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %38, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %38, metadata !1411, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1412
  %39 = lshr i32 %38, 5, !dbg !1445
  %40 = trunc i32 %39 to i8, !dbg !1446
  %41 = and i8 %40, 14, !dbg !1446
  %42 = add nuw nsw i8 %41, 2, !dbg !1446
  br label %89, !dbg !1447

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %44, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %44, metadata !1411, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1412
  %45 = lshr i32 %44, 5, !dbg !1451
  %46 = trunc i32 %45 to i8, !dbg !1452
  %47 = and i8 %46, 14, !dbg !1452
  %48 = add nuw nsw i8 %47, 2, !dbg !1452
  br label %89, !dbg !1453

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %50, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %50, metadata !1411, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1412
  %51 = lshr i32 %50, 5, !dbg !1457
  %52 = trunc i32 %51 to i8, !dbg !1458
  %53 = and i8 %52, 14, !dbg !1458
  %54 = add nuw nsw i8 %53, 2, !dbg !1458
  br label %89, !dbg !1459

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %56, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %56, metadata !1411, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1412
  %57 = lshr i32 %56, 5, !dbg !1463
  %58 = trunc i32 %57 to i8, !dbg !1464
  %59 = and i8 %58, 14, !dbg !1464
  %60 = add nuw nsw i8 %59, 2, !dbg !1464
  br label %89, !dbg !1465

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1466
  br i1 %62, label %63, label %69, !dbg !1468

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %64, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i32 %64, metadata !1411, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1412
  %65 = lshr i32 %64, 5, !dbg !1471
  %66 = trunc i32 %65 to i8, !dbg !1472
  %67 = and i8 %66, 14, !dbg !1472
  %68 = add nuw nsw i8 %67, 2, !dbg !1472
  br label %89, !dbg !1473

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %70, metadata !1411, metadata !DIExpression()), !dbg !1412
  %71 = shl nuw nsw i16 %5, 1, !dbg !1476
  %72 = zext i16 %71 to i32, !dbg !1476
  %73 = shl nuw i32 3, %72, !dbg !1477
  %74 = and i32 %70, %73, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %74, metadata !1411, metadata !DIExpression()), !dbg !1412
  %75 = lshr i32 %74, %72, !dbg !1479
  %76 = trunc i32 %75 to i8, !dbg !1480
  %77 = shl i8 %76, 2, !dbg !1480
  %78 = add i8 %77, 4, !dbg !1480
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %80, metadata !1411, metadata !DIExpression()), !dbg !1412
  %81 = shl nuw nsw i16 %5, 1, !dbg !1482
  %82 = zext i16 %81 to i32, !dbg !1482
  %83 = shl nuw i32 3, %82, !dbg !1483
  %84 = and i32 %80, %83, !dbg !1484
  call void @llvm.dbg.value(metadata i32 %84, metadata !1411, metadata !DIExpression()), !dbg !1412
  %85 = lshr i32 %84, %82, !dbg !1485
  %86 = trunc i32 %85 to i8, !dbg !1486
  %87 = shl i8 %86, 2, !dbg !1486
  %88 = add i8 %87, 4, !dbg !1486
  br label %89, !dbg !1487

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1488
  br label %91, !dbg !1489

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1412
  ret i32 %92, !dbg !1489
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1490 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1495, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i32 %1, metadata !1496, metadata !DIExpression()), !dbg !1499
  %3 = lshr i32 %0, 5, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %3, metadata !1497, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1499
  %4 = trunc i32 %0 to i16, !dbg !1501
  %5 = and i16 %4, 31, !dbg !1501
  call void @llvm.dbg.value(metadata i16 %5, metadata !1498, metadata !DIExpression()), !dbg !1499
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1502

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1497, metadata !DIExpression()), !dbg !1499
  %7 = trunc i32 %3 to i16, !dbg !1503
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1503

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1506
  %10 = shl nuw i32 1, %9, !dbg !1508
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1509
  %12 = or i32 %11, %10, !dbg !1509
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1509
  br label %32, !dbg !1510

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1511
  %15 = shl nuw i32 1, %14, !dbg !1512
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1513
  %17 = or i32 %16, %15, !dbg !1513
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1513
  br label %32, !dbg !1514

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1515
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1515

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1518
  %22 = shl nuw i32 1, %21, !dbg !1520
  %23 = xor i32 %22, -1, !dbg !1521
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1522
  %25 = and i32 %24, %23, !dbg !1522
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1522
  br label %32, !dbg !1523

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1524
  %28 = shl nuw i32 1, %27, !dbg !1525
  %29 = xor i32 %28, -1, !dbg !1526
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1527
  %31 = and i32 %30, %29, !dbg !1527
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1527
  br label %32, !dbg !1528

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1529
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1530 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1536, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %1, metadata !1537, metadata !DIExpression()), !dbg !1539
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
  ], !dbg !1540

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %4, metadata !1538, metadata !DIExpression()), !dbg !1539
  %5 = and i32 %4, -16, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %5, metadata !1538, metadata !DIExpression()), !dbg !1539
  %6 = zext i8 %1 to i32, !dbg !1544
  %7 = or i32 %5, %6, !dbg !1545
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1546
  br label %187, !dbg !1547

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %9, metadata !1538, metadata !DIExpression()), !dbg !1539
  %10 = and i32 %9, -241, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %10, metadata !1538, metadata !DIExpression()), !dbg !1539
  %11 = zext i8 %1 to i32, !dbg !1550
  %12 = shl nuw nsw i32 %11, 4, !dbg !1551
  %13 = or i32 %10, %12, !dbg !1552
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1553
  br label %187, !dbg !1554

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %15, metadata !1538, metadata !DIExpression()), !dbg !1539
  %16 = and i32 %15, -3841, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %16, metadata !1538, metadata !DIExpression()), !dbg !1539
  %17 = zext i8 %1 to i32, !dbg !1557
  %18 = shl nuw nsw i32 %17, 8, !dbg !1558
  %19 = or i32 %16, %18, !dbg !1559
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1560
  br label %187, !dbg !1561

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1562
  call void @llvm.dbg.value(metadata i32 %21, metadata !1538, metadata !DIExpression()), !dbg !1539
  %22 = and i32 %21, -61441, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %22, metadata !1538, metadata !DIExpression()), !dbg !1539
  %23 = zext i8 %1 to i32, !dbg !1564
  %24 = shl nuw nsw i32 %23, 12, !dbg !1565
  %25 = or i32 %22, %24, !dbg !1566
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1567
  br label %187, !dbg !1568

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1569
  call void @llvm.dbg.value(metadata i32 %27, metadata !1538, metadata !DIExpression()), !dbg !1539
  %28 = and i32 %27, -983041, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %28, metadata !1538, metadata !DIExpression()), !dbg !1539
  %29 = zext i8 %1 to i32, !dbg !1571
  %30 = shl nuw nsw i32 %29, 16, !dbg !1572
  %31 = or i32 %28, %30, !dbg !1573
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1574
  br label %187, !dbg !1575

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %33, metadata !1538, metadata !DIExpression()), !dbg !1539
  %34 = and i32 %33, -15728641, !dbg !1577
  call void @llvm.dbg.value(metadata i32 %34, metadata !1538, metadata !DIExpression()), !dbg !1539
  %35 = zext i8 %1 to i32, !dbg !1578
  %36 = shl nuw nsw i32 %35, 20, !dbg !1579
  %37 = or i32 %34, %36, !dbg !1580
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1581
  br label %187, !dbg !1582

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %39, metadata !1538, metadata !DIExpression()), !dbg !1539
  %40 = and i32 %39, -251658241, !dbg !1584
  call void @llvm.dbg.value(metadata i32 %40, metadata !1538, metadata !DIExpression()), !dbg !1539
  %41 = zext i8 %1 to i32, !dbg !1585
  %42 = shl nuw i32 %41, 24, !dbg !1586
  %43 = or i32 %40, %42, !dbg !1587
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1588
  br label %187, !dbg !1589

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1590
  call void @llvm.dbg.value(metadata i32 %45, metadata !1538, metadata !DIExpression()), !dbg !1539
  %46 = and i32 %45, 268435455, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %46, metadata !1538, metadata !DIExpression()), !dbg !1539
  %47 = zext i8 %1 to i32, !dbg !1592
  %48 = shl i32 %47, 28, !dbg !1593
  %49 = or i32 %46, %48, !dbg !1594
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1595
  br label %187, !dbg !1596

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %51, metadata !1538, metadata !DIExpression()), !dbg !1539
  %52 = and i32 %51, -16, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %52, metadata !1538, metadata !DIExpression()), !dbg !1539
  %53 = zext i8 %1 to i32, !dbg !1599
  %54 = or i32 %52, %53, !dbg !1600
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1601
  br label %187, !dbg !1602

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %56, metadata !1538, metadata !DIExpression()), !dbg !1539
  %57 = and i32 %56, -241, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %57, metadata !1538, metadata !DIExpression()), !dbg !1539
  %58 = zext i8 %1 to i32, !dbg !1605
  %59 = shl nuw nsw i32 %58, 4, !dbg !1606
  %60 = or i32 %57, %59, !dbg !1607
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1608
  br label %187, !dbg !1609

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %62, metadata !1538, metadata !DIExpression()), !dbg !1539
  %63 = and i32 %62, -3841, !dbg !1611
  call void @llvm.dbg.value(metadata i32 %63, metadata !1538, metadata !DIExpression()), !dbg !1539
  %64 = zext i8 %1 to i32, !dbg !1612
  %65 = shl nuw nsw i32 %64, 8, !dbg !1613
  %66 = or i32 %63, %65, !dbg !1614
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1615
  br label %187, !dbg !1616

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %68, metadata !1538, metadata !DIExpression()), !dbg !1539
  %69 = and i32 %68, -61441, !dbg !1618
  call void @llvm.dbg.value(metadata i32 %69, metadata !1538, metadata !DIExpression()), !dbg !1539
  %70 = zext i8 %1 to i32, !dbg !1619
  %71 = shl nuw nsw i32 %70, 12, !dbg !1620
  %72 = or i32 %69, %71, !dbg !1621
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1622
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1623

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #12, !dbg !1625
  br label %187, !dbg !1627

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %76, metadata !1538, metadata !DIExpression()), !dbg !1539
  %77 = and i32 %76, -983041, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %77, metadata !1538, metadata !DIExpression()), !dbg !1539
  %78 = zext i8 %1 to i32, !dbg !1630
  %79 = shl nuw nsw i32 %78, 16, !dbg !1631
  %80 = or i32 %77, %79, !dbg !1632
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1633
  %81 = and i8 %1, -2, !dbg !1634
  %82 = icmp eq i8 %81, 4, !dbg !1634
  br i1 %82, label %83, label %187, !dbg !1634

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #12, !dbg !1636
  br label %187, !dbg !1638

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %86, metadata !1538, metadata !DIExpression()), !dbg !1539
  %87 = and i32 %86, -15728641, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %87, metadata !1538, metadata !DIExpression()), !dbg !1539
  %88 = zext i8 %1 to i32, !dbg !1641
  %89 = shl nuw nsw i32 %88, 20, !dbg !1642
  %90 = or i32 %87, %89, !dbg !1643
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1644
  %91 = icmp eq i8 %1, 6, !dbg !1645
  br i1 %91, label %92, label %187, !dbg !1647

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #12, !dbg !1648
  br label %187, !dbg !1650

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %95, metadata !1538, metadata !DIExpression()), !dbg !1539
  %96 = and i32 %95, -251658241, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %96, metadata !1538, metadata !DIExpression()), !dbg !1539
  %97 = zext i8 %1 to i32, !dbg !1653
  %98 = shl nuw i32 %97, 24, !dbg !1654
  %99 = or i32 %96, %98, !dbg !1655
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1656
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1657

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #12, !dbg !1659
  br label %187, !dbg !1661

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %103, metadata !1538, metadata !DIExpression()), !dbg !1539
  %104 = and i32 %103, 268435455, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %104, metadata !1538, metadata !DIExpression()), !dbg !1539
  %105 = zext i8 %1 to i32, !dbg !1664
  %106 = shl i32 %105, 28, !dbg !1665
  %107 = or i32 %104, %106, !dbg !1666
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1667
  %108 = and i8 %1, -3, !dbg !1668
  %109 = icmp eq i8 %108, 4, !dbg !1668
  br i1 %109, label %110, label %187, !dbg !1668

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #12, !dbg !1670
  br label %187, !dbg !1672

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %113, metadata !1538, metadata !DIExpression()), !dbg !1539
  %114 = and i32 %113, -16, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %114, metadata !1538, metadata !DIExpression()), !dbg !1539
  %115 = zext i8 %1 to i32, !dbg !1675
  %116 = or i32 %114, %115, !dbg !1676
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1677
  %117 = and i8 %1, -3, !dbg !1678
  %118 = icmp eq i8 %117, 4, !dbg !1678
  br i1 %118, label %119, label %187, !dbg !1678

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #12, !dbg !1680
  br label %187, !dbg !1682

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %122, metadata !1538, metadata !DIExpression()), !dbg !1539
  %123 = and i32 %122, -241, !dbg !1684
  call void @llvm.dbg.value(metadata i32 %123, metadata !1538, metadata !DIExpression()), !dbg !1539
  %124 = zext i8 %1 to i32, !dbg !1685
  %125 = shl nuw nsw i32 %124, 4, !dbg !1686
  %126 = or i32 %123, %125, !dbg !1687
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1688
  br label %187, !dbg !1689

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %128, metadata !1538, metadata !DIExpression()), !dbg !1539
  %129 = and i32 %128, -3841, !dbg !1691
  call void @llvm.dbg.value(metadata i32 %129, metadata !1538, metadata !DIExpression()), !dbg !1539
  %130 = zext i8 %1 to i32, !dbg !1692
  %131 = shl nuw nsw i32 %130, 8, !dbg !1693
  %132 = or i32 %129, %131, !dbg !1694
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1695
  br label %187, !dbg !1696

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1697
  call void @llvm.dbg.value(metadata i32 %134, metadata !1538, metadata !DIExpression()), !dbg !1539
  %135 = and i32 %134, -61441, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %135, metadata !1538, metadata !DIExpression()), !dbg !1539
  %136 = zext i8 %1 to i32, !dbg !1699
  %137 = shl nuw nsw i32 %136, 12, !dbg !1700
  %138 = or i32 %135, %137, !dbg !1701
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1702
  br label %187, !dbg !1703

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %140, metadata !1538, metadata !DIExpression()), !dbg !1539
  %141 = and i32 %140, -983041, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %141, metadata !1538, metadata !DIExpression()), !dbg !1539
  %142 = zext i8 %1 to i32, !dbg !1706
  %143 = shl nuw nsw i32 %142, 16, !dbg !1707
  %144 = or i32 %141, %143, !dbg !1708
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1709
  br label %187, !dbg !1710

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %146, metadata !1538, metadata !DIExpression()), !dbg !1539
  %147 = and i32 %146, -15728641, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %147, metadata !1538, metadata !DIExpression()), !dbg !1539
  %148 = zext i8 %1 to i32, !dbg !1713
  %149 = shl nuw nsw i32 %148, 20, !dbg !1714
  %150 = or i32 %147, %149, !dbg !1715
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1716
  br label %187, !dbg !1717

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %152, metadata !1538, metadata !DIExpression()), !dbg !1539
  %153 = and i32 %152, -251658241, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %153, metadata !1538, metadata !DIExpression()), !dbg !1539
  %154 = zext i8 %1 to i32, !dbg !1720
  %155 = shl nuw i32 %154, 24, !dbg !1721
  %156 = or i32 %153, %155, !dbg !1722
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1723
  br label %187, !dbg !1724

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %158, metadata !1538, metadata !DIExpression()), !dbg !1539
  %159 = and i32 %158, 268435455, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %159, metadata !1538, metadata !DIExpression()), !dbg !1539
  %160 = zext i8 %1 to i32, !dbg !1727
  %161 = shl i32 %160, 28, !dbg !1728
  %162 = or i32 %159, %161, !dbg !1729
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1730
  br label %187, !dbg !1731

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1732
  call void @llvm.dbg.value(metadata i32 %164, metadata !1538, metadata !DIExpression()), !dbg !1539
  %165 = and i32 %164, -241, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %165, metadata !1538, metadata !DIExpression()), !dbg !1539
  %166 = zext i8 %1 to i32, !dbg !1734
  %167 = shl nuw nsw i32 %166, 4, !dbg !1735
  %168 = or i32 %165, %167, !dbg !1736
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1737
  br label %187, !dbg !1738

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %170, metadata !1538, metadata !DIExpression()), !dbg !1539
  %171 = and i32 %170, -3841, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %171, metadata !1538, metadata !DIExpression()), !dbg !1539
  %172 = zext i8 %1 to i32, !dbg !1741
  %173 = shl nuw nsw i32 %172, 8, !dbg !1742
  %174 = or i32 %171, %173, !dbg !1743
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1744
  br label %187, !dbg !1745

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1746
  call void @llvm.dbg.value(metadata i32 %176, metadata !1538, metadata !DIExpression()), !dbg !1539
  %177 = and i32 %176, -61441, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %177, metadata !1538, metadata !DIExpression()), !dbg !1539
  %178 = zext i8 %1 to i32, !dbg !1748
  %179 = shl nuw nsw i32 %178, 12, !dbg !1749
  %180 = or i32 %177, %179, !dbg !1750
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1751
  br label %187, !dbg !1752

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %182, metadata !1538, metadata !DIExpression()), !dbg !1539
  %183 = and i32 %182, -983041, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %183, metadata !1538, metadata !DIExpression()), !dbg !1539
  %184 = zext i8 %1 to i32, !dbg !1755
  %185 = shl nuw nsw i32 %184, 16, !dbg !1756
  %186 = or i32 %183, %185, !dbg !1757
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1758
  br label %187, !dbg !1759

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1760
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1765, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i32 %1, metadata !1766, metadata !DIExpression()), !dbg !1767
  %3 = trunc i32 %1 to i8, !dbg !1768
  %4 = tail call i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %3) #12, !dbg !1769
  ret i32 %4, !dbg !1770
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1775, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 %1, metadata !1776, metadata !DIExpression()), !dbg !1777
  %3 = tail call i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) #12, !dbg !1778
  ret i32 %3, !dbg !1779
}

; Function Attrs: noinline nounwind optsize
define dso_local void @gpio_get_status(%struct.gpio_status* noalias nocapture writeonly sret(%struct.gpio_status) align 4 %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1780 {
  call void @llvm.dbg.value(metadata i32 %1, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.declare(metadata %struct.gpio_status* %0, metadata !1792, metadata !DIExpression()), !dbg !1794
  %3 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 0, !dbg !1795
  store i32 %1, i32* %3, align 4, !dbg !1796
  %4 = tail call zeroext i8 @halgetGPIO_OutEnable(i32 noundef %1) #12, !dbg !1797
  %5 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 1, !dbg !1798
  store i8 %4, i8* %5, align 4, !dbg !1799
  %6 = tail call zeroext i8 @halgetGPIO_DIN(i32 noundef %1) #12, !dbg !1800
  %7 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 2, !dbg !1801
  store i8 %6, i8* %7, align 1, !dbg !1802
  %8 = tail call zeroext i8 @halgetGPIO_DOUT(i32 noundef %1) #12, !dbg !1803
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %0, i32 0, i32 3, !dbg !1804
  store i8 %8, i8* %9, align 2, !dbg !1805
  ret void, !dbg !1806
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullUp(i32 noundef %0) local_unnamed_addr #3 !dbg !1807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1811, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i32 0, metadata !1812, metadata !DIExpression()), !dbg !1813
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #12, !dbg !1814
  %2 = tail call i32 @halGPIO_PullUp_SET(i32 noundef %0) #12, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %2, metadata !1812, metadata !DIExpression()), !dbg !1813
  ret i32 %2, !dbg !1816
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDown(i32 noundef %0) local_unnamed_addr #3 !dbg !1817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1819, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i32 0, metadata !1820, metadata !DIExpression()), !dbg !1821
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #12, !dbg !1822
  %2 = tail call i32 @halGPIO_PullDown_SET(i32 noundef %0) #12, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %2, metadata !1820, metadata !DIExpression()), !dbg !1821
  ret i32 %2, !dbg !1824
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_PullDisable(i32 noundef %0) local_unnamed_addr #3 !dbg !1825 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1827, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i32 0, metadata !1828, metadata !DIExpression()), !dbg !1829
  tail call void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef 1) #12, !dbg !1830
  %2 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #12, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %2, metadata !1828, metadata !DIExpression()), !dbg !1829
  %3 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #12, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %3, metadata !1828, metadata !DIExpression()), !dbg !1829
  ret i32 %3, !dbg !1833
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1834 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1836, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i8 %1, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 0, metadata !1838, metadata !DIExpression()), !dbg !1839
  %3 = tail call i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) #12, !dbg !1840
  call void @llvm.dbg.value(metadata i32 %3, metadata !1838, metadata !DIExpression()), !dbg !1839
  ret i32 %3, !dbg !1841
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @gpio_GetDriving(i32 noundef %0, i8* noundef %1) local_unnamed_addr #3 !dbg !1842 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1846, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8* %1, metadata !1847, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i32 0, metadata !1848, metadata !DIExpression()), !dbg !1849
  %3 = tail call i32 @halGPIO_GetDriving(i32 noundef %0, i8* noundef %1) #12, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %3, metadata !1848, metadata !DIExpression()), !dbg !1849
  ret i32 %3, !dbg !1851
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_backup_all_registers() local_unnamed_addr #0 !dbg !1852 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1854, metadata !DIExpression()), !dbg !1855
  br label %1, !dbg !1856

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !1854, metadata !DIExpression()), !dbg !1855
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !1858
  %4 = load i32, i32* %3, align 4, !dbg !1858
  %5 = inttoptr i32 %4 to i32*, !dbg !1858
  %6 = load volatile i32, i32* %5, align 4, !dbg !1858
  %7 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !1861
  store i32 %6, i32* %7, align 4, !dbg !1862
  %8 = add nuw nsw i32 %2, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i32 %8, metadata !1854, metadata !DIExpression()), !dbg !1855
  %9 = icmp eq i32 %8, 22, !dbg !1864
  br i1 %9, label %10, label %1, !dbg !1856, !llvm.loop !1865

10:                                               ; preds = %1
  ret void, !dbg !1867
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_restore_all_registers() local_unnamed_addr #0 !dbg !1868 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1870, metadata !DIExpression()), !dbg !1871
  br label %1, !dbg !1872

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !1870, metadata !DIExpression()), !dbg !1871
  %3 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 0, !dbg !1874
  %4 = load i32, i32* %3, align 4, !dbg !1874
  %5 = getelementptr inbounds [22 x %struct.gpio_backup_restore_t], [22 x %struct.gpio_backup_restore_t]* @gpio_bakup_table, i32 0, i32 %2, i32 1, !dbg !1877
  %6 = load i32, i32* %5, align 4, !dbg !1877
  %7 = inttoptr i32 %6 to i32*, !dbg !1877
  store volatile i32 %4, i32* %7, align 4, !dbg !1878
  %8 = add nuw nsw i32 %2, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %8, metadata !1870, metadata !DIExpression()), !dbg !1871
  %9 = icmp eq i32 %8, 22, !dbg !1880
  br i1 %9, label %10, label %1, !dbg !1872, !llvm.loop !1881

10:                                               ; preds = %1
  ret void, !dbg !1883
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !1884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1888, metadata !DIExpression()), !dbg !1889
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !1890
  tail call void asm sideeffect "dsb", ""() #13, !dbg !1891, !srcloc !1892
  tail call void asm sideeffect "isb", ""() #13, !dbg !1893, !srcloc !1894
  ret void, !dbg !1895
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !1896 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1900, metadata !DIExpression()), !dbg !1901
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !1902
  ret void, !dbg !1903
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !1904 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #13, !dbg !1909, !srcloc !1916
  call void @llvm.dbg.value(metadata i32 %1, metadata !1913, metadata !DIExpression()) #13, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %1, metadata !1908, metadata !DIExpression()), !dbg !1918
  tail call void asm sideeffect "cpsid i", "~{memory}"() #13, !dbg !1919, !srcloc !1923
  ret i32 %1, !dbg !1924
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !1925 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1927, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i32 %0, metadata !1929, metadata !DIExpression()) #13, !dbg !1932
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #13, !dbg !1935, !srcloc !1936
  ret void, !dbg !1937
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1942, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i32 %1, metadata !1943, metadata !DIExpression()), !dbg !1945
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
  ], !dbg !1946

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !1944, metadata !DIExpression()), !dbg !1945
  %4 = trunc i32 %1 to i8, !dbg !1947
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #12, !dbg !1948
  br label %5, !dbg !1949

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !1945
  ret i32 %6, !dbg !1950
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !1951 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1953, metadata !DIExpression()), !dbg !1955
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %1, metadata !1954, metadata !DIExpression()), !dbg !1955
  %2 = lshr i32 %1, 13, !dbg !1957
  %3 = and i32 %2, 7, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %3, metadata !1954, metadata !DIExpression()), !dbg !1955
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1959
  call void @llvm.dbg.value(metadata i32 %4, metadata !1953, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i32 %4, metadata !1953, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !1955
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !1960
  %6 = load i32, i32* %5, align 4, !dbg !1960
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !1960
  %8 = load i32, i32* %7, align 4, !dbg !1960
  %9 = and i32 %4, -2048, !dbg !1961
  call void @llvm.dbg.value(metadata i32 %9, metadata !1953, metadata !DIExpression()), !dbg !1955
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !1962
  %10 = or i32 %9, %8, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %10, metadata !1953, metadata !DIExpression()), !dbg !1955
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1964
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !1965
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !1966
  tail call void @SystemCoreClockUpdate() #12, !dbg !1967
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !1968
  %13 = udiv i32 %12, 1000, !dbg !1969
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #12, !dbg !1970
  ret void, !dbg !1971
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #4 !dbg !1972 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !1973
  ret i32 %1, !dbg !1974
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #4 !dbg !1975 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !1976
  ret i32 %1, !dbg !1977
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #5 !dbg !1978 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1982
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1982
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1980, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1981, metadata !DIExpression()), !dbg !1984
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1985
  store volatile i32 %3, i32* %1, align 4, !dbg !1986
  %4 = load volatile i32, i32* %1, align 4, !dbg !1987
  %5 = lshr i32 %4, 28, !dbg !1988
  %6 = and i32 %5, 3, !dbg !1989
  store volatile i32 %6, i32* %1, align 4, !dbg !1990
  %7 = load volatile i32, i32* %1, align 4, !dbg !1991
  %8 = icmp eq i32 %7, 0, !dbg !1993
  br i1 %8, label %9, label %22, !dbg !1994

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1995
  store volatile i32 %10, i32* %1, align 4, !dbg !1997
  %11 = load volatile i32, i32* %1, align 4, !dbg !1998
  %12 = and i32 %11, -16777217, !dbg !1999
  store volatile i32 %12, i32* %1, align 4, !dbg !2000
  %13 = load volatile i32, i32* %1, align 4, !dbg !2001
  %14 = or i32 %13, 536870912, !dbg !2002
  store volatile i32 %14, i32* %1, align 4, !dbg !2003
  %15 = load volatile i32, i32* %1, align 4, !dbg !2004
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #11, !dbg !2005
  br label %16, !dbg !2006

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2007
  store volatile i32 %17, i32* %1, align 4, !dbg !2009
  %18 = load volatile i32, i32* %1, align 4, !dbg !2010
  %19 = and i32 %18, 134217728, !dbg !2011
  store volatile i32 %19, i32* %1, align 4, !dbg !2012
  %20 = load volatile i32, i32* %1, align 4, !dbg !2013
  %21 = icmp eq i32 %20, 0, !dbg !2014
  br i1 %21, label %16, label %22, !dbg !2015, !llvm.loop !2016

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2018
  ret void, !dbg !2018
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #2 !dbg !2019 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2026, metadata !DIExpression()), !dbg !2027
  %2 = bitcast i8* %0 to i32*, !dbg !2028
  %3 = load volatile i32, i32* %2, align 4, !dbg !2029
  ret i32 %3, !dbg !2030
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2031 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2035, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.value(metadata i32 %1, metadata !2036, metadata !DIExpression()), !dbg !2037
  %3 = bitcast i8* %0 to i32*, !dbg !2038
  store volatile i32 %1, i32* %3, align 4, !dbg !2039
  ret void, !dbg !2040
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #5 !dbg !2041 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2045, metadata !DIExpression()), !dbg !2048
  %3 = bitcast i32* %2 to i8*, !dbg !2049
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2049
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2046, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2047, metadata !DIExpression()), !dbg !2048
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2051
  store volatile i32 %4, i32* %2, align 4, !dbg !2052
  %5 = load volatile i32, i32* %2, align 4, !dbg !2053
  %6 = lshr i32 %5, 28, !dbg !2054
  %7 = and i32 %6, 3, !dbg !2055
  store volatile i32 %7, i32* %2, align 4, !dbg !2056
  %8 = load volatile i32, i32* %2, align 4, !dbg !2057
  %9 = icmp eq i32 %8, 3, !dbg !2059
  br i1 %9, label %38, label %10, !dbg !2060

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2061
  store volatile i32 %11, i32* %2, align 4, !dbg !2063
  %12 = load volatile i32, i32* %2, align 4, !dbg !2064
  %13 = and i32 %12, -262145, !dbg !2065
  store volatile i32 %13, i32* %2, align 4, !dbg !2066
  %14 = load volatile i32, i32* %2, align 4, !dbg !2067
  %15 = and i32 %14, -16777217, !dbg !2068
  store volatile i32 %15, i32* %2, align 4, !dbg !2069
  %16 = load volatile i32, i32* %2, align 4, !dbg !2070
  store volatile i32 %16, i32* %2, align 4, !dbg !2071
  %17 = load volatile i32, i32* %2, align 4, !dbg !2072
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #11, !dbg !2073
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2074
  store volatile i32 %18, i32* %2, align 4, !dbg !2075
  %19 = load volatile i32, i32* %2, align 4, !dbg !2076
  %20 = and i32 %19, -805306369, !dbg !2077
  store volatile i32 %20, i32* %2, align 4, !dbg !2078
  %21 = load volatile i32, i32* %2, align 4, !dbg !2079
  %22 = and i32 %21, -16777217, !dbg !2080
  store volatile i32 %22, i32* %2, align 4, !dbg !2081
  %23 = load volatile i32, i32* %2, align 4, !dbg !2082
  %24 = or i32 %23, 805306368, !dbg !2083
  store volatile i32 %24, i32* %2, align 4, !dbg !2084
  %25 = load volatile i32, i32* %2, align 4, !dbg !2085
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #11, !dbg !2086
  br label %26, !dbg !2087

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2088
  store volatile i32 %27, i32* %2, align 4, !dbg !2090
  %28 = load volatile i32, i32* %2, align 4, !dbg !2091
  %29 = and i32 %28, 67108864, !dbg !2092
  store volatile i32 %29, i32* %2, align 4, !dbg !2093
  %30 = load volatile i32, i32* %2, align 4, !dbg !2094
  %31 = icmp eq i32 %30, 0, !dbg !2095
  br i1 %31, label %26, label %32, !dbg !2096, !llvm.loop !2097

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2099
  store volatile i32 %33, i32* %2, align 4, !dbg !2100
  %34 = load volatile i32, i32* %2, align 4, !dbg !2101
  %35 = and i32 %34, -262145, !dbg !2102
  store volatile i32 %35, i32* %2, align 4, !dbg !2103
  %36 = load volatile i32, i32* %2, align 4, !dbg !2104
  %37 = and i32 %36, -16777217, !dbg !2105
  store volatile i32 %37, i32* %2, align 4, !dbg !2106
  br label %38, !dbg !2107

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2108
  store volatile i32 %39, i32* %2, align 4, !dbg !2109
  %40 = icmp eq i8 %0, 0, !dbg !2110
  %41 = load volatile i32, i32* %2, align 4, !dbg !2112
  br i1 %40, label %44, label %42, !dbg !2113

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2114
  store volatile i32 %43, i32* %2, align 4, !dbg !2116
  br label %45, !dbg !2117

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2118
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2120
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #11, !dbg !2121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2122
  ret void, !dbg !2122
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #5 !dbg !2123 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2127
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2125, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2126, metadata !DIExpression()), !dbg !2129
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2130
  store volatile i32 %3, i32* %1, align 4, !dbg !2131
  %4 = load volatile i32, i32* %1, align 4, !dbg !2132
  %5 = and i32 %4, -805306369, !dbg !2133
  store volatile i32 %5, i32* %1, align 4, !dbg !2134
  %6 = load volatile i32, i32* %1, align 4, !dbg !2135
  %7 = and i32 %6, -16777217, !dbg !2136
  store volatile i32 %7, i32* %1, align 4, !dbg !2137
  %8 = load volatile i32, i32* %1, align 4, !dbg !2138
  store volatile i32 %8, i32* %1, align 4, !dbg !2139
  %9 = load volatile i32, i32* %1, align 4, !dbg !2140
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #11, !dbg !2141
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2142
  store volatile i32 %10, i32* %1, align 4, !dbg !2143
  %11 = load volatile i32, i32* %1, align 4, !dbg !2144
  %12 = and i32 %11, -262145, !dbg !2145
  store volatile i32 %12, i32* %1, align 4, !dbg !2146
  %13 = load volatile i32, i32* %1, align 4, !dbg !2147
  %14 = and i32 %13, -16777217, !dbg !2148
  store volatile i32 %14, i32* %1, align 4, !dbg !2149
  %15 = load volatile i32, i32* %1, align 4, !dbg !2150
  store volatile i32 %15, i32* %1, align 4, !dbg !2151
  %16 = load volatile i32, i32* %1, align 4, !dbg !2152
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #11, !dbg !2153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2154
  ret void, !dbg !2154
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2155 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2159
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2159
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2158, metadata !DIExpression()), !dbg !2161
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2162
  store volatile i32 %3, i32* %1, align 4, !dbg !2163
  %4 = load volatile i32, i32* %1, align 4, !dbg !2164
  %5 = and i32 %4, -8, !dbg !2165
  store volatile i32 %5, i32* %1, align 4, !dbg !2166
  %6 = load volatile i32, i32* %1, align 4, !dbg !2167
  store volatile i32 %6, i32* %1, align 4, !dbg !2168
  %7 = load volatile i32, i32* %1, align 4, !dbg !2169
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #11, !dbg !2170
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2171
  store volatile i32 %8, i32* %1, align 4, !dbg !2172
  %9 = load volatile i32, i32* %1, align 4, !dbg !2173
  %10 = and i32 %9, -49153, !dbg !2174
  store volatile i32 %10, i32* %1, align 4, !dbg !2175
  %11 = load volatile i32, i32* %1, align 4, !dbg !2176
  store volatile i32 %11, i32* %1, align 4, !dbg !2177
  %12 = load volatile i32, i32* %1, align 4, !dbg !2178
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #11, !dbg !2179
  br label %13, !dbg !2180

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2181
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2182
  %16 = icmp eq i32 %14, %15, !dbg !2183
  br i1 %16, label %17, label %13, !dbg !2180, !llvm.loop !2184

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #11, !dbg !2186
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2187
  tail call void @SystemCoreClockUpdate() #12, !dbg !2188
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2189
  %20 = udiv i32 %19, 1000, !dbg !2190
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2191
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2192
  ret void, !dbg !2192
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2193 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2197
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2197
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2196, metadata !DIExpression()), !dbg !2199
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #11, !dbg !2200
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2201
  store volatile i32 %3, i32* %1, align 4, !dbg !2202
  %4 = load volatile i32, i32* %1, align 4, !dbg !2203
  %5 = and i32 %4, -49153, !dbg !2204
  store volatile i32 %5, i32* %1, align 4, !dbg !2205
  %6 = load volatile i32, i32* %1, align 4, !dbg !2206
  %7 = or i32 %6, 16384, !dbg !2207
  store volatile i32 %7, i32* %1, align 4, !dbg !2208
  %8 = load volatile i32, i32* %1, align 4, !dbg !2209
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #11, !dbg !2210
  br label %9, !dbg !2211

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2212
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2213
  %12 = icmp eq i32 %10, %11, !dbg !2214
  br i1 %12, label %13, label %9, !dbg !2211, !llvm.loop !2215

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2217
  store volatile i32 %14, i32* %1, align 4, !dbg !2218
  %15 = load volatile i32, i32* %1, align 4, !dbg !2219
  %16 = and i32 %15, -1009, !dbg !2220
  store volatile i32 %16, i32* %1, align 4, !dbg !2221
  %17 = load volatile i32, i32* %1, align 4, !dbg !2222
  %18 = or i32 %17, 128, !dbg !2223
  store volatile i32 %18, i32* %1, align 4, !dbg !2224
  %19 = load volatile i32, i32* %1, align 4, !dbg !2225
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #11, !dbg !2226
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2227
  store volatile i32 %20, i32* %1, align 4, !dbg !2228
  %21 = load volatile i32, i32* %1, align 4, !dbg !2229
  %22 = and i32 %21, -8, !dbg !2230
  store volatile i32 %22, i32* %1, align 4, !dbg !2231
  %23 = load volatile i32, i32* %1, align 4, !dbg !2232
  %24 = or i32 %23, 4, !dbg !2233
  store volatile i32 %24, i32* %1, align 4, !dbg !2234
  %25 = load volatile i32, i32* %1, align 4, !dbg !2235
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #11, !dbg !2236
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2237
  tail call void @SystemCoreClockUpdate() #12, !dbg !2238
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2239
  %27 = udiv i32 %26, 1000, !dbg !2240
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2241
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2242
  ret void, !dbg !2242
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2243 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2247
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2247
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2246, metadata !DIExpression()), !dbg !2249
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #11, !dbg !2250
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2251
  store volatile i32 %3, i32* %1, align 4, !dbg !2252
  %4 = load volatile i32, i32* %1, align 4, !dbg !2253
  %5 = and i32 %4, -49153, !dbg !2254
  store volatile i32 %5, i32* %1, align 4, !dbg !2255
  %6 = load volatile i32, i32* %1, align 4, !dbg !2256
  %7 = or i32 %6, 32768, !dbg !2257
  store volatile i32 %7, i32* %1, align 4, !dbg !2258
  %8 = load volatile i32, i32* %1, align 4, !dbg !2259
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #11, !dbg !2260
  br label %9, !dbg !2261

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2262
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2263
  %12 = icmp eq i32 %10, %11, !dbg !2264
  br i1 %12, label %13, label %9, !dbg !2261, !llvm.loop !2265

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2267
  store volatile i32 %14, i32* %1, align 4, !dbg !2268
  %15 = load volatile i32, i32* %1, align 4, !dbg !2269
  %16 = and i32 %15, -1009, !dbg !2270
  store volatile i32 %16, i32* %1, align 4, !dbg !2271
  %17 = load volatile i32, i32* %1, align 4, !dbg !2272
  %18 = or i32 %17, 32, !dbg !2273
  store volatile i32 %18, i32* %1, align 4, !dbg !2274
  %19 = load volatile i32, i32* %1, align 4, !dbg !2275
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #11, !dbg !2276
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2277
  store volatile i32 %20, i32* %1, align 4, !dbg !2278
  %21 = load volatile i32, i32* %1, align 4, !dbg !2279
  %22 = and i32 %21, -8, !dbg !2280
  store volatile i32 %22, i32* %1, align 4, !dbg !2281
  %23 = load volatile i32, i32* %1, align 4, !dbg !2282
  %24 = or i32 %23, 4, !dbg !2283
  store volatile i32 %24, i32* %1, align 4, !dbg !2284
  %25 = load volatile i32, i32* %1, align 4, !dbg !2285
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #11, !dbg !2286
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2287
  tail call void @SystemCoreClockUpdate() #12, !dbg !2288
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2289
  %27 = udiv i32 %26, 1000, !dbg !2290
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2291
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2292
  ret void, !dbg !2292
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2293 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2297
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2297
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2295, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2296, metadata !DIExpression()), !dbg !2299
  tail call void @cmnPLL1ON() #11, !dbg !2300
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2301
  store volatile i32 %3, i32* %1, align 4, !dbg !2302
  %4 = load volatile i32, i32* %1, align 4, !dbg !2303
  %5 = and i32 %4, -49153, !dbg !2304
  store volatile i32 %5, i32* %1, align 4, !dbg !2305
  %6 = load volatile i32, i32* %1, align 4, !dbg !2306
  store volatile i32 %6, i32* %1, align 4, !dbg !2307
  %7 = load volatile i32, i32* %1, align 4, !dbg !2308
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #11, !dbg !2309
  br label %8, !dbg !2310

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2311
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2312
  %11 = icmp eq i32 %9, %10, !dbg !2313
  br i1 %11, label %12, label %8, !dbg !2310, !llvm.loop !2314

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2316
  store volatile i32 %13, i32* %1, align 4, !dbg !2317
  %14 = load volatile i32, i32* %1, align 4, !dbg !2318
  %15 = and i32 %14, -8, !dbg !2319
  store volatile i32 %15, i32* %1, align 4, !dbg !2320
  %16 = load volatile i32, i32* %1, align 4, !dbg !2321
  %17 = or i32 %16, 2, !dbg !2322
  store volatile i32 %17, i32* %1, align 4, !dbg !2323
  %18 = load volatile i32, i32* %1, align 4, !dbg !2324
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #11, !dbg !2325
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2326
  tail call void @SystemCoreClockUpdate() #12, !dbg !2327
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2328
  %20 = udiv i32 %19, 1000, !dbg !2329
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2330
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2331
  ret void, !dbg !2331
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #5 section ".ramTEXT" !dbg !2332 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2336
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2336
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2334, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2335, metadata !DIExpression()), !dbg !2338
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #11, !dbg !2339
  store volatile i32 %3, i32* %1, align 4, !dbg !2340
  %4 = load volatile i32, i32* %1, align 4, !dbg !2341
  %5 = and i32 %4, -24577, !dbg !2342
  store volatile i32 %5, i32* %1, align 4, !dbg !2343
  %6 = load volatile i32, i32* %1, align 4, !dbg !2344
  store volatile i32 %6, i32* %1, align 4, !dbg !2345
  %7 = load volatile i32, i32* %1, align 4, !dbg !2346
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #11, !dbg !2347
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2348
  ret void, !dbg !2348
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2349 {
  %1 = tail call i32 @getc_nowait() #11, !dbg !2354
  call void @llvm.dbg.value(metadata i32 %1, metadata !2353, metadata !DIExpression()), !dbg !2355
  ret i32 %1, !dbg !2356
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2357 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2360
  %2 = and i32 %1, 1, !dbg !2362
  %3 = icmp eq i32 %2, 0, !dbg !2362
  br i1 %3, label %7, label %4, !dbg !2363

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2364
  %6 = and i32 %5, 255, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %5, metadata !2359, metadata !DIExpression()), !dbg !2367
  br label %7, !dbg !2368

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2369
  ret i32 %8, !dbg !2370
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2371 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2376, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 %1, metadata !2377, metadata !DIExpression()), !dbg !2379
  %3 = icmp eq i32 %0, 0, !dbg !2380
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2380
  call void @llvm.dbg.value(metadata i32 %4, metadata !2378, metadata !DIExpression()), !dbg !2379
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2381

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2382
  %9 = and i32 %8, 32, !dbg !2383
  %10 = icmp eq i32 %9, 0, !dbg !2384
  br i1 %10, label %7, label %11, !dbg !2381, !llvm.loop !2385

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2387
  %13 = inttoptr i32 %4 to i32*, !dbg !2388
  store volatile i32 %12, i32* %13, align 65536, !dbg !2389
  ret void, !dbg !2390
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2391 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2398
  %2 = icmp eq i32 %0, 0, !dbg !2399
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %3, metadata !2396, metadata !DIExpression()), !dbg !2398
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2400

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2401
  %8 = and i32 %7, 1, !dbg !2402
  %9 = icmp eq i32 %8, 0, !dbg !2403
  br i1 %9, label %6, label %10, !dbg !2400, !llvm.loop !2404

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2406
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2406
  %13 = trunc i32 %12 to i8, !dbg !2406
  call void @llvm.dbg.value(metadata i8 %13, metadata !2397, metadata !DIExpression()), !dbg !2398
  ret i8 %13, !dbg !2407
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2408 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2415
  %2 = icmp eq i32 %0, 0, !dbg !2416
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %3, metadata !2413, metadata !DIExpression()), !dbg !2415
  %4 = or i32 %3, 20, !dbg !2417
  %5 = inttoptr i32 %4 to i32*, !dbg !2417
  %6 = load volatile i32, i32* %5, align 4, !dbg !2417
  %7 = and i32 %6, 1, !dbg !2419
  %8 = icmp eq i32 %7, 0, !dbg !2419
  br i1 %8, label %13, label %9, !dbg !2420

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2421
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2421
  %12 = and i32 %11, 255, !dbg !2423
  call void @llvm.dbg.value(metadata i32 %11, metadata !2414, metadata !DIExpression()), !dbg !2415
  br label %13, !dbg !2424

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2425
  ret i32 %14, !dbg !2426
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !2427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2431, metadata !DIExpression()), !dbg !2432
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #11, !dbg !2433
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2434

2:                                                ; preds = %1
  br label %3, !dbg !2435

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2439
  %6 = or i32 %5, 1, !dbg !2439
  store volatile i32 %6, i32* %4, align 4, !dbg !2439
  br label %7, !dbg !2440

7:                                                ; preds = %3, %1
  ret void, !dbg !2440
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !2441 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2447, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %1, metadata !2448, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i16 %2, metadata !2449, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i16 %3, metadata !2450, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i16 %4, metadata !2451, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2453, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2460, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2462, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 0, metadata !2463, metadata !DIExpression()), !dbg !2464
  %6 = tail call i32 @top_xtal_freq_get() #12, !dbg !2467
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2468
  %7 = icmp eq i32 %0, 1, !dbg !2469
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %8, metadata !2453, metadata !DIExpression()), !dbg !2464
  %9 = or i32 %8, 36, !dbg !2470
  %10 = inttoptr i32 %9 to i32*, !dbg !2470
  store volatile i32 3, i32* %10, align 4, !dbg !2471
  %11 = or i32 %8, 12, !dbg !2472
  %12 = inttoptr i32 %11 to i32*, !dbg !2472
  %13 = load volatile i32, i32* %12, align 4, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %13, metadata !2455, metadata !DIExpression()), !dbg !2464
  %14 = or i32 %13, 128, !dbg !2473
  store volatile i32 %14, i32* %12, align 4, !dbg !2474
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2475
  %16 = udiv i32 %15, %1, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %16, metadata !2454, metadata !DIExpression()), !dbg !2464
  %17 = lshr i32 %16, 8, !dbg !2477
  %18 = add nuw nsw i32 %17, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %18, metadata !2456, metadata !DIExpression()), !dbg !2464
  %19 = udiv i32 %16, %18, !dbg !2479
  %20 = add i32 %19, -1, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %20, metadata !2457, metadata !DIExpression()), !dbg !2464
  %21 = icmp eq i32 %20, 3, !dbg !2482
  %22 = lshr i32 %20, 1, !dbg !2484
  %23 = add nsw i32 %22, -1, !dbg !2484
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2484
  call void @llvm.dbg.value(metadata i32 %24, metadata !2458, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 undef, metadata !2463, metadata !DIExpression()), !dbg !2464
  %25 = mul i32 %15, 10, !dbg !2485
  %26 = udiv i32 %25, %1, !dbg !2486
  %27 = udiv i32 %26, %16, !dbg !2487
  %28 = mul i32 %19, -10, !dbg !2488
  %29 = add i32 %27, %28, !dbg !2489
  %30 = urem i32 %29, 10, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %30, metadata !2459, metadata !DIExpression()), !dbg !2464
  %31 = and i32 %18, 255, !dbg !2491
  %32 = inttoptr i32 %8 to i32*, !dbg !2492
  store volatile i32 %31, i32* %32, align 65536, !dbg !2493
  %33 = lshr i32 %18, 8, !dbg !2494
  %34 = and i32 %33, 255, !dbg !2495
  %35 = or i32 %8, 4, !dbg !2496
  %36 = inttoptr i32 %35 to i32*, !dbg !2496
  store volatile i32 %34, i32* %36, align 4, !dbg !2497
  %37 = or i32 %8, 40, !dbg !2498
  %38 = inttoptr i32 %37 to i32*, !dbg !2498
  store volatile i32 %20, i32* %38, align 8, !dbg !2499
  %39 = or i32 %8, 44, !dbg !2500
  %40 = inttoptr i32 %39 to i32*, !dbg !2500
  store volatile i32 %24, i32* %40, align 4, !dbg !2501
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2502
  %42 = load i16, i16* %41, align 2, !dbg !2502
  %43 = zext i16 %42 to i32, !dbg !2502
  %44 = or i32 %8, 88, !dbg !2503
  %45 = inttoptr i32 %44 to i32*, !dbg !2503
  store volatile i32 %43, i32* %45, align 8, !dbg !2504
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2505
  %47 = load i16, i16* %46, align 2, !dbg !2505
  %48 = zext i16 %47 to i32, !dbg !2505
  %49 = or i32 %8, 84, !dbg !2506
  %50 = inttoptr i32 %49 to i32*, !dbg !2506
  store volatile i32 %48, i32* %50, align 4, !dbg !2507
  store volatile i32 %13, i32* %12, align 4, !dbg !2508
  %51 = or i32 %8, 8, !dbg !2509
  %52 = inttoptr i32 %51 to i32*, !dbg !2509
  store volatile i32 71, i32* %52, align 8, !dbg !2510
  %53 = inttoptr i32 %11 to i16*, !dbg !2511
  %54 = load volatile i16, i16* %53, align 4, !dbg !2511
  call void @llvm.dbg.value(metadata i16 %54, metadata !2452, metadata !DIExpression()), !dbg !2464
  %55 = and i16 %54, -64, !dbg !2512
  call void @llvm.dbg.value(metadata i16 %54, metadata !2452, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2464
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2452, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2464
  %56 = and i16 %2, -61, !dbg !2513
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2452, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2464
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2452, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2464
  %57 = and i16 %4, -57, !dbg !2514
  call void @llvm.dbg.value(metadata i16 undef, metadata !2452, metadata !DIExpression()), !dbg !2464
  %58 = or i16 %56, %3, !dbg !2513
  %59 = or i16 %58, %57, !dbg !2514
  %60 = or i16 %59, %55, !dbg !2515
  call void @llvm.dbg.value(metadata i16 %60, metadata !2452, metadata !DIExpression()), !dbg !2464
  store volatile i16 %60, i16* %53, align 4, !dbg !2516
  ret void, !dbg !2517
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !2518 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %1, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32* %2, metadata !2525, metadata !DIExpression()), !dbg !2526
  %4 = icmp eq i32 %0, 0, !dbg !2527
  %5 = icmp eq i32 %1, 0, !dbg !2529
  br i1 %4, label %6, label %16, !dbg !2530

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2531

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2533
  %9 = zext i16 %8 to i32, !dbg !2533
  br label %26, !dbg !2536

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2537
  %12 = zext i16 %11 to i32, !dbg !2537
  store i32 %12, i32* %2, align 4, !dbg !2539
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2540
  %14 = zext i16 %13 to i32, !dbg !2540
  %15 = sub nsw i32 %12, %14, !dbg !2541
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2542

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2544
  %19 = zext i16 %18 to i32, !dbg !2544
  br label %26, !dbg !2547

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2548
  %22 = zext i16 %21 to i32, !dbg !2548
  store i32 %22, i32* %2, align 4, !dbg !2550
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2551
  %24 = zext i16 %23 to i32, !dbg !2551
  %25 = sub nsw i32 %22, %24, !dbg !2552
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2529
  ret void, !dbg !2553
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2554 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2558, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8* %1, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %2, metadata !2560, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2561, metadata !DIExpression()), !dbg !2562
  %4 = icmp eq i32 %2, 0, !dbg !2563
  br i1 %4, label %15, label %5, !dbg !2566

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2561, metadata !DIExpression()), !dbg !2562
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2567

7:                                                ; preds = %5
  br label %8, !dbg !2569

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2573
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2573
  store i8 %10, i8* %11, align 1, !dbg !2573
  br label %12, !dbg !2574

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2574
  call void @llvm.dbg.value(metadata i32 %13, metadata !2561, metadata !DIExpression()), !dbg !2562
  %14 = icmp eq i32 %13, %2, !dbg !2563
  br i1 %14, label %15, label %5, !dbg !2566, !llvm.loop !2575

15:                                               ; preds = %12, %3
  ret void, !dbg !2577
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2578 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2584, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !2585, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %2, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2587, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2587, metadata !DIExpression()), !dbg !2588
  %4 = icmp eq i32 %2, 0, !dbg !2589
  br i1 %4, label %16, label %5, !dbg !2592

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2587, metadata !DIExpression()), !dbg !2588
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2593

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2595
  %9 = load i8, i8* %8, align 1, !dbg !2595
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2598
  br label %13, !dbg !2599

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2600
  %12 = load i8, i8* %11, align 1, !dbg !2600
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2603
  br label %13, !dbg !2604

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %14, metadata !2587, metadata !DIExpression()), !dbg !2588
  %15 = icmp eq i32 %14, %2, !dbg !2589
  br i1 %15, label %16, label %5, !dbg !2592, !llvm.loop !2606

16:                                               ; preds = %13, %3
  ret void, !dbg !2608
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !2609 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2613, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i8* %1, metadata !2614, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %2, metadata !2615, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %3, metadata !2616, metadata !DIExpression()), !dbg !2617
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2618

5:                                                ; preds = %4
  br label %6, !dbg !2619

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2623
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #12, !dbg !2623
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #12, !dbg !2623
  br label %9, !dbg !2624

9:                                                ; preds = %6, %4
  ret void, !dbg !2624
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !2625 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %1, metadata !2630, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %2, metadata !2631, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %3, metadata !2632, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %4, metadata !2633, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i32 %5, metadata !2634, metadata !DIExpression()), !dbg !2635
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2636

7:                                                ; preds = %6
  br label %8, !dbg !2637

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2641
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12, !dbg !2641
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #12, !dbg !2641
  br label %11, !dbg !2642

11:                                               ; preds = %8, %6
  ret void, !dbg !2642
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2643 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2648, metadata !DIExpression()), !dbg !2649
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2650

3:                                                ; preds = %2
  br label %4, !dbg !2651

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2655
  br label %6, !dbg !2656

6:                                                ; preds = %4, %2
  ret void, !dbg !2656
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2660, metadata !DIExpression()), !dbg !2661
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2662

3:                                                ; preds = %2
  br label %4, !dbg !2663

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2667
  br label %6, !dbg !2668

6:                                                ; preds = %4, %2
  ret void, !dbg !2668
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2669 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2671, metadata !DIExpression()), !dbg !2675
  %2 = icmp eq i32 %0, 0, !dbg !2676
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2676
  call void @llvm.dbg.value(metadata i32 %3, metadata !2672, metadata !DIExpression()), !dbg !2675
  %4 = or i32 %3, 12, !dbg !2677
  %5 = inttoptr i32 %4 to i32*, !dbg !2677
  %6 = load volatile i32, i32* %5, align 4, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %6, metadata !2674, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2675
  store volatile i32 191, i32* %5, align 4, !dbg !2678
  %7 = or i32 %3, 8, !dbg !2679
  %8 = inttoptr i32 %7 to i32*, !dbg !2679
  %9 = load volatile i32, i32* %8, align 8, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %9, metadata !2673, metadata !DIExpression()), !dbg !2675
  %10 = and i32 %9, 65327, !dbg !2680
  %11 = or i32 %10, 208, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %9, metadata !2673, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2675
  store volatile i32 %11, i32* %8, align 8, !dbg !2681
  %12 = or i32 %3, 68, !dbg !2682
  %13 = inttoptr i32 %12 to i32*, !dbg !2682
  store volatile i32 0, i32* %13, align 4, !dbg !2683
  store volatile i32 0, i32* %5, align 4, !dbg !2684
  %14 = or i32 %3, 16, !dbg !2685
  %15 = inttoptr i32 %14 to i32*, !dbg !2685
  store volatile i32 2, i32* %15, align 16, !dbg !2686
  %16 = and i32 %6, 65535, !dbg !2687
  store volatile i32 %16, i32* %5, align 4, !dbg !2688
  ret void, !dbg !2689
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2694, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %1, metadata !2695, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %2, metadata !2696, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i8 %3, metadata !2697, metadata !DIExpression()), !dbg !2701
  %5 = icmp eq i32 %0, 0, !dbg !2702
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %6, metadata !2698, metadata !DIExpression()), !dbg !2701
  %7 = or i32 %6, 12, !dbg !2703
  %8 = inttoptr i32 %7 to i32*, !dbg !2703
  %9 = load volatile i32, i32* %8, align 4, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %9, metadata !2700, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2701
  store volatile i32 191, i32* %8, align 4, !dbg !2704
  %10 = zext i8 %1 to i32, !dbg !2705
  %11 = or i32 %6, 16, !dbg !2706
  %12 = inttoptr i32 %11 to i32*, !dbg !2706
  store volatile i32 %10, i32* %12, align 16, !dbg !2707
  %13 = or i32 %6, 20, !dbg !2708
  %14 = inttoptr i32 %13 to i32*, !dbg !2708
  store volatile i32 %10, i32* %14, align 4, !dbg !2709
  %15 = zext i8 %2 to i32, !dbg !2710
  %16 = or i32 %6, 24, !dbg !2711
  %17 = inttoptr i32 %16 to i32*, !dbg !2711
  store volatile i32 %15, i32* %17, align 8, !dbg !2712
  %18 = or i32 %6, 28, !dbg !2713
  %19 = inttoptr i32 %18 to i32*, !dbg !2713
  store volatile i32 %15, i32* %19, align 4, !dbg !2714
  %20 = or i32 %6, 8, !dbg !2715
  %21 = inttoptr i32 %20 to i32*, !dbg !2715
  %22 = load volatile i32, i32* %21, align 8, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %22, metadata !2699, metadata !DIExpression()), !dbg !2701
  %23 = and i32 %22, 65525, !dbg !2716
  %24 = or i32 %23, 10, !dbg !2716
  call void @llvm.dbg.value(metadata i32 %22, metadata !2699, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2701
  store volatile i32 %24, i32* %21, align 8, !dbg !2717
  %25 = and i32 %9, 65535, !dbg !2718
  store volatile i32 %25, i32* %8, align 4, !dbg !2719
  %26 = zext i8 %3 to i32, !dbg !2720
  %27 = or i32 %6, 64, !dbg !2721
  %28 = inttoptr i32 %27 to i32*, !dbg !2721
  store volatile i32 %26, i32* %28, align 64, !dbg !2722
  %29 = or i32 %6, 68, !dbg !2723
  %30 = inttoptr i32 %29 to i32*, !dbg !2723
  store volatile i32 1, i32* %30, align 4, !dbg !2724
  ret void, !dbg !2725
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2728, metadata !DIExpression()), !dbg !2731
  %2 = icmp eq i32 %0, 0, !dbg !2732
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2732
  call void @llvm.dbg.value(metadata i32 %3, metadata !2729, metadata !DIExpression()), !dbg !2731
  %4 = or i32 %3, 12, !dbg !2733
  %5 = inttoptr i32 %4 to i32*, !dbg !2733
  %6 = load volatile i32, i32* %5, align 4, !dbg !2733
  call void @llvm.dbg.value(metadata i32 %6, metadata !2730, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2731
  store volatile i32 191, i32* %5, align 4, !dbg !2734
  %7 = or i32 %3, 8, !dbg !2735
  %8 = inttoptr i32 %7 to i32*, !dbg !2735
  store volatile i32 0, i32* %8, align 8, !dbg !2736
  store volatile i32 0, i32* %5, align 4, !dbg !2737
  %9 = and i32 %6, 65535, !dbg !2738
  store volatile i32 %9, i32* %5, align 4, !dbg !2739
  ret void, !dbg !2740
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !2741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2745
  %2 = icmp eq i32 %0, 0, !dbg !2746
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2746
  call void @llvm.dbg.value(metadata i32 %3, metadata !2744, metadata !DIExpression()), !dbg !2745
  %4 = or i32 %3, 12, !dbg !2747
  %5 = inttoptr i32 %4 to i32*, !dbg !2747
  store volatile i32 191, i32* %5, align 4, !dbg !2748
  %6 = or i32 %3, 8, !dbg !2749
  %7 = inttoptr i32 %6 to i32*, !dbg !2749
  store volatile i32 16, i32* %7, align 8, !dbg !2750
  %8 = or i32 %3, 16, !dbg !2751
  %9 = inttoptr i32 %8 to i32*, !dbg !2751
  store volatile i32 0, i32* %9, align 16, !dbg !2752
  %10 = or i32 %3, 24, !dbg !2753
  %11 = inttoptr i32 %10 to i32*, !dbg !2753
  store volatile i32 0, i32* %11, align 8, !dbg !2754
  store volatile i32 128, i32* %5, align 4, !dbg !2755
  %12 = inttoptr i32 %3 to i32*, !dbg !2756
  store volatile i32 0, i32* %12, align 65536, !dbg !2757
  %13 = or i32 %3, 4, !dbg !2758
  %14 = inttoptr i32 %13 to i32*, !dbg !2758
  store volatile i32 0, i32* %14, align 4, !dbg !2759
  store volatile i32 0, i32* %5, align 4, !dbg !2760
  store volatile i32 0, i32* %14, align 4, !dbg !2761
  store volatile i32 0, i32* %7, align 8, !dbg !2762
  store volatile i32 191, i32* %5, align 4, !dbg !2763
  store volatile i32 0, i32* %7, align 8, !dbg !2764
  store volatile i32 0, i32* %5, align 4, !dbg !2765
  store volatile i32 0, i32* %9, align 16, !dbg !2766
  %15 = or i32 %3, 28, !dbg !2767
  %16 = inttoptr i32 %15 to i32*, !dbg !2767
  store volatile i32 0, i32* %16, align 4, !dbg !2768
  %17 = or i32 %3, 36, !dbg !2769
  %18 = inttoptr i32 %17 to i32*, !dbg !2769
  store volatile i32 0, i32* %18, align 4, !dbg !2770
  %19 = or i32 %3, 40, !dbg !2771
  %20 = inttoptr i32 %19 to i32*, !dbg !2771
  store volatile i32 0, i32* %20, align 8, !dbg !2772
  %21 = or i32 %3, 44, !dbg !2773
  %22 = inttoptr i32 %21 to i32*, !dbg !2773
  store volatile i32 0, i32* %22, align 4, !dbg !2774
  %23 = or i32 %3, 52, !dbg !2775
  %24 = inttoptr i32 %23 to i32*, !dbg !2775
  store volatile i32 0, i32* %24, align 4, !dbg !2776
  %25 = or i32 %3, 60, !dbg !2777
  %26 = inttoptr i32 %25 to i32*, !dbg !2777
  store volatile i32 0, i32* %26, align 4, !dbg !2778
  %27 = or i32 %3, 64, !dbg !2779
  %28 = inttoptr i32 %27 to i32*, !dbg !2779
  store volatile i32 0, i32* %28, align 64, !dbg !2780
  %29 = or i32 %3, 68, !dbg !2781
  %30 = inttoptr i32 %29 to i32*, !dbg !2781
  store volatile i32 0, i32* %30, align 4, !dbg !2782
  %31 = or i32 %3, 72, !dbg !2783
  %32 = inttoptr i32 %31 to i32*, !dbg !2783
  store volatile i32 0, i32* %32, align 8, !dbg !2784
  %33 = or i32 %3, 76, !dbg !2785
  %34 = inttoptr i32 %33 to i32*, !dbg !2785
  store volatile i32 0, i32* %34, align 4, !dbg !2786
  %35 = or i32 %3, 80, !dbg !2787
  %36 = inttoptr i32 %35 to i32*, !dbg !2787
  store volatile i32 0, i32* %36, align 16, !dbg !2788
  %37 = or i32 %3, 84, !dbg !2789
  %38 = inttoptr i32 %37 to i32*, !dbg !2789
  store volatile i32 0, i32* %38, align 4, !dbg !2790
  %39 = or i32 %3, 88, !dbg !2791
  %40 = inttoptr i32 %39 to i32*, !dbg !2791
  store volatile i32 0, i32* %40, align 8, !dbg !2792
  %41 = or i32 %3, 96, !dbg !2793
  %42 = inttoptr i32 %41 to i32*, !dbg !2793
  store volatile i32 0, i32* %42, align 32, !dbg !2794
  ret void, !dbg !2795
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !2796 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2798, metadata !DIExpression()), !dbg !2800
  %2 = icmp eq i32 %0, 0, !dbg !2801
  call void @llvm.dbg.value(metadata i32 undef, metadata !2799, metadata !DIExpression()), !dbg !2800
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !2802

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !2803
  %7 = and i32 %6, 64, !dbg !2804
  %8 = icmp eq i32 %7, 0, !dbg !2805
  br i1 %8, label %5, label %9, !dbg !2802, !llvm.loop !2806

9:                                                ; preds = %5
  ret void, !dbg !2808
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2809 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2813, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 %1, metadata !2814, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i8* %2, metadata !2815, metadata !DIExpression()), !dbg !2826
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2827
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2827
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2816, metadata !DIExpression()), !dbg !2828
  %7 = bitcast i32* %5 to i8*, !dbg !2829
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2829
  call void @llvm.dbg.value(metadata i32* %5, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2830
  call void @llvm.va_start(i8* nonnull %6), !dbg !2831
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2832
  %10 = load i32, i32* %9, align 4, !dbg !2832
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2832
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2832
  call void @llvm.va_end(i8* nonnull %6), !dbg !2833
  %13 = load i32, i32* %5, align 4, !dbg !2834
  call void @llvm.dbg.value(metadata i32 %13, metadata !2825, metadata !DIExpression()), !dbg !2826
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2835
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2836
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2836
  ret void, !dbg !2836
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2837 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2839, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %1, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %2, metadata !2841, metadata !DIExpression()), !dbg !2844
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2845
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2842, metadata !DIExpression()), !dbg !2846
  %7 = bitcast i32* %5 to i8*, !dbg !2847
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2847
  call void @llvm.dbg.value(metadata i32* %5, metadata !2843, metadata !DIExpression(DW_OP_deref)), !dbg !2844
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2848
  call void @llvm.va_start(i8* nonnull %6), !dbg !2849
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2850
  %10 = load i32, i32* %9, align 4, !dbg !2850
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2850
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2850
  call void @llvm.va_end(i8* nonnull %6), !dbg !2851
  %13 = load i32, i32* %5, align 4, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %13, metadata !2843, metadata !DIExpression()), !dbg !2844
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2854
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2854
  ret void, !dbg !2854
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2855 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i32 %1, metadata !2858, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata i8* %2, metadata !2859, metadata !DIExpression()), !dbg !2862
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2863
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2863
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2860, metadata !DIExpression()), !dbg !2864
  %7 = bitcast i32* %5 to i8*, !dbg !2865
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2865
  call void @llvm.dbg.value(metadata i32* %5, metadata !2861, metadata !DIExpression(DW_OP_deref)), !dbg !2862
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2866
  call void @llvm.va_start(i8* nonnull %6), !dbg !2867
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2868
  %10 = load i32, i32* %9, align 4, !dbg !2868
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2868
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2868
  call void @llvm.va_end(i8* nonnull %6), !dbg !2869
  %13 = load i32, i32* %5, align 4, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %13, metadata !2861, metadata !DIExpression()), !dbg !2862
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2871
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2872
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2872
  ret void, !dbg !2872
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2873 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i32 %1, metadata !2876, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %2, metadata !2877, metadata !DIExpression()), !dbg !2880
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2881
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2881
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2878, metadata !DIExpression()), !dbg !2882
  %7 = bitcast i32* %5 to i8*, !dbg !2883
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2883
  call void @llvm.dbg.value(metadata i32* %5, metadata !2879, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2884
  call void @llvm.va_start(i8* nonnull %6), !dbg !2885
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2886
  %10 = load i32, i32* %9, align 4, !dbg !2886
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2886
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2886
  call void @llvm.va_end(i8* nonnull %6), !dbg !2887
  %13 = load i32, i32* %5, align 4, !dbg !2888
  call void @llvm.dbg.value(metadata i32 %13, metadata !2879, metadata !DIExpression()), !dbg !2880
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2889
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2890
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2890
  ret void, !dbg !2890
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !2891 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2897, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %1, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %2, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i8* %3, metadata !2900, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %4, metadata !2901, metadata !DIExpression()), !dbg !2902
  ret void, !dbg !2903
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !2904 {
  ret i32 0, !dbg !2908
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2909 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i32 -1, metadata !2914, metadata !DIExpression()), !dbg !2915
  %2 = icmp ugt i32 %0, 95, !dbg !2916
  br i1 %2, label %4, label %3, !dbg !2916

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #11, !dbg !2918
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()), !dbg !2915
  br label %4, !dbg !2920

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2915
  ret i32 %5, !dbg !2921
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2926, metadata !DIExpression()), !dbg !2927
  %2 = and i32 %0, 31, !dbg !2928
  %3 = shl nuw i32 1, %2, !dbg !2929
  %4 = lshr i32 %0, 5, !dbg !2930
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !2931
  store volatile i32 %3, i32* %5, align 4, !dbg !2932
  ret void, !dbg !2933
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2934 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 -1, metadata !2937, metadata !DIExpression()), !dbg !2938
  %2 = icmp ugt i32 %0, 95, !dbg !2939
  br i1 %2, label %4, label %3, !dbg !2939

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #11, !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2937, metadata !DIExpression()), !dbg !2938
  br label %4, !dbg !2943

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2938
  ret i32 %5, !dbg !2944
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2945 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2947, metadata !DIExpression()), !dbg !2948
  %2 = and i32 %0, 31, !dbg !2949
  %3 = shl nuw i32 1, %2, !dbg !2950
  %4 = lshr i32 %0, 5, !dbg !2951
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !2952
  store volatile i32 %3, i32* %5, align 4, !dbg !2953
  ret void, !dbg !2954
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !2955 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i32 255, metadata !2960, metadata !DIExpression()), !dbg !2961
  %2 = icmp ugt i32 %0, 95, !dbg !2962
  br i1 %2, label %5, label %3, !dbg !2962

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #11, !dbg !2964
  call void @llvm.dbg.value(metadata i32 %4, metadata !2960, metadata !DIExpression()), !dbg !2961
  br label %5, !dbg !2966

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !2961
  ret i32 %6, !dbg !2967
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !2968 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2972, metadata !DIExpression()), !dbg !2973
  %2 = lshr i32 %0, 5, !dbg !2974
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !2975
  %4 = load volatile i32, i32* %3, align 4, !dbg !2975
  %5 = and i32 %0, 31, !dbg !2976
  %6 = lshr i32 %4, %5, !dbg !2977
  %7 = and i32 %6, 1, !dbg !2977
  ret i32 %7, !dbg !2978
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2979 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 -1, metadata !2982, metadata !DIExpression()), !dbg !2983
  %2 = icmp ugt i32 %0, 95, !dbg !2984
  br i1 %2, label %4, label %3, !dbg !2984

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #11, !dbg !2986
  call void @llvm.dbg.value(metadata i32 0, metadata !2982, metadata !DIExpression()), !dbg !2983
  br label %4, !dbg !2988

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2983
  ret i32 %5, !dbg !2989
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2992, metadata !DIExpression()), !dbg !2993
  %2 = and i32 %0, 31, !dbg !2994
  %3 = shl nuw i32 1, %2, !dbg !2995
  %4 = lshr i32 %0, 5, !dbg !2996
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !2997
  store volatile i32 %3, i32* %5, align 4, !dbg !2998
  ret void, !dbg !2999
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3002, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 -1, metadata !3003, metadata !DIExpression()), !dbg !3004
  %2 = icmp ugt i32 %0, 95, !dbg !3005
  br i1 %2, label %4, label %3, !dbg !3005

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #11, !dbg !3007
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()), !dbg !3004
  br label %4, !dbg !3009

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3004
  ret i32 %5, !dbg !3010
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3011 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3014
  %2 = and i32 %0, 31, !dbg !3015
  %3 = shl nuw i32 1, %2, !dbg !3016
  %4 = lshr i32 %0, 5, !dbg !3017
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3018
  store volatile i32 %3, i32* %5, align 4, !dbg !3019
  ret void, !dbg !3020
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3021 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3025, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %1, metadata !3026, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 -1, metadata !3027, metadata !DIExpression()), !dbg !3028
  %3 = icmp ugt i32 %0, 95, !dbg !3029
  br i1 %3, label %5, label %4, !dbg !3029

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #11, !dbg !3031
  call void @llvm.dbg.value(metadata i32 0, metadata !3027, metadata !DIExpression()), !dbg !3028
  br label %5, !dbg !3033

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3028
  ret i32 %6, !dbg !3034
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3035 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3039, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i32 %1, metadata !3040, metadata !DIExpression()), !dbg !3041
  %3 = trunc i32 %1 to i8, !dbg !3042
  %4 = shl i8 %3, 5, !dbg !3042
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3045
  store volatile i8 %4, i8* %5, align 1, !dbg !3046
  ret void, !dbg !3047
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3048 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 68, metadata !3051, metadata !DIExpression()), !dbg !3052
  %2 = icmp ugt i32 %0, 95, !dbg !3053
  br i1 %2, label %5, label %3, !dbg !3053

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #11, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %4, metadata !3051, metadata !DIExpression()), !dbg !3052
  br label %5, !dbg !3057

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3052
  ret i32 %6, !dbg !3058
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !3059 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3061, metadata !DIExpression()), !dbg !3062
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3063
  %3 = load volatile i8, i8* %2, align 1, !dbg !3063
  %4 = lshr i8 %3, 5, !dbg !3066
  %5 = zext i8 %4 to i32, !dbg !3066
  ret i32 %5, !dbg !3067
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !3068 {
  ret void, !dbg !3069
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !3070 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3072, metadata !DIExpression()), !dbg !3074
  %1 = tail call fastcc i32 @get_current_irq() #11, !dbg !3075
  call void @llvm.dbg.value(metadata i32 %1, metadata !3073, metadata !DIExpression()), !dbg !3074
  %2 = icmp ugt i32 %1, 95, !dbg !3076
  br i1 %2, label %12, label %3, !dbg !3076

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3078
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3078
  %6 = icmp eq void (i32)* %5, null, !dbg !3080
  br i1 %6, label %7, label %8, !dbg !3081

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3072, metadata !DIExpression()), !dbg !3074
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #12, !dbg !3082
  br label %12, !dbg !3084

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #11, !dbg !3085
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3087
  store i32 %9, i32* %10, align 4, !dbg !3088
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3089
  tail call void %11(i32 noundef %1) #12, !dbg !3090
  call void @llvm.dbg.value(metadata i32 0, metadata !3072, metadata !DIExpression()), !dbg !3074
  br label %12, !dbg !3091

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3074
  ret i32 %13, !dbg !3092
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !3093 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3096
  %2 = and i32 %1, 511, !dbg !3097
  call void @llvm.dbg.value(metadata i32 %2, metadata !3095, metadata !DIExpression()), !dbg !3098
  %3 = add nsw i32 %2, -16, !dbg !3099
  ret i32 %3, !dbg !3100
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !3101 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3102
  %2 = lshr i32 %1, 22, !dbg !3103
  %3 = and i32 %2, 1, !dbg !3103
  ret i32 %3, !dbg !3104
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !3105 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3110, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3111, metadata !DIExpression()), !dbg !3113
  %3 = icmp ugt i32 %0, 95, !dbg !3114
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3114
  br i1 %5, label %10, label %6, !dbg !3114

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3116
  call void @llvm.dbg.value(metadata i32 %7, metadata !3112, metadata !DIExpression()), !dbg !3113
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #11, !dbg !3117
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3118
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3119
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3120
  store i32 0, i32* %9, align 4, !dbg !3121
  tail call void @restore_interrupt_mask(i32 noundef %7) #12, !dbg !3122
  br label %10, !dbg !3123

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3113
  ret i32 %11, !dbg !3124
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !3125 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3129, metadata !DIExpression()), !dbg !3130
  %2 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !3131
  store i32 %2, i32* %0, align 4, !dbg !3132
  ret i32 0, !dbg !3133
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !3134 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3138, metadata !DIExpression()), !dbg !3139
  tail call void @restore_interrupt_mask(i32 noundef %0) #12, !dbg !3140
  ret i32 0, !dbg !3141
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3142 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3148, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8 %1, metadata !3149, metadata !DIExpression()), !dbg !3151
  %3 = icmp ugt i32 %0, 60, !dbg !3152
  br i1 %3, label %11, label %4, !dbg !3154

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3155
  br i1 %5, label %11, label %6, !dbg !3157

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3158
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #12, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %8, metadata !3150, metadata !DIExpression()), !dbg !3151
  %9 = icmp slt i32 %8, 0, !dbg !3160
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3160
  br label %11, !dbg !3161

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3151
  ret i32 %12, !dbg !3162
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !3163 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3169
  ret i32 0, !dbg !3170
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !3171 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3173, metadata !DIExpression()), !dbg !3174
  ret i32 0, !dbg !3175
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3176 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3181, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i32* %1, metadata !3182, metadata !DIExpression()), !dbg !3191
  %4 = icmp eq i32* %1, null, !dbg !3192
  br i1 %4, label %12, label %5, !dbg !3194

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3195
  br i1 %6, label %12, label %7, !dbg !3197

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3198
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3198
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3198
  %10 = load i8, i8* %9, align 1, !dbg !3198
  call void @llvm.dbg.value(metadata i8 %10, metadata !3183, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3198
  %11 = zext i8 %10 to i32, !dbg !3199
  store i32 %11, i32* %1, align 4, !dbg !3200
  br label %12, !dbg !3201

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3191
  ret i32 %13, !dbg !3202
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3203 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3207, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.value(metadata i32 %1, metadata !3208, metadata !DIExpression()), !dbg !3210
  %3 = icmp ugt i32 %0, 60, !dbg !3211
  br i1 %3, label %9, label %4, !dbg !3213

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3214
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3215
  call void @llvm.dbg.value(metadata i32 %6, metadata !3209, metadata !DIExpression()), !dbg !3210
  %7 = icmp slt i32 %6, 0, !dbg !3216
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3216
  br label %9, !dbg !3217

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3210
  ret i32 %10, !dbg !3218
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3219 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3221, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32* %1, metadata !3222, metadata !DIExpression()), !dbg !3224
  %4 = icmp ugt i32 %0, 60, !dbg !3225
  br i1 %4, label %12, label %5, !dbg !3227

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3228
  br i1 %6, label %12, label %7, !dbg !3230

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3231
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3231
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3231
  %10 = load i8, i8* %9, align 2, !dbg !3231
  call void @llvm.dbg.value(metadata i8 %10, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3224
  call void @llvm.dbg.value(metadata i8 undef, metadata !3223, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3224
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3231
  %11 = zext i8 %10 to i32, !dbg !3232
  store i32 %11, i32* %1, align 4, !dbg !3233
  br label %12, !dbg !3234

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3224
  ret i32 %13, !dbg !3235
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3241, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i32 %1, metadata !3242, metadata !DIExpression()), !dbg !3244
  %3 = icmp ugt i32 %0, 60, !dbg !3245
  br i1 %3, label %8, label %4, !dbg !3247

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #12, !dbg !3248
  call void @llvm.dbg.value(metadata i32 %5, metadata !3243, metadata !DIExpression()), !dbg !3244
  %6 = icmp slt i32 %5, 0, !dbg !3249
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3249
  br label %8, !dbg !3250

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3244
  ret i32 %9, !dbg !3251
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3252 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3257, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32* %1, metadata !3258, metadata !DIExpression()), !dbg !3260
  %4 = icmp ugt i32 %0, 60, !dbg !3261
  br i1 %4, label %13, label %5, !dbg !3263

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3264
  br i1 %6, label %13, label %7, !dbg !3266

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3267
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3267
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3267
  call void @llvm.dbg.value(metadata i32 undef, metadata !3259, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3260
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3267
  %10 = load i8, i8* %9, align 4, !dbg !3267
  call void @llvm.dbg.value(metadata i8 %10, metadata !3259, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3267
  %11 = icmp ne i8 %10, 0, !dbg !3268
  %12 = zext i1 %11 to i32, !dbg !3268
  store i32 %12, i32* %1, align 4, !dbg !3269
  br label %13, !dbg !3270

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3260
  ret i32 %14, !dbg !3271
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !3272 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3274, metadata !DIExpression()), !dbg !3276
  %3 = icmp ugt i32 %0, 60, !dbg !3277
  br i1 %3, label %11, label %4, !dbg !3279

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3280
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13, !dbg !3280
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #12, !dbg !3280
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3280
  %7 = load i8, i8* %6, align 2, !dbg !3280
  call void @llvm.dbg.value(metadata i8 %7, metadata !3275, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3276
  call void @llvm.dbg.value(metadata i8 undef, metadata !3275, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3276
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13, !dbg !3280
  %8 = xor i8 %7, 1, !dbg !3281
  %9 = zext i8 %8 to i32, !dbg !3281
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #11, !dbg !3282
  br label %11, !dbg !3283

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3276
  ret i32 %12, !dbg !3284
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !3285 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3287, metadata !DIExpression()), !dbg !3289
  %2 = icmp ugt i32 %0, 60, !dbg !3290
  br i1 %2, label %10, label %3, !dbg !3292

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3293
  call void @llvm.dbg.value(metadata i32 %4, metadata !3288, metadata !DIExpression()), !dbg !3289
  %5 = icmp slt i32 %4, 0, !dbg !3294
  br i1 %5, label %10, label %6, !dbg !3296

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #12, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %7, metadata !3288, metadata !DIExpression()), !dbg !3289
  %8 = icmp slt i32 %7, 0, !dbg !3298
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3298
  br label %10, !dbg !3299

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3289
  ret i32 %11, !dbg !3300
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !3301 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3303, metadata !DIExpression()), !dbg !3305
  %2 = icmp ugt i32 %0, 60, !dbg !3306
  br i1 %2, label %10, label %3, !dbg !3308

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3309
  call void @llvm.dbg.value(metadata i32 %4, metadata !3304, metadata !DIExpression()), !dbg !3305
  %5 = icmp slt i32 %4, 0, !dbg !3310
  br i1 %5, label %10, label %6, !dbg !3312

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #12, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %7, metadata !3304, metadata !DIExpression()), !dbg !3305
  %8 = icmp slt i32 %7, 0, !dbg !3314
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3314
  br label %10, !dbg !3315

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3305
  ret i32 %11, !dbg !3316
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !3317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3319, metadata !DIExpression()), !dbg !3321
  %2 = icmp ugt i32 %0, 60, !dbg !3322
  br i1 %2, label %7, label %3, !dbg !3324

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3325
  call void @llvm.dbg.value(metadata i32 %4, metadata !3320, metadata !DIExpression()), !dbg !3321
  %5 = icmp slt i32 %4, 0, !dbg !3326
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3326
  br label %7, !dbg !3327

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3321
  ret i32 %8, !dbg !3328
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3333, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 %1, metadata !3334, metadata !DIExpression()), !dbg !3336
  %3 = icmp ugt i32 %0, 60, !dbg !3337
  br i1 %3, label %9, label %4, !dbg !3339

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3340
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3341
  call void @llvm.dbg.value(metadata i32 %6, metadata !3335, metadata !DIExpression()), !dbg !3336
  %7 = icmp slt i32 %6, 0, !dbg !3342
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3342
  br label %9, !dbg !3343

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3336
  ret i32 %10, !dbg !3344
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !3345 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3350, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32* %1, metadata !3351, metadata !DIExpression()), !dbg !3354
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #13, !dbg !3355
  %4 = icmp ugt i32 %0, 60, !dbg !3356
  br i1 %4, label %11, label %5, !dbg !3358

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3353, metadata !DIExpression(DW_OP_deref)), !dbg !3354
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #12, !dbg !3359
  call void @llvm.dbg.value(metadata i32 %6, metadata !3352, metadata !DIExpression()), !dbg !3354
  %7 = load i8, i8* %3, align 1, !dbg !3360
  call void @llvm.dbg.value(metadata i8 %7, metadata !3353, metadata !DIExpression()), !dbg !3354
  %8 = zext i8 %7 to i32, !dbg !3361
  store i32 %8, i32* %1, align 4, !dbg !3362
  %9 = icmp slt i32 %6, 0, !dbg !3363
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3363
  br label %11, !dbg !3364

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #13, !dbg !3365
  ret i32 %12, !dbg !3365
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3366 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3372, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3373, metadata !DIExpression()), !dbg !3374
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3375
  br i1 %3, label %4, label %18, !dbg !3377

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3378
  %6 = load i8, i8* %5, align 4, !dbg !3378, !range !3380
  %7 = icmp eq i8 %6, 0, !dbg !3378
  br i1 %7, label %8, label %18, !dbg !3381

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #12, !dbg !3382
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3383
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !3384
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3385
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #12, !dbg !3386
  store i8 1, i8* %5, align 4, !dbg !3387
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3388, !range !3389
  tail call void @uart_reset_default_value(i32 noundef %14) #12, !dbg !3390
  tail call void @halUART_HWInit(i32 noundef %14) #12, !dbg !3391
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3392
  %16 = icmp eq i32 %15, 0, !dbg !3394
  %17 = select i1 %16, i32 0, i32 -4, !dbg !3374
  br label %18, !dbg !3374

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !3374
  ret i32 %19, !dbg !3395
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #4 !dbg !3396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3402, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3403, metadata !DIExpression()), !dbg !3404
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3405
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !3407
  br i1 %5, label %6, label %22, !dbg !3407

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3408
  %8 = load i32, i32* %7, align 4, !dbg !3408
  %9 = icmp ugt i32 %8, 12, !dbg !3410
  br i1 %9, label %22, label %10, !dbg !3411

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3412
  %12 = load i32, i32* %11, align 4, !dbg !3412
  %13 = icmp ugt i32 %12, 2, !dbg !3413
  br i1 %13, label %22, label %14, !dbg !3414

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3415
  %16 = load i32, i32* %15, align 4, !dbg !3415
  %17 = icmp ugt i32 %16, 1, !dbg !3416
  br i1 %17, label %22, label %18, !dbg !3417

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3418
  %20 = load i32, i32* %19, align 4, !dbg !3418
  %21 = icmp ult i32 %20, 4, !dbg !3419
  br label %22, !dbg !3420

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !3404
  ret i1 %23, !dbg !3421
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !3422 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3426, metadata !DIExpression()), !dbg !3427
  %2 = icmp ne i32 %0, 0, !dbg !3428
  %3 = zext i1 %2 to i32, !dbg !3429
  ret i32 %3, !dbg !3430
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3431 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3435, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3436, metadata !DIExpression()), !dbg !3437
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3438
  br i1 %3, label %4, label %22, !dbg !3440

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3441
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !3442
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3443
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #12, !dbg !3444
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3445
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3446
  %11 = load i32, i32* %10, align 4, !dbg !3446
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #11, !dbg !3447
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3448
  %14 = load i32, i32* %13, align 4, !dbg !3448
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #11, !dbg !3449
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3450
  %17 = load i32, i32* %16, align 4, !dbg !3450
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #11, !dbg !3451
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3452
  %20 = load i32, i32* %19, align 4, !dbg !3452
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #11, !dbg !3453
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #12, !dbg !3454
  br label %22, !dbg !3455

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !3437
  ret i32 %23, !dbg !3456
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !3457 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3461, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !3462, metadata !DIExpression()), !dbg !3467
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !3468
  %3 = load i32, i32* %2, align 4, !dbg !3468
  ret i32 %3, !dbg !3469
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !3470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3477
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !3475, metadata !DIExpression()), !dbg !3478
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !3479
  %3 = load i16, i16* %2, align 2, !dbg !3479
  ret i16 %3, !dbg !3480
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !3481 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3485, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !3486, metadata !DIExpression()), !dbg !3489
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !3490
  %3 = load i16, i16* %2, align 2, !dbg !3490
  ret i16 %3, !dbg !3491
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !3492 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3496, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !3497, metadata !DIExpression()), !dbg !3500
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !3501
  %3 = load i16, i16* %2, align 2, !dbg !3501
  ret i16 %3, !dbg !3502
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !3503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3507, metadata !DIExpression()), !dbg !3508
  %2 = icmp ult i32 %0, 2, !dbg !3509
  ret i1 %2, !dbg !3510
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !3511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3515, metadata !DIExpression()), !dbg !3516
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3517
  br i1 %2, label %3, label %10, !dbg !3519

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3520
  %5 = load i8, i8* %4, align 4, !dbg !3520, !range !3380
  %6 = icmp eq i8 %5, 0, !dbg !3522
  br i1 %6, label %10, label %7, !dbg !3523

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #12, !dbg !3524
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3525, !range !3389
  tail call void @uart_query_empty(i32 noundef %9) #12, !dbg !3526
  tail call void @uart_reset_default_value(i32 noundef %9) #12, !dbg !3527
  br label %10, !dbg !3528

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !3516
  ret i32 %11, !dbg !3529
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3530 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3534, metadata !DIExpression()), !dbg !3537
  call void @llvm.dbg.value(metadata i8 %1, metadata !3535, metadata !DIExpression()), !dbg !3537
  %3 = icmp eq i32 %0, 0, !dbg !3538
  %4 = icmp eq i32 %0, 1, !dbg !3538
  %5 = select i1 %4, i32 1, i32 2, !dbg !3538
  %6 = select i1 %3, i32 0, i32 %5, !dbg !3538
  call void @llvm.dbg.value(metadata i32 %6, metadata !3536, metadata !DIExpression()), !dbg !3537
  %7 = icmp eq i32 %6, 2, !dbg !3539
  br i1 %7, label %9, label %8, !dbg !3541

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #12, !dbg !3542
  br label %9, !dbg !3544

9:                                                ; preds = %2, %8
  ret void, !dbg !3545
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3546 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3550, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i8* %1, metadata !3551, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i32 %2, metadata !3552, metadata !DIExpression()), !dbg !3555
  %4 = icmp eq i32 %0, 0, !dbg !3556
  %5 = icmp eq i32 %0, 1, !dbg !3556
  %6 = select i1 %5, i32 1, i32 2, !dbg !3556
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %7, metadata !3553, metadata !DIExpression()), !dbg !3555
  %8 = icmp eq i8* %1, null, !dbg !3557
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !3559
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3559
  call void @llvm.dbg.value(metadata i32 0, metadata !3554, metadata !DIExpression()), !dbg !3555
  br i1 %12, label %19, label %13, !dbg !3559

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3554, metadata !DIExpression()), !dbg !3555
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !3560
  %16 = load i8, i8* %15, align 1, !dbg !3560
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #12, !dbg !3566
  %17 = add nuw i32 %14, 1, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %17, metadata !3554, metadata !DIExpression()), !dbg !3555
  %18 = icmp eq i32 %17, %2, !dbg !3568
  br i1 %18, label %19, label %13, !dbg !3569, !llvm.loop !3570

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !3555
  ret i32 %20, !dbg !3572
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3573 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3575, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i8* %1, metadata !3576, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 %2, metadata !3577, metadata !DIExpression()), !dbg !3582
  %5 = bitcast i32* %4 to i8*, !dbg !3583
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3583
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3584
  br i1 %6, label %7, label %24, !dbg !3586

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !3587
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !3589
  br i1 %10, label %24, label %11, !dbg !3589

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !3590
  %13 = load i8, i8* %12, align 4, !dbg !3590, !range !3380
  %14 = icmp eq i8 %13, 0, !dbg !3590
  br i1 %14, label %24, label %15, !dbg !3592

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3593, !range !3389
  call void @llvm.dbg.value(metadata i32* %4, metadata !3578, metadata !DIExpression(DW_OP_deref)), !dbg !3582
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !3594
  %17 = load i32, i32* %4, align 4, !dbg !3595
  call void @llvm.dbg.value(metadata i32 %17, metadata !3578, metadata !DIExpression()), !dbg !3582
  %18 = icmp ult i32 %17, %2, !dbg !3597
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !3579, metadata !DIExpression()), !dbg !3582
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #12, !dbg !3598
  %20 = load i32, i32* %4, align 4, !dbg !3599
  call void @llvm.dbg.value(metadata i32 %20, metadata !3578, metadata !DIExpression()), !dbg !3582
  %21 = icmp eq i32 %19, %20, !dbg !3601
  br i1 %21, label %22, label %24, !dbg !3602

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #11, !dbg !3603, !range !3605
  call void @llvm.dbg.value(metadata i32 %23, metadata !3580, metadata !DIExpression()), !dbg !3582
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #12, !dbg !3606
  br label %24, !dbg !3607

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !3582
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3608
  ret i32 %25, !dbg !3608
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !3609 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3613, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i1 %1, metadata !3614, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3616
  %3 = icmp eq i32 %0, 0, !dbg !3617
  %4 = select i1 %1, i32 15, i32 14, !dbg !3619
  %5 = select i1 %1, i32 17, i32 16, !dbg !3619
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !3619
  call void @llvm.dbg.value(metadata i32 %6, metadata !3615, metadata !DIExpression()), !dbg !3616
  ret i32 %6, !dbg !3620
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !3621 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3625, metadata !DIExpression()), !dbg !3627
  %2 = icmp eq i32 %0, 0, !dbg !3628
  %3 = icmp eq i32 %0, 1, !dbg !3628
  %4 = select i1 %3, i32 1, i32 2, !dbg !3628
  %5 = select i1 %2, i32 0, i32 %4, !dbg !3628
  call void @llvm.dbg.value(metadata i32 %5, metadata !3626, metadata !DIExpression()), !dbg !3627
  %6 = icmp ult i32 %5, 2, !dbg !3629
  br i1 %6, label %7, label %9, !dbg !3631

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #12, !dbg !3632
  br label %9, !dbg !3634

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !3635
  ret i8 %10, !dbg !3636
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !3637 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3641, metadata !DIExpression()), !dbg !3643
  %2 = icmp eq i32 %0, 0, !dbg !3644
  %3 = icmp eq i32 %0, 1, !dbg !3644
  %4 = select i1 %3, i32 1, i32 2, !dbg !3644
  %5 = select i1 %2, i32 0, i32 %4, !dbg !3644
  call void @llvm.dbg.value(metadata i32 %5, metadata !3642, metadata !DIExpression()), !dbg !3643
  %6 = icmp ult i32 %5, 2, !dbg !3645
  br i1 %6, label %7, label %9, !dbg !3647

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #12, !dbg !3648
  br label %9, !dbg !3650

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !3651
  ret i32 %10, !dbg !3652
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3653 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3657, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i8* %1, metadata !3658, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 %2, metadata !3659, metadata !DIExpression()), !dbg !3662
  %4 = icmp eq i32 %0, 0, !dbg !3663
  %5 = icmp eq i32 %0, 1, !dbg !3663
  %6 = select i1 %5, i32 1, i32 2, !dbg !3663
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3663
  call void @llvm.dbg.value(metadata i32 %7, metadata !3660, metadata !DIExpression()), !dbg !3662
  %8 = icmp eq i8* %1, null, !dbg !3664
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !3666
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3666
  call void @llvm.dbg.value(metadata i32 0, metadata !3661, metadata !DIExpression()), !dbg !3662
  br i1 %12, label %19, label %13, !dbg !3666

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3661, metadata !DIExpression()), !dbg !3662
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #12, !dbg !3667
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !3673
  store i8 %15, i8* %16, align 1, !dbg !3674
  %17 = add nuw i32 %14, 1, !dbg !3675
  call void @llvm.dbg.value(metadata i32 %17, metadata !3661, metadata !DIExpression()), !dbg !3662
  %18 = icmp eq i32 %17, %2, !dbg !3676
  br i1 %18, label %19, label %13, !dbg !3677, !llvm.loop !3678

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !3662
  ret i32 %20, !dbg !3680
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3681 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3683, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i8* %1, metadata !3684, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 %2, metadata !3685, metadata !DIExpression()), !dbg !3689
  %5 = bitcast i32* %4 to i8*, !dbg !3690
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3690
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3691
  br i1 %6, label %7, label %20, !dbg !3693

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !3694
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !3696
  br i1 %10, label %20, label %11, !dbg !3696

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3697, !range !3389
  call void @llvm.dbg.value(metadata i32* %4, metadata !3686, metadata !DIExpression(DW_OP_deref)), !dbg !3689
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #12, !dbg !3698
  %13 = load i32, i32* %4, align 4, !dbg !3699
  call void @llvm.dbg.value(metadata i32 %13, metadata !3686, metadata !DIExpression()), !dbg !3689
  %14 = icmp ult i32 %13, %2, !dbg !3701
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !3687, metadata !DIExpression()), !dbg !3689
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #12, !dbg !3702
  %16 = load i32, i32* %4, align 4, !dbg !3703
  call void @llvm.dbg.value(metadata i32 %16, metadata !3686, metadata !DIExpression()), !dbg !3689
  %17 = icmp eq i32 %15, %16, !dbg !3705
  br i1 %17, label %18, label %20, !dbg !3706

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3707, !range !3605
  call void @llvm.dbg.value(metadata i32 %19, metadata !3688, metadata !DIExpression()), !dbg !3689
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #12, !dbg !3709
  br label %20, !dbg !3710

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !3689
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3711
  ret i32 %21, !dbg !3711
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !3712 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3714, metadata !DIExpression()), !dbg !3716
  %3 = bitcast i32* %2 to i8*, !dbg !3717
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3717
  call void @llvm.dbg.value(metadata i32 0, metadata !3715, metadata !DIExpression()), !dbg !3716
  store i32 0, i32* %2, align 4, !dbg !3718
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3719
  br i1 %4, label %5, label %8, !dbg !3721

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3722, !range !3389
  call void @llvm.dbg.value(metadata i32* %2, metadata !3715, metadata !DIExpression(DW_OP_deref)), !dbg !3716
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #12, !dbg !3723
  %7 = load i32, i32* %2, align 4, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %7, metadata !3715, metadata !DIExpression()), !dbg !3716
  br label %8, !dbg !3725

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3716
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3726
  ret i32 %9, !dbg !3726
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !3727 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3729, metadata !DIExpression()), !dbg !3731
  %3 = bitcast i32* %2 to i8*, !dbg !3732
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3732
  call void @llvm.dbg.value(metadata i32 0, metadata !3730, metadata !DIExpression()), !dbg !3731
  store i32 0, i32* %2, align 4, !dbg !3733
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3734
  br i1 %4, label %5, label %8, !dbg !3736

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3737, !range !3389
  call void @llvm.dbg.value(metadata i32* %2, metadata !3730, metadata !DIExpression(DW_OP_deref)), !dbg !3731
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #12, !dbg !3738
  %7 = load i32, i32* %2, align 4, !dbg !3739
  call void @llvm.dbg.value(metadata i32 %7, metadata !3730, metadata !DIExpression()), !dbg !3731
  br label %8, !dbg !3740

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3731
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3741
  ret i32 %9, !dbg !3741
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !3742 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3746, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !3747, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i8* %2, metadata !3748, metadata !DIExpression()), !dbg !3750
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3751
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !3753
  br i1 %6, label %7, label %18, !dbg !3753

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !3754
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !3755
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !3756
  store i8* %2, i8** %9, align 4, !dbg !3757
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !3758
  store i8 1, i8* %10, align 4, !dbg !3759
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3760
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #11, !dbg !3761
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !3762
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !3763
  %13 = icmp eq i32 %11, 0, !dbg !3764
  br i1 %13, label %14, label %15, !dbg !3766

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #12, !dbg !3767
  br label %16, !dbg !3769

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #12, !dbg !3770
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #11, !dbg !3772, !range !3605
  call void @llvm.dbg.value(metadata i32 %17, metadata !3749, metadata !DIExpression()), !dbg !3750
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #12, !dbg !3773
  br label %18, !dbg !3774

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !3750
  ret i32 %19, !dbg !3775
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !339, metadata !DIExpression()), !dbg !3776
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !3777
  %3 = load void ()*, void ()** %2, align 4, !dbg !3777
  ret void ()* %3, !dbg !3778
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !3779 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !3785, !range !3380
  %2 = icmp eq i8 %1, 0, !dbg !3785
  br i1 %2, label %8, label %3, !dbg !3786

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !3787
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !3789
  br i1 %5, label %8, label %6, !dbg !3790

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !3791
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !3793
  br label %8, !dbg !3794

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #11, !dbg !3795, !range !3389
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #11, !dbg !3796
  ret void, !dbg !3797
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !3798 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !3803, !range !3380
  %2 = icmp eq i8 %1, 0, !dbg !3803
  br i1 %2, label %8, label %3, !dbg !3804

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !3805
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !3807
  br i1 %5, label %8, label %6, !dbg !3808

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !3809
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !3811
  br label %8, !dbg !3812

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #11, !dbg !3813, !range !3389
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #11, !dbg !3814
  ret void, !dbg !3815
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !3816 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i1 %1, metadata !3821, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3827
  %5 = bitcast i32* %3 to i8*, !dbg !3828
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3828
  %6 = bitcast i32* %4 to i8*, !dbg !3828
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !3828
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !3824, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !3827
  br i1 %1, label %7, label %12, !dbg !3829

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !3824, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !3827
  call void @llvm.dbg.value(metadata i32* %3, metadata !3822, metadata !DIExpression(DW_OP_deref)), !dbg !3827
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #12, !dbg !3830
  %8 = load i32, i32* %3, align 4, !dbg !3833
  call void @llvm.dbg.value(metadata i32 %8, metadata !3822, metadata !DIExpression()), !dbg !3827
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !3835
  %10 = load i32, i32* %9, align 4, !dbg !3835
  %11 = icmp ult i32 %8, %10, !dbg !3836
  br i1 %11, label %22, label %20, !dbg !3837

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !3823, metadata !DIExpression(DW_OP_deref)), !dbg !3827
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !3838
  %13 = load i32, i32* %4, align 4, !dbg !3840
  call void @llvm.dbg.value(metadata i32 %13, metadata !3823, metadata !DIExpression()), !dbg !3827
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !3842
  %15 = load i32, i32* %14, align 4, !dbg !3842
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !3843
  %17 = load i32, i32* %16, align 4, !dbg !3843
  %18 = sub i32 %15, %17, !dbg !3844
  %19 = icmp ult i32 %13, %18, !dbg !3845
  br i1 %19, label %22, label %20, !dbg !3846

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #11, !dbg !3847, !range !3605
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #12, !dbg !3847
  br label %22, !dbg !3848

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !3848
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3848
  ret void, !dbg !3848
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !3849 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !3854, !range !3380
  %2 = icmp eq i8 %1, 0, !dbg !3854
  br i1 %2, label %11, label %3, !dbg !3855

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #11, !dbg !3856
  %5 = icmp eq i32 %4, 0, !dbg !3857
  br i1 %5, label %11, label %6, !dbg !3858

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !3859
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !3861
  br i1 %8, label %11, label %9, !dbg !3862

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !3863
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !3865
  br label %11, !dbg !3866

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #11, !dbg !3867, !range !3389
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3868
  ret void, !dbg !3869
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !3870 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !3875, !range !3380
  %2 = icmp eq i8 %1, 0, !dbg !3875
  br i1 %2, label %11, label %3, !dbg !3876

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #11, !dbg !3877
  %5 = icmp eq i32 %4, 0, !dbg !3878
  br i1 %5, label %11, label %6, !dbg !3879

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !3880
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !3882
  br i1 %8, label %11, label %9, !dbg !3883

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !3884
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !3886
  br label %11, !dbg !3887

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #11, !dbg !3888, !range !3389
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3889
  ret void, !dbg !3890
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3891 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3895, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %1, metadata !3896, metadata !DIExpression()), !dbg !3897
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3898
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !3900
  br i1 %5, label %6, label %10, !dbg !3900

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3901
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !3902
  store i32 %1, i32* %8, align 4, !dbg !3903
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #11, !dbg !3904
  br label %10, !dbg !3905

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !3897
  ret i32 %11, !dbg !3906
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !3907 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3913, metadata !DIExpression()), !dbg !3915
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !3914, metadata !DIExpression()), !dbg !3915
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3916
  br i1 %3, label %4, label %28, !dbg !3918

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #11, !dbg !3919
  br i1 %5, label %6, label %28, !dbg !3921

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !3922
  store i8 1, i8* %7, align 4, !dbg !3923
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !3924
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !3925
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !3926
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #12, !dbg !3927
  tail call void @DMA_Init() #12, !dbg !3928
  tail call void @DMA_Vfifo_init() #12, !dbg !3929
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3930
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !3931
  %14 = load i8*, i8** %13, align 4, !dbg !3931
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !3932
  %16 = load i32, i32* %15, align 4, !dbg !3932
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !3933
  %18 = load i32, i32* %17, align 4, !dbg !3933
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !3934
  %20 = load i32, i32* %19, align 4, !dbg !3934
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #11, !dbg !3935
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #12, !dbg !3936
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !3937
  %23 = load i8*, i8** %22, align 4, !dbg !3937
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !3938
  %25 = load i32, i32* %24, align 4, !dbg !3938
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !3939
  %27 = load i32, i32* %26, align 4, !dbg !3939
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #12, !dbg !3940
  br label %28, !dbg !3941

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !3915
  ret i32 %29, !dbg !3942
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #4 !dbg !3943 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !3947, metadata !DIExpression()), !dbg !3948
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !3949
  br i1 %2, label %27, label %3, !dbg !3951

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !3952
  %5 = load i8*, i8** %4, align 4, !dbg !3952
  %6 = icmp eq i8* %5, null, !dbg !3954
  br i1 %6, label %27, label %7, !dbg !3955

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !3956
  %9 = load i32, i32* %8, align 4, !dbg !3956
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !3958
  %11 = load i32, i32* %10, align 4, !dbg !3958
  %12 = icmp ult i32 %9, %11, !dbg !3959
  br i1 %12, label %27, label %13, !dbg !3960

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !3961
  %15 = load i32, i32* %14, align 4, !dbg !3961
  %16 = icmp ult i32 %9, %15, !dbg !3963
  br i1 %16, label %27, label %17, !dbg !3964

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !3965
  %19 = load i8*, i8** %18, align 4, !dbg !3965
  %20 = icmp eq i8* %19, null, !dbg !3967
  br i1 %20, label %27, label %21, !dbg !3968

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !3969
  %23 = load i32, i32* %22, align 4, !dbg !3969
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !3971
  %25 = load i32, i32* %24, align 4, !dbg !3971
  %26 = icmp uge i32 %23, %25, !dbg !3972
  br label %27, !dbg !3973

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !3948
  ret i1 %28, !dbg !3974
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !3975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3979, metadata !DIExpression()), !dbg !3981
  %2 = tail call i32 @top_mcu_freq_get() #12, !dbg !3982
  %3 = udiv i32 %2, 1000000, !dbg !3983
  call void @llvm.dbg.value(metadata i32 %3, metadata !3980, metadata !DIExpression()), !dbg !3981
  %4 = mul i32 %3, %0, !dbg !3984
  ret i32 %4, !dbg !3985
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3986 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3988, metadata !DIExpression()), !dbg !3990
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3991
  br i1 %2, label %3, label %8, !dbg !3993

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !3994
  %5 = icmp eq i32 %0, 1, !dbg !3994
  %6 = select i1 %5, i32 1, i32 2, !dbg !3994
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3994
  call void @llvm.dbg.value(metadata i32 %7, metadata !3989, metadata !DIExpression()), !dbg !3990
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #12, !dbg !3995
  br label %8, !dbg !3996

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3990
  ret i32 %9, !dbg !3997
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3998 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4002, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i8 %1, metadata !4003, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i8 %2, metadata !4004, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i8 %3, metadata !4005, metadata !DIExpression()), !dbg !4007
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !4008
  br i1 %5, label %6, label %11, !dbg !4010

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4011
  %8 = icmp eq i32 %0, 1, !dbg !4011
  %9 = select i1 %8, i32 1, i32 2, !dbg !4011
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4011
  call void @llvm.dbg.value(metadata i32 %10, metadata !4006, metadata !DIExpression()), !dbg !4007
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #12, !dbg !4012
  br label %11, !dbg !4013

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4007
  ret i32 %12, !dbg !4014
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4015 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4017, metadata !DIExpression()), !dbg !4019
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !4020
  br i1 %2, label %3, label %8, !dbg !4022

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4023
  %5 = icmp eq i32 %0, 1, !dbg !4023
  %6 = select i1 %5, i32 1, i32 2, !dbg !4023
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4023
  call void @llvm.dbg.value(metadata i32 %7, metadata !4018, metadata !DIExpression()), !dbg !4019
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #12, !dbg !4024
  br label %8, !dbg !4025

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4019
  ret i32 %9, !dbg !4026
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4027 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4031, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i32 %1, metadata !4032, metadata !DIExpression()), !dbg !4033
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !4034
  br i1 %3, label %4, label %8, !dbg !4036

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4037
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #11, !dbg !4039
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #12, !dbg !4039
  br label %8, !dbg !4040

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4033
  ret i32 %9, !dbg !4040
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !4041 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4045, metadata !DIExpression()), !dbg !4046
  %2 = trunc i32 %0 to i8, !dbg !4047
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #12, !dbg !4048
  ret i32 %0, !dbg !4049
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #10 !dbg !4050 {
  tail call fastcc void @SystemClock_Config() #11, !dbg !4051
  tail call void @SystemCoreClockUpdate() #12, !dbg !4052
  tail call fastcc void @prvSetupHardware() #11, !dbg !4053
  tail call void asm sideeffect "cpsie i", "~{memory}"() #13, !dbg !4054, !srcloc !4057
  tail call void asm sideeffect "cpsie f", "~{memory}"() #13, !dbg !4058, !srcloc !4061
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #12, !dbg !4062
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #12, !dbg !4063
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)) #12, !dbg !4064
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #12, !dbg !4065
  tail call fastcc void @gpio_configure_pull_state_example() #11, !dbg !4066
  br label %5, !dbg !4067

5:                                                ; preds = %0, %5
  br label %5, !dbg !4067, !llvm.loop !4068
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !4070 {
  tail call void @top_xtal_init() #12, !dbg !4071
  ret void, !dbg !4072
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !4073 {
  tail call fastcc void @log_uart_init() #11, !dbg !4074
  ret void, !dbg !4075
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc void @gpio_configure_pull_state_example() unnamed_addr #3 !dbg !4076 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = bitcast i32* %1 to i8*, !dbg !4082
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !4082
  %4 = bitcast i32* %2 to i8*, !dbg !4083
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #13, !dbg !4083
  %5 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #12, !dbg !4084
  %6 = tail call i32 @hal_gpio_init(i32 noundef 33) #12, !dbg !4085
  call void @llvm.dbg.value(metadata i32 %6, metadata !4080, metadata !DIExpression()), !dbg !4086
  %7 = icmp eq i32 %6, 0, !dbg !4087
  br i1 %7, label %11, label %8, !dbg !4089

8:                                                ; preds = %0
  %9 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #12, !dbg !4090
  %10 = tail call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4092
  br label %62, !dbg !4093

11:                                               ; preds = %0
  %12 = tail call i32 @hal_pinmux_set_function(i32 noundef 33, i8 noundef zeroext 8) #12, !dbg !4094
  call void @llvm.dbg.value(metadata i32 %12, metadata !4081, metadata !DIExpression()), !dbg !4086
  %13 = icmp eq i32 %12, 0, !dbg !4095
  br i1 %13, label %17, label %14, !dbg !4097

14:                                               ; preds = %11
  %15 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5.6, i32 0, i32 0)) #12, !dbg !4098
  %16 = tail call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4100
  br label %62, !dbg !4101

17:                                               ; preds = %11
  %18 = tail call i32 @hal_gpio_set_direction(i32 noundef 33, i32 noundef 0) #12, !dbg !4102
  call void @llvm.dbg.value(metadata i32 %18, metadata !4080, metadata !DIExpression()), !dbg !4086
  %19 = icmp eq i32 %18, 0, !dbg !4103
  br i1 %19, label %23, label %20, !dbg !4105

20:                                               ; preds = %17
  %21 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)) #12, !dbg !4106
  %22 = tail call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4108
  br label %62, !dbg !4109

23:                                               ; preds = %17
  %24 = tail call i32 @hal_gpio_pull_up(i32 noundef 33) #12, !dbg !4110
  call void @llvm.dbg.value(metadata i32 %24, metadata !4080, metadata !DIExpression()), !dbg !4086
  %25 = icmp eq i32 %24, 0, !dbg !4111
  br i1 %25, label %29, label %26, !dbg !4113

26:                                               ; preds = %23
  %27 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0)) #12, !dbg !4114
  %28 = tail call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4116
  br label %62, !dbg !4117

29:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32* %1, metadata !4078, metadata !DIExpression(DW_OP_deref)), !dbg !4086
  %30 = call i32 @hal_gpio_get_input(i32 noundef 33, i32* noundef nonnull %1) #12, !dbg !4118
  call void @llvm.dbg.value(metadata i32 %30, metadata !4080, metadata !DIExpression()), !dbg !4086
  %31 = icmp eq i32 %30, 0, !dbg !4119
  br i1 %31, label %35, label %32, !dbg !4121

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #12, !dbg !4122
  %34 = call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4124
  br label %62, !dbg !4125

35:                                               ; preds = %29
  %36 = call i32 @hal_gpio_pull_down(i32 noundef 33) #12, !dbg !4126
  call void @llvm.dbg.value(metadata i32 %36, metadata !4080, metadata !DIExpression()), !dbg !4086
  %37 = icmp eq i32 %36, 0, !dbg !4127
  br i1 %37, label %41, label %38, !dbg !4129

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #12, !dbg !4130
  %40 = call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4132
  br label %62, !dbg !4133

41:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32* %2, metadata !4079, metadata !DIExpression(DW_OP_deref)), !dbg !4086
  %42 = call i32 @hal_gpio_get_input(i32 noundef 33, i32* noundef nonnull %2) #12, !dbg !4134
  call void @llvm.dbg.value(metadata i32 %42, metadata !4080, metadata !DIExpression()), !dbg !4086
  %43 = icmp eq i32 %42, 0, !dbg !4135
  br i1 %43, label %47, label %44, !dbg !4137

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0)) #12, !dbg !4138
  %46 = call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4140
  br label %62, !dbg !4141

47:                                               ; preds = %41
  %48 = load i32, i32* %2, align 4, !dbg !4142
  call void @llvm.dbg.value(metadata i32 %48, metadata !4079, metadata !DIExpression()), !dbg !4086
  %49 = icmp eq i32 %48, 0, !dbg !4144
  %50 = load i32, i32* %1, align 4
  call void @llvm.dbg.value(metadata i32 %50, metadata !4078, metadata !DIExpression()), !dbg !4086
  %51 = icmp eq i32 %50, 1
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4145
  %53 = select i1 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0)
  %54 = call i32 (i8*, ...) @printf(i8* noundef %53) #12, !dbg !4146
  %55 = call i32 @hal_gpio_deinit(i32 noundef 33) #12, !dbg !4147
  call void @llvm.dbg.value(metadata i32 %55, metadata !4080, metadata !DIExpression()), !dbg !4086
  %56 = icmp eq i32 %55, 0, !dbg !4148
  br i1 %56, label %59, label %57, !dbg !4150

57:                                               ; preds = %47
  %58 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0)) #12, !dbg !4151
  br label %62, !dbg !4153

59:                                               ; preds = %47
  %60 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0)) #12, !dbg !4154
  %61 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0)) #12, !dbg !4155
  br label %62, !dbg !4156

62:                                               ; preds = %59, %57, %44, %38, %32, %26, %20, %14, %8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #13, !dbg !4156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !4156
  ret void, !dbg !4156
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #3 !dbg !4157 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4167
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13, !dbg !4167
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4159, metadata !DIExpression()), !dbg !4168
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #12, !dbg !4169
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #12, !dbg !4170
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #12, !dbg !4171
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #12, !dbg !4172
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4173
  store i32 9, i32* %7, align 4, !dbg !4174
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4175
  store i32 3, i32* %8, align 4, !dbg !4176
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4177
  store i32 0, i32* %9, align 4, !dbg !4178
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4179
  store i32 0, i32* %10, align 4, !dbg !4180
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #12, !dbg !4181
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13, !dbg !4182
  ret void, !dbg !4182
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !4183 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4185, metadata !DIExpression()), !dbg !4187
  %2 = add i32 %0, -1, !dbg !4188
  %3 = icmp ugt i32 %2, 16777215, !dbg !4190
  br i1 %3, label %8, label %4, !dbg !4191

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4192
  call void @llvm.dbg.value(metadata i32 %5, metadata !4186, metadata !DIExpression()), !dbg !4187
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4193
  %7 = and i32 %6, -4, !dbg !4193
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4193
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4194
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4195
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4196
  br label %8, !dbg !4197

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4187
  ret i32 %9, !dbg !4198
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !4199 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4200
  ret void, !dbg !4201
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !4202 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4203
  ret i32 %1, !dbg !4204
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !4205 {
  %1 = tail call i32 @top_mcu_freq_get() #12, !dbg !4206
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4207
  ret void, !dbg !4208
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !4209 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4210
  %2 = or i32 %1, 15728640, !dbg !4210
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4210
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4211
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4212
  %4 = or i32 %3, 458752, !dbg !4212
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4212
  ret void, !dbg !4213
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !4214 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4215
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4216
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4217
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4218
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !4219
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4220
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4221
  ret void, !dbg !4222
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !4223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4225, metadata !DIExpression()), !dbg !4226
  ret i32 0, !dbg !4227
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !4228 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4278, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !4279, metadata !DIExpression()), !dbg !4280
  ret i32 0, !dbg !4281
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !4282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4284, metadata !DIExpression()), !dbg !4285
  ret i32 1, !dbg !4286
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4291, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 %1, metadata !4292, metadata !DIExpression()), !dbg !4294
  call void @llvm.dbg.value(metadata i32 %2, metadata !4293, metadata !DIExpression()), !dbg !4294
  ret i32 0, !dbg !4295
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4300, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i32 %1, metadata !4301, metadata !DIExpression()), !dbg !4303
  call void @llvm.dbg.value(metadata i32 %2, metadata !4302, metadata !DIExpression()), !dbg !4303
  ret i32 -1, !dbg !4304
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4305 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4309, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i8* %1, metadata !4310, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i32 %2, metadata !4311, metadata !DIExpression()), !dbg !4312
  ret i32 0, !dbg !4313
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !4314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4316, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i8* %1, metadata !4317, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 %2, metadata !4318, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 0, metadata !4319, metadata !DIExpression()), !dbg !4320
  %4 = icmp sgt i32 %2, 0, !dbg !4321
  br i1 %4, label %5, label %14, !dbg !4324

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i8* %7, metadata !4317, metadata !DIExpression()), !dbg !4320
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !4325
  call void @llvm.dbg.value(metadata i8* %8, metadata !4317, metadata !DIExpression()), !dbg !4320
  %9 = load i8, i8* %7, align 1, !dbg !4327
  %10 = zext i8 %9 to i32, !dbg !4327
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #12, !dbg !4328
  %12 = add nuw nsw i32 %6, 1, !dbg !4329
  call void @llvm.dbg.value(metadata i32 %12, metadata !4319, metadata !DIExpression()), !dbg !4320
  %13 = icmp eq i32 %12, %2, !dbg !4321
  br i1 %13, label %14, label %5, !dbg !4324, !llvm.loop !4330

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !4332
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !457 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !660, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 %1, metadata !661, metadata !DIExpression()), !dbg !4333
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #13, !dbg !4334, !srcloc !4335
  call void @llvm.dbg.value(metadata i8* %3, metadata !663, metadata !DIExpression()), !dbg !4333
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !4336
  %5 = icmp eq i8* %4, null, !dbg !4338
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !4339
  call void @llvm.dbg.value(metadata i8* %6, metadata !662, metadata !DIExpression()), !dbg !4333
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !4340
  %8 = icmp ult i8* %3, %7, !dbg !4342
  %9 = xor i1 %8, true, !dbg !4343
  %10 = or i1 %5, %9, !dbg !4343
  br i1 %10, label %11, label %13, !dbg !4343

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !4344
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !4343
  br label %13, !dbg !4343

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !4344
  ret i8* %14, !dbg !4343
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #10 !dbg !4345 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4347, metadata !DIExpression()), !dbg !4348
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #12, !dbg !4349
  br label %3, !dbg !4350

3:                                                ; preds = %1, %3
  br label %3, !dbg !4350, !llvm.loop !4351
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4353 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4357, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i32 %1, metadata !4358, metadata !DIExpression()), !dbg !4359
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.16, i32 0, i32 0), i32 noundef %1) #12, !dbg !4360
  ret i32 -1, !dbg !4361
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !4362 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.17, i32 0, i32 0)) #12, !dbg !4367
  ret i32 0, !dbg !4368
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

!llvm.dbg.cu = !{!680, !684, !2, !765, !810, !67, !82, !813, !120, !815, !272, !881, !387, !655, !666}
!llvm.ident = !{!884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884, !884}
!llvm.module.flags = !{!885, !886, !887, !888, !889, !890, !891, !892, !893}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gpio_bakup_table", scope: !2, file: !3, line: 62, type: !53, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !52, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/low_hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!4 = !{!5, !37, !42}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 55, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!38 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!39 = !{!40, !41}
!40 = !DIEnumerator(name: "eDirection_IN", value: 0)
!41 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 1209, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!46 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !51, line: 116, baseType: !7)
!51 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!68 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!83 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!84 = !{!85, !91}
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 71, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "UART_PORT0", value: 0)
!89 = !DIEnumerator(name: "UART_PORT1", value: 1)
!90 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 129, baseType: !7, size: 32, elements: !93)
!92 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!121 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!122 = !{!123, !132}
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 152, baseType: !125, size: 32, elements: !126)
!124 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!128 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!129 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!130 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!131 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !133, line: 47, baseType: !125, size: 32, elements: !134)
!133 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!185 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!273 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!274 = !{!275, !283, !289, !305, !311, !315, !85, !91, !320}
!275 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !276, line: 345, baseType: !125, size: 32, elements: !277)
!276 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!279 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!280 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!281 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!282 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !284, line: 109, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!388 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpio_configure_pull_state/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!425 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!458 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
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
!656 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!657 = !{!463, !461}
!658 = !{!455}
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(name: "r", arg: 1, scope: !457, file: !458, line: 63, type: !464)
!661 = !DILocalVariable(name: "nbytes", arg: 2, scope: !457, file: !458, line: 63, type: !654)
!662 = !DILocalVariable(name: "prev_heap_end", scope: !457, file: !458, line: 67, type: !463)
!663 = !DILocalVariable(name: "stack", scope: !457, file: !458, line: 68, type: !463)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !666, file: !671, line: 4, type: !677, isLocal: false, isDefinition: true)
!666 = distinct !DICompileUnit(language: DW_LANG_C99, file: !667, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !668, splitDebugInlining: false, nameTableKind: None)
!667 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!668 = !{!664, !669, !675}
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !666, file: !671, line: 5, type: !672, isLocal: false, isDefinition: true)
!671 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 88, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 11)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !666, file: !671, line: 6, type: !672, isLocal: false, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 248, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 31)
!680 = distinct !DICompileUnit(language: DW_LANG_C99, file: !681, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !682, retainedTypes: !683, splitDebugInlining: false, nameTableKind: None)
!681 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!682 = !{!42}
!683 = !{!48, !50}
!684 = distinct !DICompileUnit(language: DW_LANG_C99, file: !685, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !686, retainedTypes: !764, splitDebugInlining: false, nameTableKind: None)
!685 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!686 = !{!687}
!687 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !688, line: 150, baseType: !7, size: 32, elements: !689)
!688 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!690 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!691 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!692 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!693 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!694 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!695 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!696 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!697 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!698 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!699 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!700 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!701 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!702 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!703 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!704 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!705 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!706 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!707 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!708 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!709 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!710 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!711 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!712 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!713 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!714 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!715 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!716 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!717 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!718 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!719 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!720 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!721 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!722 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!723 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!724 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!725 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!726 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!727 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!728 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!729 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!730 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!731 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!732 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!733 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!734 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!735 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!736 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!737 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!738 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!739 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!740 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!741 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!742 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!743 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!744 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!745 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!746 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!747 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!748 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!749 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!750 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!751 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!752 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!753 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!754 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!755 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!756 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!757 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!758 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!759 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!760 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!761 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!762 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!763 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!764 = !{!48, !72}
!765 = distinct !DICompileUnit(language: DW_LANG_C99, file: !766, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !767, splitDebugInlining: false, nameTableKind: None)
!766 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!767 = !{!768, !793}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !185, line: 418, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 395, size: 1120, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !770, file: !185, line: 397, baseType: !224, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !770, file: !185, line: 398, baseType: !74, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !770, file: !185, line: 399, baseType: !74, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !770, file: !185, line: 400, baseType: !74, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !770, file: !185, line: 401, baseType: !74, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !770, file: !185, line: 402, baseType: !74, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !770, file: !185, line: 403, baseType: !231, size: 96, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !770, file: !185, line: 404, baseType: !74, size: 32, offset: 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !770, file: !185, line: 405, baseType: !74, size: 32, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !770, file: !185, line: 406, baseType: !74, size: 32, offset: 352)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !770, file: !185, line: 407, baseType: !74, size: 32, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !770, file: !185, line: 408, baseType: !74, size: 32, offset: 416)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !770, file: !185, line: 409, baseType: !74, size: 32, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !770, file: !185, line: 410, baseType: !74, size: 32, offset: 480)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !770, file: !185, line: 411, baseType: !242, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !770, file: !185, line: 412, baseType: !224, size: 32, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !770, file: !185, line: 413, baseType: !224, size: 32, offset: 608)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !770, file: !185, line: 414, baseType: !248, size: 128, offset: 640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !770, file: !185, line: 415, baseType: !252, size: 160, offset: 768)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !770, file: !185, line: 416, baseType: !256, size: 160, offset: 928)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !770, file: !185, line: 417, baseType: !74, size: 32, offset: 1088)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !185, line: 378, baseType: !795)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 363, size: 28704, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !795, file: !185, line: 365, baseType: !189, size: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !795, file: !185, line: 366, baseType: !193, size: 768, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !795, file: !185, line: 367, baseType: !189, size: 256, offset: 1024)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !795, file: !185, line: 368, baseType: !193, size: 768, offset: 1280)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !795, file: !185, line: 369, baseType: !189, size: 256, offset: 2048)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !795, file: !185, line: 370, baseType: !193, size: 768, offset: 2304)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !795, file: !185, line: 371, baseType: !189, size: 256, offset: 3072)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !795, file: !185, line: 372, baseType: !193, size: 768, offset: 3328)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !795, file: !185, line: 373, baseType: !189, size: 256, offset: 4096)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !795, file: !185, line: 374, baseType: !204, size: 1792, offset: 4352)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !795, file: !185, line: 375, baseType: !208, size: 1920, offset: 6144)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !795, file: !185, line: 376, baseType: !215, size: 20608, offset: 8064)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !795, file: !185, line: 377, baseType: !74, size: 32, offset: 28672)
!810 = distinct !DICompileUnit(language: DW_LANG_C99, file: !811, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !812, splitDebugInlining: false, nameTableKind: None)
!811 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!812 = !{!5, !687}
!813 = distinct !DICompileUnit(language: DW_LANG_C99, file: !814, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!815 = distinct !DICompileUnit(language: DW_LANG_C99, file: !816, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !817, retainedTypes: !876, splitDebugInlining: false, nameTableKind: None)
!816 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!817 = !{!818, !825, !5, !856, !862, !866, !870, !37}
!818 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !819, line: 233, baseType: !125, size: 32, elements: !820)
!819 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!820 = !{!821, !822, !823, !824}
!821 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!822 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!823 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!824 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!825 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !284, line: 249, baseType: !7, size: 32, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855}
!827 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!828 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!829 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!830 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!831 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!832 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!833 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!834 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!835 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!836 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!837 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!838 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!839 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!840 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!841 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!842 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!843 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!844 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!845 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!846 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!847 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!848 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!849 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!850 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!851 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!852 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!853 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!854 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!855 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!856 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !819, line: 224, baseType: !125, size: 32, elements: !857)
!857 = !{!858, !859, !860, !861}
!858 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!859 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!860 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!861 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!862 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !819, line: 217, baseType: !7, size: 32, elements: !863)
!863 = !{!864, !865}
!864 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!865 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!866 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !819, line: 210, baseType: !7, size: 32, elements: !867)
!867 = !{!868, !869}
!868 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!869 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!870 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !819, line: 242, baseType: !7, size: 32, elements: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!873 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!874 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!875 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!876 = !{!877, !180, !878, !210, !879, !880}
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !6, line: 87, baseType: !5)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !819, line: 220, baseType: !862)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !819, line: 247, baseType: !870)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !38, line: 60, baseType: !37)
!881 = distinct !DICompileUnit(language: DW_LANG_C99, file: !882, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !883, splitDebugInlining: false, nameTableKind: None)
!882 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/gpio_configure_pull_state/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!883 = !{!283, !289, !305, !311, !315, !825, !862, !856, !818, !866}
!884 = !{!"Ubuntu clang version 14.0.6"}
!885 = !{i32 7, !"Dwarf Version", i32 2}
!886 = !{i32 2, !"Debug Info Version", i32 3}
!887 = !{i32 1, !"wchar_size", i32 4}
!888 = !{i32 1, !"min_enum_size", i32 4}
!889 = !{i32 1, !"branch-target-enforcement", i32 0}
!890 = !{i32 1, !"sign-return-address", i32 0}
!891 = !{i32 1, !"sign-return-address-all", i32 0}
!892 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!893 = !{i32 7, !"frame-pointer", i32 2}
!894 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !681, file: !681, line: 54, type: !895, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !898)
!895 = !DISubroutineType(types: !896)
!896 = !{!897, !72, !113}
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !51, line: 56, baseType: !125)
!898 = !{!899, !900, !901, !903}
!899 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !894, file: !681, line: 54, type: !72)
!900 = !DILocalVariable(name: "outEnable", arg: 2, scope: !894, file: !681, line: 54, type: !113)
!901 = !DILocalVariable(name: "no", scope: !894, file: !681, line: 57, type: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !51, line: 60, baseType: !112)
!903 = !DILocalVariable(name: "remainder", scope: !894, file: !681, line: 58, type: !902)
!904 = !DILocation(line: 0, scope: !894)
!905 = !DILocation(line: 59, column: 19, scope: !894)
!906 = !DILocation(line: 60, column: 17, scope: !894)
!907 = !DILocation(line: 61, column: 5, scope: !894)
!908 = !DILocation(line: 65, column: 27, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !681, line: 65, column: 17)
!910 = distinct !DILexicalBlock(scope: !894, file: !681, line: 61, column: 17)
!911 = !DILocation(line: 0, scope: !909)
!912 = !DILocation(line: 65, column: 17, scope: !910)
!913 = !DILocation(line: 66, column: 21, scope: !914)
!914 = distinct !DILexicalBlock(scope: !909, file: !681, line: 65, column: 33)
!915 = !DILocation(line: 67, column: 73, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !681, line: 66, column: 38)
!917 = distinct !DILexicalBlock(scope: !914, file: !681, line: 66, column: 21)
!918 = !DILocation(line: 67, column: 69, scope: !916)
!919 = !DILocation(line: 67, column: 66, scope: !916)
!920 = !DILocation(line: 68, column: 17, scope: !916)
!921 = !DILocation(line: 68, column: 28, scope: !917)
!922 = !DILocation(line: 69, column: 77, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !681, line: 68, column: 45)
!924 = distinct !DILexicalBlock(scope: !917, file: !681, line: 68, column: 28)
!925 = !DILocation(line: 70, column: 77, scope: !923)
!926 = !DILocation(line: 71, column: 17, scope: !923)
!927 = !DILocation(line: 72, column: 77, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !681, line: 71, column: 45)
!929 = distinct !DILexicalBlock(scope: !924, file: !681, line: 71, column: 28)
!930 = !DILocation(line: 73, column: 77, scope: !928)
!931 = !DILocation(line: 74, column: 17, scope: !928)
!932 = !DILocation(line: 75, column: 79, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !681, line: 74, column: 45)
!934 = distinct !DILexicalBlock(scope: !929, file: !681, line: 74, column: 28)
!935 = !DILocation(line: 76, column: 79, scope: !933)
!936 = !DILocation(line: 77, column: 17, scope: !933)
!937 = !DILocation(line: 78, column: 79, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !681, line: 77, column: 45)
!939 = distinct !DILexicalBlock(scope: !934, file: !681, line: 77, column: 28)
!940 = !DILocation(line: 79, column: 79, scope: !938)
!941 = !DILocation(line: 80, column: 17, scope: !938)
!942 = !DILocation(line: 81, column: 79, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !681, line: 80, column: 45)
!944 = distinct !DILexicalBlock(scope: !939, file: !681, line: 80, column: 28)
!945 = !DILocation(line: 82, column: 79, scope: !943)
!946 = !DILocation(line: 83, column: 17, scope: !943)
!947 = !DILocation(line: 85, column: 17, scope: !914)
!948 = !DILocation(line: 86, column: 13, scope: !914)
!949 = !DILocation(line: 88, column: 21, scope: !950)
!950 = distinct !DILexicalBlock(scope: !909, file: !681, line: 86, column: 20)
!951 = !DILocation(line: 89, column: 72, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !681, line: 88, column: 38)
!953 = distinct !DILexicalBlock(scope: !950, file: !681, line: 88, column: 21)
!954 = !DILocation(line: 89, column: 66, scope: !952)
!955 = !DILocation(line: 90, column: 17, scope: !952)
!956 = !DILocation(line: 90, column: 28, scope: !953)
!957 = !DILocation(line: 91, column: 77, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !681, line: 90, column: 45)
!959 = distinct !DILexicalBlock(scope: !953, file: !681, line: 90, column: 28)
!960 = !DILocation(line: 92, column: 17, scope: !958)
!961 = !DILocation(line: 93, column: 77, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !681, line: 92, column: 45)
!963 = distinct !DILexicalBlock(scope: !959, file: !681, line: 92, column: 28)
!964 = !DILocation(line: 94, column: 17, scope: !962)
!965 = !DILocation(line: 95, column: 79, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !681, line: 94, column: 45)
!967 = distinct !DILexicalBlock(scope: !963, file: !681, line: 94, column: 28)
!968 = !DILocation(line: 96, column: 17, scope: !966)
!969 = !DILocation(line: 97, column: 79, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !681, line: 96, column: 45)
!971 = distinct !DILexicalBlock(scope: !967, file: !681, line: 96, column: 28)
!972 = !DILocation(line: 98, column: 17, scope: !970)
!973 = !DILocation(line: 99, column: 79, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !681, line: 98, column: 45)
!975 = distinct !DILexicalBlock(scope: !971, file: !681, line: 98, column: 28)
!976 = !DILocation(line: 100, column: 17, scope: !974)
!977 = !DILocation(line: 103, column: 17, scope: !950)
!978 = !DILocation(line: 109, column: 27, scope: !979)
!979 = distinct !DILexicalBlock(scope: !910, file: !681, line: 109, column: 17)
!980 = !DILocation(line: 0, scope: !979)
!981 = !DILocation(line: 109, column: 17, scope: !910)
!982 = !DILocation(line: 110, column: 21, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !681, line: 109, column: 33)
!984 = !DILocation(line: 111, column: 73, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !681, line: 110, column: 36)
!986 = distinct !DILexicalBlock(scope: !983, file: !681, line: 110, column: 21)
!987 = !DILocation(line: 111, column: 69, scope: !985)
!988 = !DILocation(line: 111, column: 66, scope: !985)
!989 = !DILocation(line: 112, column: 17, scope: !985)
!990 = !DILocation(line: 113, column: 79, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !681, line: 112, column: 24)
!992 = !DILocation(line: 114, column: 79, scope: !991)
!993 = !DILocation(line: 117, column: 17, scope: !983)
!994 = !DILocation(line: 118, column: 13, scope: !983)
!995 = !DILocation(line: 120, column: 21, scope: !996)
!996 = distinct !DILexicalBlock(scope: !979, file: !681, line: 118, column: 20)
!997 = !DILocation(line: 121, column: 72, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !681, line: 120, column: 36)
!999 = distinct !DILexicalBlock(scope: !996, file: !681, line: 120, column: 21)
!1000 = !DILocation(line: 121, column: 66, scope: !998)
!1001 = !DILocation(line: 122, column: 17, scope: !998)
!1002 = !DILocation(line: 123, column: 79, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !681, line: 122, column: 24)
!1004 = !DILocation(line: 126, column: 17, scope: !996)
!1005 = !DILocation(line: 133, column: 1, scope: !894)
!1006 = distinct !DISubprogram(name: "halGPO_Write", scope: !681, file: !681, line: 136, type: !895, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1007)
!1007 = !{!1008, !1009, !1010, !1011}
!1008 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1006, file: !681, line: 136, type: !72)
!1009 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1006, file: !681, line: 136, type: !113)
!1010 = !DILocalVariable(name: "no", scope: !1006, file: !681, line: 138, type: !902)
!1011 = !DILocalVariable(name: "remainder", scope: !1006, file: !681, line: 139, type: !902)
!1012 = !DILocation(line: 0, scope: !1006)
!1013 = !DILocation(line: 140, column: 19, scope: !1006)
!1014 = !DILocation(line: 141, column: 17, scope: !1006)
!1015 = !DILocation(line: 142, column: 5, scope: !1006)
!1016 = !DILocation(line: 145, column: 17, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !681, line: 145, column: 17)
!1018 = distinct !DILexicalBlock(scope: !1006, file: !681, line: 142, column: 17)
!1019 = !DILocation(line: 0, scope: !1017)
!1020 = !DILocation(line: 145, column: 17, scope: !1018)
!1021 = !DILocation(line: 146, column: 17, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !681, line: 145, column: 29)
!1023 = !DILocation(line: 147, column: 13, scope: !1022)
!1024 = !DILocation(line: 148, column: 17, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1017, file: !681, line: 147, column: 20)
!1026 = !DILocation(line: 153, column: 17, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !681, line: 153, column: 17)
!1028 = !DILocation(line: 0, scope: !1027)
!1029 = !DILocation(line: 153, column: 17, scope: !1018)
!1030 = !DILocation(line: 154, column: 17, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !681, line: 153, column: 29)
!1032 = !DILocation(line: 155, column: 13, scope: !1031)
!1033 = !DILocation(line: 156, column: 17, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1027, file: !681, line: 155, column: 20)
!1035 = !DILocation(line: 163, column: 1, scope: !1006)
!1036 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !681, file: !681, line: 169, type: !1037, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1039)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!113, !72}
!1039 = !{!1040, !1041, !1042, !1043}
!1040 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1036, file: !681, line: 169, type: !72)
!1041 = !DILocalVariable(name: "no", scope: !1036, file: !681, line: 171, type: !902)
!1042 = !DILocalVariable(name: "remainder", scope: !1036, file: !681, line: 172, type: !902)
!1043 = !DILocalVariable(name: "dout", scope: !1036, file: !681, line: 175, type: !113)
!1044 = !DILocation(line: 0, scope: !1036)
!1045 = !DILocation(line: 173, column: 19, scope: !1036)
!1046 = !DILocation(line: 174, column: 17, scope: !1036)
!1047 = !DILocation(line: 177, column: 5, scope: !1036)
!1048 = !DILocation(line: 183, column: 13, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1036, file: !681, line: 177, column: 17)
!1050 = !DILocation(line: 0, scope: !1049)
!1051 = !DILocation(line: 187, column: 5, scope: !1036)
!1052 = !DILocation(line: 188, column: 1, scope: !1036)
!1053 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !681, file: !681, line: 189, type: !1037, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1054)
!1054 = !{!1055, !1056, !1057, !1058}
!1055 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1053, file: !681, line: 189, type: !72)
!1056 = !DILocalVariable(name: "no", scope: !1053, file: !681, line: 191, type: !902)
!1057 = !DILocalVariable(name: "remainder", scope: !1053, file: !681, line: 192, type: !902)
!1058 = !DILocalVariable(name: "din", scope: !1053, file: !681, line: 195, type: !113)
!1059 = !DILocation(line: 0, scope: !1053)
!1060 = !DILocation(line: 193, column: 19, scope: !1053)
!1061 = !DILocation(line: 194, column: 17, scope: !1053)
!1062 = !DILocation(line: 196, column: 5, scope: !1053)
!1063 = !DILocation(line: 203, column: 13, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1053, file: !681, line: 196, column: 17)
!1065 = !DILocation(line: 0, scope: !1064)
!1066 = !DILocation(line: 208, column: 5, scope: !1053)
!1067 = !DILocation(line: 209, column: 1, scope: !1053)
!1068 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !681, file: !681, line: 210, type: !1037, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1069)
!1069 = !{!1070, !1071, !1072, !1073}
!1070 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1068, file: !681, line: 210, type: !72)
!1071 = !DILocalVariable(name: "no", scope: !1068, file: !681, line: 212, type: !902)
!1072 = !DILocalVariable(name: "remainder", scope: !1068, file: !681, line: 213, type: !902)
!1073 = !DILocalVariable(name: "outEnable", scope: !1068, file: !681, line: 216, type: !113)
!1074 = !DILocation(line: 0, scope: !1068)
!1075 = !DILocation(line: 214, column: 19, scope: !1068)
!1076 = !DILocation(line: 215, column: 17, scope: !1068)
!1077 = !DILocation(line: 218, column: 5, scope: !1068)
!1078 = !DILocation(line: 224, column: 13, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1068, file: !681, line: 218, column: 17)
!1080 = !DILocation(line: 0, scope: !1079)
!1081 = !DILocation(line: 228, column: 5, scope: !1068)
!1082 = !DILocation(line: 229, column: 1, scope: !1068)
!1083 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !681, file: !681, line: 232, type: !1084, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!897, !72}
!1086 = !{!1087, !1088, !1089}
!1087 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1083, file: !681, line: 232, type: !72)
!1088 = !DILocalVariable(name: "no", scope: !1083, file: !681, line: 234, type: !902)
!1089 = !DILocalVariable(name: "remainder", scope: !1083, file: !681, line: 235, type: !902)
!1090 = !DILocation(line: 0, scope: !1083)
!1091 = !DILocation(line: 236, column: 19, scope: !1083)
!1092 = !DILocation(line: 237, column: 17, scope: !1083)
!1093 = !DILocation(line: 238, column: 5, scope: !1083)
!1094 = !DILocation(line: 239, column: 5, scope: !1083)
!1095 = !DILocation(line: 241, column: 27, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !681, line: 241, column: 17)
!1097 = distinct !DILexicalBlock(scope: !1083, file: !681, line: 239, column: 17)
!1098 = !DILocation(line: 241, column: 17, scope: !1097)
!1099 = !DILocation(line: 241, column: 17, scope: !1096)
!1100 = !DILocation(line: 242, column: 17, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !681, line: 241, column: 34)
!1102 = !DILocation(line: 243, column: 13, scope: !1101)
!1103 = !DILocation(line: 243, column: 24, scope: !1096)
!1104 = !DILocation(line: 244, column: 73, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !681, line: 243, column: 41)
!1106 = distinct !DILexicalBlock(scope: !1096, file: !681, line: 243, column: 24)
!1107 = !DILocation(line: 245, column: 73, scope: !1105)
!1108 = !DILocation(line: 246, column: 13, scope: !1105)
!1109 = !DILocation(line: 247, column: 73, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !681, line: 246, column: 41)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !681, line: 246, column: 24)
!1112 = !DILocation(line: 248, column: 73, scope: !1110)
!1113 = !DILocation(line: 249, column: 13, scope: !1110)
!1114 = !DILocation(line: 250, column: 75, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !681, line: 249, column: 41)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !681, line: 249, column: 24)
!1117 = !DILocation(line: 251, column: 75, scope: !1115)
!1118 = !DILocation(line: 252, column: 13, scope: !1115)
!1119 = !DILocation(line: 253, column: 75, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !681, line: 252, column: 41)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !681, line: 252, column: 24)
!1122 = !DILocation(line: 254, column: 75, scope: !1120)
!1123 = !DILocation(line: 255, column: 13, scope: !1120)
!1124 = !DILocation(line: 256, column: 75, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !681, line: 255, column: 41)
!1126 = distinct !DILexicalBlock(scope: !1121, file: !681, line: 255, column: 24)
!1127 = !DILocation(line: 257, column: 75, scope: !1125)
!1128 = !DILocation(line: 258, column: 13, scope: !1125)
!1129 = !DILocation(line: 261, column: 18, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1097, file: !681, line: 261, column: 17)
!1131 = !DILocation(line: 261, column: 17, scope: !1097)
!1132 = !DILocation(line: 262, column: 75, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1130, file: !681, line: 261, column: 29)
!1134 = !DILocation(line: 263, column: 75, scope: !1133)
!1135 = !DILocation(line: 264, column: 13, scope: !1133)
!1136 = !DILocation(line: 265, column: 17, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !681, line: 264, column: 20)
!1138 = !DILocation(line: 272, column: 1, scope: !1083)
!1139 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !681, file: !681, line: 359, type: !1084, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1140)
!1140 = !{!1141, !1142, !1143}
!1141 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1139, file: !681, line: 359, type: !72)
!1142 = !DILocalVariable(name: "no", scope: !1139, file: !681, line: 362, type: !902)
!1143 = !DILocalVariable(name: "remainder", scope: !1139, file: !681, line: 363, type: !902)
!1144 = !DILocation(line: 0, scope: !1139)
!1145 = !DILocation(line: 364, column: 19, scope: !1139)
!1146 = !DILocation(line: 365, column: 17, scope: !1139)
!1147 = !DILocation(line: 367, column: 5, scope: !1139)
!1148 = !DILocation(line: 369, column: 27, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !681, line: 369, column: 17)
!1150 = distinct !DILexicalBlock(scope: !1139, file: !681, line: 367, column: 17)
!1151 = !DILocation(line: 369, column: 17, scope: !1150)
!1152 = !DILocation(line: 369, column: 17, scope: !1149)
!1153 = !DILocation(line: 370, column: 17, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !681, line: 369, column: 34)
!1155 = !DILocation(line: 371, column: 13, scope: !1154)
!1156 = !DILocation(line: 371, column: 24, scope: !1149)
!1157 = !DILocation(line: 372, column: 73, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !681, line: 371, column: 41)
!1159 = distinct !DILexicalBlock(scope: !1149, file: !681, line: 371, column: 24)
!1160 = !DILocation(line: 373, column: 73, scope: !1158)
!1161 = !DILocation(line: 374, column: 13, scope: !1158)
!1162 = !DILocation(line: 375, column: 73, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !681, line: 374, column: 41)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !681, line: 374, column: 24)
!1165 = !DILocation(line: 376, column: 73, scope: !1163)
!1166 = !DILocation(line: 377, column: 13, scope: !1163)
!1167 = !DILocation(line: 378, column: 75, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !681, line: 377, column: 41)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !681, line: 377, column: 24)
!1170 = !DILocation(line: 379, column: 75, scope: !1168)
!1171 = !DILocation(line: 380, column: 13, scope: !1168)
!1172 = !DILocation(line: 381, column: 75, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !681, line: 380, column: 41)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !681, line: 380, column: 24)
!1175 = !DILocation(line: 382, column: 75, scope: !1173)
!1176 = !DILocation(line: 383, column: 13, scope: !1173)
!1177 = !DILocation(line: 384, column: 75, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !681, line: 383, column: 41)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !681, line: 383, column: 24)
!1180 = !DILocation(line: 385, column: 75, scope: !1178)
!1181 = !DILocation(line: 386, column: 13, scope: !1178)
!1182 = !DILocation(line: 389, column: 18, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1150, file: !681, line: 389, column: 17)
!1184 = !DILocation(line: 389, column: 17, scope: !1150)
!1185 = !DILocation(line: 390, column: 75, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !681, line: 389, column: 29)
!1187 = !DILocation(line: 391, column: 75, scope: !1186)
!1188 = !DILocation(line: 392, column: 13, scope: !1186)
!1189 = !DILocation(line: 393, column: 17, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1183, file: !681, line: 392, column: 20)
!1191 = !DILocation(line: 401, column: 1, scope: !1139)
!1192 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !681, file: !681, line: 274, type: !1084, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1192, file: !681, line: 274, type: !72)
!1195 = !DILocalVariable(name: "no", scope: !1192, file: !681, line: 276, type: !902)
!1196 = !DILocalVariable(name: "remainder", scope: !1192, file: !681, line: 277, type: !902)
!1197 = !DILocation(line: 0, scope: !1192)
!1198 = !DILocation(line: 278, column: 19, scope: !1192)
!1199 = !DILocation(line: 279, column: 17, scope: !1192)
!1200 = !DILocation(line: 281, column: 5, scope: !1192)
!1201 = !DILocation(line: 283, column: 27, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !681, line: 283, column: 17)
!1203 = distinct !DILexicalBlock(scope: !1192, file: !681, line: 281, column: 17)
!1204 = !DILocation(line: 283, column: 17, scope: !1203)
!1205 = !DILocation(line: 283, column: 17, scope: !1202)
!1206 = !DILocation(line: 284, column: 17, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !681, line: 283, column: 34)
!1208 = !DILocation(line: 285, column: 13, scope: !1207)
!1209 = !DILocation(line: 285, column: 24, scope: !1202)
!1210 = !DILocation(line: 286, column: 73, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !681, line: 285, column: 41)
!1212 = distinct !DILexicalBlock(scope: !1202, file: !681, line: 285, column: 24)
!1213 = !DILocation(line: 287, column: 73, scope: !1211)
!1214 = !DILocation(line: 288, column: 13, scope: !1211)
!1215 = !DILocation(line: 289, column: 73, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !681, line: 288, column: 41)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !681, line: 288, column: 24)
!1218 = !DILocation(line: 290, column: 73, scope: !1216)
!1219 = !DILocation(line: 291, column: 13, scope: !1216)
!1220 = !DILocation(line: 292, column: 75, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !681, line: 291, column: 41)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !681, line: 291, column: 24)
!1223 = !DILocation(line: 293, column: 75, scope: !1221)
!1224 = !DILocation(line: 294, column: 13, scope: !1221)
!1225 = !DILocation(line: 295, column: 75, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !681, line: 294, column: 41)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !681, line: 294, column: 24)
!1228 = !DILocation(line: 296, column: 75, scope: !1226)
!1229 = !DILocation(line: 297, column: 13, scope: !1226)
!1230 = !DILocation(line: 298, column: 75, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !681, line: 297, column: 41)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !681, line: 297, column: 24)
!1233 = !DILocation(line: 299, column: 75, scope: !1231)
!1234 = !DILocation(line: 300, column: 13, scope: !1231)
!1235 = !DILocation(line: 303, column: 18, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1203, file: !681, line: 303, column: 17)
!1237 = !DILocation(line: 303, column: 17, scope: !1203)
!1238 = !DILocation(line: 304, column: 75, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !681, line: 303, column: 29)
!1240 = !DILocation(line: 305, column: 75, scope: !1239)
!1241 = !DILocation(line: 306, column: 13, scope: !1239)
!1242 = !DILocation(line: 307, column: 17, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !681, line: 306, column: 20)
!1244 = !DILocation(line: 314, column: 1, scope: !1192)
!1245 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !681, file: !681, line: 316, type: !1084, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1246)
!1246 = !{!1247, !1248, !1249}
!1247 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1245, file: !681, line: 316, type: !72)
!1248 = !DILocalVariable(name: "no", scope: !1245, file: !681, line: 318, type: !902)
!1249 = !DILocalVariable(name: "remainder", scope: !1245, file: !681, line: 319, type: !902)
!1250 = !DILocation(line: 0, scope: !1245)
!1251 = !DILocation(line: 320, column: 19, scope: !1245)
!1252 = !DILocation(line: 321, column: 17, scope: !1245)
!1253 = !DILocation(line: 322, column: 5, scope: !1245)
!1254 = !DILocation(line: 323, column: 5, scope: !1245)
!1255 = !DILocation(line: 325, column: 27, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !681, line: 325, column: 17)
!1257 = distinct !DILexicalBlock(scope: !1245, file: !681, line: 323, column: 17)
!1258 = !DILocation(line: 325, column: 17, scope: !1257)
!1259 = !DILocation(line: 325, column: 17, scope: !1256)
!1260 = !DILocation(line: 326, column: 17, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !681, line: 325, column: 34)
!1262 = !DILocation(line: 327, column: 13, scope: !1261)
!1263 = !DILocation(line: 327, column: 24, scope: !1256)
!1264 = !DILocation(line: 328, column: 73, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !681, line: 327, column: 41)
!1266 = distinct !DILexicalBlock(scope: !1256, file: !681, line: 327, column: 24)
!1267 = !DILocation(line: 329, column: 73, scope: !1265)
!1268 = !DILocation(line: 330, column: 13, scope: !1265)
!1269 = !DILocation(line: 331, column: 73, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !681, line: 330, column: 41)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !681, line: 330, column: 24)
!1272 = !DILocation(line: 332, column: 73, scope: !1270)
!1273 = !DILocation(line: 333, column: 13, scope: !1270)
!1274 = !DILocation(line: 334, column: 75, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !681, line: 333, column: 41)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !681, line: 333, column: 24)
!1277 = !DILocation(line: 335, column: 75, scope: !1275)
!1278 = !DILocation(line: 336, column: 13, scope: !1275)
!1279 = !DILocation(line: 337, column: 75, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !681, line: 336, column: 41)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !681, line: 336, column: 24)
!1282 = !DILocation(line: 338, column: 75, scope: !1280)
!1283 = !DILocation(line: 339, column: 13, scope: !1280)
!1284 = !DILocation(line: 340, column: 75, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !681, line: 339, column: 41)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !681, line: 339, column: 24)
!1287 = !DILocation(line: 341, column: 75, scope: !1285)
!1288 = !DILocation(line: 342, column: 13, scope: !1285)
!1289 = !DILocation(line: 345, column: 18, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1257, file: !681, line: 345, column: 17)
!1291 = !DILocation(line: 345, column: 17, scope: !1257)
!1292 = !DILocation(line: 346, column: 75, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !681, line: 345, column: 29)
!1294 = !DILocation(line: 347, column: 75, scope: !1293)
!1295 = !DILocation(line: 348, column: 13, scope: !1293)
!1296 = !DILocation(line: 349, column: 17, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !681, line: 348, column: 20)
!1298 = !DILocation(line: 357, column: 1, scope: !1245)
!1299 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !681, file: !681, line: 404, type: !895, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1300)
!1300 = !{!1301, !1302, !1303, !1304}
!1301 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1299, file: !681, line: 404, type: !72)
!1302 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1299, file: !681, line: 404, type: !113)
!1303 = !DILocalVariable(name: "no", scope: !1299, file: !681, line: 406, type: !902)
!1304 = !DILocalVariable(name: "remainder", scope: !1299, file: !681, line: 407, type: !902)
!1305 = !DILocation(line: 0, scope: !1299)
!1306 = !DILocation(line: 408, column: 19, scope: !1299)
!1307 = !DILocation(line: 409, column: 17, scope: !1299)
!1308 = !DILocation(line: 411, column: 5, scope: !1299)
!1309 = !DILocation(line: 413, column: 84, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1299, file: !681, line: 411, column: 17)
!1311 = !DILocation(line: 413, column: 70, scope: !1310)
!1312 = !DILocation(line: 413, column: 64, scope: !1310)
!1313 = !DILocation(line: 413, column: 61, scope: !1310)
!1314 = !DILocation(line: 414, column: 79, scope: !1310)
!1315 = !DILocation(line: 414, column: 83, scope: !1310)
!1316 = !DILocation(line: 414, column: 88, scope: !1310)
!1317 = !DILocation(line: 414, column: 61, scope: !1310)
!1318 = !DILocation(line: 415, column: 13, scope: !1310)
!1319 = !DILocation(line: 417, column: 27, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !681, line: 417, column: 17)
!1321 = !DILocation(line: 417, column: 17, scope: !1310)
!1322 = !DILocation(line: 418, column: 88, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !681, line: 417, column: 33)
!1324 = !DILocation(line: 418, column: 74, scope: !1323)
!1325 = !DILocation(line: 418, column: 68, scope: !1323)
!1326 = !DILocation(line: 418, column: 65, scope: !1323)
!1327 = !DILocation(line: 419, column: 83, scope: !1323)
!1328 = !DILocation(line: 419, column: 87, scope: !1323)
!1329 = !DILocation(line: 419, column: 92, scope: !1323)
!1330 = !DILocation(line: 419, column: 65, scope: !1323)
!1331 = !DILocation(line: 420, column: 13, scope: !1323)
!1332 = !DILocation(line: 420, column: 24, scope: !1320)
!1333 = !DILocation(line: 421, column: 73, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !681, line: 420, column: 41)
!1335 = distinct !DILexicalBlock(scope: !1320, file: !681, line: 420, column: 24)
!1336 = !DILocation(line: 422, column: 91, scope: !1334)
!1337 = !DILocation(line: 422, column: 100, scope: !1334)
!1338 = !DILocation(line: 422, column: 73, scope: !1334)
!1339 = !DILocation(line: 423, column: 73, scope: !1334)
!1340 = !DILocation(line: 424, column: 13, scope: !1334)
!1341 = !DILocation(line: 425, column: 73, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !681, line: 424, column: 41)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !681, line: 424, column: 24)
!1344 = !DILocation(line: 426, column: 91, scope: !1342)
!1345 = !DILocation(line: 426, column: 100, scope: !1342)
!1346 = !DILocation(line: 426, column: 73, scope: !1342)
!1347 = !DILocation(line: 427, column: 73, scope: !1342)
!1348 = !DILocation(line: 428, column: 13, scope: !1342)
!1349 = !DILocation(line: 429, column: 75, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !681, line: 428, column: 41)
!1351 = distinct !DILexicalBlock(scope: !1343, file: !681, line: 428, column: 24)
!1352 = !DILocation(line: 430, column: 93, scope: !1350)
!1353 = !DILocation(line: 430, column: 102, scope: !1350)
!1354 = !DILocation(line: 430, column: 75, scope: !1350)
!1355 = !DILocation(line: 431, column: 75, scope: !1350)
!1356 = !DILocation(line: 432, column: 13, scope: !1350)
!1357 = !DILocation(line: 433, column: 75, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !681, line: 432, column: 41)
!1359 = distinct !DILexicalBlock(scope: !1351, file: !681, line: 432, column: 24)
!1360 = !DILocation(line: 434, column: 93, scope: !1358)
!1361 = !DILocation(line: 434, column: 102, scope: !1358)
!1362 = !DILocation(line: 434, column: 75, scope: !1358)
!1363 = !DILocation(line: 435, column: 75, scope: !1358)
!1364 = !DILocation(line: 436, column: 13, scope: !1358)
!1365 = !DILocation(line: 437, column: 75, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !681, line: 436, column: 41)
!1367 = distinct !DILexicalBlock(scope: !1359, file: !681, line: 436, column: 24)
!1368 = !DILocation(line: 438, column: 93, scope: !1366)
!1369 = !DILocation(line: 438, column: 102, scope: !1366)
!1370 = !DILocation(line: 438, column: 75, scope: !1366)
!1371 = !DILocation(line: 439, column: 75, scope: !1366)
!1372 = !DILocation(line: 440, column: 13, scope: !1366)
!1373 = !DILocation(line: 443, column: 18, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1310, file: !681, line: 443, column: 17)
!1375 = !DILocation(line: 443, column: 17, scope: !1310)
!1376 = !DILocation(line: 444, column: 75, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !681, line: 443, column: 29)
!1378 = !DILocation(line: 445, column: 93, scope: !1377)
!1379 = !DILocation(line: 445, column: 102, scope: !1377)
!1380 = !DILocation(line: 445, column: 75, scope: !1377)
!1381 = !DILocation(line: 446, column: 75, scope: !1377)
!1382 = !DILocation(line: 447, column: 13, scope: !1377)
!1383 = !DILocation(line: 448, column: 88, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !681, line: 447, column: 20)
!1385 = !DILocation(line: 448, column: 74, scope: !1384)
!1386 = !DILocation(line: 448, column: 68, scope: !1384)
!1387 = !DILocation(line: 448, column: 65, scope: !1384)
!1388 = !DILocation(line: 449, column: 83, scope: !1384)
!1389 = !DILocation(line: 449, column: 87, scope: !1384)
!1390 = !DILocation(line: 449, column: 92, scope: !1384)
!1391 = !DILocation(line: 449, column: 65, scope: !1384)
!1392 = !DILocation(line: 453, column: 84, scope: !1310)
!1393 = !DILocation(line: 453, column: 70, scope: !1310)
!1394 = !DILocation(line: 453, column: 64, scope: !1310)
!1395 = !DILocation(line: 453, column: 61, scope: !1310)
!1396 = !DILocation(line: 454, column: 79, scope: !1310)
!1397 = !DILocation(line: 454, column: 83, scope: !1310)
!1398 = !DILocation(line: 454, column: 88, scope: !1310)
!1399 = !DILocation(line: 454, column: 61, scope: !1310)
!1400 = !DILocation(line: 455, column: 13, scope: !1310)
!1401 = !DILocation(line: 460, column: 1, scope: !1299)
!1402 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !681, file: !681, line: 463, type: !1403, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1406)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!897, !72, !1405}
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!1406 = !{!1407, !1408, !1409, !1410, !1411}
!1407 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1402, file: !681, line: 463, type: !72)
!1408 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1402, file: !681, line: 463, type: !1405)
!1409 = !DILocalVariable(name: "no", scope: !1402, file: !681, line: 465, type: !902)
!1410 = !DILocalVariable(name: "remainder", scope: !1402, file: !681, line: 466, type: !902)
!1411 = !DILocalVariable(name: "temp", scope: !1402, file: !681, line: 467, type: !72)
!1412 = !DILocation(line: 0, scope: !1402)
!1413 = !DILocation(line: 468, column: 19, scope: !1402)
!1414 = !DILocation(line: 469, column: 17, scope: !1402)
!1415 = !DILocation(line: 471, column: 5, scope: !1402)
!1416 = !DILocation(line: 473, column: 20, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1402, file: !681, line: 471, column: 17)
!1418 = !DILocation(line: 474, column: 40, scope: !1417)
!1419 = !DILocation(line: 474, column: 26, scope: !1417)
!1420 = !DILocation(line: 474, column: 18, scope: !1417)
!1421 = !DILocation(line: 475, column: 40, scope: !1417)
!1422 = !DILocation(line: 475, column: 29, scope: !1417)
!1423 = !DILocation(line: 476, column: 13, scope: !1417)
!1424 = !DILocation(line: 478, column: 27, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !681, line: 478, column: 17)
!1426 = !DILocation(line: 478, column: 17, scope: !1417)
!1427 = !DILocation(line: 479, column: 24, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !681, line: 478, column: 33)
!1429 = !DILocation(line: 480, column: 44, scope: !1428)
!1430 = !DILocation(line: 480, column: 30, scope: !1428)
!1431 = !DILocation(line: 480, column: 22, scope: !1428)
!1432 = !DILocation(line: 481, column: 44, scope: !1428)
!1433 = !DILocation(line: 481, column: 33, scope: !1428)
!1434 = !DILocation(line: 482, column: 13, scope: !1428)
!1435 = !DILocation(line: 482, column: 24, scope: !1425)
!1436 = !DILocation(line: 483, column: 24, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !681, line: 482, column: 41)
!1438 = distinct !DILexicalBlock(scope: !1425, file: !681, line: 482, column: 24)
!1439 = !DILocation(line: 485, column: 53, scope: !1437)
!1440 = !DILocation(line: 485, column: 33, scope: !1437)
!1441 = !DILocation(line: 486, column: 13, scope: !1437)
!1442 = !DILocation(line: 487, column: 24, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !681, line: 486, column: 41)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !681, line: 486, column: 24)
!1445 = !DILocation(line: 489, column: 53, scope: !1443)
!1446 = !DILocation(line: 489, column: 33, scope: !1443)
!1447 = !DILocation(line: 490, column: 13, scope: !1443)
!1448 = !DILocation(line: 491, column: 24, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !681, line: 490, column: 41)
!1450 = distinct !DILexicalBlock(scope: !1444, file: !681, line: 490, column: 24)
!1451 = !DILocation(line: 493, column: 53, scope: !1449)
!1452 = !DILocation(line: 493, column: 33, scope: !1449)
!1453 = !DILocation(line: 494, column: 13, scope: !1449)
!1454 = !DILocation(line: 495, column: 24, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !681, line: 494, column: 41)
!1456 = distinct !DILexicalBlock(scope: !1450, file: !681, line: 494, column: 24)
!1457 = !DILocation(line: 497, column: 53, scope: !1455)
!1458 = !DILocation(line: 497, column: 33, scope: !1455)
!1459 = !DILocation(line: 498, column: 13, scope: !1455)
!1460 = !DILocation(line: 499, column: 24, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !681, line: 498, column: 41)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !681, line: 498, column: 24)
!1463 = !DILocation(line: 501, column: 53, scope: !1461)
!1464 = !DILocation(line: 501, column: 33, scope: !1461)
!1465 = !DILocation(line: 502, column: 13, scope: !1461)
!1466 = !DILocation(line: 505, column: 18, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1417, file: !681, line: 505, column: 17)
!1468 = !DILocation(line: 505, column: 17, scope: !1417)
!1469 = !DILocation(line: 506, column: 24, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1467, file: !681, line: 505, column: 29)
!1471 = !DILocation(line: 508, column: 53, scope: !1470)
!1472 = !DILocation(line: 508, column: 33, scope: !1470)
!1473 = !DILocation(line: 509, column: 13, scope: !1470)
!1474 = !DILocation(line: 510, column: 24, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1467, file: !681, line: 509, column: 20)
!1476 = !DILocation(line: 511, column: 44, scope: !1475)
!1477 = !DILocation(line: 511, column: 30, scope: !1475)
!1478 = !DILocation(line: 511, column: 22, scope: !1475)
!1479 = !DILocation(line: 512, column: 44, scope: !1475)
!1480 = !DILocation(line: 512, column: 33, scope: !1475)
!1481 = !DILocation(line: 516, column: 20, scope: !1417)
!1482 = !DILocation(line: 517, column: 40, scope: !1417)
!1483 = !DILocation(line: 517, column: 26, scope: !1417)
!1484 = !DILocation(line: 517, column: 18, scope: !1417)
!1485 = !DILocation(line: 518, column: 40, scope: !1417)
!1486 = !DILocation(line: 518, column: 29, scope: !1417)
!1487 = !DILocation(line: 519, column: 13, scope: !1417)
!1488 = !DILocation(line: 0, scope: !1417)
!1489 = !DILocation(line: 524, column: 1, scope: !1402)
!1490 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !681, file: !681, line: 526, type: !1491, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !1494)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !72, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !43, line: 1212, baseType: !42)
!1494 = !{!1495, !1496, !1497, !1498}
!1495 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1490, file: !681, line: 526, type: !72)
!1496 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1490, file: !681, line: 526, type: !1493)
!1497 = !DILocalVariable(name: "no", scope: !1490, file: !681, line: 529, type: !902)
!1498 = !DILocalVariable(name: "remainder", scope: !1490, file: !681, line: 530, type: !902)
!1499 = !DILocation(line: 0, scope: !1490)
!1500 = !DILocation(line: 531, column: 19, scope: !1490)
!1501 = !DILocation(line: 532, column: 17, scope: !1490)
!1502 = !DILocation(line: 534, column: 9, scope: !1490)
!1503 = !DILocation(line: 536, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !681, line: 534, column: 45)
!1505 = distinct !DILexicalBlock(scope: !1490, file: !681, line: 534, column: 9)
!1506 = !DILocation(line: 538, column: 56, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !681, line: 536, column: 21)
!1508 = !DILocation(line: 538, column: 53, scope: !1507)
!1509 = !DILocation(line: 538, column: 47, scope: !1507)
!1510 = !DILocation(line: 539, column: 17, scope: !1507)
!1511 = !DILocation(line: 541, column: 56, scope: !1507)
!1512 = !DILocation(line: 541, column: 53, scope: !1507)
!1513 = !DILocation(line: 541, column: 47, scope: !1507)
!1514 = !DILocation(line: 542, column: 17, scope: !1507)
!1515 = !DILocation(line: 548, column: 9, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !681, line: 547, column: 51)
!1517 = distinct !DILexicalBlock(scope: !1505, file: !681, line: 547, column: 16)
!1518 = !DILocation(line: 550, column: 57, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !681, line: 548, column: 21)
!1520 = !DILocation(line: 550, column: 54, scope: !1519)
!1521 = !DILocation(line: 550, column: 50, scope: !1519)
!1522 = !DILocation(line: 550, column: 47, scope: !1519)
!1523 = !DILocation(line: 551, column: 17, scope: !1519)
!1524 = !DILocation(line: 553, column: 57, scope: !1519)
!1525 = !DILocation(line: 553, column: 54, scope: !1519)
!1526 = !DILocation(line: 553, column: 50, scope: !1519)
!1527 = !DILocation(line: 553, column: 47, scope: !1519)
!1528 = !DILocation(line: 554, column: 17, scope: !1519)
!1529 = !DILocation(line: 560, column: 1, scope: !1490)
!1530 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !685, file: !685, line: 85, type: !1531, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !684, retainedNodes: !1535)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!1533, !1534, !113}
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !51, line: 79, baseType: null)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !688, line: 225, baseType: !687)
!1535 = !{!1536, !1537, !1538}
!1536 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1530, file: !685, line: 85, type: !1534)
!1537 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1530, file: !685, line: 85, type: !113)
!1538 = !DILocalVariable(name: "temp", scope: !1530, file: !685, line: 87, type: !58)
!1539 = !DILocation(line: 0, scope: !1530)
!1540 = !DILocation(line: 88, column: 5, scope: !1530)
!1541 = !DILocation(line: 91, column: 20, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1530, file: !685, line: 88, column: 24)
!1543 = !DILocation(line: 92, column: 18, scope: !1542)
!1544 = !DILocation(line: 93, column: 66, scope: !1542)
!1545 = !DILocation(line: 93, column: 63, scope: !1542)
!1546 = !DILocation(line: 93, column: 56, scope: !1542)
!1547 = !DILocation(line: 94, column: 13, scope: !1542)
!1548 = !DILocation(line: 97, column: 20, scope: !1542)
!1549 = !DILocation(line: 98, column: 18, scope: !1542)
!1550 = !DILocation(line: 99, column: 67, scope: !1542)
!1551 = !DILocation(line: 99, column: 74, scope: !1542)
!1552 = !DILocation(line: 99, column: 64, scope: !1542)
!1553 = !DILocation(line: 99, column: 56, scope: !1542)
!1554 = !DILocation(line: 100, column: 13, scope: !1542)
!1555 = !DILocation(line: 103, column: 20, scope: !1542)
!1556 = !DILocation(line: 104, column: 18, scope: !1542)
!1557 = !DILocation(line: 105, column: 67, scope: !1542)
!1558 = !DILocation(line: 105, column: 74, scope: !1542)
!1559 = !DILocation(line: 105, column: 64, scope: !1542)
!1560 = !DILocation(line: 105, column: 56, scope: !1542)
!1561 = !DILocation(line: 106, column: 13, scope: !1542)
!1562 = !DILocation(line: 109, column: 20, scope: !1542)
!1563 = !DILocation(line: 110, column: 18, scope: !1542)
!1564 = !DILocation(line: 111, column: 67, scope: !1542)
!1565 = !DILocation(line: 111, column: 74, scope: !1542)
!1566 = !DILocation(line: 111, column: 64, scope: !1542)
!1567 = !DILocation(line: 111, column: 56, scope: !1542)
!1568 = !DILocation(line: 112, column: 13, scope: !1542)
!1569 = !DILocation(line: 115, column: 20, scope: !1542)
!1570 = !DILocation(line: 116, column: 18, scope: !1542)
!1571 = !DILocation(line: 117, column: 67, scope: !1542)
!1572 = !DILocation(line: 117, column: 74, scope: !1542)
!1573 = !DILocation(line: 117, column: 64, scope: !1542)
!1574 = !DILocation(line: 117, column: 56, scope: !1542)
!1575 = !DILocation(line: 118, column: 13, scope: !1542)
!1576 = !DILocation(line: 121, column: 20, scope: !1542)
!1577 = !DILocation(line: 122, column: 18, scope: !1542)
!1578 = !DILocation(line: 123, column: 67, scope: !1542)
!1579 = !DILocation(line: 123, column: 74, scope: !1542)
!1580 = !DILocation(line: 123, column: 64, scope: !1542)
!1581 = !DILocation(line: 123, column: 56, scope: !1542)
!1582 = !DILocation(line: 124, column: 13, scope: !1542)
!1583 = !DILocation(line: 127, column: 20, scope: !1542)
!1584 = !DILocation(line: 128, column: 18, scope: !1542)
!1585 = !DILocation(line: 129, column: 67, scope: !1542)
!1586 = !DILocation(line: 129, column: 74, scope: !1542)
!1587 = !DILocation(line: 129, column: 64, scope: !1542)
!1588 = !DILocation(line: 129, column: 56, scope: !1542)
!1589 = !DILocation(line: 130, column: 13, scope: !1542)
!1590 = !DILocation(line: 133, column: 20, scope: !1542)
!1591 = !DILocation(line: 134, column: 18, scope: !1542)
!1592 = !DILocation(line: 135, column: 67, scope: !1542)
!1593 = !DILocation(line: 135, column: 74, scope: !1542)
!1594 = !DILocation(line: 135, column: 64, scope: !1542)
!1595 = !DILocation(line: 135, column: 56, scope: !1542)
!1596 = !DILocation(line: 136, column: 13, scope: !1542)
!1597 = !DILocation(line: 139, column: 20, scope: !1542)
!1598 = !DILocation(line: 140, column: 18, scope: !1542)
!1599 = !DILocation(line: 141, column: 67, scope: !1542)
!1600 = !DILocation(line: 141, column: 64, scope: !1542)
!1601 = !DILocation(line: 141, column: 56, scope: !1542)
!1602 = !DILocation(line: 142, column: 13, scope: !1542)
!1603 = !DILocation(line: 145, column: 20, scope: !1542)
!1604 = !DILocation(line: 146, column: 18, scope: !1542)
!1605 = !DILocation(line: 147, column: 67, scope: !1542)
!1606 = !DILocation(line: 147, column: 74, scope: !1542)
!1607 = !DILocation(line: 147, column: 64, scope: !1542)
!1608 = !DILocation(line: 147, column: 56, scope: !1542)
!1609 = !DILocation(line: 148, column: 13, scope: !1542)
!1610 = !DILocation(line: 151, column: 20, scope: !1542)
!1611 = !DILocation(line: 152, column: 18, scope: !1542)
!1612 = !DILocation(line: 153, column: 67, scope: !1542)
!1613 = !DILocation(line: 153, column: 74, scope: !1542)
!1614 = !DILocation(line: 153, column: 64, scope: !1542)
!1615 = !DILocation(line: 153, column: 56, scope: !1542)
!1616 = !DILocation(line: 154, column: 13, scope: !1542)
!1617 = !DILocation(line: 157, column: 20, scope: !1542)
!1618 = !DILocation(line: 158, column: 18, scope: !1542)
!1619 = !DILocation(line: 159, column: 67, scope: !1542)
!1620 = !DILocation(line: 159, column: 74, scope: !1542)
!1621 = !DILocation(line: 159, column: 64, scope: !1542)
!1622 = !DILocation(line: 159, column: 56, scope: !1542)
!1623 = !DILocation(line: 160, column: 29, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1542, file: !685, line: 160, column: 17)
!1625 = !DILocation(line: 161, column: 17, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1624, file: !685, line: 160, column: 60)
!1627 = !DILocation(line: 162, column: 13, scope: !1626)
!1628 = !DILocation(line: 166, column: 20, scope: !1542)
!1629 = !DILocation(line: 167, column: 18, scope: !1542)
!1630 = !DILocation(line: 168, column: 67, scope: !1542)
!1631 = !DILocation(line: 168, column: 74, scope: !1542)
!1632 = !DILocation(line: 168, column: 64, scope: !1542)
!1633 = !DILocation(line: 168, column: 56, scope: !1542)
!1634 = !DILocation(line: 169, column: 29, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1542, file: !685, line: 169, column: 17)
!1636 = !DILocation(line: 170, column: 17, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1635, file: !685, line: 169, column: 45)
!1638 = !DILocation(line: 171, column: 13, scope: !1637)
!1639 = !DILocation(line: 175, column: 20, scope: !1542)
!1640 = !DILocation(line: 176, column: 18, scope: !1542)
!1641 = !DILocation(line: 177, column: 67, scope: !1542)
!1642 = !DILocation(line: 177, column: 74, scope: !1542)
!1643 = !DILocation(line: 177, column: 64, scope: !1542)
!1644 = !DILocation(line: 177, column: 56, scope: !1542)
!1645 = !DILocation(line: 178, column: 19, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1542, file: !685, line: 178, column: 17)
!1647 = !DILocation(line: 178, column: 17, scope: !1542)
!1648 = !DILocation(line: 179, column: 17, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !685, line: 178, column: 30)
!1650 = !DILocation(line: 180, column: 13, scope: !1649)
!1651 = !DILocation(line: 184, column: 20, scope: !1542)
!1652 = !DILocation(line: 185, column: 18, scope: !1542)
!1653 = !DILocation(line: 186, column: 67, scope: !1542)
!1654 = !DILocation(line: 186, column: 74, scope: !1542)
!1655 = !DILocation(line: 186, column: 64, scope: !1542)
!1656 = !DILocation(line: 186, column: 56, scope: !1542)
!1657 = !DILocation(line: 187, column: 29, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1542, file: !685, line: 187, column: 17)
!1659 = !DILocation(line: 188, column: 17, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1658, file: !685, line: 187, column: 45)
!1661 = !DILocation(line: 189, column: 13, scope: !1660)
!1662 = !DILocation(line: 193, column: 20, scope: !1542)
!1663 = !DILocation(line: 194, column: 18, scope: !1542)
!1664 = !DILocation(line: 195, column: 67, scope: !1542)
!1665 = !DILocation(line: 195, column: 74, scope: !1542)
!1666 = !DILocation(line: 195, column: 64, scope: !1542)
!1667 = !DILocation(line: 195, column: 56, scope: !1542)
!1668 = !DILocation(line: 196, column: 29, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1542, file: !685, line: 196, column: 17)
!1670 = !DILocation(line: 197, column: 17, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1669, file: !685, line: 196, column: 45)
!1672 = !DILocation(line: 198, column: 13, scope: !1671)
!1673 = !DILocation(line: 202, column: 20, scope: !1542)
!1674 = !DILocation(line: 203, column: 18, scope: !1542)
!1675 = !DILocation(line: 204, column: 67, scope: !1542)
!1676 = !DILocation(line: 204, column: 64, scope: !1542)
!1677 = !DILocation(line: 204, column: 56, scope: !1542)
!1678 = !DILocation(line: 205, column: 29, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1542, file: !685, line: 205, column: 17)
!1680 = !DILocation(line: 206, column: 17, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1679, file: !685, line: 205, column: 45)
!1682 = !DILocation(line: 207, column: 13, scope: !1681)
!1683 = !DILocation(line: 211, column: 20, scope: !1542)
!1684 = !DILocation(line: 212, column: 18, scope: !1542)
!1685 = !DILocation(line: 213, column: 67, scope: !1542)
!1686 = !DILocation(line: 213, column: 74, scope: !1542)
!1687 = !DILocation(line: 213, column: 64, scope: !1542)
!1688 = !DILocation(line: 213, column: 56, scope: !1542)
!1689 = !DILocation(line: 214, column: 13, scope: !1542)
!1690 = !DILocation(line: 217, column: 20, scope: !1542)
!1691 = !DILocation(line: 218, column: 18, scope: !1542)
!1692 = !DILocation(line: 219, column: 67, scope: !1542)
!1693 = !DILocation(line: 219, column: 74, scope: !1542)
!1694 = !DILocation(line: 219, column: 64, scope: !1542)
!1695 = !DILocation(line: 219, column: 56, scope: !1542)
!1696 = !DILocation(line: 220, column: 13, scope: !1542)
!1697 = !DILocation(line: 223, column: 20, scope: !1542)
!1698 = !DILocation(line: 224, column: 18, scope: !1542)
!1699 = !DILocation(line: 225, column: 67, scope: !1542)
!1700 = !DILocation(line: 225, column: 74, scope: !1542)
!1701 = !DILocation(line: 225, column: 64, scope: !1542)
!1702 = !DILocation(line: 225, column: 56, scope: !1542)
!1703 = !DILocation(line: 226, column: 13, scope: !1542)
!1704 = !DILocation(line: 229, column: 20, scope: !1542)
!1705 = !DILocation(line: 230, column: 18, scope: !1542)
!1706 = !DILocation(line: 231, column: 67, scope: !1542)
!1707 = !DILocation(line: 231, column: 74, scope: !1542)
!1708 = !DILocation(line: 231, column: 64, scope: !1542)
!1709 = !DILocation(line: 231, column: 56, scope: !1542)
!1710 = !DILocation(line: 232, column: 13, scope: !1542)
!1711 = !DILocation(line: 235, column: 20, scope: !1542)
!1712 = !DILocation(line: 236, column: 18, scope: !1542)
!1713 = !DILocation(line: 237, column: 66, scope: !1542)
!1714 = !DILocation(line: 237, column: 73, scope: !1542)
!1715 = !DILocation(line: 237, column: 63, scope: !1542)
!1716 = !DILocation(line: 237, column: 56, scope: !1542)
!1717 = !DILocation(line: 238, column: 13, scope: !1542)
!1718 = !DILocation(line: 241, column: 20, scope: !1542)
!1719 = !DILocation(line: 242, column: 18, scope: !1542)
!1720 = !DILocation(line: 243, column: 67, scope: !1542)
!1721 = !DILocation(line: 243, column: 74, scope: !1542)
!1722 = !DILocation(line: 243, column: 64, scope: !1542)
!1723 = !DILocation(line: 243, column: 56, scope: !1542)
!1724 = !DILocation(line: 244, column: 13, scope: !1542)
!1725 = !DILocation(line: 247, column: 20, scope: !1542)
!1726 = !DILocation(line: 248, column: 18, scope: !1542)
!1727 = !DILocation(line: 249, column: 67, scope: !1542)
!1728 = !DILocation(line: 249, column: 74, scope: !1542)
!1729 = !DILocation(line: 249, column: 64, scope: !1542)
!1730 = !DILocation(line: 249, column: 56, scope: !1542)
!1731 = !DILocation(line: 250, column: 13, scope: !1542)
!1732 = !DILocation(line: 253, column: 20, scope: !1542)
!1733 = !DILocation(line: 254, column: 18, scope: !1542)
!1734 = !DILocation(line: 255, column: 67, scope: !1542)
!1735 = !DILocation(line: 255, column: 74, scope: !1542)
!1736 = !DILocation(line: 255, column: 64, scope: !1542)
!1737 = !DILocation(line: 255, column: 56, scope: !1542)
!1738 = !DILocation(line: 256, column: 13, scope: !1542)
!1739 = !DILocation(line: 259, column: 20, scope: !1542)
!1740 = !DILocation(line: 260, column: 18, scope: !1542)
!1741 = !DILocation(line: 261, column: 67, scope: !1542)
!1742 = !DILocation(line: 261, column: 74, scope: !1542)
!1743 = !DILocation(line: 261, column: 64, scope: !1542)
!1744 = !DILocation(line: 261, column: 56, scope: !1542)
!1745 = !DILocation(line: 262, column: 13, scope: !1542)
!1746 = !DILocation(line: 265, column: 20, scope: !1542)
!1747 = !DILocation(line: 266, column: 18, scope: !1542)
!1748 = !DILocation(line: 267, column: 67, scope: !1542)
!1749 = !DILocation(line: 267, column: 74, scope: !1542)
!1750 = !DILocation(line: 267, column: 64, scope: !1542)
!1751 = !DILocation(line: 267, column: 56, scope: !1542)
!1752 = !DILocation(line: 268, column: 13, scope: !1542)
!1753 = !DILocation(line: 271, column: 20, scope: !1542)
!1754 = !DILocation(line: 272, column: 18, scope: !1542)
!1755 = !DILocation(line: 273, column: 67, scope: !1542)
!1756 = !DILocation(line: 273, column: 74, scope: !1542)
!1757 = !DILocation(line: 273, column: 64, scope: !1542)
!1758 = !DILocation(line: 273, column: 56, scope: !1542)
!1759 = !DILocation(line: 274, column: 13, scope: !1542)
!1760 = !DILocation(line: 278, column: 1, scope: !1530)
!1761 = distinct !DISubprogram(name: "gpio_direction", scope: !3, file: !3, line: 107, type: !1762, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!181, !877, !880}
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1761, file: !3, line: 107, type: !877)
!1766 = !DILocalVariable(name: "direction", arg: 2, scope: !1761, file: !3, line: 107, type: !880)
!1767 = !DILocation(line: 0, scope: !1761)
!1768 = !DILocation(line: 109, column: 45, scope: !1761)
!1769 = !DILocation(line: 109, column: 12, scope: !1761)
!1770 = !DILocation(line: 109, column: 5, scope: !1761)
!1771 = distinct !DISubprogram(name: "gpio_write", scope: !3, file: !3, line: 113, type: !1772, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1774)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!181, !877, !210}
!1774 = !{!1775, !1776}
!1775 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1771, file: !3, line: 113, type: !877)
!1776 = !DILocalVariable(name: "data", arg: 2, scope: !1771, file: !3, line: 113, type: !210)
!1777 = !DILocation(line: 0, scope: !1771)
!1778 = !DILocation(line: 115, column: 12, scope: !1771)
!1779 = !DILocation(line: 115, column: 5, scope: !1771)
!1780 = distinct !DISubprogram(name: "gpio_get_status", scope: !3, file: !3, line: 169, type: !1781, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1790)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1783, !877}
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !38, line: 67, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 62, size: 64, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !1784, file: !38, line: 63, baseType: !58, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !1784, file: !38, line: 64, baseType: !210, size: 8, offset: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !1784, file: !38, line: 65, baseType: !210, size: 8, offset: 40)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !1784, file: !38, line: 66, baseType: !210, size: 8, offset: 48)
!1790 = !{!1791, !1792}
!1791 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1780, file: !3, line: 169, type: !877)
!1792 = !DILocalVariable(name: "p", scope: !1780, file: !3, line: 171, type: !1783)
!1793 = !DILocation(line: 0, scope: !1780)
!1794 = !DILocation(line: 171, column: 17, scope: !1780)
!1795 = !DILocation(line: 172, column: 7, scope: !1780)
!1796 = !DILocation(line: 172, column: 16, scope: !1780)
!1797 = !DILocation(line: 173, column: 20, scope: !1780)
!1798 = !DILocation(line: 173, column: 7, scope: !1780)
!1799 = !DILocation(line: 173, column: 18, scope: !1780)
!1800 = !DILocation(line: 174, column: 17, scope: !1780)
!1801 = !DILocation(line: 174, column: 7, scope: !1780)
!1802 = !DILocation(line: 174, column: 15, scope: !1780)
!1803 = !DILocation(line: 175, column: 18, scope: !1780)
!1804 = !DILocation(line: 175, column: 7, scope: !1780)
!1805 = !DILocation(line: 175, column: 16, scope: !1780)
!1806 = !DILocation(line: 176, column: 5, scope: !1780)
!1807 = distinct !DISubprogram(name: "gpio_PullUp", scope: !3, file: !3, line: 179, type: !1808, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1810)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!181, !877}
!1810 = !{!1811, !1812}
!1811 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1807, file: !3, line: 179, type: !877)
!1812 = !DILocalVariable(name: "ret", scope: !1807, file: !3, line: 181, type: !897)
!1813 = !DILocation(line: 0, scope: !1807)
!1814 = !DILocation(line: 182, column: 5, scope: !1807)
!1815 = !DILocation(line: 183, column: 11, scope: !1807)
!1816 = !DILocation(line: 184, column: 5, scope: !1807)
!1817 = distinct !DISubprogram(name: "gpio_PullDown", scope: !3, file: !3, line: 187, type: !1808, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1818)
!1818 = !{!1819, !1820}
!1819 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1817, file: !3, line: 187, type: !877)
!1820 = !DILocalVariable(name: "ret", scope: !1817, file: !3, line: 189, type: !897)
!1821 = !DILocation(line: 0, scope: !1817)
!1822 = !DILocation(line: 190, column: 5, scope: !1817)
!1823 = !DILocation(line: 191, column: 11, scope: !1817)
!1824 = !DILocation(line: 192, column: 5, scope: !1817)
!1825 = distinct !DISubprogram(name: "gpio_PullDisable", scope: !3, file: !3, line: 194, type: !1808, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1826)
!1826 = !{!1827, !1828}
!1827 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1825, file: !3, line: 194, type: !877)
!1828 = !DILocalVariable(name: "ret", scope: !1825, file: !3, line: 196, type: !897)
!1829 = !DILocation(line: 0, scope: !1825)
!1830 = !DILocation(line: 197, column: 5, scope: !1825)
!1831 = !DILocation(line: 198, column: 11, scope: !1825)
!1832 = !DILocation(line: 199, column: 11, scope: !1825)
!1833 = !DILocation(line: 200, column: 5, scope: !1825)
!1834 = distinct !DISubprogram(name: "gpio_SetDriving", scope: !3, file: !3, line: 202, type: !1772, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1834, file: !3, line: 202, type: !877)
!1837 = !DILocalVariable(name: "driving", arg: 2, scope: !1834, file: !3, line: 202, type: !210)
!1838 = !DILocalVariable(name: "ret", scope: !1834, file: !3, line: 204, type: !897)
!1839 = !DILocation(line: 0, scope: !1834)
!1840 = !DILocation(line: 205, column: 11, scope: !1834)
!1841 = !DILocation(line: 206, column: 5, scope: !1834)
!1842 = distinct !DISubprogram(name: "gpio_GetDriving", scope: !3, file: !3, line: 209, type: !1843, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!181, !877, !378}
!1845 = !{!1846, !1847, !1848}
!1846 = !DILocalVariable(name: "gpio_name", arg: 1, scope: !1842, file: !3, line: 209, type: !877)
!1847 = !DILocalVariable(name: "driving", arg: 2, scope: !1842, file: !3, line: 209, type: !378)
!1848 = !DILocalVariable(name: "ret", scope: !1842, file: !3, line: 211, type: !897)
!1849 = !DILocation(line: 0, scope: !1842)
!1850 = !DILocation(line: 212, column: 11, scope: !1842)
!1851 = !DILocation(line: 213, column: 5, scope: !1842)
!1852 = distinct !DISubprogram(name: "gpio_backup_all_registers", scope: !3, file: !3, line: 216, type: !335, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1853)
!1853 = !{!1854}
!1854 = !DILocalVariable(name: "i", scope: !1852, file: !3, line: 218, type: !58)
!1855 = !DILocation(line: 0, scope: !1852)
!1856 = !DILocation(line: 220, column: 5, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 220, column: 5)
!1858 = !DILocation(line: 221, column: 40, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 220, column: 78)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 220, column: 5)
!1861 = !DILocation(line: 221, column: 29, scope: !1859)
!1862 = !DILocation(line: 221, column: 38, scope: !1859)
!1863 = !DILocation(line: 220, column: 74, scope: !1860)
!1864 = !DILocation(line: 220, column: 15, scope: !1860)
!1865 = distinct !{!1865, !1856, !1866}
!1866 = !DILocation(line: 222, column: 5, scope: !1857)
!1867 = !DILocation(line: 224, column: 1, scope: !1852)
!1868 = distinct !DISubprogram(name: "gpio_restore_all_registers", scope: !3, file: !3, line: 226, type: !335, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "i", scope: !1868, file: !3, line: 228, type: !58)
!1871 = !DILocation(line: 0, scope: !1868)
!1872 = !DILocation(line: 230, column: 5, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 230, column: 5)
!1874 = !DILocation(line: 231, column: 71, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 230, column: 78)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 230, column: 5)
!1877 = !DILocation(line: 231, column: 9, scope: !1875)
!1878 = !DILocation(line: 231, column: 49, scope: !1875)
!1879 = !DILocation(line: 230, column: 74, scope: !1876)
!1880 = !DILocation(line: 230, column: 15, scope: !1876)
!1881 = distinct !{!1881, !1872, !1882}
!1882 = !DILocation(line: 233, column: 5, scope: !1873)
!1883 = !DILocation(line: 234, column: 1, scope: !1868)
!1884 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !766, file: !766, line: 47, type: !1885, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1887)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !58}
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "addr", arg: 1, scope: !1884, file: !766, line: 47, type: !58)
!1889 = !DILocation(line: 0, scope: !1884)
!1890 = !DILocation(line: 49, column: 15, scope: !1884)
!1891 = !DILocation(line: 51, column: 5, scope: !1884)
!1892 = !{i64 2624}
!1893 = !DILocation(line: 52, column: 5, scope: !1884)
!1894 = !{i64 2651}
!1895 = !DILocation(line: 53, column: 1, scope: !1884)
!1896 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !766, file: !766, line: 56, type: !1897, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !7}
!1899 = !{!1900}
!1900 = !DILocalVariable(name: "source", arg: 1, scope: !1896, file: !766, line: 56, type: !7)
!1901 = !DILocation(line: 0, scope: !1896)
!1902 = !DILocation(line: 58, column: 16, scope: !1896)
!1903 = !DILocation(line: 59, column: 1, scope: !1896)
!1904 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !766, file: !766, line: 61, type: !1905, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!58}
!1907 = !{!1908}
!1908 = !DILocalVariable(name: "mask", scope: !1904, file: !766, line: 63, type: !58)
!1909 = !DILocation(line: 470, column: 3, scope: !1910, inlinedAt: !1914)
!1910 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1911, file: !1911, line: 466, type: !1905, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1912)
!1911 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "result", scope: !1910, file: !1911, line: 468, type: !58)
!1914 = distinct !DILocation(line: 64, column: 5, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1904, file: !766, line: 64, column: 5)
!1916 = !{i64 302173}
!1917 = !DILocation(line: 0, scope: !1910, inlinedAt: !1914)
!1918 = !DILocation(line: 0, scope: !1904)
!1919 = !DILocation(line: 330, column: 3, scope: !1920, inlinedAt: !1922)
!1920 = distinct !DISubprogram(name: "__disable_irq", scope: !1911, file: !1911, line: 328, type: !335, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1921)
!1921 = !{}
!1922 = distinct !DILocation(line: 64, column: 5, scope: !1915)
!1923 = !{i64 298837}
!1924 = !DILocation(line: 65, column: 5, scope: !1904)
!1925 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !766, file: !766, line: 68, type: !1885, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1926)
!1926 = !{!1927}
!1927 = !DILocalVariable(name: "mask", arg: 1, scope: !1925, file: !766, line: 68, type: !58)
!1928 = !DILocation(line: 0, scope: !1925)
!1929 = !DILocalVariable(name: "priMask", arg: 1, scope: !1930, file: !1911, line: 481, type: !58)
!1930 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1911, file: !1911, line: 481, type: !1885, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !765, retainedNodes: !1931)
!1931 = !{!1929}
!1932 = !DILocation(line: 0, scope: !1930, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 70, column: 5, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1925, file: !766, line: 70, column: 5)
!1935 = !DILocation(line: 483, column: 3, scope: !1930, inlinedAt: !1933)
!1936 = !{i64 302491}
!1937 = !DILocation(line: 71, column: 1, scope: !1925)
!1938 = distinct !DISubprogram(name: "pinmux_config", scope: !811, file: !811, line: 54, type: !1939, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !1941)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!181, !877, !58}
!1941 = !{!1942, !1943, !1944}
!1942 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !1938, file: !811, line: 54, type: !877)
!1943 = !DILocalVariable(name: "function", arg: 2, scope: !1938, file: !811, line: 54, type: !58)
!1944 = !DILocalVariable(name: "ePadIndex", scope: !1938, file: !811, line: 56, type: !1534)
!1945 = !DILocation(line: 0, scope: !1938)
!1946 = !DILocation(line: 60, column: 5, scope: !1938)
!1947 = !DILocation(line: 205, column: 38, scope: !1938)
!1948 = !DILocation(line: 205, column: 5, scope: !1938)
!1949 = !DILocation(line: 207, column: 5, scope: !1938)
!1950 = !DILocation(line: 208, column: 1, scope: !1938)
!1951 = distinct !DISubprogram(name: "top_xtal_init", scope: !68, file: !68, line: 52, type: !335, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1952)
!1952 = !{!1953, !1954}
!1953 = !DILocalVariable(name: "u4RegVal", scope: !1951, file: !68, line: 54, type: !58)
!1954 = !DILocalVariable(name: "reg", scope: !1951, file: !68, line: 55, type: !568)
!1955 = !DILocation(line: 0, scope: !1951)
!1956 = !DILocation(line: 55, column: 25, scope: !1951)
!1957 = !DILocation(line: 56, column: 16, scope: !1951)
!1958 = !DILocation(line: 56, column: 23, scope: !1951)
!1959 = !DILocation(line: 58, column: 16, scope: !1951)
!1960 = !DILocation(line: 61, column: 5, scope: !1951)
!1961 = !DILocation(line: 59, column: 14, scope: !1951)
!1962 = !DILocation(line: 0, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1951, file: !68, line: 61, column: 18)
!1964 = !DILocation(line: 87, column: 38, scope: !1951)
!1965 = !DILocation(line: 88, column: 21, scope: !1951)
!1966 = !DILocation(line: 88, column: 19, scope: !1951)
!1967 = !DILocation(line: 89, column: 5, scope: !1951)
!1968 = !DILocation(line: 90, column: 17, scope: !1951)
!1969 = !DILocation(line: 90, column: 33, scope: !1951)
!1970 = !DILocation(line: 90, column: 5, scope: !1951)
!1971 = !DILocation(line: 91, column: 1, scope: !1951)
!1972 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !68, file: !68, line: 98, type: !1905, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1921)
!1973 = !DILocation(line: 100, column: 12, scope: !1972)
!1974 = !DILocation(line: 100, column: 5, scope: !1972)
!1975 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !68, file: !68, line: 108, type: !1905, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1921)
!1976 = !DILocation(line: 110, column: 12, scope: !1975)
!1977 = !DILocation(line: 110, column: 5, scope: !1975)
!1978 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !68, file: !68, line: 118, type: !335, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !1979)
!1979 = !{!1980, !1981}
!1980 = !DILocalVariable(name: "reg", scope: !1978, file: !68, line: 120, type: !74)
!1981 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1978, file: !68, line: 121, type: !73)
!1982 = !DILocation(line: 120, column: 5, scope: !1978)
!1983 = !DILocation(line: 120, column: 23, scope: !1978)
!1984 = !DILocation(line: 0, scope: !1978)
!1985 = !DILocation(line: 123, column: 11, scope: !1978)
!1986 = !DILocation(line: 123, column: 9, scope: !1978)
!1987 = !DILocation(line: 124, column: 12, scope: !1978)
!1988 = !DILocation(line: 124, column: 16, scope: !1978)
!1989 = !DILocation(line: 124, column: 39, scope: !1978)
!1990 = !DILocation(line: 124, column: 9, scope: !1978)
!1991 = !DILocation(line: 126, column: 9, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1978, file: !68, line: 126, column: 9)
!1993 = !DILocation(line: 126, column: 13, scope: !1992)
!1994 = !DILocation(line: 126, column: 9, scope: !1978)
!1995 = !DILocation(line: 127, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !68, line: 126, column: 47)
!1997 = !DILocation(line: 127, column: 13, scope: !1996)
!1998 = !DILocation(line: 128, column: 15, scope: !1996)
!1999 = !DILocation(line: 128, column: 19, scope: !1996)
!2000 = !DILocation(line: 128, column: 13, scope: !1996)
!2001 = !DILocation(line: 129, column: 15, scope: !1996)
!2002 = !DILocation(line: 129, column: 19, scope: !1996)
!2003 = !DILocation(line: 129, column: 13, scope: !1996)
!2004 = !DILocation(line: 130, column: 46, scope: !1996)
!2005 = !DILocation(line: 130, column: 9, scope: !1996)
!2006 = !DILocation(line: 132, column: 9, scope: !1996)
!2007 = !DILocation(line: 133, column: 19, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1996, file: !68, line: 132, column: 12)
!2009 = !DILocation(line: 133, column: 17, scope: !2008)
!2010 = !DILocation(line: 134, column: 19, scope: !2008)
!2011 = !DILocation(line: 134, column: 23, scope: !2008)
!2012 = !DILocation(line: 134, column: 17, scope: !2008)
!2013 = !DILocation(line: 135, column: 19, scope: !1996)
!2014 = !DILocation(line: 135, column: 18, scope: !1996)
!2015 = !DILocation(line: 135, column: 9, scope: !2008)
!2016 = distinct !{!2016, !2006, !2017}
!2017 = !DILocation(line: 135, column: 22, scope: !1996)
!2018 = !DILocation(line: 138, column: 1, scope: !1978)
!2019 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !2020, file: !2020, line: 176, type: !2021, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2025)
!2020 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/gpio_configure_pull_state/GCC")
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!58, !2023}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2025 = !{!2026}
!2026 = !DILocalVariable(name: "Register", arg: 1, scope: !2019, file: !2020, line: 176, type: !2023)
!2027 = !DILocation(line: 0, scope: !2019)
!2028 = !DILocation(line: 178, column: 13, scope: !2019)
!2029 = !DILocation(line: 178, column: 12, scope: !2019)
!2030 = !DILocation(line: 178, column: 5, scope: !2019)
!2031 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !2020, file: !2020, line: 171, type: !2032, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2034)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{null, !2023, !58}
!2034 = !{!2035, !2036}
!2035 = !DILocalVariable(name: "Register", arg: 1, scope: !2031, file: !2020, line: 171, type: !2023)
!2036 = !DILocalVariable(name: "Value", arg: 2, scope: !2031, file: !2020, line: 171, type: !58)
!2037 = !DILocation(line: 0, scope: !2031)
!2038 = !DILocation(line: 173, column: 6, scope: !2031)
!2039 = !DILocation(line: 173, column: 36, scope: !2031)
!2040 = !DILocation(line: 174, column: 1, scope: !2031)
!2041 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !68, file: !68, line: 145, type: !2042, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !210}
!2044 = !{!2045, !2046, !2047}
!2045 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2041, file: !68, line: 145, type: !210)
!2046 = !DILocalVariable(name: "reg", scope: !2041, file: !68, line: 147, type: !74)
!2047 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2041, file: !68, line: 148, type: !73)
!2048 = !DILocation(line: 0, scope: !2041)
!2049 = !DILocation(line: 147, column: 5, scope: !2041)
!2050 = !DILocation(line: 147, column: 23, scope: !2041)
!2051 = !DILocation(line: 150, column: 11, scope: !2041)
!2052 = !DILocation(line: 150, column: 9, scope: !2041)
!2053 = !DILocation(line: 151, column: 12, scope: !2041)
!2054 = !DILocation(line: 151, column: 16, scope: !2041)
!2055 = !DILocation(line: 151, column: 39, scope: !2041)
!2056 = !DILocation(line: 151, column: 9, scope: !2041)
!2057 = !DILocation(line: 153, column: 9, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2041, file: !68, line: 153, column: 9)
!2059 = !DILocation(line: 153, column: 13, scope: !2058)
!2060 = !DILocation(line: 153, column: 9, scope: !2041)
!2061 = !DILocation(line: 154, column: 15, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !68, line: 153, column: 45)
!2063 = !DILocation(line: 154, column: 13, scope: !2062)
!2064 = !DILocation(line: 155, column: 15, scope: !2062)
!2065 = !DILocation(line: 155, column: 19, scope: !2062)
!2066 = !DILocation(line: 155, column: 13, scope: !2062)
!2067 = !DILocation(line: 156, column: 15, scope: !2062)
!2068 = !DILocation(line: 156, column: 19, scope: !2062)
!2069 = !DILocation(line: 156, column: 13, scope: !2062)
!2070 = !DILocation(line: 157, column: 15, scope: !2062)
!2071 = !DILocation(line: 157, column: 13, scope: !2062)
!2072 = !DILocation(line: 158, column: 46, scope: !2062)
!2073 = !DILocation(line: 158, column: 9, scope: !2062)
!2074 = !DILocation(line: 160, column: 15, scope: !2062)
!2075 = !DILocation(line: 160, column: 13, scope: !2062)
!2076 = !DILocation(line: 161, column: 15, scope: !2062)
!2077 = !DILocation(line: 161, column: 19, scope: !2062)
!2078 = !DILocation(line: 161, column: 13, scope: !2062)
!2079 = !DILocation(line: 162, column: 15, scope: !2062)
!2080 = !DILocation(line: 162, column: 19, scope: !2062)
!2081 = !DILocation(line: 162, column: 13, scope: !2062)
!2082 = !DILocation(line: 163, column: 15, scope: !2062)
!2083 = !DILocation(line: 163, column: 19, scope: !2062)
!2084 = !DILocation(line: 163, column: 13, scope: !2062)
!2085 = !DILocation(line: 164, column: 46, scope: !2062)
!2086 = !DILocation(line: 164, column: 9, scope: !2062)
!2087 = !DILocation(line: 166, column: 9, scope: !2062)
!2088 = !DILocation(line: 167, column: 19, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2062, file: !68, line: 166, column: 12)
!2090 = !DILocation(line: 167, column: 17, scope: !2089)
!2091 = !DILocation(line: 168, column: 19, scope: !2089)
!2092 = !DILocation(line: 168, column: 23, scope: !2089)
!2093 = !DILocation(line: 168, column: 17, scope: !2089)
!2094 = !DILocation(line: 169, column: 19, scope: !2062)
!2095 = !DILocation(line: 169, column: 18, scope: !2062)
!2096 = !DILocation(line: 169, column: 9, scope: !2089)
!2097 = distinct !{!2097, !2087, !2098}
!2098 = !DILocation(line: 169, column: 22, scope: !2062)
!2099 = !DILocation(line: 171, column: 15, scope: !2062)
!2100 = !DILocation(line: 171, column: 13, scope: !2062)
!2101 = !DILocation(line: 172, column: 15, scope: !2062)
!2102 = !DILocation(line: 172, column: 19, scope: !2062)
!2103 = !DILocation(line: 172, column: 13, scope: !2062)
!2104 = !DILocation(line: 173, column: 15, scope: !2062)
!2105 = !DILocation(line: 173, column: 19, scope: !2062)
!2106 = !DILocation(line: 173, column: 13, scope: !2062)
!2107 = !DILocation(line: 174, column: 5, scope: !2062)
!2108 = !DILocation(line: 176, column: 11, scope: !2041)
!2109 = !DILocation(line: 176, column: 9, scope: !2041)
!2110 = !DILocation(line: 177, column: 9, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2041, file: !68, line: 177, column: 9)
!2112 = !DILocation(line: 0, scope: !2111)
!2113 = !DILocation(line: 177, column: 9, scope: !2041)
!2114 = !DILocation(line: 178, column: 19, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !68, line: 177, column: 17)
!2116 = !DILocation(line: 178, column: 13, scope: !2115)
!2117 = !DILocation(line: 179, column: 5, scope: !2115)
!2118 = !DILocation(line: 180, column: 13, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2111, file: !68, line: 179, column: 12)
!2120 = !DILocation(line: 182, column: 42, scope: !2041)
!2121 = !DILocation(line: 182, column: 5, scope: !2041)
!2122 = !DILocation(line: 184, column: 1, scope: !2041)
!2123 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !68, file: !68, line: 191, type: !335, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2124)
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "reg", scope: !2123, file: !68, line: 193, type: !74)
!2126 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2123, file: !68, line: 194, type: !73)
!2127 = !DILocation(line: 193, column: 5, scope: !2123)
!2128 = !DILocation(line: 193, column: 23, scope: !2123)
!2129 = !DILocation(line: 0, scope: !2123)
!2130 = !DILocation(line: 196, column: 11, scope: !2123)
!2131 = !DILocation(line: 196, column: 9, scope: !2123)
!2132 = !DILocation(line: 197, column: 11, scope: !2123)
!2133 = !DILocation(line: 197, column: 15, scope: !2123)
!2134 = !DILocation(line: 197, column: 9, scope: !2123)
!2135 = !DILocation(line: 198, column: 11, scope: !2123)
!2136 = !DILocation(line: 198, column: 15, scope: !2123)
!2137 = !DILocation(line: 198, column: 9, scope: !2123)
!2138 = !DILocation(line: 199, column: 11, scope: !2123)
!2139 = !DILocation(line: 199, column: 9, scope: !2123)
!2140 = !DILocation(line: 200, column: 42, scope: !2123)
!2141 = !DILocation(line: 200, column: 5, scope: !2123)
!2142 = !DILocation(line: 202, column: 11, scope: !2123)
!2143 = !DILocation(line: 202, column: 9, scope: !2123)
!2144 = !DILocation(line: 203, column: 11, scope: !2123)
!2145 = !DILocation(line: 203, column: 15, scope: !2123)
!2146 = !DILocation(line: 203, column: 9, scope: !2123)
!2147 = !DILocation(line: 204, column: 11, scope: !2123)
!2148 = !DILocation(line: 204, column: 15, scope: !2123)
!2149 = !DILocation(line: 204, column: 9, scope: !2123)
!2150 = !DILocation(line: 205, column: 11, scope: !2123)
!2151 = !DILocation(line: 205, column: 9, scope: !2123)
!2152 = !DILocation(line: 206, column: 42, scope: !2123)
!2153 = !DILocation(line: 206, column: 5, scope: !2123)
!2154 = !DILocation(line: 209, column: 1, scope: !2123)
!2155 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !68, file: !68, line: 216, type: !335, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2156)
!2156 = !{!2157, !2158}
!2157 = !DILocalVariable(name: "reg", scope: !2155, file: !68, line: 218, type: !74)
!2158 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2155, file: !68, line: 219, type: !73)
!2159 = !DILocation(line: 218, column: 5, scope: !2155)
!2160 = !DILocation(line: 218, column: 23, scope: !2155)
!2161 = !DILocation(line: 0, scope: !2155)
!2162 = !DILocation(line: 222, column: 11, scope: !2155)
!2163 = !DILocation(line: 222, column: 9, scope: !2155)
!2164 = !DILocation(line: 223, column: 11, scope: !2155)
!2165 = !DILocation(line: 223, column: 15, scope: !2155)
!2166 = !DILocation(line: 223, column: 9, scope: !2155)
!2167 = !DILocation(line: 224, column: 11, scope: !2155)
!2168 = !DILocation(line: 224, column: 9, scope: !2155)
!2169 = !DILocation(line: 225, column: 39, scope: !2155)
!2170 = !DILocation(line: 225, column: 5, scope: !2155)
!2171 = !DILocation(line: 228, column: 11, scope: !2155)
!2172 = !DILocation(line: 228, column: 9, scope: !2155)
!2173 = !DILocation(line: 229, column: 11, scope: !2155)
!2174 = !DILocation(line: 229, column: 15, scope: !2155)
!2175 = !DILocation(line: 229, column: 9, scope: !2155)
!2176 = !DILocation(line: 230, column: 11, scope: !2155)
!2177 = !DILocation(line: 230, column: 9, scope: !2155)
!2178 = !DILocation(line: 231, column: 39, scope: !2155)
!2179 = !DILocation(line: 231, column: 5, scope: !2155)
!2180 = !DILocation(line: 233, column: 5, scope: !2155)
!2181 = !DILocation(line: 233, column: 12, scope: !2155)
!2182 = !DILocation(line: 233, column: 19, scope: !2155)
!2183 = !DILocation(line: 233, column: 16, scope: !2155)
!2184 = distinct !{!2184, !2180, !2185}
!2185 = !DILocation(line: 233, column: 52, scope: !2155)
!2186 = !DILocation(line: 235, column: 21, scope: !2155)
!2187 = !DILocation(line: 235, column: 19, scope: !2155)
!2188 = !DILocation(line: 236, column: 5, scope: !2155)
!2189 = !DILocation(line: 237, column: 17, scope: !2155)
!2190 = !DILocation(line: 237, column: 33, scope: !2155)
!2191 = !DILocation(line: 237, column: 5, scope: !2155)
!2192 = !DILocation(line: 239, column: 1, scope: !2155)
!2193 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !68, file: !68, line: 246, type: !335, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2194)
!2194 = !{!2195, !2196}
!2195 = !DILocalVariable(name: "reg", scope: !2193, file: !68, line: 248, type: !74)
!2196 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2193, file: !68, line: 249, type: !73)
!2197 = !DILocation(line: 248, column: 5, scope: !2193)
!2198 = !DILocation(line: 248, column: 23, scope: !2193)
!2199 = !DILocation(line: 0, scope: !2193)
!2200 = !DILocation(line: 252, column: 5, scope: !2193)
!2201 = !DILocation(line: 255, column: 11, scope: !2193)
!2202 = !DILocation(line: 255, column: 9, scope: !2193)
!2203 = !DILocation(line: 256, column: 11, scope: !2193)
!2204 = !DILocation(line: 256, column: 15, scope: !2193)
!2205 = !DILocation(line: 256, column: 9, scope: !2193)
!2206 = !DILocation(line: 257, column: 11, scope: !2193)
!2207 = !DILocation(line: 257, column: 15, scope: !2193)
!2208 = !DILocation(line: 257, column: 9, scope: !2193)
!2209 = !DILocation(line: 258, column: 39, scope: !2193)
!2210 = !DILocation(line: 258, column: 5, scope: !2193)
!2211 = !DILocation(line: 260, column: 5, scope: !2193)
!2212 = !DILocation(line: 260, column: 12, scope: !2193)
!2213 = !DILocation(line: 260, column: 19, scope: !2193)
!2214 = !DILocation(line: 260, column: 16, scope: !2193)
!2215 = distinct !{!2215, !2211, !2216}
!2216 = !DILocation(line: 260, column: 52, scope: !2193)
!2217 = !DILocation(line: 263, column: 11, scope: !2193)
!2218 = !DILocation(line: 263, column: 9, scope: !2193)
!2219 = !DILocation(line: 264, column: 11, scope: !2193)
!2220 = !DILocation(line: 264, column: 15, scope: !2193)
!2221 = !DILocation(line: 264, column: 9, scope: !2193)
!2222 = !DILocation(line: 265, column: 11, scope: !2193)
!2223 = !DILocation(line: 265, column: 15, scope: !2193)
!2224 = !DILocation(line: 265, column: 9, scope: !2193)
!2225 = !DILocation(line: 266, column: 39, scope: !2193)
!2226 = !DILocation(line: 266, column: 5, scope: !2193)
!2227 = !DILocation(line: 269, column: 11, scope: !2193)
!2228 = !DILocation(line: 269, column: 9, scope: !2193)
!2229 = !DILocation(line: 270, column: 11, scope: !2193)
!2230 = !DILocation(line: 270, column: 15, scope: !2193)
!2231 = !DILocation(line: 270, column: 9, scope: !2193)
!2232 = !DILocation(line: 271, column: 11, scope: !2193)
!2233 = !DILocation(line: 271, column: 15, scope: !2193)
!2234 = !DILocation(line: 271, column: 9, scope: !2193)
!2235 = !DILocation(line: 272, column: 39, scope: !2193)
!2236 = !DILocation(line: 272, column: 5, scope: !2193)
!2237 = !DILocation(line: 273, column: 19, scope: !2193)
!2238 = !DILocation(line: 274, column: 5, scope: !2193)
!2239 = !DILocation(line: 275, column: 17, scope: !2193)
!2240 = !DILocation(line: 275, column: 33, scope: !2193)
!2241 = !DILocation(line: 275, column: 5, scope: !2193)
!2242 = !DILocation(line: 277, column: 1, scope: !2193)
!2243 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !68, file: !68, line: 284, type: !335, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2244)
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "reg", scope: !2243, file: !68, line: 286, type: !74)
!2246 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2243, file: !68, line: 287, type: !73)
!2247 = !DILocation(line: 286, column: 5, scope: !2243)
!2248 = !DILocation(line: 286, column: 23, scope: !2243)
!2249 = !DILocation(line: 0, scope: !2243)
!2250 = !DILocation(line: 290, column: 5, scope: !2243)
!2251 = !DILocation(line: 293, column: 11, scope: !2243)
!2252 = !DILocation(line: 293, column: 9, scope: !2243)
!2253 = !DILocation(line: 294, column: 11, scope: !2243)
!2254 = !DILocation(line: 294, column: 15, scope: !2243)
!2255 = !DILocation(line: 294, column: 9, scope: !2243)
!2256 = !DILocation(line: 295, column: 11, scope: !2243)
!2257 = !DILocation(line: 295, column: 15, scope: !2243)
!2258 = !DILocation(line: 295, column: 9, scope: !2243)
!2259 = !DILocation(line: 296, column: 39, scope: !2243)
!2260 = !DILocation(line: 296, column: 5, scope: !2243)
!2261 = !DILocation(line: 298, column: 5, scope: !2243)
!2262 = !DILocation(line: 298, column: 12, scope: !2243)
!2263 = !DILocation(line: 298, column: 19, scope: !2243)
!2264 = !DILocation(line: 298, column: 16, scope: !2243)
!2265 = distinct !{!2265, !2261, !2266}
!2266 = !DILocation(line: 298, column: 52, scope: !2243)
!2267 = !DILocation(line: 301, column: 11, scope: !2243)
!2268 = !DILocation(line: 301, column: 9, scope: !2243)
!2269 = !DILocation(line: 302, column: 11, scope: !2243)
!2270 = !DILocation(line: 302, column: 15, scope: !2243)
!2271 = !DILocation(line: 302, column: 9, scope: !2243)
!2272 = !DILocation(line: 303, column: 11, scope: !2243)
!2273 = !DILocation(line: 303, column: 15, scope: !2243)
!2274 = !DILocation(line: 303, column: 9, scope: !2243)
!2275 = !DILocation(line: 304, column: 39, scope: !2243)
!2276 = !DILocation(line: 304, column: 5, scope: !2243)
!2277 = !DILocation(line: 307, column: 11, scope: !2243)
!2278 = !DILocation(line: 307, column: 9, scope: !2243)
!2279 = !DILocation(line: 308, column: 11, scope: !2243)
!2280 = !DILocation(line: 308, column: 15, scope: !2243)
!2281 = !DILocation(line: 308, column: 9, scope: !2243)
!2282 = !DILocation(line: 309, column: 11, scope: !2243)
!2283 = !DILocation(line: 309, column: 15, scope: !2243)
!2284 = !DILocation(line: 309, column: 9, scope: !2243)
!2285 = !DILocation(line: 310, column: 39, scope: !2243)
!2286 = !DILocation(line: 310, column: 5, scope: !2243)
!2287 = !DILocation(line: 311, column: 19, scope: !2243)
!2288 = !DILocation(line: 312, column: 5, scope: !2243)
!2289 = !DILocation(line: 313, column: 17, scope: !2243)
!2290 = !DILocation(line: 313, column: 33, scope: !2243)
!2291 = !DILocation(line: 313, column: 5, scope: !2243)
!2292 = !DILocation(line: 315, column: 1, scope: !2243)
!2293 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !68, file: !68, line: 323, type: !335, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2294)
!2294 = !{!2295, !2296}
!2295 = !DILocalVariable(name: "reg", scope: !2293, file: !68, line: 325, type: !74)
!2296 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2293, file: !68, line: 326, type: !73)
!2297 = !DILocation(line: 325, column: 5, scope: !2293)
!2298 = !DILocation(line: 325, column: 23, scope: !2293)
!2299 = !DILocation(line: 0, scope: !2293)
!2300 = !DILocation(line: 329, column: 5, scope: !2293)
!2301 = !DILocation(line: 332, column: 11, scope: !2293)
!2302 = !DILocation(line: 332, column: 9, scope: !2293)
!2303 = !DILocation(line: 333, column: 11, scope: !2293)
!2304 = !DILocation(line: 333, column: 15, scope: !2293)
!2305 = !DILocation(line: 333, column: 9, scope: !2293)
!2306 = !DILocation(line: 334, column: 11, scope: !2293)
!2307 = !DILocation(line: 334, column: 9, scope: !2293)
!2308 = !DILocation(line: 335, column: 39, scope: !2293)
!2309 = !DILocation(line: 335, column: 5, scope: !2293)
!2310 = !DILocation(line: 337, column: 5, scope: !2293)
!2311 = !DILocation(line: 337, column: 12, scope: !2293)
!2312 = !DILocation(line: 337, column: 19, scope: !2293)
!2313 = !DILocation(line: 337, column: 16, scope: !2293)
!2314 = distinct !{!2314, !2310, !2315}
!2315 = !DILocation(line: 337, column: 52, scope: !2293)
!2316 = !DILocation(line: 340, column: 11, scope: !2293)
!2317 = !DILocation(line: 340, column: 9, scope: !2293)
!2318 = !DILocation(line: 341, column: 11, scope: !2293)
!2319 = !DILocation(line: 341, column: 15, scope: !2293)
!2320 = !DILocation(line: 341, column: 9, scope: !2293)
!2321 = !DILocation(line: 342, column: 11, scope: !2293)
!2322 = !DILocation(line: 342, column: 15, scope: !2293)
!2323 = !DILocation(line: 342, column: 9, scope: !2293)
!2324 = !DILocation(line: 343, column: 39, scope: !2293)
!2325 = !DILocation(line: 343, column: 5, scope: !2293)
!2326 = !DILocation(line: 344, column: 19, scope: !2293)
!2327 = !DILocation(line: 345, column: 5, scope: !2293)
!2328 = !DILocation(line: 346, column: 17, scope: !2293)
!2329 = !DILocation(line: 346, column: 33, scope: !2293)
!2330 = !DILocation(line: 346, column: 5, scope: !2293)
!2331 = !DILocation(line: 348, column: 1, scope: !2293)
!2332 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !68, file: !68, line: 353, type: !335, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !67, retainedNodes: !2333)
!2333 = !{!2334, !2335}
!2334 = !DILocalVariable(name: "reg", scope: !2332, file: !68, line: 355, type: !76)
!2335 = !DILocalVariable(name: "pTopCfgHclk", scope: !2332, file: !68, line: 356, type: !75)
!2336 = !DILocation(line: 355, column: 5, scope: !2332)
!2337 = !DILocation(line: 355, column: 21, scope: !2332)
!2338 = !DILocation(line: 0, scope: !2332)
!2339 = !DILocation(line: 358, column: 11, scope: !2332)
!2340 = !DILocation(line: 358, column: 9, scope: !2332)
!2341 = !DILocation(line: 359, column: 11, scope: !2332)
!2342 = !DILocation(line: 359, column: 15, scope: !2332)
!2343 = !DILocation(line: 359, column: 9, scope: !2332)
!2344 = !DILocation(line: 360, column: 11, scope: !2332)
!2345 = !DILocation(line: 360, column: 9, scope: !2332)
!2346 = !DILocation(line: 361, column: 37, scope: !2332)
!2347 = !DILocation(line: 361, column: 5, scope: !2332)
!2348 = !DILocation(line: 362, column: 1, scope: !2332)
!2349 = distinct !DISubprogram(name: "getc", scope: !83, file: !83, line: 68, type: !2350, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2352)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!125}
!2352 = !{!2353}
!2353 = !DILocalVariable(name: "rc", scope: !2349, file: !83, line: 71, type: !125)
!2354 = !DILocation(line: 71, column: 14, scope: !2349)
!2355 = !DILocation(line: 0, scope: !2349)
!2356 = !DILocation(line: 72, column: 5, scope: !2349)
!2357 = distinct !DISubprogram(name: "getc_nowait", scope: !83, file: !83, line: 80, type: !2350, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2358)
!2358 = !{!2359}
!2359 = !DILocalVariable(name: "c", scope: !2357, file: !83, line: 82, type: !326)
!2360 = !DILocation(line: 84, column: 9, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !83, line: 84, column: 9)
!2362 = !DILocation(line: 84, column: 40, scope: !2361)
!2363 = !DILocation(line: 84, column: 9, scope: !2357)
!2364 = !DILocation(line: 85, column: 13, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !83, line: 84, column: 47)
!2366 = !DILocation(line: 86, column: 16, scope: !2365)
!2367 = !DILocation(line: 0, scope: !2357)
!2368 = !DILocation(line: 86, column: 9, scope: !2365)
!2369 = !DILocation(line: 0, scope: !2361)
!2370 = !DILocation(line: 90, column: 1, scope: !2357)
!2371 = distinct !DISubprogram(name: "uart_output_char", scope: !83, file: !83, line: 93, type: !2372, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2375)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !2374, !114}
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !86, line: 75, baseType: !85)
!2375 = !{!2376, !2377, !2378}
!2376 = !DILocalVariable(name: "port_no", arg: 1, scope: !2371, file: !83, line: 93, type: !2374)
!2377 = !DILocalVariable(name: "c", arg: 2, scope: !2371, file: !83, line: 93, type: !114)
!2378 = !DILocalVariable(name: "base", scope: !2371, file: !83, line: 95, type: !7)
!2379 = !DILocation(line: 0, scope: !2371)
!2380 = !DILocation(line: 95, column: 25, scope: !2371)
!2381 = !DILocation(line: 97, column: 5, scope: !2371)
!2382 = !DILocation(line: 97, column: 14, scope: !2371)
!2383 = !DILocation(line: 97, column: 42, scope: !2371)
!2384 = !DILocation(line: 97, column: 12, scope: !2371)
!2385 = distinct !{!2385, !2381, !2386}
!2386 = !DILocation(line: 98, column: 9, scope: !2371)
!2387 = !DILocation(line: 99, column: 35, scope: !2371)
!2388 = !DILocation(line: 99, column: 5, scope: !2371)
!2389 = !DILocation(line: 99, column: 33, scope: !2371)
!2390 = !DILocation(line: 102, column: 1, scope: !2371)
!2391 = distinct !DISubprogram(name: "uart_input_char", scope: !83, file: !83, line: 106, type: !2392, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!210, !2374}
!2394 = !{!2395, !2396, !2397}
!2395 = !DILocalVariable(name: "port_no", arg: 1, scope: !2391, file: !83, line: 106, type: !2374)
!2396 = !DILocalVariable(name: "base", scope: !2391, file: !83, line: 108, type: !7)
!2397 = !DILocalVariable(name: "c", scope: !2391, file: !83, line: 109, type: !326)
!2398 = !DILocation(line: 0, scope: !2391)
!2399 = !DILocation(line: 108, column: 25, scope: !2391)
!2400 = !DILocation(line: 111, column: 5, scope: !2391)
!2401 = !DILocation(line: 111, column: 14, scope: !2391)
!2402 = !DILocation(line: 111, column: 42, scope: !2391)
!2403 = !DILocation(line: 111, column: 12, scope: !2391)
!2404 = distinct !{!2404, !2400, !2405}
!2405 = !DILocation(line: 112, column: 9, scope: !2391)
!2406 = !DILocation(line: 114, column: 9, scope: !2391)
!2407 = !DILocation(line: 116, column: 5, scope: !2391)
!2408 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !83, file: !83, line: 120, type: !2409, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!58, !2374}
!2411 = !{!2412, !2413, !2414}
!2412 = !DILocalVariable(name: "port_no", arg: 1, scope: !2408, file: !83, line: 120, type: !2374)
!2413 = !DILocalVariable(name: "base", scope: !2408, file: !83, line: 122, type: !7)
!2414 = !DILocalVariable(name: "c", scope: !2408, file: !83, line: 123, type: !326)
!2415 = !DILocation(line: 0, scope: !2408)
!2416 = !DILocation(line: 122, column: 25, scope: !2408)
!2417 = !DILocation(line: 125, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2408, file: !83, line: 125, column: 9)
!2419 = !DILocation(line: 125, column: 37, scope: !2418)
!2420 = !DILocation(line: 125, column: 9, scope: !2408)
!2421 = !DILocation(line: 126, column: 13, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2418, file: !83, line: 125, column: 44)
!2423 = !DILocation(line: 127, column: 16, scope: !2422)
!2424 = !DILocation(line: 127, column: 9, scope: !2422)
!2425 = !DILocation(line: 0, scope: !2418)
!2426 = !DILocation(line: 131, column: 1, scope: !2408)
!2427 = distinct !DISubprogram(name: "halUART_HWInit", scope: !83, file: !83, line: 136, type: !2428, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2430)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{null, !2374}
!2430 = !{!2431}
!2431 = !DILocalVariable(name: "u_port", arg: 1, scope: !2427, file: !83, line: 136, type: !2374)
!2432 = !DILocation(line: 0, scope: !2427)
!2433 = !DILocation(line: 139, column: 5, scope: !2427)
!2434 = !DILocation(line: 140, column: 9, scope: !2427)
!2435 = !DILocation(line: 153, column: 5, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !83, line: 147, column: 38)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !83, line: 147, column: 16)
!2438 = distinct !DILexicalBlock(scope: !2427, file: !83, line: 140, column: 9)
!2439 = !DILocation(line: 0, scope: !2438)
!2440 = !DILocation(line: 155, column: 1, scope: !2427)
!2441 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !83, file: !83, line: 158, type: !2442, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2446)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !2374, !58, !2444, !2444, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !59, line: 36, baseType: !2445)
!2445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !61, line: 57, baseType: !112)
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2462, !2463}
!2447 = !DILocalVariable(name: "u_port", arg: 1, scope: !2441, file: !83, line: 158, type: !2374)
!2448 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2441, file: !83, line: 158, type: !58)
!2449 = !DILocalVariable(name: "databit", arg: 3, scope: !2441, file: !83, line: 158, type: !2444)
!2450 = !DILocalVariable(name: "parity", arg: 4, scope: !2441, file: !83, line: 158, type: !2444)
!2451 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2441, file: !83, line: 158, type: !2444)
!2452 = !DILocalVariable(name: "control_word", scope: !2441, file: !83, line: 160, type: !2444)
!2453 = !DILocalVariable(name: "UART_BASE", scope: !2441, file: !83, line: 161, type: !58)
!2454 = !DILocalVariable(name: "data", scope: !2441, file: !83, line: 162, type: !58)
!2455 = !DILocalVariable(name: "uart_lcr", scope: !2441, file: !83, line: 162, type: !58)
!2456 = !DILocalVariable(name: "high_speed_div", scope: !2441, file: !83, line: 162, type: !58)
!2457 = !DILocalVariable(name: "sample_count", scope: !2441, file: !83, line: 162, type: !58)
!2458 = !DILocalVariable(name: "sample_point", scope: !2441, file: !83, line: 162, type: !58)
!2459 = !DILocalVariable(name: "fraction", scope: !2441, file: !83, line: 162, type: !58)
!2460 = !DILocalVariable(name: "fraction_L_mapping", scope: !2441, file: !83, line: 163, type: !2461)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2444, size: 176, elements: !673)
!2462 = !DILocalVariable(name: "fraction_M_mapping", scope: !2441, file: !83, line: 164, type: !2461)
!2463 = !DILocalVariable(name: "status", scope: !2441, file: !83, line: 165, type: !181)
!2464 = !DILocation(line: 0, scope: !2441)
!2465 = !DILocation(line: 163, column: 15, scope: !2441)
!2466 = !DILocation(line: 164, column: 15, scope: !2441)
!2467 = !DILocation(line: 166, column: 20, scope: !2441)
!2468 = !DILocation(line: 166, column: 18, scope: !2441)
!2469 = !DILocation(line: 168, column: 9, scope: !2441)
!2470 = !DILocation(line: 176, column: 5, scope: !2441)
!2471 = !DILocation(line: 176, column: 44, scope: !2441)
!2472 = !DILocation(line: 177, column: 16, scope: !2441)
!2473 = !DILocation(line: 178, column: 50, scope: !2441)
!2474 = !DILocation(line: 178, column: 38, scope: !2441)
!2475 = !DILocation(line: 179, column: 12, scope: !2441)
!2476 = !DILocation(line: 179, column: 25, scope: !2441)
!2477 = !DILocation(line: 180, column: 28, scope: !2441)
!2478 = !DILocation(line: 180, column: 34, scope: !2441)
!2479 = !DILocation(line: 182, column: 29, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2441, file: !83, line: 181, column: 5)
!2481 = !DILocation(line: 182, column: 46, scope: !2480)
!2482 = !DILocation(line: 183, column: 26, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !83, line: 183, column: 13)
!2484 = !DILocation(line: 183, column: 13, scope: !2480)
!2485 = !DILocation(line: 192, column: 30, scope: !2441)
!2486 = !DILocation(line: 192, column: 35, scope: !2441)
!2487 = !DILocation(line: 192, column: 46, scope: !2441)
!2488 = !DILocation(line: 192, column: 74, scope: !2441)
!2489 = !DILocation(line: 192, column: 53, scope: !2441)
!2490 = !DILocation(line: 192, column: 80, scope: !2441)
!2491 = !DILocation(line: 193, column: 56, scope: !2441)
!2492 = !DILocation(line: 193, column: 5, scope: !2441)
!2493 = !DILocation(line: 193, column: 38, scope: !2441)
!2494 = !DILocation(line: 194, column: 57, scope: !2441)
!2495 = !DILocation(line: 194, column: 63, scope: !2441)
!2496 = !DILocation(line: 194, column: 5, scope: !2441)
!2497 = !DILocation(line: 194, column: 38, scope: !2441)
!2498 = !DILocation(line: 195, column: 5, scope: !2441)
!2499 = !DILocation(line: 195, column: 45, scope: !2441)
!2500 = !DILocation(line: 196, column: 5, scope: !2441)
!2501 = !DILocation(line: 196, column: 47, scope: !2441)
!2502 = !DILocation(line: 197, column: 46, scope: !2441)
!2503 = !DILocation(line: 197, column: 5, scope: !2441)
!2504 = !DILocation(line: 197, column: 44, scope: !2441)
!2505 = !DILocation(line: 198, column: 46, scope: !2441)
!2506 = !DILocation(line: 198, column: 5, scope: !2441)
!2507 = !DILocation(line: 198, column: 44, scope: !2441)
!2508 = !DILocation(line: 199, column: 38, scope: !2441)
!2509 = !DILocation(line: 200, column: 5, scope: !2441)
!2510 = !DILocation(line: 200, column: 38, scope: !2441)
!2511 = !DILocation(line: 202, column: 20, scope: !2441)
!2512 = !DILocation(line: 203, column: 18, scope: !2441)
!2513 = !DILocation(line: 205, column: 18, scope: !2441)
!2514 = !DILocation(line: 207, column: 18, scope: !2441)
!2515 = !DILocation(line: 208, column: 18, scope: !2441)
!2516 = !DILocation(line: 209, column: 5, scope: !2441)
!2517 = !DILocation(line: 213, column: 1, scope: !2441)
!2518 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !83, file: !83, line: 215, type: !2519, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2522)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{null, !2374, !181, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 32)
!2522 = !{!2523, !2524, !2525}
!2523 = !DILocalVariable(name: "u_port", arg: 1, scope: !2518, file: !83, line: 215, type: !2374)
!2524 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2518, file: !83, line: 215, type: !181)
!2525 = !DILocalVariable(name: "length", arg: 3, scope: !2518, file: !83, line: 215, type: !2521)
!2526 = !DILocation(line: 0, scope: !2518)
!2527 = !DILocation(line: 217, column: 16, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2518, file: !83, line: 217, column: 9)
!2529 = !DILocation(line: 0, scope: !2528)
!2530 = !DILocation(line: 217, column: 9, scope: !2518)
!2531 = !DILocation(line: 218, column: 13, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !83, line: 217, column: 31)
!2533 = !DILocation(line: 219, column: 23, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !83, line: 218, column: 20)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !83, line: 218, column: 13)
!2536 = !DILocation(line: 220, column: 9, scope: !2534)
!2537 = !DILocation(line: 221, column: 23, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !83, line: 220, column: 16)
!2539 = !DILocation(line: 221, column: 21, scope: !2538)
!2540 = !DILocation(line: 222, column: 24, scope: !2538)
!2541 = !DILocation(line: 222, column: 21, scope: !2538)
!2542 = !DILocation(line: 225, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2528, file: !83, line: 224, column: 12)
!2544 = !DILocation(line: 226, column: 23, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !83, line: 225, column: 20)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !83, line: 225, column: 13)
!2547 = !DILocation(line: 227, column: 9, scope: !2545)
!2548 = !DILocation(line: 228, column: 23, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !83, line: 227, column: 16)
!2550 = !DILocation(line: 228, column: 21, scope: !2549)
!2551 = !DILocation(line: 229, column: 24, scope: !2549)
!2552 = !DILocation(line: 229, column: 21, scope: !2549)
!2553 = !DILocation(line: 233, column: 5, scope: !2518)
!2554 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !83, file: !83, line: 236, type: !2555, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{null, !2374, !378, !58}
!2557 = !{!2558, !2559, !2560, !2561}
!2558 = !DILocalVariable(name: "u_port", arg: 1, scope: !2554, file: !83, line: 236, type: !2374)
!2559 = !DILocalVariable(name: "data", arg: 2, scope: !2554, file: !83, line: 236, type: !378)
!2560 = !DILocalVariable(name: "length", arg: 3, scope: !2554, file: !83, line: 236, type: !58)
!2561 = !DILocalVariable(name: "idx", scope: !2554, file: !83, line: 238, type: !72)
!2562 = !DILocation(line: 0, scope: !2554)
!2563 = !DILocation(line: 239, column: 23, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2565, file: !83, line: 239, column: 5)
!2565 = distinct !DILexicalBlock(scope: !2554, file: !83, line: 239, column: 5)
!2566 = !DILocation(line: 239, column: 5, scope: !2565)
!2567 = !DILocation(line: 240, column: 13, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !83, line: 239, column: 40)
!2569 = !DILocation(line: 244, column: 9, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !83, line: 242, column: 42)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !83, line: 242, column: 20)
!2572 = distinct !DILexicalBlock(scope: !2568, file: !83, line: 240, column: 13)
!2573 = !DILocation(line: 0, scope: !2572)
!2574 = !DILocation(line: 239, column: 36, scope: !2564)
!2575 = distinct !{!2575, !2566, !2576}
!2576 = !DILocation(line: 246, column: 5, scope: !2565)
!2577 = !DILocation(line: 249, column: 1, scope: !2554)
!2578 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !83, file: !83, line: 251, type: !2579, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2583)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !2374, !2581, !58}
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!2583 = !{!2584, !2585, !2586, !2587}
!2584 = !DILocalVariable(name: "u_port", arg: 1, scope: !2578, file: !83, line: 251, type: !2374)
!2585 = !DILocalVariable(name: "data", arg: 2, scope: !2578, file: !83, line: 251, type: !2581)
!2586 = !DILocalVariable(name: "length", arg: 3, scope: !2578, file: !83, line: 251, type: !58)
!2587 = !DILocalVariable(name: "idx", scope: !2578, file: !83, line: 253, type: !72)
!2588 = !DILocation(line: 0, scope: !2578)
!2589 = !DILocation(line: 254, column: 23, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !83, line: 254, column: 5)
!2591 = distinct !DILexicalBlock(scope: !2578, file: !83, line: 254, column: 5)
!2592 = !DILocation(line: 254, column: 5, scope: !2591)
!2593 = !DILocation(line: 255, column: 13, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !83, line: 254, column: 40)
!2595 = !DILocation(line: 256, column: 61, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !83, line: 255, column: 35)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !83, line: 255, column: 13)
!2598 = !DILocation(line: 256, column: 59, scope: !2596)
!2599 = !DILocation(line: 257, column: 9, scope: !2596)
!2600 = !DILocation(line: 258, column: 61, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !83, line: 257, column: 42)
!2602 = distinct !DILexicalBlock(scope: !2597, file: !83, line: 257, column: 20)
!2603 = !DILocation(line: 258, column: 59, scope: !2601)
!2604 = !DILocation(line: 259, column: 9, scope: !2601)
!2605 = !DILocation(line: 254, column: 36, scope: !2590)
!2606 = distinct !{!2606, !2592, !2607}
!2607 = !DILocation(line: 261, column: 5, scope: !2591)
!2608 = !DILocation(line: 264, column: 1, scope: !2578)
!2609 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !83, file: !83, line: 266, type: !2610, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2374, !378, !58, !58}
!2612 = !{!2613, !2614, !2615, !2616}
!2613 = !DILocalVariable(name: "u_port", arg: 1, scope: !2609, file: !83, line: 266, type: !2374)
!2614 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2609, file: !83, line: 266, type: !378)
!2615 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2609, file: !83, line: 266, type: !58)
!2616 = !DILocalVariable(name: "threshold", arg: 4, scope: !2609, file: !83, line: 266, type: !58)
!2617 = !DILocation(line: 0, scope: !2609)
!2618 = !DILocation(line: 268, column: 9, scope: !2609)
!2619 = !DILocation(line: 274, column: 5, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !83, line: 271, column: 38)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !83, line: 271, column: 16)
!2622 = distinct !DILexicalBlock(scope: !2609, file: !83, line: 268, column: 9)
!2623 = !DILocation(line: 0, scope: !2622)
!2624 = !DILocation(line: 276, column: 1, scope: !2609)
!2625 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !83, file: !83, line: 278, type: !2626, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{null, !2374, !378, !58, !58, !58, !58}
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634}
!2629 = !DILocalVariable(name: "u_port", arg: 1, scope: !2625, file: !83, line: 278, type: !2374)
!2630 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2625, file: !83, line: 278, type: !378)
!2631 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2625, file: !83, line: 278, type: !58)
!2632 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2625, file: !83, line: 278, type: !58)
!2633 = !DILocalVariable(name: "threshold", arg: 5, scope: !2625, file: !83, line: 278, type: !58)
!2634 = !DILocalVariable(name: "timeout", arg: 6, scope: !2625, file: !83, line: 278, type: !58)
!2635 = !DILocation(line: 0, scope: !2625)
!2636 = !DILocation(line: 280, column: 9, scope: !2625)
!2637 = !DILocation(line: 286, column: 5, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !83, line: 283, column: 38)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !83, line: 283, column: 16)
!2640 = distinct !DILexicalBlock(scope: !2625, file: !83, line: 280, column: 9)
!2641 = !DILocation(line: 0, scope: !2640)
!2642 = !DILocation(line: 288, column: 1, scope: !2625)
!2643 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !83, file: !83, line: 290, type: !2644, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !2374, !333}
!2646 = !{!2647, !2648}
!2647 = !DILocalVariable(name: "u_port", arg: 1, scope: !2643, file: !83, line: 290, type: !2374)
!2648 = !DILocalVariable(name: "func", arg: 2, scope: !2643, file: !83, line: 290, type: !333)
!2649 = !DILocation(line: 0, scope: !2643)
!2650 = !DILocation(line: 292, column: 9, scope: !2643)
!2651 = !DILocation(line: 296, column: 5, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !83, line: 294, column: 38)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !83, line: 294, column: 16)
!2654 = distinct !DILexicalBlock(scope: !2643, file: !83, line: 292, column: 9)
!2655 = !DILocation(line: 0, scope: !2654)
!2656 = !DILocation(line: 298, column: 1, scope: !2643)
!2657 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !83, file: !83, line: 300, type: !2644, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2658)
!2658 = !{!2659, !2660}
!2659 = !DILocalVariable(name: "u_port", arg: 1, scope: !2657, file: !83, line: 300, type: !2374)
!2660 = !DILocalVariable(name: "func", arg: 2, scope: !2657, file: !83, line: 300, type: !333)
!2661 = !DILocation(line: 0, scope: !2657)
!2662 = !DILocation(line: 302, column: 9, scope: !2657)
!2663 = !DILocation(line: 306, column: 5, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !83, line: 304, column: 38)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !83, line: 304, column: 16)
!2666 = distinct !DILexicalBlock(scope: !2657, file: !83, line: 302, column: 9)
!2667 = !DILocation(line: 0, scope: !2666)
!2668 = !DILocation(line: 308, column: 1, scope: !2657)
!2669 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !83, file: !83, line: 310, type: !2428, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2670)
!2670 = !{!2671, !2672, !2673, !2674}
!2671 = !DILocalVariable(name: "u_port", arg: 1, scope: !2669, file: !83, line: 310, type: !2374)
!2672 = !DILocalVariable(name: "base", scope: !2669, file: !83, line: 312, type: !7)
!2673 = !DILocalVariable(name: "EFR", scope: !2669, file: !83, line: 313, type: !2444)
!2674 = !DILocalVariable(name: "LCR", scope: !2669, file: !83, line: 313, type: !2444)
!2675 = !DILocation(line: 0, scope: !2669)
!2676 = !DILocation(line: 312, column: 25, scope: !2669)
!2677 = !DILocation(line: 315, column: 11, scope: !2669)
!2678 = !DILocation(line: 317, column: 33, scope: !2669)
!2679 = !DILocation(line: 318, column: 11, scope: !2669)
!2680 = !DILocation(line: 320, column: 35, scope: !2669)
!2681 = !DILocation(line: 320, column: 33, scope: !2669)
!2682 = !DILocation(line: 322, column: 5, scope: !2669)
!2683 = !DILocation(line: 322, column: 39, scope: !2669)
!2684 = !DILocation(line: 324, column: 33, scope: !2669)
!2685 = !DILocation(line: 325, column: 5, scope: !2669)
!2686 = !DILocation(line: 325, column: 33, scope: !2669)
!2687 = !DILocation(line: 327, column: 35, scope: !2669)
!2688 = !DILocation(line: 327, column: 33, scope: !2669)
!2689 = !DILocation(line: 328, column: 1, scope: !2669)
!2690 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !83, file: !83, line: 330, type: !2691, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !2374, !210, !210, !210}
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2694 = !DILocalVariable(name: "u_port", arg: 1, scope: !2690, file: !83, line: 330, type: !2374)
!2695 = !DILocalVariable(name: "xon", arg: 2, scope: !2690, file: !83, line: 330, type: !210)
!2696 = !DILocalVariable(name: "xoff", arg: 3, scope: !2690, file: !83, line: 330, type: !210)
!2697 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2690, file: !83, line: 330, type: !210)
!2698 = !DILocalVariable(name: "base", scope: !2690, file: !83, line: 332, type: !7)
!2699 = !DILocalVariable(name: "EFR", scope: !2690, file: !83, line: 333, type: !2444)
!2700 = !DILocalVariable(name: "LCR", scope: !2690, file: !83, line: 333, type: !2444)
!2701 = !DILocation(line: 0, scope: !2690)
!2702 = !DILocation(line: 332, column: 25, scope: !2690)
!2703 = !DILocation(line: 335, column: 11, scope: !2690)
!2704 = !DILocation(line: 337, column: 33, scope: !2690)
!2705 = !DILocation(line: 338, column: 36, scope: !2690)
!2706 = !DILocation(line: 338, column: 5, scope: !2690)
!2707 = !DILocation(line: 338, column: 34, scope: !2690)
!2708 = !DILocation(line: 339, column: 5, scope: !2690)
!2709 = !DILocation(line: 339, column: 34, scope: !2690)
!2710 = !DILocation(line: 340, column: 37, scope: !2690)
!2711 = !DILocation(line: 340, column: 5, scope: !2690)
!2712 = !DILocation(line: 340, column: 35, scope: !2690)
!2713 = !DILocation(line: 341, column: 5, scope: !2690)
!2714 = !DILocation(line: 341, column: 35, scope: !2690)
!2715 = !DILocation(line: 343, column: 11, scope: !2690)
!2716 = !DILocation(line: 345, column: 35, scope: !2690)
!2717 = !DILocation(line: 345, column: 33, scope: !2690)
!2718 = !DILocation(line: 347, column: 35, scope: !2690)
!2719 = !DILocation(line: 347, column: 33, scope: !2690)
!2720 = !DILocation(line: 349, column: 43, scope: !2690)
!2721 = !DILocation(line: 349, column: 5, scope: !2690)
!2722 = !DILocation(line: 349, column: 41, scope: !2690)
!2723 = !DILocation(line: 350, column: 5, scope: !2690)
!2724 = !DILocation(line: 350, column: 39, scope: !2690)
!2725 = !DILocation(line: 351, column: 1, scope: !2690)
!2726 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !83, file: !83, line: 353, type: !2428, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2727)
!2727 = !{!2728, !2729, !2730}
!2728 = !DILocalVariable(name: "u_port", arg: 1, scope: !2726, file: !83, line: 353, type: !2374)
!2729 = !DILocalVariable(name: "base", scope: !2726, file: !83, line: 355, type: !7)
!2730 = !DILocalVariable(name: "LCR", scope: !2726, file: !83, line: 356, type: !2444)
!2731 = !DILocation(line: 0, scope: !2726)
!2732 = !DILocation(line: 355, column: 25, scope: !2726)
!2733 = !DILocation(line: 358, column: 11, scope: !2726)
!2734 = !DILocation(line: 360, column: 33, scope: !2726)
!2735 = !DILocation(line: 362, column: 5, scope: !2726)
!2736 = !DILocation(line: 362, column: 33, scope: !2726)
!2737 = !DILocation(line: 364, column: 33, scope: !2726)
!2738 = !DILocation(line: 366, column: 35, scope: !2726)
!2739 = !DILocation(line: 366, column: 33, scope: !2726)
!2740 = !DILocation(line: 367, column: 1, scope: !2726)
!2741 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !83, file: !83, line: 436, type: !2428, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2742)
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "u_port", arg: 1, scope: !2741, file: !83, line: 436, type: !2374)
!2744 = !DILocalVariable(name: "base", scope: !2741, file: !83, line: 438, type: !7)
!2745 = !DILocation(line: 0, scope: !2741)
!2746 = !DILocation(line: 438, column: 25, scope: !2741)
!2747 = !DILocation(line: 440, column: 5, scope: !2741)
!2748 = !DILocation(line: 440, column: 33, scope: !2741)
!2749 = !DILocation(line: 441, column: 5, scope: !2741)
!2750 = !DILocation(line: 441, column: 33, scope: !2741)
!2751 = !DILocation(line: 442, column: 5, scope: !2741)
!2752 = !DILocation(line: 442, column: 34, scope: !2741)
!2753 = !DILocation(line: 443, column: 5, scope: !2741)
!2754 = !DILocation(line: 443, column: 35, scope: !2741)
!2755 = !DILocation(line: 445, column: 33, scope: !2741)
!2756 = !DILocation(line: 446, column: 5, scope: !2741)
!2757 = !DILocation(line: 446, column: 33, scope: !2741)
!2758 = !DILocation(line: 447, column: 5, scope: !2741)
!2759 = !DILocation(line: 447, column: 33, scope: !2741)
!2760 = !DILocation(line: 449, column: 33, scope: !2741)
!2761 = !DILocation(line: 450, column: 33, scope: !2741)
!2762 = !DILocation(line: 451, column: 33, scope: !2741)
!2763 = !DILocation(line: 453, column: 33, scope: !2741)
!2764 = !DILocation(line: 454, column: 33, scope: !2741)
!2765 = !DILocation(line: 455, column: 33, scope: !2741)
!2766 = !DILocation(line: 457, column: 33, scope: !2741)
!2767 = !DILocation(line: 458, column: 5, scope: !2741)
!2768 = !DILocation(line: 458, column: 33, scope: !2741)
!2769 = !DILocation(line: 459, column: 5, scope: !2741)
!2770 = !DILocation(line: 459, column: 39, scope: !2741)
!2771 = !DILocation(line: 460, column: 5, scope: !2741)
!2772 = !DILocation(line: 460, column: 40, scope: !2741)
!2773 = !DILocation(line: 461, column: 5, scope: !2741)
!2774 = !DILocation(line: 461, column: 42, scope: !2741)
!2775 = !DILocation(line: 462, column: 5, scope: !2741)
!2776 = !DILocation(line: 462, column: 42, scope: !2741)
!2777 = !DILocation(line: 463, column: 5, scope: !2741)
!2778 = !DILocation(line: 463, column: 35, scope: !2741)
!2779 = !DILocation(line: 464, column: 5, scope: !2741)
!2780 = !DILocation(line: 464, column: 41, scope: !2741)
!2781 = !DILocation(line: 465, column: 5, scope: !2741)
!2782 = !DILocation(line: 465, column: 39, scope: !2741)
!2783 = !DILocation(line: 466, column: 5, scope: !2741)
!2784 = !DILocation(line: 466, column: 38, scope: !2741)
!2785 = !DILocation(line: 467, column: 5, scope: !2741)
!2786 = !DILocation(line: 467, column: 42, scope: !2741)
!2787 = !DILocation(line: 468, column: 5, scope: !2741)
!2788 = !DILocation(line: 468, column: 45, scope: !2741)
!2789 = !DILocation(line: 469, column: 5, scope: !2741)
!2790 = !DILocation(line: 469, column: 39, scope: !2741)
!2791 = !DILocation(line: 470, column: 5, scope: !2741)
!2792 = !DILocation(line: 470, column: 39, scope: !2741)
!2793 = !DILocation(line: 471, column: 5, scope: !2741)
!2794 = !DILocation(line: 471, column: 42, scope: !2741)
!2795 = !DILocation(line: 472, column: 1, scope: !2741)
!2796 = distinct !DISubprogram(name: "uart_query_empty", scope: !83, file: !83, line: 474, type: !2428, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !2797)
!2797 = !{!2798, !2799}
!2798 = !DILocalVariable(name: "u_port", arg: 1, scope: !2796, file: !83, line: 474, type: !2374)
!2799 = !DILocalVariable(name: "base", scope: !2796, file: !83, line: 476, type: !7)
!2800 = !DILocation(line: 0, scope: !2796)
!2801 = !DILocation(line: 476, column: 25, scope: !2796)
!2802 = !DILocation(line: 478, column: 5, scope: !2796)
!2803 = !DILocation(line: 478, column: 14, scope: !2796)
!2804 = !DILocation(line: 478, column: 42, scope: !2796)
!2805 = !DILocation(line: 478, column: 12, scope: !2796)
!2806 = distinct !{!2806, !2802, !2807}
!2807 = !DILocation(line: 478, column: 50, scope: !2796)
!2808 = !DILocation(line: 479, column: 1, scope: !2796)
!2809 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !814, file: !814, line: 64, type: !2810, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{null, !497, !125, !497, null}
!2812 = !{!2813, !2814, !2815, !2816, !2825}
!2813 = !DILocalVariable(name: "func", arg: 1, scope: !2809, file: !814, line: 64, type: !497)
!2814 = !DILocalVariable(name: "line", arg: 2, scope: !2809, file: !814, line: 64, type: !125)
!2815 = !DILocalVariable(name: "message", arg: 3, scope: !2809, file: !814, line: 64, type: !497)
!2816 = !DILocalVariable(name: "ap", scope: !2809, file: !814, line: 66, type: !2817)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2818, line: 46, baseType: !2819)
!2818 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2820, line: 32, baseType: !2821)
!2820 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !814, baseType: !2822)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !2823)
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2822, file: !814, line: 66, baseType: !180, size: 32)
!2825 = !DILocalVariable(name: "mask", scope: !2809, file: !814, line: 68, type: !58)
!2826 = !DILocation(line: 0, scope: !2809)
!2827 = !DILocation(line: 66, column: 5, scope: !2809)
!2828 = !DILocation(line: 66, column: 13, scope: !2809)
!2829 = !DILocation(line: 68, column: 5, scope: !2809)
!2830 = !DILocation(line: 69, column: 5, scope: !2809)
!2831 = !DILocation(line: 71, column: 5, scope: !2809)
!2832 = !DILocation(line: 72, column: 5, scope: !2809)
!2833 = !DILocation(line: 73, column: 5, scope: !2809)
!2834 = !DILocation(line: 75, column: 37, scope: !2809)
!2835 = !DILocation(line: 75, column: 5, scope: !2809)
!2836 = !DILocation(line: 77, column: 1, scope: !2809)
!2837 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !814, file: !814, line: 78, type: !2810, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2838)
!2838 = !{!2839, !2840, !2841, !2842, !2843}
!2839 = !DILocalVariable(name: "func", arg: 1, scope: !2837, file: !814, line: 78, type: !497)
!2840 = !DILocalVariable(name: "line", arg: 2, scope: !2837, file: !814, line: 78, type: !125)
!2841 = !DILocalVariable(name: "message", arg: 3, scope: !2837, file: !814, line: 78, type: !497)
!2842 = !DILocalVariable(name: "ap", scope: !2837, file: !814, line: 80, type: !2817)
!2843 = !DILocalVariable(name: "mask", scope: !2837, file: !814, line: 82, type: !58)
!2844 = !DILocation(line: 0, scope: !2837)
!2845 = !DILocation(line: 80, column: 5, scope: !2837)
!2846 = !DILocation(line: 80, column: 13, scope: !2837)
!2847 = !DILocation(line: 82, column: 5, scope: !2837)
!2848 = !DILocation(line: 83, column: 5, scope: !2837)
!2849 = !DILocation(line: 85, column: 5, scope: !2837)
!2850 = !DILocation(line: 86, column: 5, scope: !2837)
!2851 = !DILocation(line: 87, column: 5, scope: !2837)
!2852 = !DILocation(line: 89, column: 37, scope: !2837)
!2853 = !DILocation(line: 89, column: 5, scope: !2837)
!2854 = !DILocation(line: 91, column: 1, scope: !2837)
!2855 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !814, file: !814, line: 92, type: !2810, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861}
!2857 = !DILocalVariable(name: "func", arg: 1, scope: !2855, file: !814, line: 92, type: !497)
!2858 = !DILocalVariable(name: "line", arg: 2, scope: !2855, file: !814, line: 92, type: !125)
!2859 = !DILocalVariable(name: "message", arg: 3, scope: !2855, file: !814, line: 92, type: !497)
!2860 = !DILocalVariable(name: "ap", scope: !2855, file: !814, line: 94, type: !2817)
!2861 = !DILocalVariable(name: "mask", scope: !2855, file: !814, line: 96, type: !58)
!2862 = !DILocation(line: 0, scope: !2855)
!2863 = !DILocation(line: 94, column: 5, scope: !2855)
!2864 = !DILocation(line: 94, column: 13, scope: !2855)
!2865 = !DILocation(line: 96, column: 5, scope: !2855)
!2866 = !DILocation(line: 97, column: 5, scope: !2855)
!2867 = !DILocation(line: 99, column: 5, scope: !2855)
!2868 = !DILocation(line: 100, column: 5, scope: !2855)
!2869 = !DILocation(line: 101, column: 5, scope: !2855)
!2870 = !DILocation(line: 103, column: 37, scope: !2855)
!2871 = !DILocation(line: 103, column: 5, scope: !2855)
!2872 = !DILocation(line: 105, column: 1, scope: !2855)
!2873 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !814, file: !814, line: 106, type: !2810, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2874)
!2874 = !{!2875, !2876, !2877, !2878, !2879}
!2875 = !DILocalVariable(name: "func", arg: 1, scope: !2873, file: !814, line: 106, type: !497)
!2876 = !DILocalVariable(name: "line", arg: 2, scope: !2873, file: !814, line: 106, type: !125)
!2877 = !DILocalVariable(name: "message", arg: 3, scope: !2873, file: !814, line: 106, type: !497)
!2878 = !DILocalVariable(name: "ap", scope: !2873, file: !814, line: 108, type: !2817)
!2879 = !DILocalVariable(name: "mask", scope: !2873, file: !814, line: 110, type: !58)
!2880 = !DILocation(line: 0, scope: !2873)
!2881 = !DILocation(line: 108, column: 5, scope: !2873)
!2882 = !DILocation(line: 108, column: 13, scope: !2873)
!2883 = !DILocation(line: 110, column: 5, scope: !2873)
!2884 = !DILocation(line: 111, column: 5, scope: !2873)
!2885 = !DILocation(line: 113, column: 5, scope: !2873)
!2886 = !DILocation(line: 114, column: 5, scope: !2873)
!2887 = !DILocation(line: 115, column: 5, scope: !2873)
!2888 = !DILocation(line: 117, column: 37, scope: !2873)
!2889 = !DILocation(line: 117, column: 5, scope: !2873)
!2890 = !DILocation(line: 119, column: 1, scope: !2873)
!2891 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !814, file: !814, line: 121, type: !2892, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !2896)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !497, !125, !497, !2894, !125, null}
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2896 = !{!2897, !2898, !2899, !2900, !2901}
!2897 = !DILocalVariable(name: "func", arg: 1, scope: !2891, file: !814, line: 121, type: !497)
!2898 = !DILocalVariable(name: "line", arg: 2, scope: !2891, file: !814, line: 121, type: !125)
!2899 = !DILocalVariable(name: "message", arg: 3, scope: !2891, file: !814, line: 121, type: !497)
!2900 = !DILocalVariable(name: "data", arg: 4, scope: !2891, file: !814, line: 121, type: !2894)
!2901 = !DILocalVariable(name: "length", arg: 5, scope: !2891, file: !814, line: 121, type: !125)
!2902 = !DILocation(line: 0, scope: !2891)
!2903 = !DILocation(line: 123, column: 1, scope: !2891)
!2904 = distinct !DISubprogram(name: "hal_nvic_init", scope: !121, file: !121, line: 60, type: !2905, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !1921)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !124, line: 158, baseType: !123)
!2908 = !DILocation(line: 62, column: 5, scope: !2904)
!2909 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !121, file: !121, line: 65, type: !2910, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2912)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!2907, !178}
!2912 = !{!2913, !2914}
!2913 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2909, file: !121, line: 65, type: !178)
!2914 = !DILocalVariable(name: "status", scope: !2909, file: !121, line: 67, type: !2907)
!2915 = !DILocation(line: 0, scope: !2909)
!2916 = !DILocation(line: 69, column: 40, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2909, file: !121, line: 69, column: 9)
!2918 = !DILocation(line: 73, column: 9, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2917, file: !121, line: 72, column: 12)
!2920 = !DILocation(line: 77, column: 5, scope: !2909)
!2921 = !DILocation(line: 78, column: 1, scope: !2909)
!2922 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !185, file: !185, line: 1494, type: !2923, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !179}
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2922, file: !185, line: 1494, type: !179)
!2927 = !DILocation(line: 0, scope: !2922)
!2928 = !DILocation(line: 1497, column: 91, scope: !2922)
!2929 = !DILocation(line: 1497, column: 61, scope: !2922)
!2930 = !DILocation(line: 1497, column: 40, scope: !2922)
!2931 = !DILocation(line: 1497, column: 3, scope: !2922)
!2932 = !DILocation(line: 1497, column: 46, scope: !2922)
!2933 = !DILocation(line: 1498, column: 1, scope: !2922)
!2934 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !121, file: !121, line: 80, type: !2910, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2935)
!2935 = !{!2936, !2937}
!2936 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2934, file: !121, line: 80, type: !178)
!2937 = !DILocalVariable(name: "status", scope: !2934, file: !121, line: 82, type: !2907)
!2938 = !DILocation(line: 0, scope: !2934)
!2939 = !DILocation(line: 84, column: 40, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2934, file: !121, line: 84, column: 9)
!2941 = !DILocation(line: 88, column: 9, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2940, file: !121, line: 87, column: 12)
!2943 = !DILocation(line: 92, column: 5, scope: !2934)
!2944 = !DILocation(line: 93, column: 1, scope: !2934)
!2945 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !185, file: !185, line: 1507, type: !2923, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2946)
!2946 = !{!2947}
!2947 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2945, file: !185, line: 1507, type: !179)
!2948 = !DILocation(line: 0, scope: !2945)
!2949 = !DILocation(line: 1509, column: 65, scope: !2945)
!2950 = !DILocation(line: 1509, column: 44, scope: !2945)
!2951 = !DILocation(line: 1509, column: 32, scope: !2945)
!2952 = !DILocation(line: 1509, column: 3, scope: !2945)
!2953 = !DILocation(line: 1509, column: 39, scope: !2945)
!2954 = !DILocation(line: 1510, column: 1, scope: !2945)
!2955 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !121, file: !121, line: 95, type: !2956, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!58, !178}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2955, file: !121, line: 95, type: !178)
!2960 = !DILocalVariable(name: "ret", scope: !2955, file: !121, line: 97, type: !58)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 99, column: 40, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2955, file: !121, line: 99, column: 9)
!2964 = !DILocation(line: 102, column: 15, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2963, file: !121, line: 101, column: 12)
!2966 = !DILocation(line: 105, column: 5, scope: !2955)
!2967 = !DILocation(line: 106, column: 1, scope: !2955)
!2968 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !185, file: !185, line: 1523, type: !2969, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!58, !179}
!2971 = !{!2972}
!2972 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2968, file: !185, line: 1523, type: !179)
!2973 = !DILocation(line: 0, scope: !2968)
!2974 = !DILocation(line: 1525, column: 51, scope: !2968)
!2975 = !DILocation(line: 1525, column: 23, scope: !2968)
!2976 = !DILocation(line: 1525, column: 83, scope: !2968)
!2977 = !DILocation(line: 1525, column: 22, scope: !2968)
!2978 = !DILocation(line: 1525, column: 3, scope: !2968)
!2979 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !121, file: !121, line: 108, type: !2910, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2980)
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2979, file: !121, line: 108, type: !178)
!2982 = !DILocalVariable(name: "status", scope: !2979, file: !121, line: 110, type: !2907)
!2983 = !DILocation(line: 0, scope: !2979)
!2984 = !DILocation(line: 112, column: 40, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2979, file: !121, line: 112, column: 9)
!2986 = !DILocation(line: 116, column: 9, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2985, file: !121, line: 115, column: 12)
!2988 = !DILocation(line: 120, column: 5, scope: !2979)
!2989 = !DILocation(line: 121, column: 1, scope: !2979)
!2990 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !185, file: !185, line: 1535, type: !2923, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !2991)
!2991 = !{!2992}
!2992 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2990, file: !185, line: 1535, type: !179)
!2993 = !DILocation(line: 0, scope: !2990)
!2994 = !DILocation(line: 1537, column: 65, scope: !2990)
!2995 = !DILocation(line: 1537, column: 44, scope: !2990)
!2996 = !DILocation(line: 1537, column: 32, scope: !2990)
!2997 = !DILocation(line: 1537, column: 3, scope: !2990)
!2998 = !DILocation(line: 1537, column: 39, scope: !2990)
!2999 = !DILocation(line: 1538, column: 1, scope: !2990)
!3000 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !121, file: !121, line: 123, type: !2910, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3001)
!3001 = !{!3002, !3003}
!3002 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3000, file: !121, line: 123, type: !178)
!3003 = !DILocalVariable(name: "status", scope: !3000, file: !121, line: 125, type: !2907)
!3004 = !DILocation(line: 0, scope: !3000)
!3005 = !DILocation(line: 127, column: 40, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3000, file: !121, line: 127, column: 9)
!3007 = !DILocation(line: 131, column: 9, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3006, file: !121, line: 130, column: 12)
!3009 = !DILocation(line: 135, column: 5, scope: !3000)
!3010 = !DILocation(line: 136, column: 1, scope: !3000)
!3011 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !185, file: !185, line: 1547, type: !2923, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3012)
!3012 = !{!3013}
!3013 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3011, file: !185, line: 1547, type: !179)
!3014 = !DILocation(line: 0, scope: !3011)
!3015 = !DILocation(line: 1549, column: 65, scope: !3011)
!3016 = !DILocation(line: 1549, column: 44, scope: !3011)
!3017 = !DILocation(line: 1549, column: 32, scope: !3011)
!3018 = !DILocation(line: 1549, column: 3, scope: !3011)
!3019 = !DILocation(line: 1549, column: 39, scope: !3011)
!3020 = !DILocation(line: 1550, column: 1, scope: !3011)
!3021 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !121, file: !121, line: 138, type: !3022, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!2907, !178, !58}
!3024 = !{!3025, !3026, !3027}
!3025 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3021, file: !121, line: 138, type: !178)
!3026 = !DILocalVariable(name: "priority", arg: 2, scope: !3021, file: !121, line: 138, type: !58)
!3027 = !DILocalVariable(name: "status", scope: !3021, file: !121, line: 140, type: !2907)
!3028 = !DILocation(line: 0, scope: !3021)
!3029 = !DILocation(line: 142, column: 40, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3021, file: !121, line: 142, column: 9)
!3031 = !DILocation(line: 146, column: 9, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3030, file: !121, line: 145, column: 12)
!3033 = !DILocation(line: 150, column: 5, scope: !3021)
!3034 = !DILocation(line: 151, column: 1, scope: !3021)
!3035 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !185, file: !185, line: 1577, type: !3036, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{null, !179, !58}
!3038 = !{!3039, !3040}
!3039 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3035, file: !185, line: 1577, type: !179)
!3040 = !DILocalVariable(name: "priority", arg: 2, scope: !3035, file: !185, line: 1577, type: !58)
!3041 = !DILocation(line: 0, scope: !3035)
!3042 = !DILocation(line: 1582, column: 34, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !185, line: 1581, column: 8)
!3044 = distinct !DILexicalBlock(scope: !3035, file: !185, line: 1579, column: 6)
!3045 = !DILocation(line: 1582, column: 5, scope: !3043)
!3046 = !DILocation(line: 1582, column: 32, scope: !3043)
!3047 = !DILocation(line: 1583, column: 1, scope: !3035)
!3048 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !121, file: !121, line: 153, type: !2956, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3049)
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3048, file: !121, line: 153, type: !178)
!3051 = !DILocalVariable(name: "ret", scope: !3048, file: !121, line: 155, type: !58)
!3052 = !DILocation(line: 0, scope: !3048)
!3053 = !DILocation(line: 157, column: 40, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3048, file: !121, line: 157, column: 9)
!3055 = !DILocation(line: 160, column: 15, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3054, file: !121, line: 159, column: 12)
!3057 = !DILocation(line: 163, column: 5, scope: !3048)
!3058 = !DILocation(line: 164, column: 1, scope: !3048)
!3059 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !185, file: !185, line: 1597, type: !2969, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3060)
!3060 = !{!3061}
!3061 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3059, file: !185, line: 1597, type: !179)
!3062 = !DILocation(line: 0, scope: !3059)
!3063 = !DILocation(line: 1603, column: 23, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !185, line: 1602, column: 8)
!3065 = distinct !DILexicalBlock(scope: !3059, file: !185, line: 1600, column: 6)
!3066 = !DILocation(line: 1603, column: 60, scope: !3064)
!3067 = !DILocation(line: 1604, column: 1, scope: !3059)
!3068 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !121, file: !121, line: 173, type: !335, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !1921)
!3069 = !DILocation(line: 175, column: 1, scope: !3068)
!3070 = distinct !DISubprogram(name: "isrC_main", scope: !121, file: !121, line: 178, type: !2905, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3071)
!3071 = !{!3072, !3073}
!3072 = !DILocalVariable(name: "status", scope: !3070, file: !121, line: 180, type: !2907)
!3073 = !DILocalVariable(name: "irq_number", scope: !3070, file: !121, line: 181, type: !178)
!3074 = !DILocation(line: 0, scope: !3070)
!3075 = !DILocation(line: 188, column: 34, scope: !3070)
!3076 = !DILocation(line: 189, column: 24, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3070, file: !121, line: 189, column: 9)
!3078 = !DILocation(line: 192, column: 48, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3077, file: !121, line: 192, column: 16)
!3080 = !DILocation(line: 192, column: 62, scope: !3079)
!3081 = !DILocation(line: 192, column: 16, scope: !3077)
!3082 = !DILocation(line: 194, column: 9, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3079, file: !121, line: 192, column: 71)
!3084 = !DILocation(line: 195, column: 9, scope: !3083)
!3085 = !DILocation(line: 197, column: 55, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3079, file: !121, line: 196, column: 12)
!3087 = !DILocation(line: 197, column: 41, scope: !3086)
!3088 = !DILocation(line: 197, column: 53, scope: !3086)
!3089 = !DILocation(line: 198, column: 41, scope: !3086)
!3090 = !DILocation(line: 198, column: 9, scope: !3086)
!3091 = !DILocation(line: 202, column: 5, scope: !3070)
!3092 = !DILocation(line: 203, column: 1, scope: !3070)
!3093 = distinct !DISubprogram(name: "get_current_irq", scope: !121, file: !121, line: 166, type: !1905, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3094)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "irq_num", scope: !3093, file: !121, line: 168, type: !58)
!3096 = !DILocation(line: 168, column: 31, scope: !3093)
!3097 = !DILocation(line: 168, column: 36, scope: !3093)
!3098 = !DILocation(line: 0, scope: !3093)
!3099 = !DILocation(line: 169, column: 21, scope: !3093)
!3100 = !DILocation(line: 169, column: 5, scope: !3093)
!3101 = distinct !DISubprogram(name: "get_pending_irq", scope: !121, file: !121, line: 55, type: !1905, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !1921)
!3102 = !DILocation(line: 57, column: 19, scope: !3101)
!3103 = !DILocation(line: 57, column: 51, scope: !3101)
!3104 = !DILocation(line: 57, column: 5, scope: !3101)
!3105 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !121, file: !121, line: 205, type: !3106, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3109)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!2907, !178, !3108}
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !124, line: 175, baseType: !264)
!3109 = !{!3110, !3111, !3112}
!3110 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3105, file: !121, line: 205, type: !178)
!3111 = !DILocalVariable(name: "callback", arg: 2, scope: !3105, file: !121, line: 205, type: !3108)
!3112 = !DILocalVariable(name: "mask", scope: !3105, file: !121, line: 207, type: !58)
!3113 = !DILocation(line: 0, scope: !3105)
!3114 = !DILocation(line: 209, column: 24, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3105, file: !121, line: 209, column: 9)
!3116 = !DILocation(line: 213, column: 12, scope: !3105)
!3117 = !DILocation(line: 214, column: 5, scope: !3105)
!3118 = !DILocation(line: 215, column: 37, scope: !3105)
!3119 = !DILocation(line: 215, column: 51, scope: !3105)
!3120 = !DILocation(line: 216, column: 37, scope: !3105)
!3121 = !DILocation(line: 216, column: 49, scope: !3105)
!3122 = !DILocation(line: 217, column: 5, scope: !3105)
!3123 = !DILocation(line: 219, column: 5, scope: !3105)
!3124 = !DILocation(line: 220, column: 1, scope: !3105)
!3125 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !121, file: !121, line: 222, type: !3126, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!2907, !2521}
!3128 = !{!3129}
!3129 = !DILocalVariable(name: "mask", arg: 1, scope: !3125, file: !121, line: 222, type: !2521)
!3130 = !DILocation(line: 0, scope: !3125)
!3131 = !DILocation(line: 224, column: 13, scope: !3125)
!3132 = !DILocation(line: 224, column: 11, scope: !3125)
!3133 = !DILocation(line: 225, column: 5, scope: !3125)
!3134 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !121, file: !121, line: 228, type: !3135, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !120, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!2907, !58}
!3137 = !{!3138}
!3138 = !DILocalVariable(name: "mask", arg: 1, scope: !3134, file: !121, line: 228, type: !58)
!3139 = !DILocation(line: 0, scope: !3134)
!3140 = !DILocation(line: 230, column: 5, scope: !3134)
!3141 = !DILocation(line: 231, column: 5, scope: !3134)
!3142 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !816, file: !816, line: 50, type: !3143, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3147)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!3145, !3146, !210}
!3145 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !819, line: 238, baseType: !818)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !284, line: 281, baseType: !825)
!3147 = !{!3148, !3149, !3150}
!3148 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3142, file: !816, line: 50, type: !3146)
!3149 = !DILocalVariable(name: "function_index", arg: 2, scope: !3142, file: !816, line: 50, type: !210)
!3150 = !DILocalVariable(name: "ret_value", scope: !3142, file: !816, line: 52, type: !181)
!3151 = !DILocation(line: 0, scope: !3142)
!3152 = !DILocation(line: 53, column: 18, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3142, file: !816, line: 53, column: 9)
!3154 = !DILocation(line: 53, column: 9, scope: !3142)
!3155 = !DILocation(line: 57, column: 24, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3142, file: !816, line: 57, column: 9)
!3157 = !DILocation(line: 57, column: 9, scope: !3142)
!3158 = !DILocation(line: 57, column: 9, scope: !3156)
!3159 = !DILocation(line: 60, column: 17, scope: !3142)
!3160 = !DILocation(line: 61, column: 12, scope: !3142)
!3161 = !DILocation(line: 61, column: 5, scope: !3142)
!3162 = !DILocation(line: 62, column: 1, scope: !3142)
!3163 = distinct !DISubprogram(name: "hal_gpio_init", scope: !816, file: !816, line: 64, type: !3164, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3167)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!3166, !3146}
!3166 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !819, line: 229, baseType: !856)
!3167 = !{!3168}
!3168 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3163, file: !816, line: 64, type: !3146)
!3169 = !DILocation(line: 0, scope: !3163)
!3170 = !DILocation(line: 66, column: 5, scope: !3163)
!3171 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !816, file: !816, line: 69, type: !3164, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3172)
!3172 = !{!3173}
!3173 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3171, file: !816, line: 69, type: !3146)
!3174 = !DILocation(line: 0, scope: !3171)
!3175 = !DILocation(line: 71, column: 5, scope: !3171)
!3176 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !816, file: !816, line: 74, type: !3177, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3180)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!3166, !3146, !3179}
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 32)
!3180 = !{!3181, !3182, !3183}
!3181 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3176, file: !816, line: 74, type: !3146)
!3182 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3176, file: !816, line: 74, type: !3179)
!3183 = !DILocalVariable(name: "status", scope: !3176, file: !816, line: 76, type: !3184)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !38, line: 67, baseType: !3185)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 62, size: 64, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3190}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3185, file: !38, line: 63, baseType: !58, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3185, file: !38, line: 64, baseType: !210, size: 8, offset: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3185, file: !38, line: 65, baseType: !210, size: 8, offset: 40)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3185, file: !38, line: 66, baseType: !210, size: 8, offset: 48)
!3191 = !DILocation(line: 0, scope: !3176)
!3192 = !DILocation(line: 77, column: 14, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3176, file: !816, line: 77, column: 9)
!3194 = !DILocation(line: 77, column: 9, scope: !3176)
!3195 = !DILocation(line: 81, column: 18, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3176, file: !816, line: 81, column: 9)
!3197 = !DILocation(line: 81, column: 9, scope: !3176)
!3198 = !DILocation(line: 85, column: 14, scope: !3176)
!3199 = !DILocation(line: 86, column: 18, scope: !3176)
!3200 = !DILocation(line: 86, column: 16, scope: !3176)
!3201 = !DILocation(line: 87, column: 5, scope: !3176)
!3202 = !DILocation(line: 88, column: 1, scope: !3176)
!3203 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !816, file: !816, line: 90, type: !3204, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!3166, !3146, !878}
!3206 = !{!3207, !3208, !3209}
!3207 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3203, file: !816, line: 90, type: !3146)
!3208 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3203, file: !816, line: 90, type: !878)
!3209 = !DILocalVariable(name: "ret_value", scope: !3203, file: !816, line: 92, type: !181)
!3210 = !DILocation(line: 0, scope: !3203)
!3211 = !DILocation(line: 93, column: 18, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3203, file: !816, line: 93, column: 9)
!3213 = !DILocation(line: 93, column: 9, scope: !3203)
!3214 = !DILocation(line: 97, column: 60, scope: !3203)
!3215 = !DILocation(line: 97, column: 17, scope: !3203)
!3216 = !DILocation(line: 98, column: 12, scope: !3203)
!3217 = !DILocation(line: 98, column: 5, scope: !3203)
!3218 = !DILocation(line: 99, column: 1, scope: !3203)
!3219 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !816, file: !816, line: 101, type: !3177, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3219, file: !816, line: 101, type: !3146)
!3222 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3219, file: !816, line: 101, type: !3179)
!3223 = !DILocalVariable(name: "status", scope: !3219, file: !816, line: 103, type: !3184)
!3224 = !DILocation(line: 0, scope: !3219)
!3225 = !DILocation(line: 104, column: 18, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3219, file: !816, line: 104, column: 9)
!3227 = !DILocation(line: 104, column: 9, scope: !3219)
!3228 = !DILocation(line: 108, column: 14, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3219, file: !816, line: 108, column: 9)
!3230 = !DILocation(line: 108, column: 9, scope: !3219)
!3231 = !DILocation(line: 112, column: 14, scope: !3219)
!3232 = !DILocation(line: 113, column: 18, scope: !3219)
!3233 = !DILocation(line: 113, column: 16, scope: !3219)
!3234 = !DILocation(line: 114, column: 5, scope: !3219)
!3235 = !DILocation(line: 115, column: 1, scope: !3219)
!3236 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !816, file: !816, line: 117, type: !3237, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3240)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!3166, !3146, !3239}
!3239 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !819, line: 213, baseType: !866)
!3240 = !{!3241, !3242, !3243}
!3241 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3236, file: !816, line: 117, type: !3146)
!3242 = !DILocalVariable(name: "direction", arg: 2, scope: !3236, file: !816, line: 117, type: !3239)
!3243 = !DILocalVariable(name: "ret_value", scope: !3236, file: !816, line: 119, type: !181)
!3244 = !DILocation(line: 0, scope: !3236)
!3245 = !DILocation(line: 120, column: 18, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3236, file: !816, line: 120, column: 9)
!3247 = !DILocation(line: 120, column: 9, scope: !3236)
!3248 = !DILocation(line: 123, column: 17, scope: !3236)
!3249 = !DILocation(line: 125, column: 12, scope: !3236)
!3250 = !DILocation(line: 125, column: 5, scope: !3236)
!3251 = !DILocation(line: 126, column: 1, scope: !3236)
!3252 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !816, file: !816, line: 128, type: !3253, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3256)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!3166, !3146, !3255}
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 32)
!3256 = !{!3257, !3258, !3259}
!3257 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3252, file: !816, line: 128, type: !3146)
!3258 = !DILocalVariable(name: "direction", arg: 2, scope: !3252, file: !816, line: 128, type: !3255)
!3259 = !DILocalVariable(name: "status", scope: !3252, file: !816, line: 131, type: !3184)
!3260 = !DILocation(line: 0, scope: !3252)
!3261 = !DILocation(line: 132, column: 18, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3252, file: !816, line: 132, column: 9)
!3263 = !DILocation(line: 132, column: 9, scope: !3252)
!3264 = !DILocation(line: 136, column: 14, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3252, file: !816, line: 136, column: 9)
!3266 = !DILocation(line: 136, column: 9, scope: !3252)
!3267 = !DILocation(line: 140, column: 14, scope: !3252)
!3268 = !DILocation(line: 141, column: 18, scope: !3252)
!3269 = !DILocation(line: 141, column: 16, scope: !3252)
!3270 = !DILocation(line: 142, column: 5, scope: !3252)
!3271 = !DILocation(line: 143, column: 1, scope: !3252)
!3272 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !816, file: !816, line: 146, type: !3164, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3273)
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3272, file: !816, line: 146, type: !3146)
!3275 = !DILocalVariable(name: "status", scope: !3272, file: !816, line: 148, type: !3184)
!3276 = !DILocation(line: 0, scope: !3272)
!3277 = !DILocation(line: 149, column: 18, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3272, file: !816, line: 149, column: 9)
!3279 = !DILocation(line: 149, column: 9, scope: !3272)
!3280 = !DILocation(line: 153, column: 14, scope: !3272)
!3281 = !DILocation(line: 154, column: 76, scope: !3272)
!3282 = !DILocation(line: 154, column: 12, scope: !3272)
!3283 = !DILocation(line: 154, column: 5, scope: !3272)
!3284 = !DILocation(line: 155, column: 1, scope: !3272)
!3285 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !816, file: !816, line: 157, type: !3164, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3286)
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3285, file: !816, line: 157, type: !3146)
!3288 = !DILocalVariable(name: "ret_value", scope: !3285, file: !816, line: 159, type: !181)
!3289 = !DILocation(line: 0, scope: !3285)
!3290 = !DILocation(line: 160, column: 18, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3285, file: !816, line: 160, column: 9)
!3292 = !DILocation(line: 160, column: 9, scope: !3285)
!3293 = !DILocation(line: 164, column: 17, scope: !3285)
!3294 = !DILocation(line: 165, column: 19, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3285, file: !816, line: 165, column: 9)
!3296 = !DILocation(line: 165, column: 9, scope: !3285)
!3297 = !DILocation(line: 168, column: 17, scope: !3285)
!3298 = !DILocation(line: 169, column: 12, scope: !3285)
!3299 = !DILocation(line: 169, column: 5, scope: !3285)
!3300 = !DILocation(line: 170, column: 1, scope: !3285)
!3301 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !816, file: !816, line: 172, type: !3164, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3302)
!3302 = !{!3303, !3304}
!3303 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3301, file: !816, line: 172, type: !3146)
!3304 = !DILocalVariable(name: "ret_value", scope: !3301, file: !816, line: 174, type: !181)
!3305 = !DILocation(line: 0, scope: !3301)
!3306 = !DILocation(line: 175, column: 18, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3301, file: !816, line: 175, column: 9)
!3308 = !DILocation(line: 175, column: 9, scope: !3301)
!3309 = !DILocation(line: 179, column: 17, scope: !3301)
!3310 = !DILocation(line: 180, column: 19, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3301, file: !816, line: 180, column: 9)
!3312 = !DILocation(line: 180, column: 9, scope: !3301)
!3313 = !DILocation(line: 183, column: 17, scope: !3301)
!3314 = !DILocation(line: 184, column: 12, scope: !3301)
!3315 = !DILocation(line: 184, column: 5, scope: !3301)
!3316 = !DILocation(line: 185, column: 1, scope: !3301)
!3317 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !816, file: !816, line: 187, type: !3164, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3318)
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3317, file: !816, line: 187, type: !3146)
!3320 = !DILocalVariable(name: "ret_value", scope: !3317, file: !816, line: 189, type: !181)
!3321 = !DILocation(line: 0, scope: !3317)
!3322 = !DILocation(line: 191, column: 18, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3317, file: !816, line: 191, column: 9)
!3324 = !DILocation(line: 191, column: 9, scope: !3317)
!3325 = !DILocation(line: 195, column: 17, scope: !3317)
!3326 = !DILocation(line: 196, column: 12, scope: !3317)
!3327 = !DILocation(line: 196, column: 5, scope: !3317)
!3328 = !DILocation(line: 197, column: 1, scope: !3317)
!3329 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !816, file: !816, line: 200, type: !3330, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3332)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!3166, !3146, !879}
!3332 = !{!3333, !3334, !3335}
!3333 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3329, file: !816, line: 200, type: !3146)
!3334 = !DILocalVariable(name: "driving", arg: 2, scope: !3329, file: !816, line: 200, type: !879)
!3335 = !DILocalVariable(name: "ret_value", scope: !3329, file: !816, line: 202, type: !181)
!3336 = !DILocation(line: 0, scope: !3329)
!3337 = !DILocation(line: 204, column: 18, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3329, file: !816, line: 204, column: 9)
!3339 = !DILocation(line: 204, column: 9, scope: !3329)
!3340 = !DILocation(line: 208, column: 64, scope: !3329)
!3341 = !DILocation(line: 208, column: 17, scope: !3329)
!3342 = !DILocation(line: 210, column: 12, scope: !3329)
!3343 = !DILocation(line: 210, column: 5, scope: !3329)
!3344 = !DILocation(line: 211, column: 1, scope: !3329)
!3345 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !816, file: !816, line: 214, type: !3346, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3349)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!3166, !3146, !3348}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 32)
!3349 = !{!3350, !3351, !3352, !3353}
!3350 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3345, file: !816, line: 214, type: !3146)
!3351 = !DILocalVariable(name: "driving", arg: 2, scope: !3345, file: !816, line: 214, type: !3348)
!3352 = !DILocalVariable(name: "ret_value", scope: !3345, file: !816, line: 216, type: !181)
!3353 = !DILocalVariable(name: "value", scope: !3345, file: !816, line: 217, type: !210)
!3354 = !DILocation(line: 0, scope: !3345)
!3355 = !DILocation(line: 217, column: 5, scope: !3345)
!3356 = !DILocation(line: 219, column: 18, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3345, file: !816, line: 219, column: 9)
!3358 = !DILocation(line: 219, column: 9, scope: !3345)
!3359 = !DILocation(line: 223, column: 17, scope: !3345)
!3360 = !DILocation(line: 225, column: 44, scope: !3345)
!3361 = !DILocation(line: 225, column: 16, scope: !3345)
!3362 = !DILocation(line: 225, column: 14, scope: !3345)
!3363 = !DILocation(line: 227, column: 12, scope: !3345)
!3364 = !DILocation(line: 227, column: 5, scope: !3345)
!3365 = !DILocation(line: 228, column: 1, scope: !3345)
!3366 = distinct !DISubprogram(name: "hal_uart_init", scope: !273, file: !273, line: 234, type: !3367, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3371)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!3369, !337, !3370}
!3369 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !276, line: 351, baseType: !275)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!3371 = !{!3372, !3373}
!3372 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3366, file: !273, line: 234, type: !337)
!3373 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3366, file: !273, line: 234, type: !3370)
!3374 = !DILocation(line: 0, scope: !3366)
!3375 = !DILocation(line: 236, column: 10, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3366, file: !273, line: 236, column: 9)
!3377 = !DILocation(line: 236, column: 9, scope: !3366)
!3378 = !DILocation(line: 239, column: 41, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3366, file: !273, line: 239, column: 9)
!3380 = !{i8 0, i8 2}
!3381 = !DILocation(line: 239, column: 9, scope: !3366)
!3382 = !DILocation(line: 242, column: 5, scope: !3366)
!3383 = !DILocation(line: 243, column: 45, scope: !3366)
!3384 = !DILocation(line: 243, column: 12, scope: !3366)
!3385 = !DILocation(line: 244, column: 12, scope: !3366)
!3386 = !DILocation(line: 243, column: 5, scope: !3366)
!3387 = !DILocation(line: 245, column: 58, scope: !3366)
!3388 = !DILocation(line: 246, column: 30, scope: !3366)
!3389 = !{i32 0, i32 2}
!3390 = !DILocation(line: 246, column: 5, scope: !3366)
!3391 = !DILocation(line: 247, column: 5, scope: !3366)
!3392 = !DILocation(line: 249, column: 31, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3366, file: !273, line: 249, column: 9)
!3394 = !DILocation(line: 249, column: 28, scope: !3393)
!3395 = !DILocation(line: 261, column: 1, scope: !3366)
!3396 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !273, file: !273, line: 93, type: !3397, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3401)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!347, !337, !3399}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 32)
!3400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!3401 = !{!3402, !3403}
!3402 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3396, file: !273, line: 93, type: !337)
!3403 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3396, file: !273, line: 93, type: !3399)
!3404 = !DILocation(line: 0, scope: !3396)
!3405 = !DILocation(line: 95, column: 10, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3396, file: !273, line: 95, column: 9)
!3407 = !DILocation(line: 95, column: 9, scope: !3396)
!3408 = !DILocation(line: 101, column: 23, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3396, file: !273, line: 101, column: 9)
!3410 = !DILocation(line: 101, column: 32, scope: !3409)
!3411 = !DILocation(line: 101, column: 60, scope: !3409)
!3412 = !DILocation(line: 102, column: 27, scope: !3409)
!3413 = !DILocation(line: 102, column: 34, scope: !3409)
!3414 = !DILocation(line: 102, column: 58, scope: !3409)
!3415 = !DILocation(line: 103, column: 27, scope: !3409)
!3416 = !DILocation(line: 103, column: 36, scope: !3409)
!3417 = !DILocation(line: 103, column: 59, scope: !3409)
!3418 = !DILocation(line: 104, column: 27, scope: !3409)
!3419 = !DILocation(line: 104, column: 39, scope: !3409)
!3420 = !DILocation(line: 101, column: 9, scope: !3396)
!3421 = !DILocation(line: 109, column: 1, scope: !3396)
!3422 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !273, file: !273, line: 139, type: !3423, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!2374, !337}
!3425 = !{!3426}
!3426 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3422, file: !273, line: 139, type: !337)
!3427 = !DILocation(line: 0, scope: !3422)
!3428 = !DILocation(line: 141, column: 24, scope: !3422)
!3429 = !DILocation(line: 141, column: 12, scope: !3422)
!3430 = !DILocation(line: 141, column: 5, scope: !3422)
!3431 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !273, file: !273, line: 593, type: !3432, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!3369, !337, !3399}
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3431, file: !273, line: 593, type: !337)
!3436 = !DILocalVariable(name: "config", arg: 2, scope: !3431, file: !273, line: 593, type: !3399)
!3437 = !DILocation(line: 0, scope: !3431)
!3438 = !DILocation(line: 595, column: 10, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3431, file: !273, line: 595, column: 9)
!3440 = !DILocation(line: 595, column: 9, scope: !3431)
!3441 = !DILocation(line: 598, column: 45, scope: !3431)
!3442 = !DILocation(line: 598, column: 12, scope: !3431)
!3443 = !DILocation(line: 598, column: 59, scope: !3431)
!3444 = !DILocation(line: 598, column: 5, scope: !3431)
!3445 = !DILocation(line: 599, column: 23, scope: !3431)
!3446 = !DILocation(line: 600, column: 59, scope: !3431)
!3447 = !DILocation(line: 600, column: 23, scope: !3431)
!3448 = !DILocation(line: 601, column: 62, scope: !3431)
!3449 = !DILocation(line: 601, column: 23, scope: !3431)
!3450 = !DILocation(line: 602, column: 57, scope: !3431)
!3451 = !DILocation(line: 602, column: 23, scope: !3431)
!3452 = !DILocation(line: 603, column: 58, scope: !3431)
!3453 = !DILocation(line: 603, column: 23, scope: !3431)
!3454 = !DILocation(line: 599, column: 5, scope: !3431)
!3455 = !DILocation(line: 604, column: 5, scope: !3431)
!3456 = !DILocation(line: 605, column: 1, scope: !3431)
!3457 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !273, file: !273, line: 145, type: !3458, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!58, !353}
!3460 = !{!3461, !3462}
!3461 = !DILocalVariable(name: "bandrate", arg: 1, scope: !3457, file: !273, line: 145, type: !353)
!3462 = !DILocalVariable(name: "baudrate_tbl", scope: !3457, file: !273, line: 147, type: !3463)
!3463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 416, elements: !3464)
!3464 = !{!3465}
!3465 = !DISubrange(count: 13)
!3466 = !DILocation(line: 0, scope: !3457)
!3467 = !DILocation(line: 147, column: 14, scope: !3457)
!3468 = !DILocation(line: 151, column: 12, scope: !3457)
!3469 = !DILocation(line: 151, column: 5, scope: !3457)
!3470 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !273, file: !273, line: 155, type: !3471, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!2444, !355}
!3473 = !{!3474, !3475}
!3474 = !DILocalVariable(name: "word_length", arg: 1, scope: !3470, file: !273, line: 155, type: !355)
!3475 = !DILocalVariable(name: "databit_tbl", scope: !3470, file: !273, line: 157, type: !3476)
!3476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2444, size: 64, elements: !249)
!3477 = !DILocation(line: 0, scope: !3470)
!3478 = !DILocation(line: 157, column: 14, scope: !3470)
!3479 = !DILocation(line: 160, column: 12, scope: !3470)
!3480 = !DILocation(line: 160, column: 5, scope: !3470)
!3481 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !273, file: !273, line: 164, type: !3482, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3484)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!2444, !359}
!3484 = !{!3485, !3486}
!3485 = !DILocalVariable(name: "parity", arg: 1, scope: !3481, file: !273, line: 164, type: !359)
!3486 = !DILocalVariable(name: "parity_tbl", scope: !3481, file: !273, line: 166, type: !3487)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2444, size: 80, elements: !253)
!3488 = !DILocation(line: 0, scope: !3481)
!3489 = !DILocation(line: 166, column: 14, scope: !3481)
!3490 = !DILocation(line: 169, column: 12, scope: !3481)
!3491 = !DILocation(line: 169, column: 5, scope: !3481)
!3492 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !273, file: !273, line: 173, type: !3493, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3495)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!2444, !357}
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "stopbit", arg: 1, scope: !3492, file: !273, line: 173, type: !357)
!3497 = !DILocalVariable(name: "stopbit_tbl", scope: !3492, file: !273, line: 175, type: !3498)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2444, size: 48, elements: !515)
!3499 = !DILocation(line: 0, scope: !3492)
!3500 = !DILocation(line: 175, column: 14, scope: !3492)
!3501 = !DILocation(line: 178, column: 12, scope: !3492)
!3502 = !DILocation(line: 178, column: 5, scope: !3492)
!3503 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !273, file: !273, line: 87, type: !3504, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!347, !337}
!3506 = !{!3507}
!3507 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3503, file: !273, line: 87, type: !337)
!3508 = !DILocation(line: 0, scope: !3503)
!3509 = !DILocation(line: 89, column: 23, scope: !3503)
!3510 = !DILocation(line: 89, column: 5, scope: !3503)
!3511 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !273, file: !273, line: 264, type: !3512, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3514)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!3369, !337}
!3514 = !{!3515}
!3515 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3511, file: !273, line: 264, type: !337)
!3516 = !DILocation(line: 0, scope: !3511)
!3517 = !DILocation(line: 266, column: 10, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3511, file: !273, line: 266, column: 9)
!3519 = !DILocation(line: 266, column: 9, scope: !3511)
!3520 = !DILocation(line: 269, column: 41, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3511, file: !273, line: 269, column: 9)
!3522 = !DILocation(line: 269, column: 62, scope: !3521)
!3523 = !DILocation(line: 269, column: 9, scope: !3511)
!3524 = !DILocation(line: 272, column: 5, scope: !3511)
!3525 = !DILocation(line: 275, column: 22, scope: !3511)
!3526 = !DILocation(line: 275, column: 5, scope: !3511)
!3527 = !DILocation(line: 284, column: 5, scope: !3511)
!3528 = !DILocation(line: 286, column: 5, scope: !3511)
!3529 = !DILocation(line: 287, column: 1, scope: !3511)
!3530 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !273, file: !273, line: 290, type: !3531, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{null, !337, !326}
!3533 = !{!3534, !3535, !3536}
!3534 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3530, file: !273, line: 290, type: !337)
!3535 = !DILocalVariable(name: "byte", arg: 2, scope: !3530, file: !273, line: 290, type: !326)
!3536 = !DILocalVariable(name: "int_no", scope: !3530, file: !273, line: 292, type: !2374)
!3537 = !DILocation(line: 0, scope: !3530)
!3538 = !DILocation(line: 292, column: 26, scope: !3530)
!3539 = !DILocation(line: 294, column: 16, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3530, file: !273, line: 294, column: 9)
!3541 = !DILocation(line: 294, column: 9, scope: !3530)
!3542 = !DILocation(line: 295, column: 9, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3540, file: !273, line: 294, column: 34)
!3544 = !DILocation(line: 296, column: 5, scope: !3543)
!3545 = !DILocation(line: 299, column: 1, scope: !3530)
!3546 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !273, file: !273, line: 302, type: !3547, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3549)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!58, !337, !2581, !58}
!3549 = !{!3550, !3551, !3552, !3553, !3554}
!3550 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3546, file: !273, line: 302, type: !337)
!3551 = !DILocalVariable(name: "data", arg: 2, scope: !3546, file: !273, line: 302, type: !2581)
!3552 = !DILocalVariable(name: "size", arg: 3, scope: !3546, file: !273, line: 302, type: !58)
!3553 = !DILocalVariable(name: "int_no", scope: !3546, file: !273, line: 304, type: !2374)
!3554 = !DILocalVariable(name: "index", scope: !3546, file: !273, line: 305, type: !58)
!3555 = !DILocation(line: 0, scope: !3546)
!3556 = !DILocation(line: 304, column: 26, scope: !3546)
!3557 = !DILocation(line: 307, column: 14, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3546, file: !273, line: 307, column: 9)
!3559 = !DILocation(line: 307, column: 9, scope: !3546)
!3560 = !DILocation(line: 313, column: 53, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !273, line: 312, column: 48)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !273, line: 312, column: 9)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !273, line: 312, column: 9)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !273, line: 311, column: 33)
!3565 = distinct !DILexicalBlock(scope: !3546, file: !273, line: 311, column: 9)
!3566 = !DILocation(line: 313, column: 13, scope: !3561)
!3567 = !DILocation(line: 312, column: 44, scope: !3562)
!3568 = !DILocation(line: 312, column: 31, scope: !3562)
!3569 = !DILocation(line: 312, column: 9, scope: !3563)
!3570 = distinct !{!3570, !3569, !3571}
!3571 = !DILocation(line: 314, column: 9, scope: !3563)
!3572 = !DILocation(line: 318, column: 1, scope: !3546)
!3573 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !273, file: !273, line: 320, type: !3547, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580}
!3575 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3573, file: !273, line: 320, type: !337)
!3576 = !DILocalVariable(name: "data", arg: 2, scope: !3573, file: !273, line: 320, type: !2581)
!3577 = !DILocalVariable(name: "size", arg: 3, scope: !3573, file: !273, line: 320, type: !58)
!3578 = !DILocalVariable(name: "actual_space", scope: !3573, file: !273, line: 322, type: !58)
!3579 = !DILocalVariable(name: "send_size", scope: !3573, file: !273, line: 322, type: !58)
!3580 = !DILocalVariable(name: "ch", scope: !3573, file: !273, line: 323, type: !3581)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !92, line: 144, baseType: !91)
!3582 = !DILocation(line: 0, scope: !3573)
!3583 = !DILocation(line: 322, column: 5, scope: !3573)
!3584 = !DILocation(line: 328, column: 10, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3573, file: !273, line: 328, column: 9)
!3586 = !DILocation(line: 328, column: 9, scope: !3573)
!3587 = !DILocation(line: 332, column: 15, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3573, file: !273, line: 332, column: 9)
!3589 = !DILocation(line: 332, column: 24, scope: !3588)
!3590 = !DILocation(line: 335, column: 42, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3573, file: !273, line: 335, column: 9)
!3592 = !DILocation(line: 335, column: 9, scope: !3573)
!3593 = !DILocation(line: 349, column: 30, scope: !3573)
!3594 = !DILocation(line: 349, column: 5, scope: !3573)
!3595 = !DILocation(line: 350, column: 9, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3573, file: !273, line: 350, column: 9)
!3597 = !DILocation(line: 350, column: 22, scope: !3596)
!3598 = !DILocation(line: 355, column: 5, scope: !3573)
!3599 = !DILocation(line: 357, column: 22, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3573, file: !273, line: 357, column: 9)
!3601 = !DILocation(line: 357, column: 19, scope: !3600)
!3602 = !DILocation(line: 357, column: 9, scope: !3573)
!3603 = !DILocation(line: 358, column: 14, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3600, file: !273, line: 357, column: 36)
!3605 = !{i32 14, i32 18}
!3606 = !DILocation(line: 359, column: 9, scope: !3604)
!3607 = !DILocation(line: 360, column: 5, scope: !3604)
!3608 = !DILocation(line: 362, column: 1, scope: !3573)
!3609 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !273, file: !273, line: 191, type: !3610, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!3581, !2374, !347}
!3612 = !{!3613, !3614, !3615}
!3613 = !DILocalVariable(name: "port", arg: 1, scope: !3609, file: !273, line: 191, type: !2374)
!3614 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3609, file: !273, line: 191, type: !347)
!3615 = !DILocalVariable(name: "ch", scope: !3609, file: !273, line: 193, type: !3581)
!3616 = !DILocation(line: 0, scope: !3609)
!3617 = !DILocation(line: 195, column: 14, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3609, file: !273, line: 195, column: 9)
!3619 = !DILocation(line: 195, column: 9, scope: !3609)
!3620 = !DILocation(line: 209, column: 5, scope: !3609)
!3621 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !273, file: !273, line: 365, type: !3622, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3624)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!326, !337}
!3624 = !{!3625, !3626}
!3625 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3621, file: !273, line: 365, type: !337)
!3626 = !DILocalVariable(name: "int_no", scope: !3621, file: !273, line: 367, type: !2374)
!3627 = !DILocation(line: 0, scope: !3621)
!3628 = !DILocation(line: 367, column: 26, scope: !3621)
!3629 = !DILocation(line: 369, column: 16, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3621, file: !273, line: 369, column: 9)
!3631 = !DILocation(line: 369, column: 9, scope: !3621)
!3632 = !DILocation(line: 370, column: 22, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3630, file: !273, line: 369, column: 33)
!3634 = !DILocation(line: 370, column: 9, scope: !3633)
!3635 = !DILocation(line: 0, scope: !3630)
!3636 = !DILocation(line: 375, column: 1, scope: !3621)
!3637 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !273, file: !273, line: 377, type: !3638, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!58, !337}
!3640 = !{!3641, !3642}
!3641 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3637, file: !273, line: 377, type: !337)
!3642 = !DILocalVariable(name: "int_no", scope: !3637, file: !273, line: 379, type: !2374)
!3643 = !DILocation(line: 0, scope: !3637)
!3644 = !DILocation(line: 379, column: 26, scope: !3637)
!3645 = !DILocation(line: 381, column: 16, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3637, file: !273, line: 381, column: 9)
!3647 = !DILocation(line: 381, column: 9, scope: !3637)
!3648 = !DILocation(line: 382, column: 16, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3646, file: !273, line: 381, column: 33)
!3650 = !DILocation(line: 382, column: 9, scope: !3649)
!3651 = !DILocation(line: 0, scope: !3646)
!3652 = !DILocation(line: 387, column: 1, scope: !3637)
!3653 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !273, file: !273, line: 390, type: !3654, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!58, !337, !378, !58}
!3656 = !{!3657, !3658, !3659, !3660, !3661}
!3657 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3653, file: !273, line: 390, type: !337)
!3658 = !DILocalVariable(name: "buffer", arg: 2, scope: !3653, file: !273, line: 390, type: !378)
!3659 = !DILocalVariable(name: "size", arg: 3, scope: !3653, file: !273, line: 390, type: !58)
!3660 = !DILocalVariable(name: "int_no", scope: !3653, file: !273, line: 392, type: !2374)
!3661 = !DILocalVariable(name: "index", scope: !3653, file: !273, line: 393, type: !58)
!3662 = !DILocation(line: 0, scope: !3653)
!3663 = !DILocation(line: 392, column: 26, scope: !3653)
!3664 = !DILocation(line: 395, column: 16, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3653, file: !273, line: 395, column: 9)
!3666 = !DILocation(line: 395, column: 9, scope: !3653)
!3667 = !DILocation(line: 401, column: 38, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !273, line: 400, column: 48)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !273, line: 400, column: 9)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !273, line: 400, column: 9)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !273, line: 399, column: 33)
!3672 = distinct !DILexicalBlock(scope: !3653, file: !273, line: 399, column: 9)
!3673 = !DILocation(line: 401, column: 13, scope: !3668)
!3674 = !DILocation(line: 401, column: 27, scope: !3668)
!3675 = !DILocation(line: 400, column: 44, scope: !3669)
!3676 = !DILocation(line: 400, column: 31, scope: !3669)
!3677 = !DILocation(line: 400, column: 9, scope: !3670)
!3678 = distinct !{!3678, !3677, !3679}
!3679 = !DILocation(line: 402, column: 9, scope: !3670)
!3680 = !DILocation(line: 406, column: 1, scope: !3653)
!3681 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !273, file: !273, line: 408, type: !3654, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688}
!3683 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3681, file: !273, line: 408, type: !337)
!3684 = !DILocalVariable(name: "buffer", arg: 2, scope: !3681, file: !273, line: 408, type: !378)
!3685 = !DILocalVariable(name: "size", arg: 3, scope: !3681, file: !273, line: 408, type: !58)
!3686 = !DILocalVariable(name: "actual_size", scope: !3681, file: !273, line: 410, type: !58)
!3687 = !DILocalVariable(name: "receive_size", scope: !3681, file: !273, line: 410, type: !58)
!3688 = !DILocalVariable(name: "ch", scope: !3681, file: !273, line: 411, type: !3581)
!3689 = !DILocation(line: 0, scope: !3681)
!3690 = !DILocation(line: 410, column: 5, scope: !3681)
!3691 = !DILocation(line: 413, column: 10, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3681, file: !273, line: 413, column: 9)
!3693 = !DILocation(line: 413, column: 9, scope: !3681)
!3694 = !DILocation(line: 417, column: 17, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3681, file: !273, line: 417, column: 9)
!3696 = !DILocation(line: 417, column: 26, scope: !3695)
!3697 = !DILocation(line: 421, column: 30, scope: !3681)
!3698 = !DILocation(line: 421, column: 5, scope: !3681)
!3699 = !DILocation(line: 422, column: 9, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3681, file: !273, line: 422, column: 9)
!3701 = !DILocation(line: 422, column: 21, scope: !3700)
!3702 = !DILocation(line: 427, column: 5, scope: !3681)
!3703 = !DILocation(line: 429, column: 25, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3681, file: !273, line: 429, column: 9)
!3705 = !DILocation(line: 429, column: 22, scope: !3704)
!3706 = !DILocation(line: 429, column: 9, scope: !3681)
!3707 = !DILocation(line: 430, column: 14, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3704, file: !273, line: 429, column: 38)
!3709 = !DILocation(line: 431, column: 9, scope: !3708)
!3710 = !DILocation(line: 432, column: 5, scope: !3708)
!3711 = !DILocation(line: 435, column: 1, scope: !3681)
!3712 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !273, file: !273, line: 438, type: !3638, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3713)
!3713 = !{!3714, !3715}
!3714 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3712, file: !273, line: 438, type: !337)
!3715 = !DILocalVariable(name: "length", scope: !3712, file: !273, line: 440, type: !58)
!3716 = !DILocation(line: 0, scope: !3712)
!3717 = !DILocation(line: 440, column: 5, scope: !3712)
!3718 = !DILocation(line: 440, column: 14, scope: !3712)
!3719 = !DILocation(line: 442, column: 10, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3712, file: !273, line: 442, column: 9)
!3721 = !DILocation(line: 442, column: 9, scope: !3712)
!3722 = !DILocation(line: 446, column: 30, scope: !3712)
!3723 = !DILocation(line: 446, column: 5, scope: !3712)
!3724 = !DILocation(line: 447, column: 12, scope: !3712)
!3725 = !DILocation(line: 447, column: 5, scope: !3712)
!3726 = !DILocation(line: 448, column: 1, scope: !3712)
!3727 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !273, file: !273, line: 451, type: !3638, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3728)
!3728 = !{!3729, !3730}
!3729 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3727, file: !273, line: 451, type: !337)
!3730 = !DILocalVariable(name: "length", scope: !3727, file: !273, line: 453, type: !58)
!3731 = !DILocation(line: 0, scope: !3727)
!3732 = !DILocation(line: 453, column: 5, scope: !3727)
!3733 = !DILocation(line: 453, column: 14, scope: !3727)
!3734 = !DILocation(line: 455, column: 10, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3727, file: !273, line: 455, column: 9)
!3736 = !DILocation(line: 455, column: 9, scope: !3727)
!3737 = !DILocation(line: 459, column: 30, scope: !3727)
!3738 = !DILocation(line: 459, column: 5, scope: !3727)
!3739 = !DILocation(line: 461, column: 12, scope: !3727)
!3740 = !DILocation(line: 461, column: 5, scope: !3727)
!3741 = !DILocation(line: 462, column: 1, scope: !3727)
!3742 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !273, file: !273, line: 543, type: !3743, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!3369, !337, !366, !180}
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3742, file: !273, line: 543, type: !337)
!3747 = !DILocalVariable(name: "user_callback", arg: 2, scope: !3742, file: !273, line: 544, type: !366)
!3748 = !DILocalVariable(name: "user_data", arg: 3, scope: !3742, file: !273, line: 545, type: !180)
!3749 = !DILocalVariable(name: "ch", scope: !3742, file: !273, line: 547, type: !3581)
!3750 = !DILocation(line: 0, scope: !3742)
!3751 = !DILocation(line: 549, column: 10, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3742, file: !273, line: 549, column: 9)
!3753 = !DILocation(line: 549, column: 9, scope: !3742)
!3754 = !DILocation(line: 556, column: 53, scope: !3742)
!3755 = !DILocation(line: 556, column: 62, scope: !3742)
!3756 = !DILocation(line: 557, column: 53, scope: !3742)
!3757 = !DILocation(line: 557, column: 63, scope: !3742)
!3758 = !DILocation(line: 558, column: 37, scope: !3742)
!3759 = !DILocation(line: 558, column: 54, scope: !3742)
!3760 = !DILocation(line: 560, column: 39, scope: !3742)
!3761 = !DILocation(line: 561, column: 39, scope: !3742)
!3762 = !DILocation(line: 560, column: 5, scope: !3742)
!3763 = !DILocation(line: 562, column: 5, scope: !3742)
!3764 = !DILocation(line: 564, column: 44, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3742, file: !273, line: 564, column: 9)
!3766 = !DILocation(line: 564, column: 9, scope: !3742)
!3767 = !DILocation(line: 565, column: 9, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3765, file: !273, line: 564, column: 59)
!3769 = !DILocation(line: 566, column: 5, scope: !3768)
!3770 = !DILocation(line: 567, column: 9, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3765, file: !273, line: 566, column: 12)
!3772 = !DILocation(line: 569, column: 10, scope: !3742)
!3773 = !DILocation(line: 570, column: 5, scope: !3742)
!3774 = !DILocation(line: 578, column: 5, scope: !3742)
!3775 = !DILocation(line: 579, column: 1, scope: !3742)
!3776 = !DILocation(line: 0, scope: !330)
!3777 = !DILocation(line: 539, column: 12, scope: !330)
!3778 = !DILocation(line: 539, column: 5, scope: !330)
!3779 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !273, file: !273, line: 511, type: !335, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3780)
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "callback_context", scope: !3782, file: !273, line: 514, type: !3784)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !273, line: 513, column: 60)
!3783 = distinct !DILexicalBlock(scope: !3779, file: !273, line: 513, column: 9)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!3785 = !DILocation(line: 513, column: 42, scope: !3783)
!3786 = !DILocation(line: 513, column: 9, scope: !3779)
!3787 = !DILocation(line: 515, column: 39, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3782, file: !273, line: 515, column: 13)
!3789 = !DILocation(line: 515, column: 18, scope: !3788)
!3790 = !DILocation(line: 515, column: 13, scope: !3782)
!3791 = !DILocation(line: 516, column: 89, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3788, file: !273, line: 515, column: 49)
!3793 = !DILocation(line: 516, column: 13, scope: !3792)
!3794 = !DILocation(line: 517, column: 9, scope: !3792)
!3795 = !DILocation(line: 519, column: 32, scope: !3779)
!3796 = !DILocation(line: 519, column: 5, scope: !3779)
!3797 = !DILocation(line: 520, column: 1, scope: !3779)
!3798 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !273, file: !273, line: 523, type: !335, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3799)
!3799 = !{!3800}
!3800 = !DILocalVariable(name: "callback_context", scope: !3801, file: !273, line: 526, type: !3784)
!3801 = distinct !DILexicalBlock(scope: !3802, file: !273, line: 525, column: 60)
!3802 = distinct !DILexicalBlock(scope: !3798, file: !273, line: 525, column: 9)
!3803 = !DILocation(line: 525, column: 42, scope: !3802)
!3804 = !DILocation(line: 525, column: 9, scope: !3798)
!3805 = !DILocation(line: 527, column: 39, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3801, file: !273, line: 527, column: 13)
!3807 = !DILocation(line: 527, column: 18, scope: !3806)
!3808 = !DILocation(line: 527, column: 13, scope: !3801)
!3809 = !DILocation(line: 528, column: 89, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3806, file: !273, line: 527, column: 49)
!3811 = !DILocation(line: 528, column: 13, scope: !3810)
!3812 = !DILocation(line: 529, column: 9, scope: !3810)
!3813 = !DILocation(line: 531, column: 32, scope: !3798)
!3814 = !DILocation(line: 531, column: 5, scope: !3798)
!3815 = !DILocation(line: 532, column: 1, scope: !3798)
!3816 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !273, file: !273, line: 464, type: !3817, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3819)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !2374, !347}
!3819 = !{!3820, !3821, !3822, !3823, !3824, !3826}
!3820 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3816, file: !273, line: 464, type: !2374)
!3821 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3816, file: !273, line: 464, type: !347)
!3822 = !DILocalVariable(name: "avail_size", scope: !3816, file: !273, line: 466, type: !58)
!3823 = !DILocalVariable(name: "avail_space", scope: !3816, file: !273, line: 466, type: !58)
!3824 = !DILocalVariable(name: "dma_config", scope: !3816, file: !273, line: 467, type: !3825)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!3826 = !DILocalVariable(name: "ch", scope: !3816, file: !273, line: 468, type: !3581)
!3827 = !DILocation(line: 0, scope: !3816)
!3828 = !DILocation(line: 466, column: 5, scope: !3816)
!3829 = !DILocation(line: 471, column: 9, scope: !3816)
!3830 = !DILocation(line: 472, column: 9, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !273, line: 471, column: 16)
!3832 = distinct !DILexicalBlock(scope: !3816, file: !273, line: 471, column: 9)
!3833 = !DILocation(line: 473, column: 13, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3831, file: !273, line: 473, column: 13)
!3835 = !DILocation(line: 473, column: 39, scope: !3834)
!3836 = !DILocation(line: 473, column: 24, scope: !3834)
!3837 = !DILocation(line: 473, column: 13, scope: !3831)
!3838 = !DILocation(line: 478, column: 9, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3832, file: !273, line: 477, column: 12)
!3840 = !DILocation(line: 479, column: 13, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3839, file: !273, line: 479, column: 13)
!3842 = !DILocation(line: 479, column: 40, scope: !3841)
!3843 = !DILocation(line: 479, column: 77, scope: !3841)
!3844 = !DILocation(line: 479, column: 63, scope: !3841)
!3845 = !DILocation(line: 479, column: 25, scope: !3841)
!3846 = !DILocation(line: 479, column: 13, scope: !3839)
!3847 = !DILocation(line: 0, scope: !3832)
!3848 = !DILocation(line: 484, column: 1, scope: !3816)
!3849 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !273, file: !273, line: 486, type: !335, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3850)
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "callback_context", scope: !3852, file: !273, line: 490, type: !3784)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !273, line: 489, column: 70)
!3853 = distinct !DILexicalBlock(scope: !3849, file: !273, line: 488, column: 9)
!3854 = !DILocation(line: 488, column: 43, scope: !3853)
!3855 = !DILocation(line: 488, column: 61, scope: !3853)
!3856 = !DILocation(line: 489, column: 14, scope: !3853)
!3857 = !DILocation(line: 489, column: 63, scope: !3853)
!3858 = !DILocation(line: 488, column: 9, scope: !3849)
!3859 = !DILocation(line: 491, column: 39, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3852, file: !273, line: 491, column: 13)
!3861 = !DILocation(line: 491, column: 18, scope: !3860)
!3862 = !DILocation(line: 491, column: 13, scope: !3852)
!3863 = !DILocation(line: 492, column: 88, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3860, file: !273, line: 491, column: 49)
!3865 = !DILocation(line: 492, column: 13, scope: !3864)
!3866 = !DILocation(line: 493, column: 9, scope: !3864)
!3867 = !DILocation(line: 495, column: 32, scope: !3849)
!3868 = !DILocation(line: 495, column: 5, scope: !3849)
!3869 = !DILocation(line: 496, column: 1, scope: !3849)
!3870 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !273, file: !273, line: 499, type: !335, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3871)
!3871 = !{!3872}
!3872 = !DILocalVariable(name: "callback_context", scope: !3873, file: !273, line: 503, type: !3784)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !273, line: 502, column: 70)
!3874 = distinct !DILexicalBlock(scope: !3870, file: !273, line: 501, column: 9)
!3875 = !DILocation(line: 501, column: 43, scope: !3874)
!3876 = !DILocation(line: 501, column: 61, scope: !3874)
!3877 = !DILocation(line: 502, column: 14, scope: !3874)
!3878 = !DILocation(line: 502, column: 63, scope: !3874)
!3879 = !DILocation(line: 501, column: 9, scope: !3870)
!3880 = !DILocation(line: 504, column: 39, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !273, line: 504, column: 13)
!3882 = !DILocation(line: 504, column: 18, scope: !3881)
!3883 = !DILocation(line: 504, column: 13, scope: !3873)
!3884 = !DILocation(line: 505, column: 88, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3881, file: !273, line: 504, column: 49)
!3886 = !DILocation(line: 505, column: 13, scope: !3885)
!3887 = !DILocation(line: 506, column: 9, scope: !3885)
!3888 = !DILocation(line: 508, column: 32, scope: !3870)
!3889 = !DILocation(line: 508, column: 5, scope: !3870)
!3890 = !DILocation(line: 509, column: 1, scope: !3870)
!3891 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !273, file: !273, line: 582, type: !3892, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3894)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!3369, !337, !353}
!3894 = !{!3895, !3896}
!3895 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3891, file: !273, line: 582, type: !337)
!3896 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3891, file: !273, line: 582, type: !353)
!3897 = !DILocation(line: 0, scope: !3891)
!3898 = !DILocation(line: 584, column: 11, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3891, file: !273, line: 584, column: 9)
!3900 = !DILocation(line: 584, column: 46, scope: !3899)
!3901 = !DILocation(line: 588, column: 37, scope: !3891)
!3902 = !DILocation(line: 588, column: 50, scope: !3891)
!3903 = !DILocation(line: 588, column: 59, scope: !3891)
!3904 = !DILocation(line: 589, column: 12, scope: !3891)
!3905 = !DILocation(line: 589, column: 5, scope: !3891)
!3906 = !DILocation(line: 590, column: 1, scope: !3891)
!3907 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !273, file: !273, line: 608, type: !3908, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3912)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!3369, !337, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!3912 = !{!3913, !3914}
!3913 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3907, file: !273, line: 608, type: !337)
!3914 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !3907, file: !273, line: 608, type: !3910)
!3915 = !DILocation(line: 0, scope: !3907)
!3916 = !DILocation(line: 610, column: 10, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3907, file: !273, line: 610, column: 9)
!3918 = !DILocation(line: 610, column: 9, scope: !3907)
!3919 = !DILocation(line: 614, column: 10, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3907, file: !273, line: 614, column: 9)
!3921 = !DILocation(line: 614, column: 9, scope: !3907)
!3922 = !DILocation(line: 618, column: 37, scope: !3907)
!3923 = !DILocation(line: 618, column: 56, scope: !3907)
!3924 = !DILocation(line: 619, column: 45, scope: !3907)
!3925 = !DILocation(line: 619, column: 12, scope: !3907)
!3926 = !DILocation(line: 620, column: 12, scope: !3907)
!3927 = !DILocation(line: 619, column: 5, scope: !3907)
!3928 = !DILocation(line: 621, column: 5, scope: !3907)
!3929 = !DILocation(line: 622, column: 5, scope: !3907)
!3930 = !DILocation(line: 623, column: 33, scope: !3907)
!3931 = !DILocation(line: 624, column: 50, scope: !3907)
!3932 = !DILocation(line: 625, column: 50, scope: !3907)
!3933 = !DILocation(line: 626, column: 50, scope: !3907)
!3934 = !DILocation(line: 627, column: 50, scope: !3907)
!3935 = !DILocation(line: 628, column: 33, scope: !3907)
!3936 = !DILocation(line: 623, column: 5, scope: !3907)
!3937 = !DILocation(line: 630, column: 50, scope: !3907)
!3938 = !DILocation(line: 631, column: 50, scope: !3907)
!3939 = !DILocation(line: 632, column: 50, scope: !3907)
!3940 = !DILocation(line: 629, column: 5, scope: !3907)
!3941 = !DILocation(line: 634, column: 5, scope: !3907)
!3942 = !DILocation(line: 635, column: 1, scope: !3907)
!3943 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !273, file: !273, line: 112, type: !3944, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3946)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!347, !3910}
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "dma_config", arg: 1, scope: !3943, file: !273, line: 112, type: !3910)
!3948 = !DILocation(line: 0, scope: !3943)
!3949 = !DILocation(line: 114, column: 14, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3943, file: !273, line: 114, column: 9)
!3951 = !DILocation(line: 114, column: 9, scope: !3943)
!3952 = !DILocation(line: 117, column: 29, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3943, file: !273, line: 117, column: 9)
!3954 = !DILocation(line: 117, column: 14, scope: !3953)
!3955 = !DILocation(line: 117, column: 9, scope: !3943)
!3956 = !DILocation(line: 120, column: 21, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3943, file: !273, line: 120, column: 9)
!3958 = !DILocation(line: 120, column: 61, scope: !3957)
!3959 = !DILocation(line: 120, column: 47, scope: !3957)
!3960 = !DILocation(line: 120, column: 9, scope: !3943)
!3961 = !DILocation(line: 123, column: 61, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3943, file: !273, line: 123, column: 9)
!3963 = !DILocation(line: 123, column: 47, scope: !3962)
!3964 = !DILocation(line: 123, column: 9, scope: !3943)
!3965 = !DILocation(line: 126, column: 29, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !3943, file: !273, line: 126, column: 9)
!3967 = !DILocation(line: 126, column: 14, scope: !3966)
!3968 = !DILocation(line: 126, column: 9, scope: !3943)
!3969 = !DILocation(line: 129, column: 21, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3943, file: !273, line: 129, column: 9)
!3971 = !DILocation(line: 129, column: 58, scope: !3970)
!3972 = !DILocation(line: 129, column: 44, scope: !3970)
!3973 = !DILocation(line: 129, column: 9, scope: !3943)
!3974 = !DILocation(line: 136, column: 1, scope: !3943)
!3975 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !273, file: !273, line: 182, type: !3976, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!58, !58}
!3978 = !{!3979, !3980}
!3979 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !3975, file: !273, line: 182, type: !58)
!3980 = !DILocalVariable(name: "ticks_per_us", scope: !3975, file: !273, line: 184, type: !58)
!3981 = !DILocation(line: 0, scope: !3975)
!3982 = !DILocation(line: 186, column: 20, scope: !3975)
!3983 = !DILocation(line: 186, column: 39, scope: !3975)
!3984 = !DILocation(line: 188, column: 25, scope: !3975)
!3985 = !DILocation(line: 188, column: 5, scope: !3975)
!3986 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !273, file: !273, line: 637, type: !3512, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !3987)
!3987 = !{!3988, !3989}
!3988 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3986, file: !273, line: 637, type: !337)
!3989 = !DILocalVariable(name: "int_no", scope: !3986, file: !273, line: 639, type: !2374)
!3990 = !DILocation(line: 0, scope: !3986)
!3991 = !DILocation(line: 641, column: 10, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3986, file: !273, line: 641, column: 9)
!3993 = !DILocation(line: 641, column: 9, scope: !3986)
!3994 = !DILocation(line: 645, column: 14, scope: !3986)
!3995 = !DILocation(line: 646, column: 5, scope: !3986)
!3996 = !DILocation(line: 648, column: 5, scope: !3986)
!3997 = !DILocation(line: 649, column: 1, scope: !3986)
!3998 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !273, file: !273, line: 651, type: !3999, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!3369, !337, !210, !210, !210}
!4001 = !{!4002, !4003, !4004, !4005, !4006}
!4002 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3998, file: !273, line: 651, type: !337)
!4003 = !DILocalVariable(name: "xon", arg: 2, scope: !3998, file: !273, line: 652, type: !210)
!4004 = !DILocalVariable(name: "xoff", arg: 3, scope: !3998, file: !273, line: 653, type: !210)
!4005 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3998, file: !273, line: 654, type: !210)
!4006 = !DILocalVariable(name: "int_no", scope: !3998, file: !273, line: 656, type: !2374)
!4007 = !DILocation(line: 0, scope: !3998)
!4008 = !DILocation(line: 658, column: 10, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3998, file: !273, line: 658, column: 9)
!4010 = !DILocation(line: 658, column: 9, scope: !3998)
!4011 = !DILocation(line: 662, column: 14, scope: !3998)
!4012 = !DILocation(line: 663, column: 5, scope: !3998)
!4013 = !DILocation(line: 665, column: 5, scope: !3998)
!4014 = !DILocation(line: 666, column: 1, scope: !3998)
!4015 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !273, file: !273, line: 668, type: !3512, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !4016)
!4016 = !{!4017, !4018}
!4017 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4015, file: !273, line: 668, type: !337)
!4018 = !DILocalVariable(name: "int_no", scope: !4015, file: !273, line: 670, type: !2374)
!4019 = !DILocation(line: 0, scope: !4015)
!4020 = !DILocation(line: 672, column: 10, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4015, file: !273, line: 672, column: 9)
!4022 = !DILocation(line: 672, column: 9, scope: !4015)
!4023 = !DILocation(line: 676, column: 14, scope: !4015)
!4024 = !DILocation(line: 677, column: 5, scope: !4015)
!4025 = !DILocation(line: 679, column: 5, scope: !4015)
!4026 = !DILocation(line: 680, column: 1, scope: !4015)
!4027 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !273, file: !273, line: 683, type: !4028, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !272, retainedNodes: !4030)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!3369, !337, !58}
!4030 = !{!4031, !4032}
!4031 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4027, file: !273, line: 683, type: !337)
!4032 = !DILocalVariable(name: "timeout", arg: 2, scope: !4027, file: !273, line: 683, type: !58)
!4033 = !DILocation(line: 0, scope: !4027)
!4034 = !DILocation(line: 685, column: 10, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4027, file: !273, line: 685, column: 9)
!4036 = !DILocation(line: 685, column: 9, scope: !4027)
!4037 = !DILocation(line: 689, column: 19, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4027, file: !273, line: 689, column: 9)
!4039 = !DILocation(line: 0, scope: !4038)
!4040 = !DILocation(line: 696, column: 1, scope: !4027)
!4041 = distinct !DISubprogram(name: "__io_putchar", scope: !882, file: !882, line: 54, type: !4042, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!125, !125}
!4044 = !{!4045}
!4045 = !DILocalVariable(name: "ch", arg: 1, scope: !4041, file: !882, line: 54, type: !125)
!4046 = !DILocation(line: 0, scope: !4041)
!4047 = !DILocation(line: 61, column: 35, scope: !4041)
!4048 = !DILocation(line: 61, column: 5, scope: !4041)
!4049 = !DILocation(line: 62, column: 5, scope: !4041)
!4050 = distinct !DISubprogram(name: "main", scope: !882, file: !882, line: 204, type: !2350, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !1921)
!4051 = !DILocation(line: 207, column: 5, scope: !4050)
!4052 = !DILocation(line: 209, column: 5, scope: !4050)
!4053 = !DILocation(line: 212, column: 5, scope: !4050)
!4054 = !DILocation(line: 319, column: 3, scope: !4055, inlinedAt: !4056)
!4055 = distinct !DISubprogram(name: "__enable_irq", scope: !1911, file: !1911, line: 317, type: !335, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !1921)
!4056 = distinct !DILocation(line: 215, column: 5, scope: !4050)
!4057 = !{i64 502689}
!4058 = !DILocation(line: 496, column: 3, scope: !4059, inlinedAt: !4060)
!4059 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1911, file: !1911, line: 494, type: !335, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !1921)
!4060 = distinct !DILocation(line: 216, column: 5, scope: !4050)
!4061 = !{i64 506964}
!4062 = !DILocation(line: 219, column: 5, scope: !4050)
!4063 = !DILocation(line: 220, column: 5, scope: !4050)
!4064 = !DILocation(line: 221, column: 5, scope: !4050)
!4065 = !DILocation(line: 222, column: 5, scope: !4050)
!4066 = !DILocation(line: 224, column: 5, scope: !4050)
!4067 = !DILocation(line: 226, column: 5, scope: !4050)
!4068 = distinct !{!4068, !4067, !4069}
!4069 = !DILocation(line: 226, column: 14, scope: !4050)
!4070 = distinct !DISubprogram(name: "SystemClock_Config", scope: !882, file: !882, line: 92, type: !335, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !1921)
!4071 = !DILocation(line: 94, column: 5, scope: !4070)
!4072 = !DILocation(line: 95, column: 1, scope: !4070)
!4073 = distinct !DISubprogram(name: "prvSetupHardware", scope: !882, file: !882, line: 103, type: !335, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !1921)
!4074 = !DILocation(line: 105, column: 5, scope: !4073)
!4075 = !DILocation(line: 106, column: 1, scope: !4073)
!4076 = distinct !DISubprogram(name: "gpio_configure_pull_state_example", scope: !882, file: !882, line: 114, type: !335, scopeLine: 115, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4077)
!4077 = !{!4078, !4079, !4080, !4081}
!4078 = !DILocalVariable(name: "data_pull_up", scope: !4076, file: !882, line: 117, type: !878)
!4079 = !DILocalVariable(name: "data_pull_down", scope: !4076, file: !882, line: 118, type: !878)
!4080 = !DILocalVariable(name: "ret", scope: !4076, file: !882, line: 119, type: !3166)
!4081 = !DILocalVariable(name: "ret_pinmux_status", scope: !4076, file: !882, line: 120, type: !3145)
!4082 = !DILocation(line: 117, column: 5, scope: !4076)
!4083 = !DILocation(line: 118, column: 5, scope: !4076)
!4084 = !DILocation(line: 122, column: 5, scope: !4076)
!4085 = !DILocation(line: 124, column: 11, scope: !4076)
!4086 = !DILocation(line: 0, scope: !4076)
!4087 = !DILocation(line: 125, column: 28, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 125, column: 9)
!4089 = !DILocation(line: 125, column: 9, scope: !4076)
!4090 = !DILocation(line: 126, column: 9, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4088, file: !882, line: 125, column: 36)
!4092 = !DILocation(line: 127, column: 9, scope: !4091)
!4093 = !DILocation(line: 128, column: 9, scope: !4091)
!4094 = !DILocation(line: 134, column: 25, scope: !4076)
!4095 = !DILocation(line: 135, column: 30, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 135, column: 9)
!4097 = !DILocation(line: 135, column: 9, scope: !4076)
!4098 = !DILocation(line: 136, column: 9, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4096, file: !882, line: 135, column: 52)
!4100 = !DILocation(line: 137, column: 9, scope: !4099)
!4101 = !DILocation(line: 138, column: 9, scope: !4099)
!4102 = !DILocation(line: 142, column: 11, scope: !4076)
!4103 = !DILocation(line: 143, column: 28, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 143, column: 9)
!4105 = !DILocation(line: 143, column: 9, scope: !4076)
!4106 = !DILocation(line: 144, column: 9, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4104, file: !882, line: 143, column: 36)
!4108 = !DILocation(line: 145, column: 9, scope: !4107)
!4109 = !DILocation(line: 146, column: 9, scope: !4107)
!4110 = !DILocation(line: 150, column: 11, scope: !4076)
!4111 = !DILocation(line: 151, column: 28, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 151, column: 9)
!4113 = !DILocation(line: 151, column: 9, scope: !4076)
!4114 = !DILocation(line: 152, column: 9, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4112, file: !882, line: 151, column: 36)
!4116 = !DILocation(line: 153, column: 9, scope: !4115)
!4117 = !DILocation(line: 154, column: 9, scope: !4115)
!4118 = !DILocation(line: 158, column: 11, scope: !4076)
!4119 = !DILocation(line: 159, column: 28, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 159, column: 9)
!4121 = !DILocation(line: 159, column: 9, scope: !4076)
!4122 = !DILocation(line: 160, column: 9, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4120, file: !882, line: 159, column: 36)
!4124 = !DILocation(line: 161, column: 9, scope: !4123)
!4125 = !DILocation(line: 162, column: 9, scope: !4123)
!4126 = !DILocation(line: 168, column: 11, scope: !4076)
!4127 = !DILocation(line: 169, column: 28, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 169, column: 9)
!4129 = !DILocation(line: 169, column: 9, scope: !4076)
!4130 = !DILocation(line: 170, column: 9, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4128, file: !882, line: 169, column: 36)
!4132 = !DILocation(line: 171, column: 9, scope: !4131)
!4133 = !DILocation(line: 172, column: 9, scope: !4131)
!4134 = !DILocation(line: 176, column: 11, scope: !4076)
!4135 = !DILocation(line: 177, column: 28, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 177, column: 9)
!4137 = !DILocation(line: 177, column: 9, scope: !4076)
!4138 = !DILocation(line: 178, column: 9, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4136, file: !882, line: 177, column: 36)
!4140 = !DILocation(line: 179, column: 9, scope: !4139)
!4141 = !DILocation(line: 180, column: 9, scope: !4139)
!4142 = !DILocation(line: 185, column: 10, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 185, column: 9)
!4144 = !DILocation(line: 185, column: 25, scope: !4143)
!4145 = !DILocation(line: 185, column: 47, scope: !4143)
!4146 = !DILocation(line: 0, scope: !4143)
!4147 = !DILocation(line: 191, column: 11, scope: !4076)
!4148 = !DILocation(line: 192, column: 28, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4076, file: !882, line: 192, column: 9)
!4150 = !DILocation(line: 192, column: 9, scope: !4076)
!4151 = !DILocation(line: 193, column: 9, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4149, file: !882, line: 192, column: 36)
!4153 = !DILocation(line: 194, column: 9, scope: !4152)
!4154 = !DILocation(line: 197, column: 5, scope: !4076)
!4155 = !DILocation(line: 200, column: 5, scope: !4076)
!4156 = !DILocation(line: 202, column: 1, scope: !4076)
!4157 = distinct !DISubprogram(name: "log_uart_init", scope: !882, file: !882, line: 70, type: !335, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !881, retainedNodes: !4158)
!4158 = !{!4159}
!4159 = !DILocalVariable(name: "uart_config", scope: !4157, file: !882, line: 72, type: !4160)
!4160 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !276, line: 378, baseType: !4161)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 373, size: 128, elements: !4162)
!4162 = !{!4163, !4164, !4165, !4166}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4161, file: !276, line: 374, baseType: !353, size: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4161, file: !276, line: 375, baseType: !355, size: 32, offset: 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4161, file: !276, line: 376, baseType: !357, size: 32, offset: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4161, file: !276, line: 377, baseType: !359, size: 32, offset: 96)
!4167 = !DILocation(line: 72, column: 5, scope: !4157)
!4168 = !DILocation(line: 72, column: 23, scope: !4157)
!4169 = !DILocation(line: 74, column: 5, scope: !4157)
!4170 = !DILocation(line: 75, column: 5, scope: !4157)
!4171 = !DILocation(line: 76, column: 5, scope: !4157)
!4172 = !DILocation(line: 77, column: 5, scope: !4157)
!4173 = !DILocation(line: 79, column: 17, scope: !4157)
!4174 = !DILocation(line: 79, column: 26, scope: !4157)
!4175 = !DILocation(line: 80, column: 17, scope: !4157)
!4176 = !DILocation(line: 80, column: 29, scope: !4157)
!4177 = !DILocation(line: 81, column: 17, scope: !4157)
!4178 = !DILocation(line: 81, column: 26, scope: !4157)
!4179 = !DILocation(line: 82, column: 17, scope: !4157)
!4180 = !DILocation(line: 82, column: 24, scope: !4157)
!4181 = !DILocation(line: 83, column: 5, scope: !4157)
!4182 = !DILocation(line: 85, column: 1, scope: !4157)
!4183 = distinct !DISubprogram(name: "SysTick_Set", scope: !388, file: !388, line: 70, type: !3976, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !4184)
!4184 = !{!4185, !4186}
!4185 = !DILocalVariable(name: "ticks", arg: 1, scope: !4183, file: !388, line: 70, type: !58)
!4186 = !DILocalVariable(name: "val", scope: !4183, file: !388, line: 72, type: !58)
!4187 = !DILocation(line: 0, scope: !4183)
!4188 = !DILocation(line: 74, column: 16, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4183, file: !388, line: 74, column: 9)
!4190 = !DILocation(line: 74, column: 21, scope: !4189)
!4191 = !DILocation(line: 74, column: 9, scope: !4183)
!4192 = !DILocation(line: 78, column: 20, scope: !4183)
!4193 = !DILocation(line: 80, column: 19, scope: !4183)
!4194 = !DILocation(line: 83, column: 20, scope: !4183)
!4195 = !DILocation(line: 84, column: 20, scope: !4183)
!4196 = !DILocation(line: 86, column: 19, scope: !4183)
!4197 = !DILocation(line: 88, column: 5, scope: !4183)
!4198 = !DILocation(line: 89, column: 1, scope: !4183)
!4199 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !388, file: !388, line: 98, type: !335, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1921)
!4200 = !DILocation(line: 100, column: 28, scope: !4199)
!4201 = !DILocation(line: 101, column: 1, scope: !4199)
!4202 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !388, file: !388, line: 110, type: !1905, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1921)
!4203 = !DILocation(line: 112, column: 12, scope: !4202)
!4204 = !DILocation(line: 112, column: 5, scope: !4202)
!4205 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !388, file: !388, line: 122, type: !335, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1921)
!4206 = !DILocation(line: 124, column: 23, scope: !4205)
!4207 = !DILocation(line: 124, column: 21, scope: !4205)
!4208 = !DILocation(line: 125, column: 1, scope: !4205)
!4209 = distinct !DISubprogram(name: "SystemInit", scope: !388, file: !388, line: 136, type: !335, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1921)
!4210 = !DILocation(line: 140, column: 16, scope: !4209)
!4211 = !DILocation(line: 144, column: 16, scope: !4209)
!4212 = !DILocation(line: 147, column: 16, scope: !4209)
!4213 = !DILocation(line: 150, column: 1, scope: !4209)
!4214 = distinct !DISubprogram(name: "CachePreInit", scope: !388, file: !388, line: 158, type: !335, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1921)
!4215 = !DILocation(line: 161, column: 22, scope: !4214)
!4216 = !DILocation(line: 164, column: 21, scope: !4214)
!4217 = !DILocation(line: 167, column: 21, scope: !4214)
!4218 = !DILocation(line: 170, column: 29, scope: !4214)
!4219 = !DILocation(line: 171, column: 33, scope: !4214)
!4220 = !DILocation(line: 173, column: 28, scope: !4214)
!4221 = !DILocation(line: 178, column: 30, scope: !4214)
!4222 = !DILocation(line: 192, column: 1, scope: !4214)
!4223 = distinct !DISubprogram(name: "_close", scope: !458, file: !458, line: 11, type: !4042, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4224)
!4224 = !{!4225}
!4225 = !DILocalVariable(name: "file", arg: 1, scope: !4223, file: !458, line: 11, type: !125)
!4226 = !DILocation(line: 0, scope: !4223)
!4227 = !DILocation(line: 13, column: 5, scope: !4223)
!4228 = distinct !DISubprogram(name: "_fstat", scope: !458, file: !458, line: 16, type: !4229, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4277)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!125, !125, !4231}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 32)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4233, line: 27, size: 704, elements: !4234)
!4233 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!4234 = !{!4235, !4238, !4241, !4244, !4247, !4250, !4253, !4254, !4257, !4267, !4268, !4269, !4272, !4275}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4232, file: !4233, line: 29, baseType: !4236, size: 16)
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !462, line: 161, baseType: !4237)
!4237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !504, line: 56, baseType: !479)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4232, file: !4233, line: 30, baseType: !4239, size: 16, offset: 16)
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !462, line: 139, baseType: !4240)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !504, line: 75, baseType: !112)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4232, file: !4233, line: 31, baseType: !4242, size: 32, offset: 32)
!4242 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !462, line: 189, baseType: !4243)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !504, line: 90, baseType: !60)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4232, file: !4233, line: 32, baseType: !4245, size: 16, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !462, line: 194, baseType: !4246)
!4246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !504, line: 209, baseType: !112)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4232, file: !4233, line: 33, baseType: !4248, size: 16, offset: 80)
!4248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !462, line: 165, baseType: !4249)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !504, line: 60, baseType: !112)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4232, file: !4233, line: 34, baseType: !4251, size: 16, offset: 96)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !462, line: 169, baseType: !4252)
!4252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !504, line: 63, baseType: !112)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4232, file: !4233, line: 35, baseType: !4236, size: 16, offset: 112)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4232, file: !4233, line: 36, baseType: !4255, size: 32, offset: 128)
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !462, line: 157, baseType: !4256)
!4256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !504, line: 102, baseType: !522)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4232, file: !4233, line: 42, baseType: !4258, size: 128, offset: 192)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4259, line: 47, size: 128, elements: !4260)
!4259 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!4260 = !{!4261, !4266}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4258, file: !4259, line: 48, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !4263, line: 42, baseType: !4264)
!4263 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!4264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !61, line: 200, baseType: !4265)
!4265 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4258, file: !4259, line: 49, baseType: !505, size: 32, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4232, file: !4233, line: 43, baseType: !4258, size: 128, offset: 320)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4232, file: !4233, line: 44, baseType: !4258, size: 128, offset: 448)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4232, file: !4233, line: 45, baseType: !4270, size: 32, offset: 576)
!4270 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !462, line: 102, baseType: !4271)
!4271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !504, line: 34, baseType: !505)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4232, file: !4233, line: 46, baseType: !4273, size: 32, offset: 608)
!4273 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !462, line: 97, baseType: !4274)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !504, line: 30, baseType: !505)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !4232, file: !4233, line: 48, baseType: !4276, size: 64, offset: 640)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 64, elements: !243)
!4277 = !{!4278, !4279}
!4278 = !DILocalVariable(name: "file", arg: 1, scope: !4228, file: !458, line: 16, type: !125)
!4279 = !DILocalVariable(name: "st", arg: 2, scope: !4228, file: !458, line: 16, type: !4231)
!4280 = !DILocation(line: 0, scope: !4228)
!4281 = !DILocation(line: 18, column: 5, scope: !4228)
!4282 = distinct !DISubprogram(name: "_isatty", scope: !458, file: !458, line: 22, type: !4042, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4283)
!4283 = !{!4284}
!4284 = !DILocalVariable(name: "file", arg: 1, scope: !4282, file: !458, line: 22, type: !125)
!4285 = !DILocation(line: 0, scope: !4282)
!4286 = !DILocation(line: 24, column: 5, scope: !4282)
!4287 = distinct !DISubprogram(name: "_lseek", scope: !458, file: !458, line: 27, type: !4288, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4290)
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!125, !125, !125, !125}
!4290 = !{!4291, !4292, !4293}
!4291 = !DILocalVariable(name: "file", arg: 1, scope: !4287, file: !458, line: 27, type: !125)
!4292 = !DILocalVariable(name: "ptr", arg: 2, scope: !4287, file: !458, line: 27, type: !125)
!4293 = !DILocalVariable(name: "dir", arg: 3, scope: !4287, file: !458, line: 27, type: !125)
!4294 = !DILocation(line: 0, scope: !4287)
!4295 = !DILocation(line: 29, column: 5, scope: !4287)
!4296 = distinct !DISubprogram(name: "_open", scope: !458, file: !458, line: 32, type: !4297, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!125, !497, !125, !125}
!4299 = !{!4300, !4301, !4302}
!4300 = !DILocalVariable(name: "name", arg: 1, scope: !4296, file: !458, line: 32, type: !497)
!4301 = !DILocalVariable(name: "flags", arg: 2, scope: !4296, file: !458, line: 32, type: !125)
!4302 = !DILocalVariable(name: "mode", arg: 3, scope: !4296, file: !458, line: 32, type: !125)
!4303 = !DILocation(line: 0, scope: !4296)
!4304 = !DILocation(line: 34, column: 5, scope: !4296)
!4305 = distinct !DISubprogram(name: "_read", scope: !458, file: !458, line: 37, type: !4306, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!125, !125, !463, !125}
!4308 = !{!4309, !4310, !4311}
!4309 = !DILocalVariable(name: "file", arg: 1, scope: !4305, file: !458, line: 37, type: !125)
!4310 = !DILocalVariable(name: "ptr", arg: 2, scope: !4305, file: !458, line: 37, type: !463)
!4311 = !DILocalVariable(name: "len", arg: 3, scope: !4305, file: !458, line: 37, type: !125)
!4312 = !DILocation(line: 0, scope: !4305)
!4313 = !DILocation(line: 39, column: 5, scope: !4305)
!4314 = distinct !DISubprogram(name: "_write", scope: !458, file: !458, line: 52, type: !4306, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4315)
!4315 = !{!4316, !4317, !4318, !4319}
!4316 = !DILocalVariable(name: "file", arg: 1, scope: !4314, file: !458, line: 52, type: !125)
!4317 = !DILocalVariable(name: "ptr", arg: 2, scope: !4314, file: !458, line: 52, type: !463)
!4318 = !DILocalVariable(name: "len", arg: 3, scope: !4314, file: !458, line: 52, type: !125)
!4319 = !DILocalVariable(name: "i", scope: !4314, file: !458, line: 54, type: !125)
!4320 = !DILocation(line: 0, scope: !4314)
!4321 = !DILocation(line: 56, column: 19, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !458, line: 56, column: 5)
!4323 = distinct !DILexicalBlock(scope: !4314, file: !458, line: 56, column: 5)
!4324 = !DILocation(line: 56, column: 5, scope: !4323)
!4325 = !DILocation(line: 57, column: 26, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4322, file: !458, line: 56, column: 31)
!4327 = !DILocation(line: 57, column: 22, scope: !4326)
!4328 = !DILocation(line: 57, column: 9, scope: !4326)
!4329 = !DILocation(line: 56, column: 27, scope: !4322)
!4330 = distinct !{!4330, !4324, !4331}
!4331 = !DILocation(line: 58, column: 5, scope: !4323)
!4332 = !DILocation(line: 60, column: 5, scope: !4314)
!4333 = !DILocation(line: 0, scope: !457)
!4334 = !DILocation(line: 70, column: 5, scope: !457)
!4335 = !{i64 1109}
!4336 = !DILocation(line: 72, column: 14, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !457, file: !458, line: 72, column: 9)
!4338 = !DILocation(line: 72, column: 11, scope: !4337)
!4339 = !DILocation(line: 72, column: 9, scope: !457)
!4340 = !DILocation(line: 78, column: 32, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !457, file: !458, line: 78, column: 9)
!4342 = !DILocation(line: 78, column: 15, scope: !4341)
!4343 = !DILocation(line: 89, column: 1, scope: !457)
!4344 = !DILocation(line: 78, column: 9, scope: !457)
!4345 = distinct !DISubprogram(name: "_exit", scope: !458, file: !458, line: 91, type: !607, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4346)
!4346 = !{!4347}
!4347 = !DILocalVariable(name: "__status", arg: 1, scope: !4345, file: !458, line: 91, type: !125)
!4348 = !DILocation(line: 0, scope: !4345)
!4349 = !DILocation(line: 93, column: 5, scope: !4345)
!4350 = !DILocation(line: 94, column: 5, scope: !4345)
!4351 = distinct !{!4351, !4350, !4352}
!4352 = !DILocation(line: 96, column: 5, scope: !4345)
!4353 = distinct !DISubprogram(name: "_kill", scope: !458, file: !458, line: 100, type: !4354, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!125, !125, !125}
!4356 = !{!4357, !4358}
!4357 = !DILocalVariable(name: "pid", arg: 1, scope: !4353, file: !458, line: 100, type: !125)
!4358 = !DILocalVariable(name: "sig", arg: 2, scope: !4353, file: !458, line: 100, type: !125)
!4359 = !DILocation(line: 0, scope: !4353)
!4360 = !DILocation(line: 102, column: 5, scope: !4353)
!4361 = !DILocation(line: 103, column: 5, scope: !4353)
!4362 = distinct !DISubprogram(name: "_getpid", scope: !458, file: !458, line: 107, type: !4363, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !1921)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!4365}
!4365 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !462, line: 174, baseType: !4366)
!4366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !504, line: 52, baseType: !125)
!4367 = !DILocation(line: 109, column: 5, scope: !4362)
!4368 = !DILocation(line: 110, column: 5, scope: !4362)
