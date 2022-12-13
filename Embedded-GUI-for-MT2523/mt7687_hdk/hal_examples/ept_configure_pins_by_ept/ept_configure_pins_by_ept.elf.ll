; ModuleID = './build/ept_configure_pins_by_ept.elf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv7em-none-unknown-eabihf"

%struct.nvic_function_t = type { void (i32)*, i32 }
%struct.uart_context_t = type { i8, %struct.hal_uart_config_t, i8, %struct.hal_uart_callback_config_t, i8, %struct.hal_uart_dma_config_t }
%struct.hal_uart_config_t = type { i32, i32, i32, i32 }
%struct.hal_uart_callback_config_t = type { void (i32, i8*)*, i8* }
%struct.hal_uart_dma_config_t = type { i8*, i32, i32, i8*, i32, i32, i32 }
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
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._misc_reent = type { i8*, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, [8 x i8], i32, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t, %struct._mbstate_t }

@gXtalFreq = internal unnamed_addr global i32 0, align 4, !dbg !0
@gCpuFrequency = internal unnamed_addr global i32 0, align 4, !dbg !19
@switch.table.top_xtal_init = private unnamed_addr constant [8 x i32] [i32 20000000, i32 40000000, i32 26000000, i32 52000000, i32 40000000, i32 40000000, i32 40000000, i32 40000000], align 4
@switch.table.top_xtal_init.1 = private unnamed_addr constant [8 x i32] [i32 16, i32 512, i32 64, i32 1024, i32 512, i32 512, i32 512, i32 512], align 4
@__const.halUART_SetFormat.fraction_L_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 16, i16 68, i16 146, i16 41, i16 170, i16 182, i16 219, i16 173, i16 255, i16 255], align 2
@__const.halUART_SetFormat.fraction_M_mapping = private unnamed_addr constant [11 x i16] [i16 0, i16 0, i16 0, i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 3], align 2
@gUartClkFreq = dso_local local_unnamed_addr global i32 0, align 4, !dbg !21
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !59
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !211
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !269
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@__const.gpio_mode_init.mode_temp = private unnamed_addr constant [10 x i32] [i32 -2004322441, i32 -2004318072, i32 -2004318072, i32 -2004596600, i32 -2005432184, i32 -2004318072, i32 -2004318072, i32 -2004457336, i32 -2004318072, i32 8], align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Pins have been initialized according to the configuration of EPT.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"example project test success.\0A\00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !326
@System_Initialize_Done = internal global i32 0, align 4, !dbg !394
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !396
@end = external dso_local global i8, align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.13 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.14 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:54:29 GMT +00:00\00", align 1, !dbg !605
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !610
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !616

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata i8 %1, metadata !888, metadata !DIExpression()), !dbg !892
  %3 = lshr i32 %0, 5, !dbg !893
  call void @llvm.dbg.value(metadata i32 %3, metadata !889, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !892
  %4 = trunc i32 %0 to i16, !dbg !894
  %5 = and i16 %4, 31, !dbg !894
  call void @llvm.dbg.value(metadata i16 %4, metadata !891, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !892
  %6 = trunc i32 %3 to i16, !dbg !895
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !895

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !896
  %9 = zext i16 %5 to i32, !dbg !899
  %10 = icmp ult i16 %5, 27, !dbg !899
  br i1 %8, label %11, label %46, !dbg !900

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !901

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !903
  %14 = xor i32 %13, -1, !dbg !906
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !907
  %16 = and i32 %15, %14, !dbg !907
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !907
  br label %44, !dbg !908

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !909
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !909

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !910
  %21 = and i32 %20, -3, !dbg !910
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !910
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !913
  %23 = or i32 %22, 2048, !dbg !913
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !913
  br label %44, !dbg !914

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !915
  %26 = and i32 %25, -3, !dbg !915
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !915
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !918
  %28 = or i32 %27, 2048, !dbg !918
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !918
  br label %44, !dbg !919

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !920
  %31 = and i32 %30, -3, !dbg !920
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !920
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !923
  %33 = or i32 %32, 2048, !dbg !923
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !923
  br label %44, !dbg !924

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !925
  %36 = and i32 %35, -3, !dbg !925
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !925
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !928
  %38 = or i32 %37, 2048, !dbg !928
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !928
  br label %44, !dbg !929

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !930
  %41 = and i32 %40, -3, !dbg !930
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !930
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !933
  %43 = or i32 %42, 2048, !dbg !933
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !933
  br label %44, !dbg !934

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !935
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !935
  br label %97, !dbg !936

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !937

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !939
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !942
  %50 = or i32 %49, %48, !dbg !942
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !942
  br label %68, !dbg !943

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !944
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !944

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !945
  %55 = or i32 %54, 2050, !dbg !945
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !945
  br label %68, !dbg !948

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !949
  %58 = or i32 %57, 2050, !dbg !949
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !949
  br label %68, !dbg !952

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !953
  %61 = or i32 %60, 2050, !dbg !953
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !953
  br label %68, !dbg !956

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !957
  %64 = or i32 %63, 2050, !dbg !957
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !957
  br label %68, !dbg !960

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !961
  %67 = or i32 %66, 2050, !dbg !961
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !961
  br label %68, !dbg !964

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !965
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !965
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !966
  %72 = zext i16 %5 to i32, !dbg !968
  %73 = icmp eq i16 %5, 0, !dbg !968
  br i1 %71, label %74, label %87, !dbg !969

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !970

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !972
  %77 = xor i32 %76, -1, !dbg !975
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !976
  %79 = and i32 %78, %77, !dbg !976
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !976
  br label %85, !dbg !977

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !978
  %82 = and i32 %81, -3, !dbg !978
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !978
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !980
  %84 = or i32 %83, 2048, !dbg !980
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !980
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !981
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !981
  br label %97, !dbg !982

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !983

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !985
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !988
  %91 = or i32 %90, %89, !dbg !988
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !988
  br label %95, !dbg !989

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !990
  %94 = or i32 %93, 2050, !dbg !990
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !990
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !992
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !992
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !892
  ret i32 %98, !dbg !993
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !994 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !996, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata i8 %1, metadata !997, metadata !DIExpression()), !dbg !1000
  %3 = lshr i32 %0, 5, !dbg !1001
  call void @llvm.dbg.value(metadata i32 %3, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1000
  %4 = trunc i32 %0 to i16, !dbg !1002
  %5 = and i16 %4, 31, !dbg !1002
  call void @llvm.dbg.value(metadata i16 %5, metadata !999, metadata !DIExpression()), !dbg !1000
  %6 = trunc i32 %3 to i16, !dbg !1003
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1003

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1004
  %9 = zext i16 %5 to i32, !dbg !1007
  %10 = shl nuw i32 1, %9, !dbg !1007
  br i1 %8, label %12, label %11, !dbg !1008

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1009
  br label %19, !dbg !1011

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1012
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1014
  %15 = zext i16 %5 to i32, !dbg !1016
  %16 = shl nuw i32 1, %15, !dbg !1016
  br i1 %14, label %18, label %17, !dbg !1017

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1018
  br label %19, !dbg !1020

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1021
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1000
  ret i32 %20, !dbg !1023
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1024 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1028, metadata !DIExpression()), !dbg !1032
  %2 = lshr i32 %0, 5, !dbg !1033
  call void @llvm.dbg.value(metadata i32 %2, metadata !1029, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1032
  %3 = and i32 %0, 31, !dbg !1034
  call void @llvm.dbg.value(metadata i32 %0, metadata !1030, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1032
  call void @llvm.dbg.value(metadata i8 0, metadata !1031, metadata !DIExpression()), !dbg !1032
  %4 = trunc i32 %2 to i16, !dbg !1035
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1035

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1031, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1032
  br label %6, !dbg !1036

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1038
  %9 = lshr i32 %8, %3, !dbg !1038
  %10 = trunc i32 %9 to i8, !dbg !1038
  %11 = and i8 %10, 1, !dbg !1038
  call void @llvm.dbg.value(metadata i8 %11, metadata !1031, metadata !DIExpression()), !dbg !1032
  br label %12, !dbg !1039

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1032
  ret i8 %13, !dbg !1040
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1041 {
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
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1053
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
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1056 {
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
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1068
  %9 = lshr i32 %8, %3, !dbg !1068
  %10 = trunc i32 %9 to i8, !dbg !1068
  %11 = and i8 %10, 1, !dbg !1068
  call void @llvm.dbg.value(metadata i8 %11, metadata !1061, metadata !DIExpression()), !dbg !1062
  br label %12, !dbg !1069

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1062
  ret i8 %13, !dbg !1070
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1075, metadata !DIExpression()), !dbg !1078
  %2 = lshr i32 %0, 5, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %2, metadata !1076, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1078
  %3 = trunc i32 %0 to i16, !dbg !1080
  %4 = and i16 %3, 31, !dbg !1080
  call void @llvm.dbg.value(metadata i16 %3, metadata !1077, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1078
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #11, !dbg !1081
  %6 = trunc i32 %2 to i16, !dbg !1082
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1082

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1083
  br i1 %8, label %9, label %12, !dbg !1086

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1087
  %11 = shl nuw nsw i32 1, %10, !dbg !1088
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1088
  br label %49, !dbg !1090

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1091
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1091

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1092
  %16 = and i32 %15, -29, !dbg !1092
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1092
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1095
  %18 = or i32 %17, 2052, !dbg !1095
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1095
  br label %49, !dbg !1096

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1097
  %21 = and i32 %20, -29, !dbg !1097
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1097
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1100
  %23 = or i32 %22, 2052, !dbg !1100
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1100
  br label %49, !dbg !1101

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1102
  %26 = and i32 %25, -29, !dbg !1102
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1102
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1105
  %28 = or i32 %27, 2052, !dbg !1105
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1105
  br label %49, !dbg !1106

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1107
  %31 = and i32 %30, -29, !dbg !1107
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1107
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1110
  %33 = or i32 %32, 2052, !dbg !1110
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1110
  br label %49, !dbg !1111

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1112
  %36 = and i32 %35, -29, !dbg !1112
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1112
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1115
  %38 = or i32 %37, 2052, !dbg !1115
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1115
  br label %49, !dbg !1116

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1117
  br i1 %40, label %41, label %46, !dbg !1119

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1120
  %43 = and i32 %42, -29, !dbg !1120
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1120
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1122
  %45 = or i32 %44, 2052, !dbg !1122
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1122
  br label %49, !dbg !1123

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1124
  %48 = shl nuw i32 1, %47, !dbg !1124
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1124
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1078
  ret i32 %50, !dbg !1126
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1127 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1129, metadata !DIExpression()), !dbg !1132
  %2 = lshr i32 %0, 5, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %2, metadata !1130, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1132
  %3 = trunc i32 %0 to i16, !dbg !1134
  %4 = and i16 %3, 31, !dbg !1134
  call void @llvm.dbg.value(metadata i16 %3, metadata !1131, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1132
  %5 = trunc i32 %2 to i16, !dbg !1135
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1135

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1136
  br i1 %7, label %8, label %11, !dbg !1139

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1140
  %10 = shl nuw nsw i32 1, %9, !dbg !1141
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1141
  br label %48, !dbg !1143

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1144
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1144

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1145
  %15 = and i32 %14, -29, !dbg !1145
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1145
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1148
  %17 = or i32 %16, 2048, !dbg !1148
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1148
  br label %48, !dbg !1149

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1150
  %20 = and i32 %19, -29, !dbg !1150
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1150
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1153
  %22 = or i32 %21, 2048, !dbg !1153
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1153
  br label %48, !dbg !1154

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1155
  %25 = and i32 %24, -29, !dbg !1155
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1155
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1158
  %27 = or i32 %26, 2048, !dbg !1158
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1158
  br label %48, !dbg !1159

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1160
  %30 = and i32 %29, -29, !dbg !1160
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1160
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1163
  %32 = or i32 %31, 2048, !dbg !1163
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1163
  br label %48, !dbg !1164

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1165
  %35 = and i32 %34, -29, !dbg !1165
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1165
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1168
  %37 = or i32 %36, 2048, !dbg !1168
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1168
  br label %48, !dbg !1169

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1170
  br i1 %39, label %40, label %45, !dbg !1172

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1173
  %42 = and i32 %41, -29, !dbg !1173
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1173
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1175
  %44 = or i32 %43, 2048, !dbg !1175
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1175
  br label %48, !dbg !1176

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1177
  %47 = shl nuw i32 1, %46, !dbg !1177
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1177
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1132
  ret i32 %49, !dbg !1179
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1180 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1182, metadata !DIExpression()), !dbg !1185
  %2 = lshr i32 %0, 5, !dbg !1186
  call void @llvm.dbg.value(metadata i32 %2, metadata !1183, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1185
  %3 = trunc i32 %0 to i16, !dbg !1187
  %4 = and i16 %3, 31, !dbg !1187
  call void @llvm.dbg.value(metadata i16 %3, metadata !1184, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1185
  %5 = trunc i32 %2 to i16, !dbg !1188
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1188

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1189
  br i1 %7, label %8, label %11, !dbg !1192

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1193
  %10 = shl nuw nsw i32 1, %9, !dbg !1194
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1194
  br label %48, !dbg !1196

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1197
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1197

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1198
  %15 = and i32 %14, -29, !dbg !1198
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1198
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1201
  %17 = or i32 %16, 2048, !dbg !1201
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1201
  br label %48, !dbg !1202

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1203
  %20 = and i32 %19, -29, !dbg !1203
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1203
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1206
  %22 = or i32 %21, 2048, !dbg !1206
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1206
  br label %48, !dbg !1207

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1208
  %25 = and i32 %24, -29, !dbg !1208
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1208
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1211
  %27 = or i32 %26, 2048, !dbg !1211
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1211
  br label %48, !dbg !1212

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1213
  %30 = and i32 %29, -29, !dbg !1213
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1213
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1216
  %32 = or i32 %31, 2048, !dbg !1216
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1216
  br label %48, !dbg !1217

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1218
  %35 = and i32 %34, -29, !dbg !1218
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1218
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1221
  %37 = or i32 %36, 2048, !dbg !1221
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1221
  br label %48, !dbg !1222

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1223
  br i1 %39, label %40, label %45, !dbg !1225

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1226
  %42 = and i32 %41, -29, !dbg !1226
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1226
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1228
  %44 = or i32 %43, 2048, !dbg !1228
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1228
  br label %48, !dbg !1229

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1230
  %47 = shl nuw i32 1, %46, !dbg !1230
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1230
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1185
  ret i32 %49, !dbg !1232
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1233 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1235, metadata !DIExpression()), !dbg !1238
  %2 = lshr i32 %0, 5, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %2, metadata !1236, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1238
  %3 = trunc i32 %0 to i16, !dbg !1240
  %4 = and i16 %3, 31, !dbg !1240
  call void @llvm.dbg.value(metadata i16 %3, metadata !1237, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1238
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #11, !dbg !1241
  %6 = trunc i32 %2 to i16, !dbg !1242
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1242

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1243
  br i1 %8, label %9, label %12, !dbg !1246

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1247
  %11 = shl nuw nsw i32 1, %10, !dbg !1248
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1248
  br label %49, !dbg !1250

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1251
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1251

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1252
  %16 = and i32 %15, -29, !dbg !1252
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1252
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1255
  %18 = or i32 %17, 2068, !dbg !1255
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1255
  br label %49, !dbg !1256

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1257
  %21 = and i32 %20, -29, !dbg !1257
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1257
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1260
  %23 = or i32 %22, 2068, !dbg !1260
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1260
  br label %49, !dbg !1261

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1262
  %26 = and i32 %25, -29, !dbg !1262
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1262
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1265
  %28 = or i32 %27, 2068, !dbg !1265
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1265
  br label %49, !dbg !1266

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1267
  %31 = and i32 %30, -29, !dbg !1267
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1267
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1270
  %33 = or i32 %32, 2068, !dbg !1270
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1270
  br label %49, !dbg !1271

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1272
  %36 = and i32 %35, -29, !dbg !1272
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1272
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1275
  %38 = or i32 %37, 2068, !dbg !1275
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1275
  br label %49, !dbg !1276

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1277
  br i1 %40, label %41, label %46, !dbg !1279

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1280
  %43 = and i32 %42, -29, !dbg !1280
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1280
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1282
  %45 = or i32 %44, 2068, !dbg !1282
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1282
  br label %49, !dbg !1283

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1284
  %48 = shl nuw i32 1, %47, !dbg !1284
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1284
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1238
  ret i32 %50, !dbg !1286
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1289, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8 %1, metadata !1290, metadata !DIExpression()), !dbg !1293
  %3 = lshr i32 %0, 4, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %3, metadata !1291, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1293
  %4 = trunc i32 %0 to i16, !dbg !1295
  %5 = and i16 %4, 15, !dbg !1295
  call void @llvm.dbg.value(metadata i16 %4, metadata !1292, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1293
  %6 = trunc i32 %3 to i16, !dbg !1296
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1296

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1297
  %9 = zext i16 %8 to i32, !dbg !1297
  %10 = shl nuw i32 3, %9, !dbg !1299
  %11 = xor i32 %10, -1, !dbg !1300
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1301
  %13 = and i32 %12, %11, !dbg !1301
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1301
  %14 = lshr i8 %1, 2, !dbg !1302
  %15 = zext i8 %14 to i32, !dbg !1302
  %16 = add nsw i32 %15, -1, !dbg !1303
  %17 = shl i32 %16, %9, !dbg !1304
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1305
  %19 = or i32 %18, %17, !dbg !1305
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1305
  br label %131, !dbg !1306

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1307
  br i1 %21, label %22, label %35, !dbg !1309

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1310
  %24 = zext i16 %23 to i32, !dbg !1310
  %25 = shl nuw nsw i32 3, %24, !dbg !1312
  %26 = xor i32 %25, -1, !dbg !1313
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1314
  %28 = and i32 %27, %26, !dbg !1314
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1314
  %29 = lshr i8 %1, 2, !dbg !1315
  %30 = zext i8 %29 to i32, !dbg !1315
  %31 = add nsw i32 %30, -1, !dbg !1316
  %32 = shl nsw i32 %31, %24, !dbg !1317
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1318
  %34 = or i32 %33, %32, !dbg !1318
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1318
  br label %131, !dbg !1319

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1320
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1320

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1321
  %39 = and i32 %38, -449, !dbg !1321
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1321
  %40 = lshr i8 %1, 1, !dbg !1324
  %41 = zext i8 %40 to i32, !dbg !1324
  %42 = shl nuw nsw i32 %41, 6, !dbg !1325
  %43 = add nsw i32 %42, -64, !dbg !1325
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1326
  %45 = or i32 %44, %43, !dbg !1326
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1326
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1327
  %47 = or i32 %46, 2048, !dbg !1327
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1327
  br label %131, !dbg !1328

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1329
  %50 = and i32 %49, -449, !dbg !1329
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1329
  %51 = lshr i8 %1, 1, !dbg !1332
  %52 = zext i8 %51 to i32, !dbg !1332
  %53 = shl nuw nsw i32 %52, 6, !dbg !1333
  %54 = add nsw i32 %53, -64, !dbg !1333
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1334
  %56 = or i32 %55, %54, !dbg !1334
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1334
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1335
  %58 = or i32 %57, 2048, !dbg !1335
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1335
  br label %131, !dbg !1336

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1337
  %61 = and i32 %60, -449, !dbg !1337
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1337
  %62 = lshr i8 %1, 1, !dbg !1340
  %63 = zext i8 %62 to i32, !dbg !1340
  %64 = shl nuw nsw i32 %63, 6, !dbg !1341
  %65 = add nsw i32 %64, -64, !dbg !1341
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1342
  %67 = or i32 %66, %65, !dbg !1342
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1342
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1343
  %69 = or i32 %68, 2048, !dbg !1343
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1343
  br label %131, !dbg !1344

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1345
  %72 = and i32 %71, -449, !dbg !1345
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1345
  %73 = lshr i8 %1, 1, !dbg !1348
  %74 = zext i8 %73 to i32, !dbg !1348
  %75 = shl nuw nsw i32 %74, 6, !dbg !1349
  %76 = add nsw i32 %75, -64, !dbg !1349
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1350
  %78 = or i32 %77, %76, !dbg !1350
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1350
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1351
  %80 = or i32 %79, 2048, !dbg !1351
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1351
  br label %131, !dbg !1352

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1353
  %83 = and i32 %82, -449, !dbg !1353
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1353
  %84 = lshr i8 %1, 1, !dbg !1356
  %85 = zext i8 %84 to i32, !dbg !1356
  %86 = shl nuw nsw i32 %85, 6, !dbg !1357
  %87 = add nsw i32 %86, -64, !dbg !1357
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1358
  %89 = or i32 %88, %87, !dbg !1358
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1358
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1359
  %91 = or i32 %90, 2048, !dbg !1359
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1359
  br label %131, !dbg !1360

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1361
  br i1 %93, label %94, label %105, !dbg !1363

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1364
  %96 = and i32 %95, -449, !dbg !1364
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1364
  %97 = lshr i8 %1, 1, !dbg !1366
  %98 = zext i8 %97 to i32, !dbg !1366
  %99 = shl nuw nsw i32 %98, 6, !dbg !1367
  %100 = add nsw i32 %99, -64, !dbg !1367
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1368
  %102 = or i32 %101, %100, !dbg !1368
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1368
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1369
  %104 = or i32 %103, 2048, !dbg !1369
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1369
  br label %131, !dbg !1370

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1371
  %107 = zext i16 %106 to i32, !dbg !1371
  %108 = shl nuw i32 3, %107, !dbg !1373
  %109 = xor i32 %108, -1, !dbg !1374
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1375
  %111 = and i32 %110, %109, !dbg !1375
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1375
  %112 = lshr i8 %1, 2, !dbg !1376
  %113 = zext i8 %112 to i32, !dbg !1376
  %114 = add nsw i32 %113, -1, !dbg !1377
  %115 = shl i32 %114, %107, !dbg !1378
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1379
  %117 = or i32 %116, %115, !dbg !1379
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1379
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1380
  %120 = zext i16 %119 to i32, !dbg !1380
  %121 = shl nuw i32 3, %120, !dbg !1381
  %122 = xor i32 %121, -1, !dbg !1382
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1383
  %124 = and i32 %123, %122, !dbg !1383
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1383
  %125 = lshr i8 %1, 2, !dbg !1384
  %126 = zext i8 %125 to i32, !dbg !1384
  %127 = add nsw i32 %126, -1, !dbg !1385
  %128 = shl i32 %127, %120, !dbg !1386
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1387
  %130 = or i32 %129, %128, !dbg !1387
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1387
  br label %131, !dbg !1388

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1293
  ret i32 %132, !dbg !1389
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1390 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1395, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i8* %1, metadata !1396, metadata !DIExpression()), !dbg !1400
  %3 = lshr i32 %0, 4, !dbg !1401
  call void @llvm.dbg.value(metadata i32 %3, metadata !1397, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1400
  %4 = trunc i32 %0 to i16, !dbg !1402
  %5 = and i16 %4, 15, !dbg !1402
  call void @llvm.dbg.value(metadata i16 %4, metadata !1398, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1400
  %6 = trunc i32 %3 to i16, !dbg !1403
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1403

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %8, metadata !1399, metadata !DIExpression()), !dbg !1400
  %9 = shl nuw nsw i16 %5, 1, !dbg !1406
  %10 = zext i16 %9 to i32, !dbg !1406
  %11 = shl nuw i32 3, %10, !dbg !1407
  %12 = and i32 %8, %11, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %12, metadata !1399, metadata !DIExpression()), !dbg !1400
  %13 = lshr i32 %12, %10, !dbg !1409
  %14 = trunc i32 %13 to i8, !dbg !1410
  %15 = shl i8 %14, 2, !dbg !1410
  %16 = add i8 %15, 4, !dbg !1410
  br label %89, !dbg !1411

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1412
  br i1 %18, label %19, label %29, !dbg !1414

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1415
  call void @llvm.dbg.value(metadata i32 %20, metadata !1399, metadata !DIExpression()), !dbg !1400
  %21 = shl nuw nsw i16 %5, 1, !dbg !1417
  %22 = zext i16 %21 to i32, !dbg !1417
  %23 = shl nuw nsw i32 3, %22, !dbg !1418
  %24 = and i32 %20, %23, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %24, metadata !1399, metadata !DIExpression()), !dbg !1400
  %25 = lshr i32 %24, %22, !dbg !1420
  %26 = trunc i32 %25 to i8, !dbg !1421
  %27 = shl i8 %26, 2, !dbg !1421
  %28 = add i8 %27, 4, !dbg !1421
  br label %89, !dbg !1422

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1423
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1423

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %32, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i32 %32, metadata !1399, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1400
  %33 = lshr i32 %32, 5, !dbg !1427
  %34 = trunc i32 %33 to i8, !dbg !1428
  %35 = and i8 %34, 14, !dbg !1428
  %36 = add nuw nsw i8 %35, 2, !dbg !1428
  br label %89, !dbg !1429

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %38, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i32 %38, metadata !1399, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1400
  %39 = lshr i32 %38, 5, !dbg !1433
  %40 = trunc i32 %39 to i8, !dbg !1434
  %41 = and i8 %40, 14, !dbg !1434
  %42 = add nuw nsw i8 %41, 2, !dbg !1434
  br label %89, !dbg !1435

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %44, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i32 %44, metadata !1399, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1400
  %45 = lshr i32 %44, 5, !dbg !1439
  %46 = trunc i32 %45 to i8, !dbg !1440
  %47 = and i8 %46, 14, !dbg !1440
  %48 = add nuw nsw i8 %47, 2, !dbg !1440
  br label %89, !dbg !1441

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %50, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i32 %50, metadata !1399, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1400
  %51 = lshr i32 %50, 5, !dbg !1445
  %52 = trunc i32 %51 to i8, !dbg !1446
  %53 = and i8 %52, 14, !dbg !1446
  %54 = add nuw nsw i8 %53, 2, !dbg !1446
  br label %89, !dbg !1447

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %56, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i32 %56, metadata !1399, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1400
  %57 = lshr i32 %56, 5, !dbg !1451
  %58 = trunc i32 %57 to i8, !dbg !1452
  %59 = and i8 %58, 14, !dbg !1452
  %60 = add nuw nsw i8 %59, 2, !dbg !1452
  br label %89, !dbg !1453

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1454
  br i1 %62, label %63, label %69, !dbg !1456

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1457
  call void @llvm.dbg.value(metadata i32 %64, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata i32 %64, metadata !1399, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1400
  %65 = lshr i32 %64, 5, !dbg !1459
  %66 = trunc i32 %65 to i8, !dbg !1460
  %67 = and i8 %66, 14, !dbg !1460
  %68 = add nuw nsw i8 %67, 2, !dbg !1460
  br label %89, !dbg !1461

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1462
  call void @llvm.dbg.value(metadata i32 %70, metadata !1399, metadata !DIExpression()), !dbg !1400
  %71 = shl nuw nsw i16 %5, 1, !dbg !1464
  %72 = zext i16 %71 to i32, !dbg !1464
  %73 = shl nuw i32 3, %72, !dbg !1465
  %74 = and i32 %70, %73, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %74, metadata !1399, metadata !DIExpression()), !dbg !1400
  %75 = lshr i32 %74, %72, !dbg !1467
  %76 = trunc i32 %75 to i8, !dbg !1468
  %77 = shl i8 %76, 2, !dbg !1468
  %78 = add i8 %77, 4, !dbg !1468
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1469
  call void @llvm.dbg.value(metadata i32 %80, metadata !1399, metadata !DIExpression()), !dbg !1400
  %81 = shl nuw nsw i16 %5, 1, !dbg !1470
  %82 = zext i16 %81 to i32, !dbg !1470
  %83 = shl nuw i32 3, %82, !dbg !1471
  %84 = and i32 %80, %83, !dbg !1472
  call void @llvm.dbg.value(metadata i32 %84, metadata !1399, metadata !DIExpression()), !dbg !1400
  %85 = lshr i32 %84, %82, !dbg !1473
  %86 = trunc i32 %85 to i8, !dbg !1474
  %87 = shl i8 %86, 2, !dbg !1474
  %88 = add i8 %87, 4, !dbg !1474
  br label %89, !dbg !1475

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1476
  br label %91, !dbg !1477

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1400
  ret i32 %92, !dbg !1477
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1483, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i32 %1, metadata !1484, metadata !DIExpression()), !dbg !1487
  %3 = lshr i32 %0, 5, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %3, metadata !1485, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1487
  %4 = trunc i32 %0 to i16, !dbg !1489
  %5 = and i16 %4, 31, !dbg !1489
  call void @llvm.dbg.value(metadata i16 %5, metadata !1486, metadata !DIExpression()), !dbg !1487
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1490

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1485, metadata !DIExpression()), !dbg !1487
  %7 = trunc i32 %3 to i16, !dbg !1491
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1491

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1494
  %10 = shl nuw i32 1, %9, !dbg !1496
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1497
  %12 = or i32 %11, %10, !dbg !1497
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1497
  br label %32, !dbg !1498

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1499
  %15 = shl nuw i32 1, %14, !dbg !1500
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1501
  %17 = or i32 %16, %15, !dbg !1501
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1501
  br label %32, !dbg !1502

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1503
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1503

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1506
  %22 = shl nuw i32 1, %21, !dbg !1508
  %23 = xor i32 %22, -1, !dbg !1509
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1510
  %25 = and i32 %24, %23, !dbg !1510
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1510
  br label %32, !dbg !1511

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1512
  %28 = shl nuw i32 1, %27, !dbg !1513
  %29 = xor i32 %28, -1, !dbg !1514
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1515
  %31 = and i32 %30, %29, !dbg !1515
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1515
  br label %32, !dbg !1516

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1517
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1518 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1524, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %1, metadata !1525, metadata !DIExpression()), !dbg !1527
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
  ], !dbg !1528

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1529
  call void @llvm.dbg.value(metadata i32 %4, metadata !1526, metadata !DIExpression()), !dbg !1527
  %5 = and i32 %4, -16, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %5, metadata !1526, metadata !DIExpression()), !dbg !1527
  %6 = zext i8 %1 to i32, !dbg !1532
  %7 = or i32 %5, %6, !dbg !1533
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1534
  br label %187, !dbg !1535

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %9, metadata !1526, metadata !DIExpression()), !dbg !1527
  %10 = and i32 %9, -241, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %10, metadata !1526, metadata !DIExpression()), !dbg !1527
  %11 = zext i8 %1 to i32, !dbg !1538
  %12 = shl nuw nsw i32 %11, 4, !dbg !1539
  %13 = or i32 %10, %12, !dbg !1540
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1541
  br label %187, !dbg !1542

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %15, metadata !1526, metadata !DIExpression()), !dbg !1527
  %16 = and i32 %15, -3841, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %16, metadata !1526, metadata !DIExpression()), !dbg !1527
  %17 = zext i8 %1 to i32, !dbg !1545
  %18 = shl nuw nsw i32 %17, 8, !dbg !1546
  %19 = or i32 %16, %18, !dbg !1547
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1548
  br label %187, !dbg !1549

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %21, metadata !1526, metadata !DIExpression()), !dbg !1527
  %22 = and i32 %21, -61441, !dbg !1551
  call void @llvm.dbg.value(metadata i32 %22, metadata !1526, metadata !DIExpression()), !dbg !1527
  %23 = zext i8 %1 to i32, !dbg !1552
  %24 = shl nuw nsw i32 %23, 12, !dbg !1553
  %25 = or i32 %22, %24, !dbg !1554
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1555
  br label %187, !dbg !1556

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1557
  call void @llvm.dbg.value(metadata i32 %27, metadata !1526, metadata !DIExpression()), !dbg !1527
  %28 = and i32 %27, -983041, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %28, metadata !1526, metadata !DIExpression()), !dbg !1527
  %29 = zext i8 %1 to i32, !dbg !1559
  %30 = shl nuw nsw i32 %29, 16, !dbg !1560
  %31 = or i32 %28, %30, !dbg !1561
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1562
  br label %187, !dbg !1563

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %33, metadata !1526, metadata !DIExpression()), !dbg !1527
  %34 = and i32 %33, -15728641, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %34, metadata !1526, metadata !DIExpression()), !dbg !1527
  %35 = zext i8 %1 to i32, !dbg !1566
  %36 = shl nuw nsw i32 %35, 20, !dbg !1567
  %37 = or i32 %34, %36, !dbg !1568
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1569
  br label %187, !dbg !1570

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %39, metadata !1526, metadata !DIExpression()), !dbg !1527
  %40 = and i32 %39, -251658241, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %40, metadata !1526, metadata !DIExpression()), !dbg !1527
  %41 = zext i8 %1 to i32, !dbg !1573
  %42 = shl nuw i32 %41, 24, !dbg !1574
  %43 = or i32 %40, %42, !dbg !1575
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1576
  br label %187, !dbg !1577

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %45, metadata !1526, metadata !DIExpression()), !dbg !1527
  %46 = and i32 %45, 268435455, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %46, metadata !1526, metadata !DIExpression()), !dbg !1527
  %47 = zext i8 %1 to i32, !dbg !1580
  %48 = shl i32 %47, 28, !dbg !1581
  %49 = or i32 %46, %48, !dbg !1582
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1583
  br label %187, !dbg !1584

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %51, metadata !1526, metadata !DIExpression()), !dbg !1527
  %52 = and i32 %51, -16, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %52, metadata !1526, metadata !DIExpression()), !dbg !1527
  %53 = zext i8 %1 to i32, !dbg !1587
  %54 = or i32 %52, %53, !dbg !1588
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1589
  br label %187, !dbg !1590

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %56, metadata !1526, metadata !DIExpression()), !dbg !1527
  %57 = and i32 %56, -241, !dbg !1592
  call void @llvm.dbg.value(metadata i32 %57, metadata !1526, metadata !DIExpression()), !dbg !1527
  %58 = zext i8 %1 to i32, !dbg !1593
  %59 = shl nuw nsw i32 %58, 4, !dbg !1594
  %60 = or i32 %57, %59, !dbg !1595
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1596
  br label %187, !dbg !1597

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %62, metadata !1526, metadata !DIExpression()), !dbg !1527
  %63 = and i32 %62, -3841, !dbg !1599
  call void @llvm.dbg.value(metadata i32 %63, metadata !1526, metadata !DIExpression()), !dbg !1527
  %64 = zext i8 %1 to i32, !dbg !1600
  %65 = shl nuw nsw i32 %64, 8, !dbg !1601
  %66 = or i32 %63, %65, !dbg !1602
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1603
  br label %187, !dbg !1604

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1605
  call void @llvm.dbg.value(metadata i32 %68, metadata !1526, metadata !DIExpression()), !dbg !1527
  %69 = and i32 %68, -61441, !dbg !1606
  call void @llvm.dbg.value(metadata i32 %69, metadata !1526, metadata !DIExpression()), !dbg !1527
  %70 = zext i8 %1 to i32, !dbg !1607
  %71 = shl nuw nsw i32 %70, 12, !dbg !1608
  %72 = or i32 %69, %71, !dbg !1609
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1610
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1611

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #12, !dbg !1613
  br label %187, !dbg !1615

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1616
  call void @llvm.dbg.value(metadata i32 %76, metadata !1526, metadata !DIExpression()), !dbg !1527
  %77 = and i32 %76, -983041, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %77, metadata !1526, metadata !DIExpression()), !dbg !1527
  %78 = zext i8 %1 to i32, !dbg !1618
  %79 = shl nuw nsw i32 %78, 16, !dbg !1619
  %80 = or i32 %77, %79, !dbg !1620
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1621
  %81 = and i8 %1, -2, !dbg !1622
  %82 = icmp eq i8 %81, 4, !dbg !1622
  br i1 %82, label %83, label %187, !dbg !1622

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #12, !dbg !1624
  br label %187, !dbg !1626

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %86, metadata !1526, metadata !DIExpression()), !dbg !1527
  %87 = and i32 %86, -15728641, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %87, metadata !1526, metadata !DIExpression()), !dbg !1527
  %88 = zext i8 %1 to i32, !dbg !1629
  %89 = shl nuw nsw i32 %88, 20, !dbg !1630
  %90 = or i32 %87, %89, !dbg !1631
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1632
  %91 = icmp eq i8 %1, 6, !dbg !1633
  br i1 %91, label %92, label %187, !dbg !1635

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #12, !dbg !1636
  br label %187, !dbg !1638

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %95, metadata !1526, metadata !DIExpression()), !dbg !1527
  %96 = and i32 %95, -251658241, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %96, metadata !1526, metadata !DIExpression()), !dbg !1527
  %97 = zext i8 %1 to i32, !dbg !1641
  %98 = shl nuw i32 %97, 24, !dbg !1642
  %99 = or i32 %96, %98, !dbg !1643
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1644
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1645

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #12, !dbg !1647
  br label %187, !dbg !1649

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1650
  call void @llvm.dbg.value(metadata i32 %103, metadata !1526, metadata !DIExpression()), !dbg !1527
  %104 = and i32 %103, 268435455, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %104, metadata !1526, metadata !DIExpression()), !dbg !1527
  %105 = zext i8 %1 to i32, !dbg !1652
  %106 = shl i32 %105, 28, !dbg !1653
  %107 = or i32 %104, %106, !dbg !1654
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1655
  %108 = and i8 %1, -3, !dbg !1656
  %109 = icmp eq i8 %108, 4, !dbg !1656
  br i1 %109, label %110, label %187, !dbg !1656

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #12, !dbg !1658
  br label %187, !dbg !1660

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %113, metadata !1526, metadata !DIExpression()), !dbg !1527
  %114 = and i32 %113, -16, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %114, metadata !1526, metadata !DIExpression()), !dbg !1527
  %115 = zext i8 %1 to i32, !dbg !1663
  %116 = or i32 %114, %115, !dbg !1664
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1665
  %117 = and i8 %1, -3, !dbg !1666
  %118 = icmp eq i8 %117, 4, !dbg !1666
  br i1 %118, label %119, label %187, !dbg !1666

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #12, !dbg !1668
  br label %187, !dbg !1670

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %122, metadata !1526, metadata !DIExpression()), !dbg !1527
  %123 = and i32 %122, -241, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %123, metadata !1526, metadata !DIExpression()), !dbg !1527
  %124 = zext i8 %1 to i32, !dbg !1673
  %125 = shl nuw nsw i32 %124, 4, !dbg !1674
  %126 = or i32 %123, %125, !dbg !1675
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1676
  br label %187, !dbg !1677

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %128, metadata !1526, metadata !DIExpression()), !dbg !1527
  %129 = and i32 %128, -3841, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %129, metadata !1526, metadata !DIExpression()), !dbg !1527
  %130 = zext i8 %1 to i32, !dbg !1680
  %131 = shl nuw nsw i32 %130, 8, !dbg !1681
  %132 = or i32 %129, %131, !dbg !1682
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1683
  br label %187, !dbg !1684

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %134, metadata !1526, metadata !DIExpression()), !dbg !1527
  %135 = and i32 %134, -61441, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %135, metadata !1526, metadata !DIExpression()), !dbg !1527
  %136 = zext i8 %1 to i32, !dbg !1687
  %137 = shl nuw nsw i32 %136, 12, !dbg !1688
  %138 = or i32 %135, %137, !dbg !1689
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1690
  br label %187, !dbg !1691

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %140, metadata !1526, metadata !DIExpression()), !dbg !1527
  %141 = and i32 %140, -983041, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %141, metadata !1526, metadata !DIExpression()), !dbg !1527
  %142 = zext i8 %1 to i32, !dbg !1694
  %143 = shl nuw nsw i32 %142, 16, !dbg !1695
  %144 = or i32 %141, %143, !dbg !1696
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1697
  br label %187, !dbg !1698

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %146, metadata !1526, metadata !DIExpression()), !dbg !1527
  %147 = and i32 %146, -15728641, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %147, metadata !1526, metadata !DIExpression()), !dbg !1527
  %148 = zext i8 %1 to i32, !dbg !1701
  %149 = shl nuw nsw i32 %148, 20, !dbg !1702
  %150 = or i32 %147, %149, !dbg !1703
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1704
  br label %187, !dbg !1705

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %152, metadata !1526, metadata !DIExpression()), !dbg !1527
  %153 = and i32 %152, -251658241, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %153, metadata !1526, metadata !DIExpression()), !dbg !1527
  %154 = zext i8 %1 to i32, !dbg !1708
  %155 = shl nuw i32 %154, 24, !dbg !1709
  %156 = or i32 %153, %155, !dbg !1710
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1711
  br label %187, !dbg !1712

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %158, metadata !1526, metadata !DIExpression()), !dbg !1527
  %159 = and i32 %158, 268435455, !dbg !1714
  call void @llvm.dbg.value(metadata i32 %159, metadata !1526, metadata !DIExpression()), !dbg !1527
  %160 = zext i8 %1 to i32, !dbg !1715
  %161 = shl i32 %160, 28, !dbg !1716
  %162 = or i32 %159, %161, !dbg !1717
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1718
  br label %187, !dbg !1719

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %164, metadata !1526, metadata !DIExpression()), !dbg !1527
  %165 = and i32 %164, -241, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %165, metadata !1526, metadata !DIExpression()), !dbg !1527
  %166 = zext i8 %1 to i32, !dbg !1722
  %167 = shl nuw nsw i32 %166, 4, !dbg !1723
  %168 = or i32 %165, %167, !dbg !1724
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1725
  br label %187, !dbg !1726

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %170, metadata !1526, metadata !DIExpression()), !dbg !1527
  %171 = and i32 %170, -3841, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %171, metadata !1526, metadata !DIExpression()), !dbg !1527
  %172 = zext i8 %1 to i32, !dbg !1729
  %173 = shl nuw nsw i32 %172, 8, !dbg !1730
  %174 = or i32 %171, %173, !dbg !1731
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1732
  br label %187, !dbg !1733

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %176, metadata !1526, metadata !DIExpression()), !dbg !1527
  %177 = and i32 %176, -61441, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %177, metadata !1526, metadata !DIExpression()), !dbg !1527
  %178 = zext i8 %1 to i32, !dbg !1736
  %179 = shl nuw nsw i32 %178, 12, !dbg !1737
  %180 = or i32 %177, %179, !dbg !1738
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1739
  br label %187, !dbg !1740

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %182, metadata !1526, metadata !DIExpression()), !dbg !1527
  %183 = and i32 %182, -983041, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %183, metadata !1526, metadata !DIExpression()), !dbg !1527
  %184 = zext i8 %1 to i32, !dbg !1743
  %185 = shl nuw nsw i32 %184, 16, !dbg !1744
  %186 = or i32 %183, %185, !dbg !1745
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1746
  br label %187, !dbg !1747

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1748
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !1749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1753, metadata !DIExpression()), !dbg !1754
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !1755
  tail call void asm sideeffect "dsb", ""() #13, !dbg !1756, !srcloc !1757
  tail call void asm sideeffect "isb", ""() #13, !dbg !1758, !srcloc !1759
  ret void, !dbg !1760
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !1761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1765, metadata !DIExpression()), !dbg !1766
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !1767
  ret void, !dbg !1768
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !1769 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #13, !dbg !1774, !srcloc !1781
  call void @llvm.dbg.value(metadata i32 %1, metadata !1778, metadata !DIExpression()) #13, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %1, metadata !1773, metadata !DIExpression()), !dbg !1783
  tail call void asm sideeffect "cpsid i", "~{memory}"() #13, !dbg !1784, !srcloc !1788
  ret i32 %1, !dbg !1789
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !1790 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1792, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %0, metadata !1794, metadata !DIExpression()) #13, !dbg !1797
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #13, !dbg !1800, !srcloc !1801
  ret void, !dbg !1802
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1803 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1807, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %1, metadata !1808, metadata !DIExpression()), !dbg !1810
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
  ], !dbg !1811

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !1809, metadata !DIExpression()), !dbg !1810
  %4 = trunc i32 %1 to i8, !dbg !1812
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #12, !dbg !1813
  br label %5, !dbg !1814

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !1810
  ret i32 %6, !dbg !1815
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !1816 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1818, metadata !DIExpression()), !dbg !1820
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %1, metadata !1819, metadata !DIExpression()), !dbg !1820
  %2 = lshr i32 %1, 13, !dbg !1822
  %3 = and i32 %2, 7, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %3, metadata !1819, metadata !DIExpression()), !dbg !1820
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %4, metadata !1818, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i32 %4, metadata !1818, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !1820
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !1825
  %6 = load i32, i32* %5, align 4, !dbg !1825
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !1825
  %8 = load i32, i32* %7, align 4, !dbg !1825
  %9 = and i32 %4, -2048, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %9, metadata !1818, metadata !DIExpression()), !dbg !1820
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !1827
  %10 = or i32 %9, %8, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %10, metadata !1818, metadata !DIExpression()), !dbg !1820
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1829
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !1830
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !1831
  tail call void @SystemCoreClockUpdate() #12, !dbg !1832
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !1833
  %13 = udiv i32 %12, 1000, !dbg !1834
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #12, !dbg !1835
  ret void, !dbg !1836
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #4 !dbg !1837 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !1838
  ret i32 %1, !dbg !1839
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #4 !dbg !1840 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !1841
  ret i32 %1, !dbg !1842
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #5 !dbg !1843 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1847
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1847
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1845, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1846, metadata !DIExpression()), !dbg !1849
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1850
  store volatile i32 %3, i32* %1, align 4, !dbg !1851
  %4 = load volatile i32, i32* %1, align 4, !dbg !1852
  %5 = lshr i32 %4, 28, !dbg !1853
  %6 = and i32 %5, 3, !dbg !1854
  store volatile i32 %6, i32* %1, align 4, !dbg !1855
  %7 = load volatile i32, i32* %1, align 4, !dbg !1856
  %8 = icmp eq i32 %7, 0, !dbg !1858
  br i1 %8, label %9, label %22, !dbg !1859

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1860
  store volatile i32 %10, i32* %1, align 4, !dbg !1862
  %11 = load volatile i32, i32* %1, align 4, !dbg !1863
  %12 = and i32 %11, -16777217, !dbg !1864
  store volatile i32 %12, i32* %1, align 4, !dbg !1865
  %13 = load volatile i32, i32* %1, align 4, !dbg !1866
  %14 = or i32 %13, 536870912, !dbg !1867
  store volatile i32 %14, i32* %1, align 4, !dbg !1868
  %15 = load volatile i32, i32* %1, align 4, !dbg !1869
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #11, !dbg !1870
  br label %16, !dbg !1871

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1872
  store volatile i32 %17, i32* %1, align 4, !dbg !1874
  %18 = load volatile i32, i32* %1, align 4, !dbg !1875
  %19 = and i32 %18, 134217728, !dbg !1876
  store volatile i32 %19, i32* %1, align 4, !dbg !1877
  %20 = load volatile i32, i32* %1, align 4, !dbg !1878
  %21 = icmp eq i32 %20, 0, !dbg !1879
  br i1 %21, label %16, label %22, !dbg !1880, !llvm.loop !1881

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !1883
  ret void, !dbg !1883
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #2 !dbg !1884 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()), !dbg !1892
  %2 = bitcast i8* %0 to i32*, !dbg !1893
  %3 = load volatile i32, i32* %2, align 4, !dbg !1894
  ret i32 %3, !dbg !1895
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !1896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1900, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i32 %1, metadata !1901, metadata !DIExpression()), !dbg !1902
  %3 = bitcast i8* %0 to i32*, !dbg !1903
  store volatile i32 %1, i32* %3, align 4, !dbg !1904
  ret void, !dbg !1905
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #5 !dbg !1906 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !1910, metadata !DIExpression()), !dbg !1913
  %3 = bitcast i32* %2 to i8*, !dbg !1914
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !1914
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1911, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1912, metadata !DIExpression()), !dbg !1913
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1916
  store volatile i32 %4, i32* %2, align 4, !dbg !1917
  %5 = load volatile i32, i32* %2, align 4, !dbg !1918
  %6 = lshr i32 %5, 28, !dbg !1919
  %7 = and i32 %6, 3, !dbg !1920
  store volatile i32 %7, i32* %2, align 4, !dbg !1921
  %8 = load volatile i32, i32* %2, align 4, !dbg !1922
  %9 = icmp eq i32 %8, 3, !dbg !1924
  br i1 %9, label %38, label %10, !dbg !1925

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1926
  store volatile i32 %11, i32* %2, align 4, !dbg !1928
  %12 = load volatile i32, i32* %2, align 4, !dbg !1929
  %13 = and i32 %12, -262145, !dbg !1930
  store volatile i32 %13, i32* %2, align 4, !dbg !1931
  %14 = load volatile i32, i32* %2, align 4, !dbg !1932
  %15 = and i32 %14, -16777217, !dbg !1933
  store volatile i32 %15, i32* %2, align 4, !dbg !1934
  %16 = load volatile i32, i32* %2, align 4, !dbg !1935
  store volatile i32 %16, i32* %2, align 4, !dbg !1936
  %17 = load volatile i32, i32* %2, align 4, !dbg !1937
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #11, !dbg !1938
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1939
  store volatile i32 %18, i32* %2, align 4, !dbg !1940
  %19 = load volatile i32, i32* %2, align 4, !dbg !1941
  %20 = and i32 %19, -805306369, !dbg !1942
  store volatile i32 %20, i32* %2, align 4, !dbg !1943
  %21 = load volatile i32, i32* %2, align 4, !dbg !1944
  %22 = and i32 %21, -16777217, !dbg !1945
  store volatile i32 %22, i32* %2, align 4, !dbg !1946
  %23 = load volatile i32, i32* %2, align 4, !dbg !1947
  %24 = or i32 %23, 805306368, !dbg !1948
  store volatile i32 %24, i32* %2, align 4, !dbg !1949
  %25 = load volatile i32, i32* %2, align 4, !dbg !1950
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #11, !dbg !1951
  br label %26, !dbg !1952

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1953
  store volatile i32 %27, i32* %2, align 4, !dbg !1955
  %28 = load volatile i32, i32* %2, align 4, !dbg !1956
  %29 = and i32 %28, 67108864, !dbg !1957
  store volatile i32 %29, i32* %2, align 4, !dbg !1958
  %30 = load volatile i32, i32* %2, align 4, !dbg !1959
  %31 = icmp eq i32 %30, 0, !dbg !1960
  br i1 %31, label %26, label %32, !dbg !1961, !llvm.loop !1962

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1964
  store volatile i32 %33, i32* %2, align 4, !dbg !1965
  %34 = load volatile i32, i32* %2, align 4, !dbg !1966
  %35 = and i32 %34, -262145, !dbg !1967
  store volatile i32 %35, i32* %2, align 4, !dbg !1968
  %36 = load volatile i32, i32* %2, align 4, !dbg !1969
  %37 = and i32 %36, -16777217, !dbg !1970
  store volatile i32 %37, i32* %2, align 4, !dbg !1971
  br label %38, !dbg !1972

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1973
  store volatile i32 %39, i32* %2, align 4, !dbg !1974
  %40 = icmp eq i8 %0, 0, !dbg !1975
  %41 = load volatile i32, i32* %2, align 4, !dbg !1977
  br i1 %40, label %44, label %42, !dbg !1978

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !1979
  store volatile i32 %43, i32* %2, align 4, !dbg !1981
  br label %45, !dbg !1982

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !1983
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !1985
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #11, !dbg !1986
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !1987
  ret void, !dbg !1987
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #5 !dbg !1988 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1992
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1990, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1991, metadata !DIExpression()), !dbg !1994
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !1995
  store volatile i32 %3, i32* %1, align 4, !dbg !1996
  %4 = load volatile i32, i32* %1, align 4, !dbg !1997
  %5 = and i32 %4, -805306369, !dbg !1998
  store volatile i32 %5, i32* %1, align 4, !dbg !1999
  %6 = load volatile i32, i32* %1, align 4, !dbg !2000
  %7 = and i32 %6, -16777217, !dbg !2001
  store volatile i32 %7, i32* %1, align 4, !dbg !2002
  %8 = load volatile i32, i32* %1, align 4, !dbg !2003
  store volatile i32 %8, i32* %1, align 4, !dbg !2004
  %9 = load volatile i32, i32* %1, align 4, !dbg !2005
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #11, !dbg !2006
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #11, !dbg !2007
  store volatile i32 %10, i32* %1, align 4, !dbg !2008
  %11 = load volatile i32, i32* %1, align 4, !dbg !2009
  %12 = and i32 %11, -262145, !dbg !2010
  store volatile i32 %12, i32* %1, align 4, !dbg !2011
  %13 = load volatile i32, i32* %1, align 4, !dbg !2012
  %14 = and i32 %13, -16777217, !dbg !2013
  store volatile i32 %14, i32* %1, align 4, !dbg !2014
  %15 = load volatile i32, i32* %1, align 4, !dbg !2015
  store volatile i32 %15, i32* %1, align 4, !dbg !2016
  %16 = load volatile i32, i32* %1, align 4, !dbg !2017
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #11, !dbg !2018
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2019
  ret void, !dbg !2019
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2020 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2024
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2024
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2022, metadata !DIExpression()), !dbg !2025
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2023, metadata !DIExpression()), !dbg !2026
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2027
  store volatile i32 %3, i32* %1, align 4, !dbg !2028
  %4 = load volatile i32, i32* %1, align 4, !dbg !2029
  %5 = and i32 %4, -8, !dbg !2030
  store volatile i32 %5, i32* %1, align 4, !dbg !2031
  %6 = load volatile i32, i32* %1, align 4, !dbg !2032
  store volatile i32 %6, i32* %1, align 4, !dbg !2033
  %7 = load volatile i32, i32* %1, align 4, !dbg !2034
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #11, !dbg !2035
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2036
  store volatile i32 %8, i32* %1, align 4, !dbg !2037
  %9 = load volatile i32, i32* %1, align 4, !dbg !2038
  %10 = and i32 %9, -49153, !dbg !2039
  store volatile i32 %10, i32* %1, align 4, !dbg !2040
  %11 = load volatile i32, i32* %1, align 4, !dbg !2041
  store volatile i32 %11, i32* %1, align 4, !dbg !2042
  %12 = load volatile i32, i32* %1, align 4, !dbg !2043
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #11, !dbg !2044
  br label %13, !dbg !2045

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2046
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2047
  %16 = icmp eq i32 %14, %15, !dbg !2048
  br i1 %16, label %17, label %13, !dbg !2045, !llvm.loop !2049

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #11, !dbg !2051
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2052
  tail call void @SystemCoreClockUpdate() #12, !dbg !2053
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2054
  %20 = udiv i32 %19, 1000, !dbg !2055
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2056
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2057
  ret void, !dbg !2057
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2058 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2062
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2062
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2060, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2061, metadata !DIExpression()), !dbg !2064
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #11, !dbg !2065
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2066
  store volatile i32 %3, i32* %1, align 4, !dbg !2067
  %4 = load volatile i32, i32* %1, align 4, !dbg !2068
  %5 = and i32 %4, -49153, !dbg !2069
  store volatile i32 %5, i32* %1, align 4, !dbg !2070
  %6 = load volatile i32, i32* %1, align 4, !dbg !2071
  %7 = or i32 %6, 16384, !dbg !2072
  store volatile i32 %7, i32* %1, align 4, !dbg !2073
  %8 = load volatile i32, i32* %1, align 4, !dbg !2074
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #11, !dbg !2075
  br label %9, !dbg !2076

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2077
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2078
  %12 = icmp eq i32 %10, %11, !dbg !2079
  br i1 %12, label %13, label %9, !dbg !2076, !llvm.loop !2080

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2082
  store volatile i32 %14, i32* %1, align 4, !dbg !2083
  %15 = load volatile i32, i32* %1, align 4, !dbg !2084
  %16 = and i32 %15, -1009, !dbg !2085
  store volatile i32 %16, i32* %1, align 4, !dbg !2086
  %17 = load volatile i32, i32* %1, align 4, !dbg !2087
  %18 = or i32 %17, 128, !dbg !2088
  store volatile i32 %18, i32* %1, align 4, !dbg !2089
  %19 = load volatile i32, i32* %1, align 4, !dbg !2090
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #11, !dbg !2091
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2092
  store volatile i32 %20, i32* %1, align 4, !dbg !2093
  %21 = load volatile i32, i32* %1, align 4, !dbg !2094
  %22 = and i32 %21, -8, !dbg !2095
  store volatile i32 %22, i32* %1, align 4, !dbg !2096
  %23 = load volatile i32, i32* %1, align 4, !dbg !2097
  %24 = or i32 %23, 4, !dbg !2098
  store volatile i32 %24, i32* %1, align 4, !dbg !2099
  %25 = load volatile i32, i32* %1, align 4, !dbg !2100
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #11, !dbg !2101
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2102
  tail call void @SystemCoreClockUpdate() #12, !dbg !2103
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2104
  %27 = udiv i32 %26, 1000, !dbg !2105
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2107
  ret void, !dbg !2107
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2108 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2112
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2111, metadata !DIExpression()), !dbg !2114
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #11, !dbg !2115
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2116
  store volatile i32 %3, i32* %1, align 4, !dbg !2117
  %4 = load volatile i32, i32* %1, align 4, !dbg !2118
  %5 = and i32 %4, -49153, !dbg !2119
  store volatile i32 %5, i32* %1, align 4, !dbg !2120
  %6 = load volatile i32, i32* %1, align 4, !dbg !2121
  %7 = or i32 %6, 32768, !dbg !2122
  store volatile i32 %7, i32* %1, align 4, !dbg !2123
  %8 = load volatile i32, i32* %1, align 4, !dbg !2124
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #11, !dbg !2125
  br label %9, !dbg !2126

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2127
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2128
  %12 = icmp eq i32 %10, %11, !dbg !2129
  br i1 %12, label %13, label %9, !dbg !2126, !llvm.loop !2130

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2132
  store volatile i32 %14, i32* %1, align 4, !dbg !2133
  %15 = load volatile i32, i32* %1, align 4, !dbg !2134
  %16 = and i32 %15, -1009, !dbg !2135
  store volatile i32 %16, i32* %1, align 4, !dbg !2136
  %17 = load volatile i32, i32* %1, align 4, !dbg !2137
  %18 = or i32 %17, 32, !dbg !2138
  store volatile i32 %18, i32* %1, align 4, !dbg !2139
  %19 = load volatile i32, i32* %1, align 4, !dbg !2140
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #11, !dbg !2141
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2142
  store volatile i32 %20, i32* %1, align 4, !dbg !2143
  %21 = load volatile i32, i32* %1, align 4, !dbg !2144
  %22 = and i32 %21, -8, !dbg !2145
  store volatile i32 %22, i32* %1, align 4, !dbg !2146
  %23 = load volatile i32, i32* %1, align 4, !dbg !2147
  %24 = or i32 %23, 4, !dbg !2148
  store volatile i32 %24, i32* %1, align 4, !dbg !2149
  %25 = load volatile i32, i32* %1, align 4, !dbg !2150
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #11, !dbg !2151
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2152
  tail call void @SystemCoreClockUpdate() #12, !dbg !2153
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2154
  %27 = udiv i32 %26, 1000, !dbg !2155
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #12, !dbg !2156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2157
  ret void, !dbg !2157
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2158 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2162
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2162
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2160, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2161, metadata !DIExpression()), !dbg !2164
  tail call void @cmnPLL1ON() #11, !dbg !2165
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2166
  store volatile i32 %3, i32* %1, align 4, !dbg !2167
  %4 = load volatile i32, i32* %1, align 4, !dbg !2168
  %5 = and i32 %4, -49153, !dbg !2169
  store volatile i32 %5, i32* %1, align 4, !dbg !2170
  %6 = load volatile i32, i32* %1, align 4, !dbg !2171
  store volatile i32 %6, i32* %1, align 4, !dbg !2172
  %7 = load volatile i32, i32* %1, align 4, !dbg !2173
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #11, !dbg !2174
  br label %8, !dbg !2175

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2176
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2177
  %11 = icmp eq i32 %9, %10, !dbg !2178
  br i1 %11, label %12, label %8, !dbg !2175, !llvm.loop !2179

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #11, !dbg !2181
  store volatile i32 %13, i32* %1, align 4, !dbg !2182
  %14 = load volatile i32, i32* %1, align 4, !dbg !2183
  %15 = and i32 %14, -8, !dbg !2184
  store volatile i32 %15, i32* %1, align 4, !dbg !2185
  %16 = load volatile i32, i32* %1, align 4, !dbg !2186
  %17 = or i32 %16, 2, !dbg !2187
  store volatile i32 %17, i32* %1, align 4, !dbg !2188
  %18 = load volatile i32, i32* %1, align 4, !dbg !2189
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #11, !dbg !2190
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2191
  tail call void @SystemCoreClockUpdate() #12, !dbg !2192
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2193
  %20 = udiv i32 %19, 1000, !dbg !2194
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #12, !dbg !2195
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2196
  ret void, !dbg !2196
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #5 section ".ramTEXT" !dbg !2197 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2201
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2201
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2200, metadata !DIExpression()), !dbg !2203
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #11, !dbg !2204
  store volatile i32 %3, i32* %1, align 4, !dbg !2205
  %4 = load volatile i32, i32* %1, align 4, !dbg !2206
  %5 = and i32 %4, -24577, !dbg !2207
  store volatile i32 %5, i32* %1, align 4, !dbg !2208
  %6 = load volatile i32, i32* %1, align 4, !dbg !2209
  store volatile i32 %6, i32* %1, align 4, !dbg !2210
  %7 = load volatile i32, i32* %1, align 4, !dbg !2211
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #11, !dbg !2212
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2213
  ret void, !dbg !2213
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2214 {
  %1 = tail call i32 @getc_nowait() #11, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %1, metadata !2218, metadata !DIExpression()), !dbg !2220
  ret i32 %1, !dbg !2221
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2222 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2225
  %2 = and i32 %1, 1, !dbg !2227
  %3 = icmp eq i32 %2, 0, !dbg !2227
  br i1 %3, label %7, label %4, !dbg !2228

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2229
  %6 = and i32 %5, 255, !dbg !2231
  call void @llvm.dbg.value(metadata i32 %5, metadata !2224, metadata !DIExpression()), !dbg !2232
  br label %7, !dbg !2233

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2234
  ret i32 %8, !dbg !2235
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2241, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8 %1, metadata !2242, metadata !DIExpression()), !dbg !2244
  %3 = icmp eq i32 %0, 0, !dbg !2245
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %4, metadata !2243, metadata !DIExpression()), !dbg !2244
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2246

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2247
  %9 = and i32 %8, 32, !dbg !2248
  %10 = icmp eq i32 %9, 0, !dbg !2249
  br i1 %10, label %7, label %11, !dbg !2246, !llvm.loop !2250

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2252
  %13 = inttoptr i32 %4 to i32*, !dbg !2253
  store volatile i32 %12, i32* %13, align 65536, !dbg !2254
  ret void, !dbg !2255
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2256 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2260, metadata !DIExpression()), !dbg !2263
  %2 = icmp eq i32 %0, 0, !dbg !2264
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %3, metadata !2261, metadata !DIExpression()), !dbg !2263
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2265

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2266
  %8 = and i32 %7, 1, !dbg !2267
  %9 = icmp eq i32 %8, 0, !dbg !2268
  br i1 %9, label %6, label %10, !dbg !2265, !llvm.loop !2269

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2271
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2271
  %13 = trunc i32 %12 to i8, !dbg !2271
  call void @llvm.dbg.value(metadata i8 %13, metadata !2262, metadata !DIExpression()), !dbg !2263
  ret i8 %13, !dbg !2272
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2277, metadata !DIExpression()), !dbg !2280
  %2 = icmp eq i32 %0, 0, !dbg !2281
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2281
  call void @llvm.dbg.value(metadata i32 %3, metadata !2278, metadata !DIExpression()), !dbg !2280
  %4 = or i32 %3, 20, !dbg !2282
  %5 = inttoptr i32 %4 to i32*, !dbg !2282
  %6 = load volatile i32, i32* %5, align 4, !dbg !2282
  %7 = and i32 %6, 1, !dbg !2284
  %8 = icmp eq i32 %7, 0, !dbg !2284
  br i1 %8, label %13, label %9, !dbg !2285

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2286
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2286
  %12 = and i32 %11, 255, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %11, metadata !2279, metadata !DIExpression()), !dbg !2280
  br label %13, !dbg !2289

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2290
  ret i32 %14, !dbg !2291
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !2292 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2296, metadata !DIExpression()), !dbg !2297
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #11, !dbg !2298
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2299

2:                                                ; preds = %1
  br label %3, !dbg !2300

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2304
  %6 = or i32 %5, 1, !dbg !2304
  store volatile i32 %6, i32* %4, align 4, !dbg !2304
  br label %7, !dbg !2305

7:                                                ; preds = %3, %1
  ret void, !dbg !2305
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !2306 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2312, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i32 %1, metadata !2313, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i16 %2, metadata !2314, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i16 %3, metadata !2315, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i16 %4, metadata !2316, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2318, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2325, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2327, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 0, metadata !2328, metadata !DIExpression()), !dbg !2329
  %6 = tail call i32 @top_xtal_freq_get() #12, !dbg !2332
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2333
  %7 = icmp eq i32 %0, 1, !dbg !2334
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2334
  call void @llvm.dbg.value(metadata i32 %8, metadata !2318, metadata !DIExpression()), !dbg !2329
  %9 = or i32 %8, 36, !dbg !2335
  %10 = inttoptr i32 %9 to i32*, !dbg !2335
  store volatile i32 3, i32* %10, align 4, !dbg !2336
  %11 = or i32 %8, 12, !dbg !2337
  %12 = inttoptr i32 %11 to i32*, !dbg !2337
  %13 = load volatile i32, i32* %12, align 4, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %13, metadata !2320, metadata !DIExpression()), !dbg !2329
  %14 = or i32 %13, 128, !dbg !2338
  store volatile i32 %14, i32* %12, align 4, !dbg !2339
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2340
  %16 = udiv i32 %15, %1, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %16, metadata !2319, metadata !DIExpression()), !dbg !2329
  %17 = lshr i32 %16, 8, !dbg !2342
  %18 = add nuw nsw i32 %17, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %18, metadata !2321, metadata !DIExpression()), !dbg !2329
  %19 = udiv i32 %16, %18, !dbg !2344
  %20 = add i32 %19, -1, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %20, metadata !2322, metadata !DIExpression()), !dbg !2329
  %21 = icmp eq i32 %20, 3, !dbg !2347
  %22 = lshr i32 %20, 1, !dbg !2349
  %23 = add nsw i32 %22, -1, !dbg !2349
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %24, metadata !2323, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata i32 undef, metadata !2328, metadata !DIExpression()), !dbg !2329
  %25 = mul i32 %15, 10, !dbg !2350
  %26 = udiv i32 %25, %1, !dbg !2351
  %27 = udiv i32 %26, %16, !dbg !2352
  %28 = mul i32 %19, -10, !dbg !2353
  %29 = add i32 %27, %28, !dbg !2354
  %30 = urem i32 %29, 10, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %30, metadata !2324, metadata !DIExpression()), !dbg !2329
  %31 = and i32 %18, 255, !dbg !2356
  %32 = inttoptr i32 %8 to i32*, !dbg !2357
  store volatile i32 %31, i32* %32, align 65536, !dbg !2358
  %33 = lshr i32 %18, 8, !dbg !2359
  %34 = and i32 %33, 255, !dbg !2360
  %35 = or i32 %8, 4, !dbg !2361
  %36 = inttoptr i32 %35 to i32*, !dbg !2361
  store volatile i32 %34, i32* %36, align 4, !dbg !2362
  %37 = or i32 %8, 40, !dbg !2363
  %38 = inttoptr i32 %37 to i32*, !dbg !2363
  store volatile i32 %20, i32* %38, align 8, !dbg !2364
  %39 = or i32 %8, 44, !dbg !2365
  %40 = inttoptr i32 %39 to i32*, !dbg !2365
  store volatile i32 %24, i32* %40, align 4, !dbg !2366
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2367
  %42 = load i16, i16* %41, align 2, !dbg !2367
  %43 = zext i16 %42 to i32, !dbg !2367
  %44 = or i32 %8, 88, !dbg !2368
  %45 = inttoptr i32 %44 to i32*, !dbg !2368
  store volatile i32 %43, i32* %45, align 8, !dbg !2369
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2370
  %47 = load i16, i16* %46, align 2, !dbg !2370
  %48 = zext i16 %47 to i32, !dbg !2370
  %49 = or i32 %8, 84, !dbg !2371
  %50 = inttoptr i32 %49 to i32*, !dbg !2371
  store volatile i32 %48, i32* %50, align 4, !dbg !2372
  store volatile i32 %13, i32* %12, align 4, !dbg !2373
  %51 = or i32 %8, 8, !dbg !2374
  %52 = inttoptr i32 %51 to i32*, !dbg !2374
  store volatile i32 71, i32* %52, align 8, !dbg !2375
  %53 = inttoptr i32 %11 to i16*, !dbg !2376
  %54 = load volatile i16, i16* %53, align 4, !dbg !2376
  call void @llvm.dbg.value(metadata i16 %54, metadata !2317, metadata !DIExpression()), !dbg !2329
  %55 = and i16 %54, -64, !dbg !2377
  call void @llvm.dbg.value(metadata i16 %54, metadata !2317, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2329
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2317, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2329
  %56 = and i16 %2, -61, !dbg !2378
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2317, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2329
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2317, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2329
  %57 = and i16 %4, -57, !dbg !2379
  call void @llvm.dbg.value(metadata i16 undef, metadata !2317, metadata !DIExpression()), !dbg !2329
  %58 = or i16 %56, %3, !dbg !2378
  %59 = or i16 %58, %57, !dbg !2379
  %60 = or i16 %59, %55, !dbg !2380
  call void @llvm.dbg.value(metadata i16 %60, metadata !2317, metadata !DIExpression()), !dbg !2329
  store volatile i16 %60, i16* %53, align 4, !dbg !2381
  ret void, !dbg !2382
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !2383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2388, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i32 %1, metadata !2389, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i32* %2, metadata !2390, metadata !DIExpression()), !dbg !2391
  %4 = icmp eq i32 %0, 0, !dbg !2392
  %5 = icmp eq i32 %1, 0, !dbg !2394
  br i1 %4, label %6, label %16, !dbg !2395

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2396

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2398
  %9 = zext i16 %8 to i32, !dbg !2398
  br label %26, !dbg !2401

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2402
  %12 = zext i16 %11 to i32, !dbg !2402
  store i32 %12, i32* %2, align 4, !dbg !2404
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2405
  %14 = zext i16 %13 to i32, !dbg !2405
  %15 = sub nsw i32 %12, %14, !dbg !2406
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2407

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2409
  %19 = zext i16 %18 to i32, !dbg !2409
  br label %26, !dbg !2412

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2413
  %22 = zext i16 %21 to i32, !dbg !2413
  store i32 %22, i32* %2, align 4, !dbg !2415
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2416
  %24 = zext i16 %23 to i32, !dbg !2416
  %25 = sub nsw i32 %22, %24, !dbg !2417
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2394
  ret void, !dbg !2418
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2419 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %1, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 %2, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()), !dbg !2427
  %4 = icmp eq i32 %2, 0, !dbg !2428
  br i1 %4, label %15, label %5, !dbg !2431

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2426, metadata !DIExpression()), !dbg !2427
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2432

7:                                                ; preds = %5
  br label %8, !dbg !2434

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2438
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2438
  store i8 %10, i8* %11, align 1, !dbg !2438
  br label %12, !dbg !2439

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %13, metadata !2426, metadata !DIExpression()), !dbg !2427
  %14 = icmp eq i32 %13, %2, !dbg !2428
  br i1 %14, label %15, label %5, !dbg !2431, !llvm.loop !2440

15:                                               ; preds = %12, %3
  ret void, !dbg !2442
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2443 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2449, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* %1, metadata !2450, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 %2, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 0, metadata !2452, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i32 0, metadata !2452, metadata !DIExpression()), !dbg !2453
  %4 = icmp eq i32 %2, 0, !dbg !2454
  br i1 %4, label %16, label %5, !dbg !2457

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2452, metadata !DIExpression()), !dbg !2453
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2458

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2460
  %9 = load i8, i8* %8, align 1, !dbg !2460
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2463
  br label %13, !dbg !2464

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2465
  %12 = load i8, i8* %11, align 1, !dbg !2465
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2468
  br label %13, !dbg !2469

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2470
  call void @llvm.dbg.value(metadata i32 %14, metadata !2452, metadata !DIExpression()), !dbg !2453
  %15 = icmp eq i32 %14, %2, !dbg !2454
  br i1 %15, label %16, label %5, !dbg !2457, !llvm.loop !2471

16:                                               ; preds = %13, %3
  ret void, !dbg !2473
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !2474 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2478, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8* %1, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %2, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %3, metadata !2481, metadata !DIExpression()), !dbg !2482
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2483

5:                                                ; preds = %4
  br label %6, !dbg !2484

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2488
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #12, !dbg !2488
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #12, !dbg !2488
  br label %9, !dbg !2489

9:                                                ; preds = %6, %4
  ret void, !dbg !2489
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !2490 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2494, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8* %1, metadata !2495, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 %2, metadata !2496, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 %3, metadata !2497, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 %4, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 %5, metadata !2499, metadata !DIExpression()), !dbg !2500
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2501

7:                                                ; preds = %6
  br label %8, !dbg !2502

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2506
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12, !dbg !2506
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #12, !dbg !2506
  br label %11, !dbg !2507

11:                                               ; preds = %8, %6
  ret void, !dbg !2507
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2508 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2513, metadata !DIExpression()), !dbg !2514
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2515

3:                                                ; preds = %2
  br label %4, !dbg !2516

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2520
  br label %6, !dbg !2521

6:                                                ; preds = %4, %2
  ret void, !dbg !2521
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2522 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2524, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2525, metadata !DIExpression()), !dbg !2526
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2527

3:                                                ; preds = %2
  br label %4, !dbg !2528

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #12, !dbg !2532
  br label %6, !dbg !2533

6:                                                ; preds = %4, %2
  ret void, !dbg !2533
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2534 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2536, metadata !DIExpression()), !dbg !2540
  %2 = icmp eq i32 %0, 0, !dbg !2541
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %3, metadata !2537, metadata !DIExpression()), !dbg !2540
  %4 = or i32 %3, 12, !dbg !2542
  %5 = inttoptr i32 %4 to i32*, !dbg !2542
  %6 = load volatile i32, i32* %5, align 4, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %6, metadata !2539, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2540
  store volatile i32 191, i32* %5, align 4, !dbg !2543
  %7 = or i32 %3, 8, !dbg !2544
  %8 = inttoptr i32 %7 to i32*, !dbg !2544
  %9 = load volatile i32, i32* %8, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %9, metadata !2538, metadata !DIExpression()), !dbg !2540
  %10 = and i32 %9, 65327, !dbg !2545
  %11 = or i32 %10, 208, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %9, metadata !2538, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2540
  store volatile i32 %11, i32* %8, align 8, !dbg !2546
  %12 = or i32 %3, 68, !dbg !2547
  %13 = inttoptr i32 %12 to i32*, !dbg !2547
  store volatile i32 0, i32* %13, align 4, !dbg !2548
  store volatile i32 0, i32* %5, align 4, !dbg !2549
  %14 = or i32 %3, 16, !dbg !2550
  %15 = inttoptr i32 %14 to i32*, !dbg !2550
  store volatile i32 2, i32* %15, align 16, !dbg !2551
  %16 = and i32 %6, 65535, !dbg !2552
  store volatile i32 %16, i32* %5, align 4, !dbg !2553
  ret void, !dbg !2554
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %1, metadata !2560, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %2, metadata !2561, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 %3, metadata !2562, metadata !DIExpression()), !dbg !2566
  %5 = icmp eq i32 %0, 0, !dbg !2567
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %6, metadata !2563, metadata !DIExpression()), !dbg !2566
  %7 = or i32 %6, 12, !dbg !2568
  %8 = inttoptr i32 %7 to i32*, !dbg !2568
  %9 = load volatile i32, i32* %8, align 4, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %9, metadata !2565, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2566
  store volatile i32 191, i32* %8, align 4, !dbg !2569
  %10 = zext i8 %1 to i32, !dbg !2570
  %11 = or i32 %6, 16, !dbg !2571
  %12 = inttoptr i32 %11 to i32*, !dbg !2571
  store volatile i32 %10, i32* %12, align 16, !dbg !2572
  %13 = or i32 %6, 20, !dbg !2573
  %14 = inttoptr i32 %13 to i32*, !dbg !2573
  store volatile i32 %10, i32* %14, align 4, !dbg !2574
  %15 = zext i8 %2 to i32, !dbg !2575
  %16 = or i32 %6, 24, !dbg !2576
  %17 = inttoptr i32 %16 to i32*, !dbg !2576
  store volatile i32 %15, i32* %17, align 8, !dbg !2577
  %18 = or i32 %6, 28, !dbg !2578
  %19 = inttoptr i32 %18 to i32*, !dbg !2578
  store volatile i32 %15, i32* %19, align 4, !dbg !2579
  %20 = or i32 %6, 8, !dbg !2580
  %21 = inttoptr i32 %20 to i32*, !dbg !2580
  %22 = load volatile i32, i32* %21, align 8, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %22, metadata !2564, metadata !DIExpression()), !dbg !2566
  %23 = and i32 %22, 65525, !dbg !2581
  %24 = or i32 %23, 10, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %22, metadata !2564, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2566
  store volatile i32 %24, i32* %21, align 8, !dbg !2582
  %25 = and i32 %9, 65535, !dbg !2583
  store volatile i32 %25, i32* %8, align 4, !dbg !2584
  %26 = zext i8 %3 to i32, !dbg !2585
  %27 = or i32 %6, 64, !dbg !2586
  %28 = inttoptr i32 %27 to i32*, !dbg !2586
  store volatile i32 %26, i32* %28, align 64, !dbg !2587
  %29 = or i32 %6, 68, !dbg !2588
  %30 = inttoptr i32 %29 to i32*, !dbg !2588
  store volatile i32 1, i32* %30, align 4, !dbg !2589
  ret void, !dbg !2590
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2591 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2596
  %2 = icmp eq i32 %0, 0, !dbg !2597
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %3, metadata !2594, metadata !DIExpression()), !dbg !2596
  %4 = or i32 %3, 12, !dbg !2598
  %5 = inttoptr i32 %4 to i32*, !dbg !2598
  %6 = load volatile i32, i32* %5, align 4, !dbg !2598
  call void @llvm.dbg.value(metadata i32 %6, metadata !2595, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2596
  store volatile i32 191, i32* %5, align 4, !dbg !2599
  %7 = or i32 %3, 8, !dbg !2600
  %8 = inttoptr i32 %7 to i32*, !dbg !2600
  store volatile i32 0, i32* %8, align 8, !dbg !2601
  store volatile i32 0, i32* %5, align 4, !dbg !2602
  %9 = and i32 %6, 65535, !dbg !2603
  store volatile i32 %9, i32* %5, align 4, !dbg !2604
  ret void, !dbg !2605
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !2606 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2610
  %2 = icmp eq i32 %0, 0, !dbg !2611
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %3, metadata !2609, metadata !DIExpression()), !dbg !2610
  %4 = or i32 %3, 12, !dbg !2612
  %5 = inttoptr i32 %4 to i32*, !dbg !2612
  store volatile i32 191, i32* %5, align 4, !dbg !2613
  %6 = or i32 %3, 8, !dbg !2614
  %7 = inttoptr i32 %6 to i32*, !dbg !2614
  store volatile i32 16, i32* %7, align 8, !dbg !2615
  %8 = or i32 %3, 16, !dbg !2616
  %9 = inttoptr i32 %8 to i32*, !dbg !2616
  store volatile i32 0, i32* %9, align 16, !dbg !2617
  %10 = or i32 %3, 24, !dbg !2618
  %11 = inttoptr i32 %10 to i32*, !dbg !2618
  store volatile i32 0, i32* %11, align 8, !dbg !2619
  store volatile i32 128, i32* %5, align 4, !dbg !2620
  %12 = inttoptr i32 %3 to i32*, !dbg !2621
  store volatile i32 0, i32* %12, align 65536, !dbg !2622
  %13 = or i32 %3, 4, !dbg !2623
  %14 = inttoptr i32 %13 to i32*, !dbg !2623
  store volatile i32 0, i32* %14, align 4, !dbg !2624
  store volatile i32 0, i32* %5, align 4, !dbg !2625
  store volatile i32 0, i32* %14, align 4, !dbg !2626
  store volatile i32 0, i32* %7, align 8, !dbg !2627
  store volatile i32 191, i32* %5, align 4, !dbg !2628
  store volatile i32 0, i32* %7, align 8, !dbg !2629
  store volatile i32 0, i32* %5, align 4, !dbg !2630
  store volatile i32 0, i32* %9, align 16, !dbg !2631
  %15 = or i32 %3, 28, !dbg !2632
  %16 = inttoptr i32 %15 to i32*, !dbg !2632
  store volatile i32 0, i32* %16, align 4, !dbg !2633
  %17 = or i32 %3, 36, !dbg !2634
  %18 = inttoptr i32 %17 to i32*, !dbg !2634
  store volatile i32 0, i32* %18, align 4, !dbg !2635
  %19 = or i32 %3, 40, !dbg !2636
  %20 = inttoptr i32 %19 to i32*, !dbg !2636
  store volatile i32 0, i32* %20, align 8, !dbg !2637
  %21 = or i32 %3, 44, !dbg !2638
  %22 = inttoptr i32 %21 to i32*, !dbg !2638
  store volatile i32 0, i32* %22, align 4, !dbg !2639
  %23 = or i32 %3, 52, !dbg !2640
  %24 = inttoptr i32 %23 to i32*, !dbg !2640
  store volatile i32 0, i32* %24, align 4, !dbg !2641
  %25 = or i32 %3, 60, !dbg !2642
  %26 = inttoptr i32 %25 to i32*, !dbg !2642
  store volatile i32 0, i32* %26, align 4, !dbg !2643
  %27 = or i32 %3, 64, !dbg !2644
  %28 = inttoptr i32 %27 to i32*, !dbg !2644
  store volatile i32 0, i32* %28, align 64, !dbg !2645
  %29 = or i32 %3, 68, !dbg !2646
  %30 = inttoptr i32 %29 to i32*, !dbg !2646
  store volatile i32 0, i32* %30, align 4, !dbg !2647
  %31 = or i32 %3, 72, !dbg !2648
  %32 = inttoptr i32 %31 to i32*, !dbg !2648
  store volatile i32 0, i32* %32, align 8, !dbg !2649
  %33 = or i32 %3, 76, !dbg !2650
  %34 = inttoptr i32 %33 to i32*, !dbg !2650
  store volatile i32 0, i32* %34, align 4, !dbg !2651
  %35 = or i32 %3, 80, !dbg !2652
  %36 = inttoptr i32 %35 to i32*, !dbg !2652
  store volatile i32 0, i32* %36, align 16, !dbg !2653
  %37 = or i32 %3, 84, !dbg !2654
  %38 = inttoptr i32 %37 to i32*, !dbg !2654
  store volatile i32 0, i32* %38, align 4, !dbg !2655
  %39 = or i32 %3, 88, !dbg !2656
  %40 = inttoptr i32 %39 to i32*, !dbg !2656
  store volatile i32 0, i32* %40, align 8, !dbg !2657
  %41 = or i32 %3, 96, !dbg !2658
  %42 = inttoptr i32 %41 to i32*, !dbg !2658
  store volatile i32 0, i32* %42, align 32, !dbg !2659
  ret void, !dbg !2660
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !2661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2663, metadata !DIExpression()), !dbg !2665
  %2 = icmp eq i32 %0, 0, !dbg !2666
  call void @llvm.dbg.value(metadata i32 undef, metadata !2664, metadata !DIExpression()), !dbg !2665
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !2667

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !2668
  %7 = and i32 %6, 64, !dbg !2669
  %8 = icmp eq i32 %7, 0, !dbg !2670
  br i1 %8, label %5, label %9, !dbg !2667, !llvm.loop !2671

9:                                                ; preds = %5
  ret void, !dbg !2673
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2674 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 %1, metadata !2679, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8* %2, metadata !2680, metadata !DIExpression()), !dbg !2691
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2692
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2692
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2681, metadata !DIExpression()), !dbg !2693
  %7 = bitcast i32* %5 to i8*, !dbg !2694
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2694
  call void @llvm.dbg.value(metadata i32* %5, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2691
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2695
  call void @llvm.va_start(i8* nonnull %6), !dbg !2696
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2697
  %10 = load i32, i32* %9, align 4, !dbg !2697
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2697
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2697
  call void @llvm.va_end(i8* nonnull %6), !dbg !2698
  %13 = load i32, i32* %5, align 4, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %13, metadata !2690, metadata !DIExpression()), !dbg !2691
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2700
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2701
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2701
  ret void, !dbg !2701
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2702 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2704, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 %1, metadata !2705, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8* %2, metadata !2706, metadata !DIExpression()), !dbg !2709
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2707, metadata !DIExpression()), !dbg !2711
  %7 = bitcast i32* %5 to i8*, !dbg !2712
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2712
  call void @llvm.dbg.value(metadata i32* %5, metadata !2708, metadata !DIExpression(DW_OP_deref)), !dbg !2709
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2713
  call void @llvm.va_start(i8* nonnull %6), !dbg !2714
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2715
  %10 = load i32, i32* %9, align 4, !dbg !2715
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2715
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2715
  call void @llvm.va_end(i8* nonnull %6), !dbg !2716
  %13 = load i32, i32* %5, align 4, !dbg !2717
  call void @llvm.dbg.value(metadata i32 %13, metadata !2708, metadata !DIExpression()), !dbg !2709
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2718
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2719
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2719
  ret void, !dbg !2719
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2720 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2722, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %1, metadata !2723, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %2, metadata !2724, metadata !DIExpression()), !dbg !2727
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2728
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2725, metadata !DIExpression()), !dbg !2729
  %7 = bitcast i32* %5 to i8*, !dbg !2730
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2730
  call void @llvm.dbg.value(metadata i32* %5, metadata !2726, metadata !DIExpression(DW_OP_deref)), !dbg !2727
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2731
  call void @llvm.va_start(i8* nonnull %6), !dbg !2732
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2733
  %10 = load i32, i32* %9, align 4, !dbg !2733
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2733
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2733
  call void @llvm.va_end(i8* nonnull %6), !dbg !2734
  %13 = load i32, i32* %5, align 4, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %13, metadata !2726, metadata !DIExpression()), !dbg !2727
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2736
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2737
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2737
  ret void, !dbg !2737
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2738 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2740, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 %1, metadata !2741, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i8* %2, metadata !2742, metadata !DIExpression()), !dbg !2745
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2746
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2746
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2743, metadata !DIExpression()), !dbg !2747
  %7 = bitcast i32* %5 to i8*, !dbg !2748
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2748
  call void @llvm.dbg.value(metadata i32* %5, metadata !2744, metadata !DIExpression(DW_OP_deref)), !dbg !2745
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #12, !dbg !2749
  call void @llvm.va_start(i8* nonnull %6), !dbg !2750
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2751
  %10 = load i32, i32* %9, align 4, !dbg !2751
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2751
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #12, !dbg !2751
  call void @llvm.va_end(i8* nonnull %6), !dbg !2752
  %13 = load i32, i32* %5, align 4, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %13, metadata !2744, metadata !DIExpression()), !dbg !2745
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #12, !dbg !2754
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #13, !dbg !2755
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !2755
  ret void, !dbg !2755
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !2756 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2762, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 %1, metadata !2763, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %2, metadata !2764, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %3, metadata !2765, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 %4, metadata !2766, metadata !DIExpression()), !dbg !2767
  ret void, !dbg !2768
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !2769 {
  ret i32 0, !dbg !2773
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2774 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2778, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 -1, metadata !2779, metadata !DIExpression()), !dbg !2780
  %2 = icmp ugt i32 %0, 95, !dbg !2781
  br i1 %2, label %4, label %3, !dbg !2781

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #11, !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()), !dbg !2780
  br label %4, !dbg !2785

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2780
  ret i32 %5, !dbg !2786
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2791, metadata !DIExpression()), !dbg !2792
  %2 = and i32 %0, 31, !dbg !2793
  %3 = shl nuw i32 1, %2, !dbg !2794
  %4 = lshr i32 %0, 5, !dbg !2795
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !2796
  store volatile i32 %3, i32* %5, align 4, !dbg !2797
  ret void, !dbg !2798
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2801, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i32 -1, metadata !2802, metadata !DIExpression()), !dbg !2803
  %2 = icmp ugt i32 %0, 95, !dbg !2804
  br i1 %2, label %4, label %3, !dbg !2804

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #11, !dbg !2806
  call void @llvm.dbg.value(metadata i32 0, metadata !2802, metadata !DIExpression()), !dbg !2803
  br label %4, !dbg !2808

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2803
  ret i32 %5, !dbg !2809
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2810 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2812, metadata !DIExpression()), !dbg !2813
  %2 = and i32 %0, 31, !dbg !2814
  %3 = shl nuw i32 1, %2, !dbg !2815
  %4 = lshr i32 %0, 5, !dbg !2816
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !2817
  store volatile i32 %3, i32* %5, align 4, !dbg !2818
  ret void, !dbg !2819
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !2820 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 255, metadata !2825, metadata !DIExpression()), !dbg !2826
  %2 = icmp ugt i32 %0, 95, !dbg !2827
  br i1 %2, label %5, label %3, !dbg !2827

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #11, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %4, metadata !2825, metadata !DIExpression()), !dbg !2826
  br label %5, !dbg !2831

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !2826
  ret i32 %6, !dbg !2832
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !2833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2837, metadata !DIExpression()), !dbg !2838
  %2 = lshr i32 %0, 5, !dbg !2839
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !2840
  %4 = load volatile i32, i32* %3, align 4, !dbg !2840
  %5 = and i32 %0, 31, !dbg !2841
  %6 = lshr i32 %4, %5, !dbg !2842
  %7 = and i32 %6, 1, !dbg !2842
  ret i32 %7, !dbg !2843
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2844 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2846, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 -1, metadata !2847, metadata !DIExpression()), !dbg !2848
  %2 = icmp ugt i32 %0, 95, !dbg !2849
  br i1 %2, label %4, label %3, !dbg !2849

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #11, !dbg !2851
  call void @llvm.dbg.value(metadata i32 0, metadata !2847, metadata !DIExpression()), !dbg !2848
  br label %4, !dbg !2853

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2848
  ret i32 %5, !dbg !2854
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2855 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2857, metadata !DIExpression()), !dbg !2858
  %2 = and i32 %0, 31, !dbg !2859
  %3 = shl nuw i32 1, %2, !dbg !2860
  %4 = lshr i32 %0, 5, !dbg !2861
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !2862
  store volatile i32 %3, i32* %5, align 4, !dbg !2863
  ret void, !dbg !2864
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !2865 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i32 -1, metadata !2868, metadata !DIExpression()), !dbg !2869
  %2 = icmp ugt i32 %0, 95, !dbg !2870
  br i1 %2, label %4, label %3, !dbg !2870

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #11, !dbg !2872
  call void @llvm.dbg.value(metadata i32 0, metadata !2868, metadata !DIExpression()), !dbg !2869
  br label %4, !dbg !2874

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !2869
  ret i32 %5, !dbg !2875
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !2876 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2878, metadata !DIExpression()), !dbg !2879
  %2 = and i32 %0, 31, !dbg !2880
  %3 = shl nuw i32 1, %2, !dbg !2881
  %4 = lshr i32 %0, 5, !dbg !2882
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !2883
  store volatile i32 %3, i32* %5, align 4, !dbg !2884
  ret void, !dbg !2885
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !2886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2890, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i32 %1, metadata !2891, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i32 -1, metadata !2892, metadata !DIExpression()), !dbg !2893
  %3 = icmp ugt i32 %0, 95, !dbg !2894
  br i1 %3, label %5, label %4, !dbg !2894

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #11, !dbg !2896
  call void @llvm.dbg.value(metadata i32 0, metadata !2892, metadata !DIExpression()), !dbg !2893
  br label %5, !dbg !2898

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !2893
  ret i32 %6, !dbg !2899
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !2900 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2904, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 %1, metadata !2905, metadata !DIExpression()), !dbg !2906
  %3 = trunc i32 %1 to i8, !dbg !2907
  %4 = shl i8 %3, 5, !dbg !2907
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !2910
  store volatile i8 %4, i8* %5, align 1, !dbg !2911
  ret void, !dbg !2912
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !2913 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2915, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i32 68, metadata !2916, metadata !DIExpression()), !dbg !2917
  %2 = icmp ugt i32 %0, 95, !dbg !2918
  br i1 %2, label %5, label %3, !dbg !2918

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #11, !dbg !2920
  call void @llvm.dbg.value(metadata i32 %4, metadata !2916, metadata !DIExpression()), !dbg !2917
  br label %5, !dbg !2922

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !2917
  ret i32 %6, !dbg !2923
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !2924 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2926, metadata !DIExpression()), !dbg !2927
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !2928
  %3 = load volatile i8, i8* %2, align 1, !dbg !2928
  %4 = lshr i8 %3, 5, !dbg !2931
  %5 = zext i8 %4 to i32, !dbg !2931
  ret i32 %5, !dbg !2932
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !2933 {
  ret void, !dbg !2934
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !2935 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !2937, metadata !DIExpression()), !dbg !2939
  %1 = tail call fastcc i32 @get_current_irq() #11, !dbg !2940
  call void @llvm.dbg.value(metadata i32 %1, metadata !2938, metadata !DIExpression()), !dbg !2939
  %2 = icmp ugt i32 %1, 95, !dbg !2941
  br i1 %2, label %12, label %3, !dbg !2941

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !2943
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !2943
  %6 = icmp eq void (i32)* %5, null, !dbg !2945
  br i1 %6, label %7, label %8, !dbg !2946

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !2937, metadata !DIExpression()), !dbg !2939
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0)) #12, !dbg !2947
  br label %12, !dbg !2949

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #11, !dbg !2950
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !2952
  store i32 %9, i32* %10, align 4, !dbg !2953
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !2954
  tail call void %11(i32 noundef %1) #12, !dbg !2955
  call void @llvm.dbg.value(metadata i32 0, metadata !2937, metadata !DIExpression()), !dbg !2939
  br label %12, !dbg !2956

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !2939
  ret i32 %13, !dbg !2957
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !2958 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2961
  %2 = and i32 %1, 511, !dbg !2962
  call void @llvm.dbg.value(metadata i32 %2, metadata !2960, metadata !DIExpression()), !dbg !2963
  %3 = add nsw i32 %2, -16, !dbg !2964
  ret i32 %3, !dbg !2965
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !2966 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !2967
  %2 = lshr i32 %1, 22, !dbg !2968
  %3 = and i32 %2, 1, !dbg !2968
  ret i32 %3, !dbg !2969
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !2970 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !2976, metadata !DIExpression()), !dbg !2978
  %3 = icmp ugt i32 %0, 95, !dbg !2979
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !2979
  br i1 %5, label %10, label %6, !dbg !2979

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !2981
  call void @llvm.dbg.value(metadata i32 %7, metadata !2977, metadata !DIExpression()), !dbg !2978
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #11, !dbg !2982
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !2983
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !2984
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !2985
  store i32 0, i32* %9, align 4, !dbg !2986
  tail call void @restore_interrupt_mask(i32 noundef %7) #12, !dbg !2987
  br label %10, !dbg !2988

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !2978
  ret i32 %11, !dbg !2989
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !2990 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !2994, metadata !DIExpression()), !dbg !2995
  %2 = tail call i32 @save_and_set_interrupt_mask() #12, !dbg !2996
  store i32 %2, i32* %0, align 4, !dbg !2997
  ret i32 0, !dbg !2998
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !2999 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3003, metadata !DIExpression()), !dbg !3004
  tail call void @restore_interrupt_mask(i32 noundef %0) #12, !dbg !3005
  ret i32 0, !dbg !3006
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3007 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i8 %1, metadata !3014, metadata !DIExpression()), !dbg !3016
  %3 = icmp ugt i32 %0, 60, !dbg !3017
  br i1 %3, label %11, label %4, !dbg !3019

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3020
  br i1 %5, label %11, label %6, !dbg !3022

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3023
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #12, !dbg !3024
  call void @llvm.dbg.value(metadata i32 %8, metadata !3015, metadata !DIExpression()), !dbg !3016
  %9 = icmp slt i32 %8, 0, !dbg !3025
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3025
  br label %11, !dbg !3026

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3016
  ret i32 %12, !dbg !3027
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !3028 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3033, metadata !DIExpression()), !dbg !3034
  ret i32 0, !dbg !3035
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !3036 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3038, metadata !DIExpression()), !dbg !3039
  ret i32 0, !dbg !3040
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3041 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3046, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i32* %1, metadata !3047, metadata !DIExpression()), !dbg !3056
  %4 = icmp eq i32* %1, null, !dbg !3057
  br i1 %4, label %12, label %5, !dbg !3059

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3060
  br i1 %6, label %12, label %7, !dbg !3062

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3063
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3063
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3063
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3063
  %10 = load i8, i8* %9, align 1, !dbg !3063
  call void @llvm.dbg.value(metadata i8 %10, metadata !3048, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3063
  %11 = zext i8 %10 to i32, !dbg !3064
  store i32 %11, i32* %1, align 4, !dbg !3065
  br label %12, !dbg !3066

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3056
  ret i32 %13, !dbg !3067
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3072, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 %1, metadata !3073, metadata !DIExpression()), !dbg !3075
  %3 = icmp ugt i32 %0, 60, !dbg !3076
  br i1 %3, label %9, label %4, !dbg !3078

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3079
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3080
  call void @llvm.dbg.value(metadata i32 %6, metadata !3074, metadata !DIExpression()), !dbg !3075
  %7 = icmp slt i32 %6, 0, !dbg !3081
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3081
  br label %9, !dbg !3082

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3075
  ret i32 %10, !dbg !3083
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3084 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3086, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32* %1, metadata !3087, metadata !DIExpression()), !dbg !3089
  %4 = icmp ugt i32 %0, 60, !dbg !3090
  br i1 %4, label %12, label %5, !dbg !3092

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3093
  br i1 %6, label %12, label %7, !dbg !3095

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3096
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3096
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3096
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3096
  %10 = load i8, i8* %9, align 2, !dbg !3096
  call void @llvm.dbg.value(metadata i8 %10, metadata !3088, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3089
  call void @llvm.dbg.value(metadata i8 undef, metadata !3088, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3089
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3096
  %11 = zext i8 %10 to i32, !dbg !3097
  store i32 %11, i32* %1, align 4, !dbg !3098
  br label %12, !dbg !3099

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3089
  ret i32 %13, !dbg !3100
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3106, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i32 %1, metadata !3107, metadata !DIExpression()), !dbg !3109
  %3 = icmp ugt i32 %0, 60, !dbg !3110
  br i1 %3, label %8, label %4, !dbg !3112

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #12, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %5, metadata !3108, metadata !DIExpression()), !dbg !3109
  %6 = icmp slt i32 %5, 0, !dbg !3114
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3114
  br label %8, !dbg !3115

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3109
  ret i32 %9, !dbg !3116
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3117 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3122, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i32* %1, metadata !3123, metadata !DIExpression()), !dbg !3125
  %4 = icmp ugt i32 %0, 60, !dbg !3126
  br i1 %4, label %13, label %5, !dbg !3128

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3129
  br i1 %6, label %13, label %7, !dbg !3131

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3132
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3132
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #12, !dbg !3132
  call void @llvm.dbg.value(metadata i32 undef, metadata !3124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3125
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3132
  %10 = load i8, i8* %9, align 4, !dbg !3132
  call void @llvm.dbg.value(metadata i8 %10, metadata !3124, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3125
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #13, !dbg !3132
  %11 = icmp ne i8 %10, 0, !dbg !3133
  %12 = zext i1 %11 to i32, !dbg !3133
  store i32 %12, i32* %1, align 4, !dbg !3134
  br label %13, !dbg !3135

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3125
  ret i32 %14, !dbg !3136
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !3137 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3139, metadata !DIExpression()), !dbg !3141
  %3 = icmp ugt i32 %0, 60, !dbg !3142
  br i1 %3, label %11, label %4, !dbg !3144

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3145
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #13, !dbg !3145
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #12, !dbg !3145
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3145
  %7 = load i8, i8* %6, align 2, !dbg !3145
  call void @llvm.dbg.value(metadata i8 %7, metadata !3140, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3141
  call void @llvm.dbg.value(metadata i8 undef, metadata !3140, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3141
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #13, !dbg !3145
  %8 = xor i8 %7, 1, !dbg !3146
  %9 = zext i8 %8 to i32, !dbg !3146
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #11, !dbg !3147
  br label %11, !dbg !3148

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3141
  ret i32 %12, !dbg !3149
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !3150 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3152, metadata !DIExpression()), !dbg !3154
  %2 = icmp ugt i32 %0, 60, !dbg !3155
  br i1 %2, label %10, label %3, !dbg !3157

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3158
  call void @llvm.dbg.value(metadata i32 %4, metadata !3153, metadata !DIExpression()), !dbg !3154
  %5 = icmp slt i32 %4, 0, !dbg !3159
  br i1 %5, label %10, label %6, !dbg !3161

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #12, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %7, metadata !3153, metadata !DIExpression()), !dbg !3154
  %8 = icmp slt i32 %7, 0, !dbg !3163
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3163
  br label %10, !dbg !3164

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3154
  ret i32 %11, !dbg !3165
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !3166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3168, metadata !DIExpression()), !dbg !3170
  %2 = icmp ugt i32 %0, 60, !dbg !3171
  br i1 %2, label %10, label %3, !dbg !3173

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %4, metadata !3169, metadata !DIExpression()), !dbg !3170
  %5 = icmp slt i32 %4, 0, !dbg !3175
  br i1 %5, label %10, label %6, !dbg !3177

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #12, !dbg !3178
  call void @llvm.dbg.value(metadata i32 %7, metadata !3169, metadata !DIExpression()), !dbg !3170
  %8 = icmp slt i32 %7, 0, !dbg !3179
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3179
  br label %10, !dbg !3180

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3170
  ret i32 %11, !dbg !3181
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !3182 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3184, metadata !DIExpression()), !dbg !3186
  %2 = icmp ugt i32 %0, 60, !dbg !3187
  br i1 %2, label %7, label %3, !dbg !3189

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #12, !dbg !3190
  call void @llvm.dbg.value(metadata i32 %4, metadata !3185, metadata !DIExpression()), !dbg !3186
  %5 = icmp slt i32 %4, 0, !dbg !3191
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3191
  br label %7, !dbg !3192

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3186
  ret i32 %8, !dbg !3193
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3194 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3198, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %1, metadata !3199, metadata !DIExpression()), !dbg !3201
  %3 = icmp ugt i32 %0, 60, !dbg !3202
  br i1 %3, label %9, label %4, !dbg !3204

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3205
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #12, !dbg !3206
  call void @llvm.dbg.value(metadata i32 %6, metadata !3200, metadata !DIExpression()), !dbg !3201
  %7 = icmp slt i32 %6, 0, !dbg !3207
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3207
  br label %9, !dbg !3208

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3201
  ret i32 %10, !dbg !3209
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !3210 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3215, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i32* %1, metadata !3216, metadata !DIExpression()), !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #13, !dbg !3220
  %4 = icmp ugt i32 %0, 60, !dbg !3221
  br i1 %4, label %11, label %5, !dbg !3223

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3218, metadata !DIExpression(DW_OP_deref)), !dbg !3219
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #12, !dbg !3224
  call void @llvm.dbg.value(metadata i32 %6, metadata !3217, metadata !DIExpression()), !dbg !3219
  %7 = load i8, i8* %3, align 1, !dbg !3225
  call void @llvm.dbg.value(metadata i8 %7, metadata !3218, metadata !DIExpression()), !dbg !3219
  %8 = zext i8 %7 to i32, !dbg !3226
  store i32 %8, i32* %1, align 4, !dbg !3227
  %9 = icmp slt i32 %6, 0, !dbg !3228
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3228
  br label %11, !dbg !3229

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3219
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #13, !dbg !3230
  ret i32 %12, !dbg !3230
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3237, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3238, metadata !DIExpression()), !dbg !3239
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3240
  br i1 %3, label %4, label %18, !dbg !3242

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3243
  %6 = load i8, i8* %5, align 4, !dbg !3243, !range !3245
  %7 = icmp eq i8 %6, 0, !dbg !3243
  br i1 %7, label %8, label %18, !dbg !3246

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #12, !dbg !3247
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3248
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !3249
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3250
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #12, !dbg !3251
  store i8 1, i8* %5, align 4, !dbg !3252
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3253, !range !3254
  tail call void @uart_reset_default_value(i32 noundef %14) #12, !dbg !3255
  tail call void @halUART_HWInit(i32 noundef %14) #12, !dbg !3256
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3257
  %16 = icmp eq i32 %15, 0, !dbg !3259
  %17 = select i1 %16, i32 0, i32 -4, !dbg !3239
  br label %18, !dbg !3239

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !3239
  ret i32 %19, !dbg !3260
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #4 !dbg !3261 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3267, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3268, metadata !DIExpression()), !dbg !3269
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3270
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !3272
  br i1 %5, label %6, label %22, !dbg !3272

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3273
  %8 = load i32, i32* %7, align 4, !dbg !3273
  %9 = icmp ugt i32 %8, 12, !dbg !3275
  br i1 %9, label %22, label %10, !dbg !3276

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3277
  %12 = load i32, i32* %11, align 4, !dbg !3277
  %13 = icmp ugt i32 %12, 2, !dbg !3278
  br i1 %13, label %22, label %14, !dbg !3279

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3280
  %16 = load i32, i32* %15, align 4, !dbg !3280
  %17 = icmp ugt i32 %16, 1, !dbg !3281
  br i1 %17, label %22, label %18, !dbg !3282

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3283
  %20 = load i32, i32* %19, align 4, !dbg !3283
  %21 = icmp ult i32 %20, 4, !dbg !3284
  br label %22, !dbg !3285

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !3269
  ret i1 %23, !dbg !3286
}

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !3287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3291, metadata !DIExpression()), !dbg !3292
  %2 = icmp ne i32 %0, 0, !dbg !3293
  %3 = zext i1 %2 to i32, !dbg !3294
  ret i32 %3, !dbg !3295
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3296 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3300, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3301, metadata !DIExpression()), !dbg !3302
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #11, !dbg !3303
  br i1 %3, label %4, label %22, !dbg !3305

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3306
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !3307
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !3308
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #12, !dbg !3309
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3310
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !3311
  %11 = load i32, i32* %10, align 4, !dbg !3311
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #11, !dbg !3312
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !3313
  %14 = load i32, i32* %13, align 4, !dbg !3313
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #11, !dbg !3314
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !3315
  %17 = load i32, i32* %16, align 4, !dbg !3315
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #11, !dbg !3316
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !3317
  %20 = load i32, i32* %19, align 4, !dbg !3317
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #11, !dbg !3318
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #12, !dbg !3319
  br label %22, !dbg !3320

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !3302
  ret i32 %23, !dbg !3321
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !3322 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3326, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !3327, metadata !DIExpression()), !dbg !3332
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !3333
  %3 = load i32, i32* %2, align 4, !dbg !3333
  ret i32 %3, !dbg !3334
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !3335 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3339, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !3340, metadata !DIExpression()), !dbg !3343
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !3344
  %3 = load i16, i16* %2, align 2, !dbg !3344
  ret i16 %3, !dbg !3345
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !3346 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3350, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !3351, metadata !DIExpression()), !dbg !3354
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !3355
  %3 = load i16, i16* %2, align 2, !dbg !3355
  ret i16 %3, !dbg !3356
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !3357 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3361, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !3362, metadata !DIExpression()), !dbg !3365
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !3366
  %3 = load i16, i16* %2, align 2, !dbg !3366
  ret i16 %3, !dbg !3367
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !3368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3372, metadata !DIExpression()), !dbg !3373
  %2 = icmp ult i32 %0, 2, !dbg !3374
  ret i1 %2, !dbg !3375
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !3376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3380, metadata !DIExpression()), !dbg !3381
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3382
  br i1 %2, label %3, label %10, !dbg !3384

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3385
  %5 = load i8, i8* %4, align 4, !dbg !3385, !range !3245
  %6 = icmp eq i8 %5, 0, !dbg !3387
  br i1 %6, label %10, label %7, !dbg !3388

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #12, !dbg !3389
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3390, !range !3254
  tail call void @uart_query_empty(i32 noundef %9) #12, !dbg !3391
  tail call void @uart_reset_default_value(i32 noundef %9) #12, !dbg !3392
  br label %10, !dbg !3393

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !3381
  ret i32 %11, !dbg !3394
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3395 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3399, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8 %1, metadata !3400, metadata !DIExpression()), !dbg !3402
  %3 = icmp eq i32 %0, 0, !dbg !3403
  %4 = icmp eq i32 %0, 1, !dbg !3403
  %5 = select i1 %4, i32 1, i32 2, !dbg !3403
  %6 = select i1 %3, i32 0, i32 %5, !dbg !3403
  call void @llvm.dbg.value(metadata i32 %6, metadata !3401, metadata !DIExpression()), !dbg !3402
  %7 = icmp eq i32 %6, 2, !dbg !3404
  br i1 %7, label %9, label %8, !dbg !3406

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #12, !dbg !3407
  br label %9, !dbg !3409

9:                                                ; preds = %2, %8
  ret void, !dbg !3410
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3411 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3415, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i8* %1, metadata !3416, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i32 %2, metadata !3417, metadata !DIExpression()), !dbg !3420
  %4 = icmp eq i32 %0, 0, !dbg !3421
  %5 = icmp eq i32 %0, 1, !dbg !3421
  %6 = select i1 %5, i32 1, i32 2, !dbg !3421
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3421
  call void @llvm.dbg.value(metadata i32 %7, metadata !3418, metadata !DIExpression()), !dbg !3420
  %8 = icmp eq i8* %1, null, !dbg !3422
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !3424
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3424
  call void @llvm.dbg.value(metadata i32 0, metadata !3419, metadata !DIExpression()), !dbg !3420
  br i1 %12, label %19, label %13, !dbg !3424

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3419, metadata !DIExpression()), !dbg !3420
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !3425
  %16 = load i8, i8* %15, align 1, !dbg !3425
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #12, !dbg !3431
  %17 = add nuw i32 %14, 1, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %17, metadata !3419, metadata !DIExpression()), !dbg !3420
  %18 = icmp eq i32 %17, %2, !dbg !3433
  br i1 %18, label %19, label %13, !dbg !3434, !llvm.loop !3435

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !3420
  ret i32 %20, !dbg !3437
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3438 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8* %1, metadata !3441, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 %2, metadata !3442, metadata !DIExpression()), !dbg !3447
  %5 = bitcast i32* %4 to i8*, !dbg !3448
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3448
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3449
  br i1 %6, label %7, label %24, !dbg !3451

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !3452
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !3454
  br i1 %10, label %24, label %11, !dbg !3454

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !3455
  %13 = load i8, i8* %12, align 4, !dbg !3455, !range !3245
  %14 = icmp eq i8 %13, 0, !dbg !3455
  br i1 %14, label %24, label %15, !dbg !3457

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3458, !range !3254
  call void @llvm.dbg.value(metadata i32* %4, metadata !3443, metadata !DIExpression(DW_OP_deref)), !dbg !3447
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !3459
  %17 = load i32, i32* %4, align 4, !dbg !3460
  call void @llvm.dbg.value(metadata i32 %17, metadata !3443, metadata !DIExpression()), !dbg !3447
  %18 = icmp ult i32 %17, %2, !dbg !3462
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !3444, metadata !DIExpression()), !dbg !3447
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #12, !dbg !3463
  %20 = load i32, i32* %4, align 4, !dbg !3464
  call void @llvm.dbg.value(metadata i32 %20, metadata !3443, metadata !DIExpression()), !dbg !3447
  %21 = icmp eq i32 %19, %20, !dbg !3466
  br i1 %21, label %22, label %24, !dbg !3467

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #11, !dbg !3468, !range !3470
  call void @llvm.dbg.value(metadata i32 %23, metadata !3445, metadata !DIExpression()), !dbg !3447
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #12, !dbg !3471
  br label %24, !dbg !3472

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !3447
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3473
  ret i32 %25, !dbg !3473
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !3474 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3478, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i1 %1, metadata !3479, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3481
  %3 = icmp eq i32 %0, 0, !dbg !3482
  %4 = select i1 %1, i32 15, i32 14, !dbg !3484
  %5 = select i1 %1, i32 17, i32 16, !dbg !3484
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !3484
  call void @llvm.dbg.value(metadata i32 %6, metadata !3480, metadata !DIExpression()), !dbg !3481
  ret i32 %6, !dbg !3485
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !3486 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3490, metadata !DIExpression()), !dbg !3492
  %2 = icmp eq i32 %0, 0, !dbg !3493
  %3 = icmp eq i32 %0, 1, !dbg !3493
  %4 = select i1 %3, i32 1, i32 2, !dbg !3493
  %5 = select i1 %2, i32 0, i32 %4, !dbg !3493
  call void @llvm.dbg.value(metadata i32 %5, metadata !3491, metadata !DIExpression()), !dbg !3492
  %6 = icmp ult i32 %5, 2, !dbg !3494
  br i1 %6, label %7, label %9, !dbg !3496

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #12, !dbg !3497
  br label %9, !dbg !3499

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !3500
  ret i8 %10, !dbg !3501
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !3502 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3506, metadata !DIExpression()), !dbg !3508
  %2 = icmp eq i32 %0, 0, !dbg !3509
  %3 = icmp eq i32 %0, 1, !dbg !3509
  %4 = select i1 %3, i32 1, i32 2, !dbg !3509
  %5 = select i1 %2, i32 0, i32 %4, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %5, metadata !3507, metadata !DIExpression()), !dbg !3508
  %6 = icmp ult i32 %5, 2, !dbg !3510
  br i1 %6, label %7, label %9, !dbg !3512

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #12, !dbg !3513
  br label %9, !dbg !3515

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !3516
  ret i32 %10, !dbg !3517
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3518 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3522, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8* %1, metadata !3523, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %2, metadata !3524, metadata !DIExpression()), !dbg !3527
  %4 = icmp eq i32 %0, 0, !dbg !3528
  %5 = icmp eq i32 %0, 1, !dbg !3528
  %6 = select i1 %5, i32 1, i32 2, !dbg !3528
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3528
  call void @llvm.dbg.value(metadata i32 %7, metadata !3525, metadata !DIExpression()), !dbg !3527
  %8 = icmp eq i8* %1, null, !dbg !3529
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !3531
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !3531
  call void @llvm.dbg.value(metadata i32 0, metadata !3526, metadata !DIExpression()), !dbg !3527
  br i1 %12, label %19, label %13, !dbg !3531

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !3526, metadata !DIExpression()), !dbg !3527
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #12, !dbg !3532
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !3538
  store i8 %15, i8* %16, align 1, !dbg !3539
  %17 = add nuw i32 %14, 1, !dbg !3540
  call void @llvm.dbg.value(metadata i32 %17, metadata !3526, metadata !DIExpression()), !dbg !3527
  %18 = icmp eq i32 %17, %2, !dbg !3541
  br i1 %18, label %19, label %13, !dbg !3542, !llvm.loop !3543

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !3527
  ret i32 %20, !dbg !3545
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !3546 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3548, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i8* %1, metadata !3549, metadata !DIExpression()), !dbg !3554
  call void @llvm.dbg.value(metadata i32 %2, metadata !3550, metadata !DIExpression()), !dbg !3554
  %5 = bitcast i32* %4 to i8*, !dbg !3555
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3555
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3556
  br i1 %6, label %7, label %20, !dbg !3558

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !3559
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !3561
  br i1 %10, label %20, label %11, !dbg !3561

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3562, !range !3254
  call void @llvm.dbg.value(metadata i32* %4, metadata !3551, metadata !DIExpression(DW_OP_deref)), !dbg !3554
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #12, !dbg !3563
  %13 = load i32, i32* %4, align 4, !dbg !3564
  call void @llvm.dbg.value(metadata i32 %13, metadata !3551, metadata !DIExpression()), !dbg !3554
  %14 = icmp ult i32 %13, %2, !dbg !3566
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !3552, metadata !DIExpression()), !dbg !3554
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #12, !dbg !3567
  %16 = load i32, i32* %4, align 4, !dbg !3568
  call void @llvm.dbg.value(metadata i32 %16, metadata !3551, metadata !DIExpression()), !dbg !3554
  %17 = icmp eq i32 %15, %16, !dbg !3570
  br i1 %17, label %18, label %20, !dbg !3571

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3572, !range !3470
  call void @llvm.dbg.value(metadata i32 %19, metadata !3553, metadata !DIExpression()), !dbg !3554
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #12, !dbg !3574
  br label %20, !dbg !3575

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !3554
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3576
  ret i32 %21, !dbg !3576
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !3577 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3579, metadata !DIExpression()), !dbg !3581
  %3 = bitcast i32* %2 to i8*, !dbg !3582
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3582
  call void @llvm.dbg.value(metadata i32 0, metadata !3580, metadata !DIExpression()), !dbg !3581
  store i32 0, i32* %2, align 4, !dbg !3583
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3584
  br i1 %4, label %5, label %8, !dbg !3586

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3587, !range !3254
  call void @llvm.dbg.value(metadata i32* %2, metadata !3580, metadata !DIExpression(DW_OP_deref)), !dbg !3581
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #12, !dbg !3588
  %7 = load i32, i32* %2, align 4, !dbg !3589
  call void @llvm.dbg.value(metadata i32 %7, metadata !3580, metadata !DIExpression()), !dbg !3581
  br label %8, !dbg !3590

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3581
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3591
  ret i32 %9, !dbg !3591
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !3592 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()), !dbg !3596
  %3 = bitcast i32* %2 to i8*, !dbg !3597
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3597
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()), !dbg !3596
  store i32 0, i32* %2, align 4, !dbg !3598
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3599
  br i1 %4, label %5, label %8, !dbg !3601

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3602, !range !3254
  call void @llvm.dbg.value(metadata i32* %2, metadata !3595, metadata !DIExpression(DW_OP_deref)), !dbg !3596
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #12, !dbg !3603
  %7 = load i32, i32* %2, align 4, !dbg !3604
  call void @llvm.dbg.value(metadata i32 %7, metadata !3595, metadata !DIExpression()), !dbg !3596
  br label %8, !dbg !3605

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3596
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #13, !dbg !3606
  ret i32 %9, !dbg !3606
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !3607 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3611, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !3612, metadata !DIExpression()), !dbg !3615
  call void @llvm.dbg.value(metadata i8* %2, metadata !3613, metadata !DIExpression()), !dbg !3615
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3616
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !3618
  br i1 %6, label %7, label %18, !dbg !3618

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !3619
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !3620
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !3621
  store i8* %2, i8** %9, align 4, !dbg !3622
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !3623
  store i8 1, i8* %10, align 4, !dbg !3624
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3625
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #11, !dbg !3626
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !3627
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #12, !dbg !3628
  %13 = icmp eq i32 %11, 0, !dbg !3629
  br i1 %13, label %14, label %15, !dbg !3631

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #12, !dbg !3632
  br label %16, !dbg !3634

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #12, !dbg !3635
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #11, !dbg !3637, !range !3470
  call void @llvm.dbg.value(metadata i32 %17, metadata !3614, metadata !DIExpression()), !dbg !3615
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #12, !dbg !3638
  br label %18, !dbg !3639

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !3615
  ret i32 %19, !dbg !3640
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !280, metadata !DIExpression()), !dbg !3641
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !3642
  %3 = load void ()*, void ()** %2, align 4, !dbg !3642
  ret void ()* %3, !dbg !3643
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !3644 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !3650, !range !3245
  %2 = icmp eq i8 %1, 0, !dbg !3650
  br i1 %2, label %8, label %3, !dbg !3651

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !3652
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !3654
  br i1 %5, label %8, label %6, !dbg !3655

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !3656
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !3658
  br label %8, !dbg !3659

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #11, !dbg !3660, !range !3254
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #11, !dbg !3661
  ret void, !dbg !3662
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !3663 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !3668, !range !3245
  %2 = icmp eq i8 %1, 0, !dbg !3668
  br i1 %2, label %8, label %3, !dbg !3669

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !3670
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !3672
  br i1 %5, label %8, label %6, !dbg !3673

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !3674
  tail call void %4(i32 noundef 2, i8* noundef %7) #12, !dbg !3676
  br label %8, !dbg !3677

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #11, !dbg !3678, !range !3254
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #11, !dbg !3679
  ret void, !dbg !3680
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !3681 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()), !dbg !3692
  call void @llvm.dbg.value(metadata i1 %1, metadata !3686, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3692
  %5 = bitcast i32* %3 to i8*, !dbg !3693
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3693
  %6 = bitcast i32* %4 to i8*, !dbg !3693
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #13, !dbg !3693
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !3689, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !3692
  br i1 %1, label %7, label %12, !dbg !3694

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !3689, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !3692
  call void @llvm.dbg.value(metadata i32* %3, metadata !3687, metadata !DIExpression(DW_OP_deref)), !dbg !3692
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #12, !dbg !3695
  %8 = load i32, i32* %3, align 4, !dbg !3698
  call void @llvm.dbg.value(metadata i32 %8, metadata !3687, metadata !DIExpression()), !dbg !3692
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !3700
  %10 = load i32, i32* %9, align 4, !dbg !3700
  %11 = icmp ult i32 %8, %10, !dbg !3701
  br i1 %11, label %22, label %20, !dbg !3702

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !3688, metadata !DIExpression(DW_OP_deref)), !dbg !3692
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #12, !dbg !3703
  %13 = load i32, i32* %4, align 4, !dbg !3705
  call void @llvm.dbg.value(metadata i32 %13, metadata !3688, metadata !DIExpression()), !dbg !3692
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !3707
  %15 = load i32, i32* %14, align 4, !dbg !3707
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !3708
  %17 = load i32, i32* %16, align 4, !dbg !3708
  %18 = sub i32 %15, %17, !dbg !3709
  %19 = icmp ult i32 %13, %18, !dbg !3710
  br i1 %19, label %22, label %20, !dbg !3711

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #11, !dbg !3712, !range !3470
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #12, !dbg !3712
  br label %22, !dbg !3713

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #13, !dbg !3713
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #13, !dbg !3713
  ret void, !dbg !3713
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !3714 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !3719, !range !3245
  %2 = icmp eq i8 %1, 0, !dbg !3719
  br i1 %2, label %11, label %3, !dbg !3720

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #11, !dbg !3721
  %5 = icmp eq i32 %4, 0, !dbg !3722
  br i1 %5, label %11, label %6, !dbg !3723

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !3724
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !3726
  br i1 %8, label %11, label %9, !dbg !3727

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !3728
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !3730
  br label %11, !dbg !3731

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #11, !dbg !3732, !range !3254
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3733
  ret void, !dbg !3734
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !3735 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !3740, !range !3245
  %2 = icmp eq i8 %1, 0, !dbg !3740
  br i1 %2, label %11, label %3, !dbg !3741

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #11, !dbg !3742
  %5 = icmp eq i32 %4, 0, !dbg !3743
  br i1 %5, label %11, label %6, !dbg !3744

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !3745
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !3747
  br i1 %8, label %11, label %9, !dbg !3748

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !3749
  tail call void %7(i32 noundef 1, i8* noundef %10) #12, !dbg !3751
  br label %11, !dbg !3752

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #11, !dbg !3753, !range !3254
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #11, !dbg !3754
  ret void, !dbg !3755
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3760, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i32 %1, metadata !3761, metadata !DIExpression()), !dbg !3762
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3763
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !3765
  br i1 %5, label %6, label %10, !dbg !3765

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !3766
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !3767
  store i32 %1, i32* %8, align 4, !dbg !3768
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #11, !dbg !3769
  br label %10, !dbg !3770

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !3762
  ret i32 %11, !dbg !3771
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !3772 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3778, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !3779, metadata !DIExpression()), !dbg !3780
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3781
  br i1 %3, label %4, label %28, !dbg !3783

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #11, !dbg !3784
  br i1 %5, label %6, label %28, !dbg !3786

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !3787
  store i8 1, i8* %7, align 4, !dbg !3788
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !3789
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !3790
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !3791
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #12, !dbg !3792
  tail call void @DMA_Init() #12, !dbg !3793
  tail call void @DMA_Vfifo_init() #12, !dbg !3794
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #11, !dbg !3795
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !3796
  %14 = load i8*, i8** %13, align 4, !dbg !3796
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !3797
  %16 = load i32, i32* %15, align 4, !dbg !3797
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !3798
  %18 = load i32, i32* %17, align 4, !dbg !3798
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !3799
  %20 = load i32, i32* %19, align 4, !dbg !3799
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #11, !dbg !3800
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #12, !dbg !3801
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !3802
  %23 = load i8*, i8** %22, align 4, !dbg !3802
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !3803
  %25 = load i32, i32* %24, align 4, !dbg !3803
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !3804
  %27 = load i32, i32* %26, align 4, !dbg !3804
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #12, !dbg !3805
  br label %28, !dbg !3806

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !3780
  ret i32 %29, !dbg !3807
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #4 !dbg !3808 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !3812, metadata !DIExpression()), !dbg !3813
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !3814
  br i1 %2, label %27, label %3, !dbg !3816

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !3817
  %5 = load i8*, i8** %4, align 4, !dbg !3817
  %6 = icmp eq i8* %5, null, !dbg !3819
  br i1 %6, label %27, label %7, !dbg !3820

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !3821
  %9 = load i32, i32* %8, align 4, !dbg !3821
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !3823
  %11 = load i32, i32* %10, align 4, !dbg !3823
  %12 = icmp ult i32 %9, %11, !dbg !3824
  br i1 %12, label %27, label %13, !dbg !3825

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !3826
  %15 = load i32, i32* %14, align 4, !dbg !3826
  %16 = icmp ult i32 %9, %15, !dbg !3828
  br i1 %16, label %27, label %17, !dbg !3829

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !3830
  %19 = load i8*, i8** %18, align 4, !dbg !3830
  %20 = icmp eq i8* %19, null, !dbg !3832
  br i1 %20, label %27, label %21, !dbg !3833

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !3834
  %23 = load i32, i32* %22, align 4, !dbg !3834
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !3836
  %25 = load i32, i32* %24, align 4, !dbg !3836
  %26 = icmp uge i32 %23, %25, !dbg !3837
  br label %27, !dbg !3838

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !3813
  ret i1 %28, !dbg !3839
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !3840 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3844, metadata !DIExpression()), !dbg !3846
  %2 = tail call i32 @top_mcu_freq_get() #12, !dbg !3847
  %3 = udiv i32 %2, 1000000, !dbg !3848
  call void @llvm.dbg.value(metadata i32 %3, metadata !3845, metadata !DIExpression()), !dbg !3846
  %4 = mul i32 %3, %0, !dbg !3849
  ret i32 %4, !dbg !3850
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3851 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3855
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3856
  br i1 %2, label %3, label %8, !dbg !3858

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !3859
  %5 = icmp eq i32 %0, 1, !dbg !3859
  %6 = select i1 %5, i32 1, i32 2, !dbg !3859
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3859
  call void @llvm.dbg.value(metadata i32 %7, metadata !3854, metadata !DIExpression()), !dbg !3855
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #12, !dbg !3860
  br label %8, !dbg !3861

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3855
  ret i32 %9, !dbg !3862
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !3863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3867, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8 %1, metadata !3868, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8 %2, metadata !3869, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8 %3, metadata !3870, metadata !DIExpression()), !dbg !3872
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3873
  br i1 %5, label %6, label %11, !dbg !3875

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !3876
  %8 = icmp eq i32 %0, 1, !dbg !3876
  %9 = select i1 %8, i32 1, i32 2, !dbg !3876
  %10 = select i1 %7, i32 0, i32 %9, !dbg !3876
  call void @llvm.dbg.value(metadata i32 %10, metadata !3871, metadata !DIExpression()), !dbg !3872
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #12, !dbg !3877
  br label %11, !dbg !3878

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !3872
  ret i32 %12, !dbg !3879
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !3880 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3882, metadata !DIExpression()), !dbg !3884
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3885
  br i1 %2, label %3, label %8, !dbg !3887

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !3888
  %5 = icmp eq i32 %0, 1, !dbg !3888
  %6 = select i1 %5, i32 1, i32 2, !dbg !3888
  %7 = select i1 %4, i32 0, i32 %6, !dbg !3888
  call void @llvm.dbg.value(metadata i32 %7, metadata !3883, metadata !DIExpression()), !dbg !3884
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #12, !dbg !3889
  br label %8, !dbg !3890

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3884
  ret i32 %9, !dbg !3891
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3892 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i32 %1, metadata !3897, metadata !DIExpression()), !dbg !3898
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #11, !dbg !3899
  br i1 %3, label %4, label %8, !dbg !3901

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !3902
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #11, !dbg !3904
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #12, !dbg !3904
  br label %8, !dbg !3905

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !3898
  ret i32 %9, !dbg !3905
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_mode_init() local_unnamed_addr #0 !dbg !3906 {
  call void @llvm.dbg.declare(metadata [10 x i32]* @__const.gpio_mode_init.mode_temp, metadata !3909, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.value(metadata i32 0, metadata !3908, metadata !DIExpression()), !dbg !3914
  br label %1, !dbg !3915

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 0, %0 ], [ %8, %1 ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !3908, metadata !DIExpression()), !dbg !3914
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* @__const.gpio_mode_init.mode_temp, i32 0, i32 %2, !dbg !3917
  %4 = load i32, i32* %3, align 4, !dbg !3917
  %5 = shl nuw nsw i32 %2, 2, !dbg !3917
  %6 = add nuw nsw i32 %5, -2130563040, !dbg !3917
  %7 = inttoptr i32 %6 to i32*, !dbg !3917
  store volatile i32 %4, i32* %7, align 4, !dbg !3917
  %8 = add nuw nsw i32 %2, 1, !dbg !3920
  call void @llvm.dbg.value(metadata i32 %8, metadata !3908, metadata !DIExpression()), !dbg !3914
  %9 = icmp eq i32 %8, 10, !dbg !3921
  br i1 %9, label %10, label %1, !dbg !3915, !llvm.loop !3922

10:                                               ; preds = %1
  ret void, !dbg !3924
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_oe_init() local_unnamed_addr #0 !dbg !3925 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3927, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 0, metadata !3927, metadata !DIExpression()), !dbg !3930
  store volatile i32 -419430160, i32* inttoptr (i32 -2097106800 to i32*), align 16, !dbg !3931
  call void @llvm.dbg.value(metadata i32 1, metadata !3927, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 1, metadata !3927, metadata !DIExpression()), !dbg !3930
  store volatile i32 100663503, i32* inttoptr (i32 -2097106784 to i32*), align 32, !dbg !3931
  call void @llvm.dbg.value(metadata i32 2, metadata !3927, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 2, metadata !3927, metadata !DIExpression()), !dbg !3930
  store volatile i32 0, i32* inttoptr (i32 -2097106768 to i32*), align 16, !dbg !3931
  call void @llvm.dbg.value(metadata i32 3, metadata !3927, metadata !DIExpression()), !dbg !3930
  ret void, !dbg !3935
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_ies_init() local_unnamed_addr #0 !dbg !3936 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3938, metadata !DIExpression()), !dbg !3940
  store volatile i32 419430159, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !3941
  call void @llvm.dbg.value(metadata i32 1, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 1, metadata !3938, metadata !DIExpression()), !dbg !3940
  store volatile i32 -100663504, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !3941
  call void @llvm.dbg.value(metadata i32 2, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 2, metadata !3938, metadata !DIExpression()), !dbg !3940
  store volatile i32 511, i32* inttoptr (i32 -2097106680 to i32*), align 8, !dbg !3941
  call void @llvm.dbg.value(metadata i32 3, metadata !3938, metadata !DIExpression()), !dbg !3940
  %1 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3945
  %2 = and i32 %1, -3, !dbg !3945
  store volatile i32 %2, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3945
  %3 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3946
  %4 = or i32 %3, 2, !dbg !3946
  store volatile i32 %4, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3946
  %5 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3947
  %6 = or i32 %5, 2048, !dbg !3947
  store volatile i32 %6, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3947
  %7 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3948
  %8 = and i32 %7, -3, !dbg !3948
  store volatile i32 %8, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3948
  %9 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3949
  %10 = or i32 %9, 2, !dbg !3949
  store volatile i32 %10, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3949
  %11 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3950
  %12 = or i32 %11, 2048, !dbg !3950
  store volatile i32 %12, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3950
  %13 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3951
  %14 = and i32 %13, -3, !dbg !3951
  store volatile i32 %14, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3951
  %15 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3952
  store volatile i32 %15, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3952
  %16 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3953
  %17 = or i32 %16, 2048, !dbg !3953
  store volatile i32 %17, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3953
  %18 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3954
  %19 = and i32 %18, -3, !dbg !3954
  store volatile i32 %19, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3954
  %20 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3955
  store volatile i32 %20, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3955
  %21 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3956
  %22 = or i32 %21, 2048, !dbg !3956
  store volatile i32 %22, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3956
  %23 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3957
  %24 = and i32 %23, -3, !dbg !3957
  store volatile i32 %24, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3957
  %25 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3958
  store volatile i32 %25, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3958
  %26 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3959
  %27 = or i32 %26, 2048, !dbg !3959
  store volatile i32 %27, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3959
  %28 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3960
  %29 = and i32 %28, -3, !dbg !3960
  store volatile i32 %29, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3960
  %30 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3961
  store volatile i32 %30, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3961
  %31 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3962
  %32 = or i32 %31, 2048, !dbg !3962
  store volatile i32 %32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3962
  ret void, !dbg !3963
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_pull_up_init() local_unnamed_addr #0 !dbg !3964 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3966, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 0, metadata !3966, metadata !DIExpression()), !dbg !3968
  store volatile i32 4, i32* inttoptr (i32 -2097106944 to i32*), align 4096, !dbg !3969
  call void @llvm.dbg.value(metadata i32 1, metadata !3966, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 1, metadata !3966, metadata !DIExpression()), !dbg !3968
  store volatile i32 16, i32* inttoptr (i32 -2097106928 to i32*), align 16, !dbg !3969
  call void @llvm.dbg.value(metadata i32 2, metadata !3966, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 2, metadata !3966, metadata !DIExpression()), !dbg !3968
  store volatile i32 0, i32* inttoptr (i32 -2097106912 to i32*), align 32, !dbg !3969
  call void @llvm.dbg.value(metadata i32 3, metadata !3966, metadata !DIExpression()), !dbg !3968
  %1 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3973
  %2 = and i32 %1, -29, !dbg !3973
  store volatile i32 %2, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !3973
  %3 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3974
  %4 = and i32 %3, -29, !dbg !3974
  store volatile i32 %4, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !3974
  %5 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3975
  %6 = and i32 %5, -29, !dbg !3975
  store volatile i32 %6, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !3975
  %7 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3976
  %8 = and i32 %7, -29, !dbg !3976
  store volatile i32 %8, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !3976
  %9 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3977
  %10 = and i32 %9, -29, !dbg !3977
  store volatile i32 %10, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !3977
  %11 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3978
  %12 = and i32 %11, -29, !dbg !3978
  store volatile i32 %12, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !3978
  ret void, !dbg !3979
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_pull_down_init() local_unnamed_addr #0 !dbg !3980 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 0, metadata !3982, metadata !DIExpression()), !dbg !3984
  store volatile i32 16776960, i32* inttoptr (i32 -2097106896 to i32*), align 16, !dbg !3985
  call void @llvm.dbg.value(metadata i32 1, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 1, metadata !3982, metadata !DIExpression()), !dbg !3984
  store volatile i32 -100663552, i32* inttoptr (i32 -2097106880 to i32*), align 64, !dbg !3985
  call void @llvm.dbg.value(metadata i32 2, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i32 2, metadata !3982, metadata !DIExpression()), !dbg !3984
  store volatile i32 511, i32* inttoptr (i32 -2097106864 to i32*), align 16, !dbg !3985
  call void @llvm.dbg.value(metadata i32 3, metadata !3982, metadata !DIExpression()), !dbg !3984
  ret void, !dbg !3989
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @gpio_output_init() local_unnamed_addr #0 !dbg !3990 {
  call void @llvm.dbg.value(metadata i32 0, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 0, metadata !3992, metadata !DIExpression()), !dbg !3994
  store volatile i32 64, i32* inttoptr (i32 -2097106848 to i32*), align 32, !dbg !3995
  call void @llvm.dbg.value(metadata i32 1, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 1, metadata !3992, metadata !DIExpression()), !dbg !3994
  store volatile i32 64, i32* inttoptr (i32 -2097106832 to i32*), align 16, !dbg !3995
  call void @llvm.dbg.value(metadata i32 2, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32 2, metadata !3992, metadata !DIExpression()), !dbg !3994
  store volatile i32 0, i32* inttoptr (i32 -2097106816 to i32*), align 128, !dbg !3995
  call void @llvm.dbg.value(metadata i32 3, metadata !3992, metadata !DIExpression()), !dbg !3994
  ret void, !dbg !3999
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @bsp_ept_gpio_set_control_by_cm4() local_unnamed_addr #0 !dbg !4000 {
  store volatile i32 -1, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !4001
  store volatile i32 -1, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !4002
  store volatile i32 50397183, i32* inttoptr (i32 -2130571128 to i32*), align 8, !dbg !4003
  ret void, !dbg !4004
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @bsp_ept_gpio_setting_init() local_unnamed_addr #0 !dbg !4005 {
  tail call void @gpio_mode_init() #11, !dbg !4006
  tail call void @gpio_oe_init() #11, !dbg !4007
  tail call void @gpio_ies_init() #11, !dbg !4008
  tail call void @gpio_pull_up_init() #11, !dbg !4009
  tail call void @gpio_pull_down_init() #11, !dbg !4010
  tail call void @gpio_output_init() #11, !dbg !4011
  ret void, !dbg !4012
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !4013 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4017, metadata !DIExpression()), !dbg !4018
  %2 = trunc i32 %0 to i8, !dbg !4019
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #12, !dbg !4020
  ret i32 %0, !dbg !4021
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #10 !dbg !4022 {
  tail call fastcc void @SystemClock_Config() #11, !dbg !4023
  tail call void @SystemCoreClockUpdate() #12, !dbg !4024
  tail call fastcc void @prvSetupHardware() #11, !dbg !4025
  tail call void asm sideeffect "cpsie i", "~{memory}"() #13, !dbg !4026, !srcloc !4029
  tail call void asm sideeffect "cpsie f", "~{memory}"() #13, !dbg !4030, !srcloc !4033
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)) #12, !dbg !4034
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0)) #12, !dbg !4035
  tail call void @bsp_ept_gpio_setting_init() #12, !dbg !4036
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0)) #12, !dbg !4037
  %4 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #12, !dbg !4038
  br label %5, !dbg !4039

5:                                                ; preds = %0, %5
  br label %5, !dbg !4039, !llvm.loop !4040
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !4042 {
  tail call void @top_xtal_init() #12, !dbg !4043
  ret void, !dbg !4044
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !4045 {
  tail call fastcc void @log_uart_init() #11, !dbg !4046
  ret void, !dbg !4047
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #3 !dbg !4048 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4058
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #13, !dbg !4058
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4050, metadata !DIExpression()), !dbg !4059
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #12, !dbg !4060
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #12, !dbg !4061
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #12, !dbg !4062
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #12, !dbg !4063
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4064
  store i32 9, i32* %7, align 4, !dbg !4065
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4066
  store i32 3, i32* %8, align 4, !dbg !4067
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4068
  store i32 0, i32* %9, align 4, !dbg !4069
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4070
  store i32 0, i32* %10, align 4, !dbg !4071
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #12, !dbg !4072
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #13, !dbg !4073
  ret void, !dbg !4073
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !4074 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4076, metadata !DIExpression()), !dbg !4078
  %2 = add i32 %0, -1, !dbg !4079
  %3 = icmp ugt i32 %2, 16777215, !dbg !4081
  br i1 %3, label %8, label %4, !dbg !4082

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4083
  call void @llvm.dbg.value(metadata i32 %5, metadata !4077, metadata !DIExpression()), !dbg !4078
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4084
  %7 = and i32 %6, -4, !dbg !4084
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4084
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4085
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4086
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4087
  br label %8, !dbg !4088

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4078
  ret i32 %9, !dbg !4089
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !4090 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4091
  ret void, !dbg !4092
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !4093 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4094
  ret i32 %1, !dbg !4095
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !4096 {
  %1 = tail call i32 @top_mcu_freq_get() #12, !dbg !4097
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4098
  ret void, !dbg !4099
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !4100 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4101
  %2 = or i32 %1, 15728640, !dbg !4101
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4101
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4102
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4103
  %4 = or i32 %3, 458752, !dbg !4103
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4103
  ret void, !dbg !4104
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !4105 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4106
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4107
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4108
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4109
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !4110
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4111
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4112
  ret void, !dbg !4113
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !4114 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4116, metadata !DIExpression()), !dbg !4117
  ret i32 0, !dbg !4118
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !4119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4169, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !4170, metadata !DIExpression()), !dbg !4171
  ret i32 0, !dbg !4172
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !4173 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4175, metadata !DIExpression()), !dbg !4176
  ret i32 1, !dbg !4177
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4178 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4182, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i32 %1, metadata !4183, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i32 %2, metadata !4184, metadata !DIExpression()), !dbg !4185
  ret i32 0, !dbg !4186
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4187 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4191, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i32 %1, metadata !4192, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i32 %2, metadata !4193, metadata !DIExpression()), !dbg !4194
  ret i32 -1, !dbg !4195
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4196 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4200, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i8* %1, metadata !4201, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i32 %2, metadata !4202, metadata !DIExpression()), !dbg !4203
  ret i32 0, !dbg !4204
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !4205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4207, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i8* %1, metadata !4208, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i32 %2, metadata !4209, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i32 0, metadata !4210, metadata !DIExpression()), !dbg !4211
  %4 = icmp sgt i32 %2, 0, !dbg !4212
  br i1 %4, label %5, label %14, !dbg !4215

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4210, metadata !DIExpression()), !dbg !4211
  call void @llvm.dbg.value(metadata i8* %7, metadata !4208, metadata !DIExpression()), !dbg !4211
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !4216
  call void @llvm.dbg.value(metadata i8* %8, metadata !4208, metadata !DIExpression()), !dbg !4211
  %9 = load i8, i8* %7, align 1, !dbg !4218
  %10 = zext i8 %9 to i32, !dbg !4218
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #12, !dbg !4219
  %12 = add nuw nsw i32 %6, 1, !dbg !4220
  call void @llvm.dbg.value(metadata i32 %12, metadata !4210, metadata !DIExpression()), !dbg !4211
  %13 = icmp eq i32 %12, %2, !dbg !4212
  br i1 %13, label %14, label %5, !dbg !4215, !llvm.loop !4221

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !4223
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !398 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !601, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %1, metadata !602, metadata !DIExpression()), !dbg !4224
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #13, !dbg !4225, !srcloc !4226
  call void @llvm.dbg.value(metadata i8* %3, metadata !604, metadata !DIExpression()), !dbg !4224
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !4227
  %5 = icmp eq i8* %4, null, !dbg !4229
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !4230
  call void @llvm.dbg.value(metadata i8* %6, metadata !603, metadata !DIExpression()), !dbg !4224
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !4231
  %8 = icmp ult i8* %3, %7, !dbg !4233
  %9 = xor i1 %8, true, !dbg !4234
  %10 = or i1 %5, %9, !dbg !4234
  br i1 %10, label %11, label %13, !dbg !4234

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !4235
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !4234
  br label %13, !dbg !4234

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !4235
  ret i8* %14, !dbg !4234
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #10 !dbg !4236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4238, metadata !DIExpression()), !dbg !4239
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #12, !dbg !4240
  br label %3, !dbg !4241

3:                                                ; preds = %1, %3
  br label %3, !dbg !4241, !llvm.loop !4242
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4244 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4248, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i32 %1, metadata !4249, metadata !DIExpression()), !dbg !4250
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.13, i32 0, i32 0), i32 noundef %1) #12, !dbg !4251
  ret i32 -1, !dbg !4252
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !4253 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.14, i32 0, i32 0)) #12, !dbg !4258
  ret i32 0, !dbg !4259
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

!llvm.dbg.cu = !{!621, !633, !714, !759, !2, !23, !793, !61, !795, !213, !866, !869, !328, !596, !607}
!llvm.ident = !{!872, !872, !872, !872, !872, !872, !872, !872, !872, !872, !872, !872, !872, !872, !872}
!llvm.module.flags = !{!873, !874, !875, !876, !877, !878, !879, !880, !881}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !2, file: !3, line: 43, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!4 = !{!5, !8, !10, !16}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !9, line: 62, baseType: !7)
!9 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
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
!24 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!25 = !{!26, !32}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 71, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "UART_PORT0", value: 0)
!30 = !DIEnumerator(name: "UART_PORT1", value: 1)
!31 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 129, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
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
!60 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !61, file: !62, line: 53, type: !200, isLocal: false, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !118, globals: !199, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!63 = !{!64, !73}
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 152, baseType: !66, size: 32, elements: !67)
!65 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !{!68, !69, !70, !71, !72}
!68 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!69 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!70 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!71 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!72 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !74, line: 47, baseType: !66, size: 32, elements: !75)
!74 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!76 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!77 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!78 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!79 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!80 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!81 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!82 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!83 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!84 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!85 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!86 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!87 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!88 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!89 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!90 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!91 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!92 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!93 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!94 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!95 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!96 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!97 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!98 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!99 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!100 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!101 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!102 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!103 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!104 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!105 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!106 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!107 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!108 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!109 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!110 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!111 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!112 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!113 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!114 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!115 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!116 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!117 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!118 = !{!119, !121, !12, !122, !124, !160}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !74, line: 97, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !74, line: 95, baseType: !73)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 44, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !15, line: 77, baseType: !66)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !126, line: 378, baseType: !127)
!126 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 363, size: 28704, elements: !128)
!128 = !{!129, !133, !137, !138, !139, !140, !141, !142, !143, !144, !148, !155, !159}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !127, file: !126, line: 365, baseType: !130, size: 256)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !127, file: !126, line: 366, baseType: !134, size: 768, offset: 256)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 768, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 24)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !127, file: !126, line: 367, baseType: !130, size: 256, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !127, file: !126, line: 368, baseType: !134, size: 768, offset: 1280)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !127, file: !126, line: 369, baseType: !130, size: 256, offset: 2048)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !127, file: !126, line: 370, baseType: !134, size: 768, offset: 2304)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !127, file: !126, line: 371, baseType: !130, size: 256, offset: 3072)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !127, file: !126, line: 372, baseType: !134, size: 768, offset: 3328)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !127, file: !126, line: 373, baseType: !130, size: 256, offset: 4096)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !127, file: !126, line: 374, baseType: !145, size: 1792, offset: 4352)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1792, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 56)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !127, file: !126, line: 375, baseType: !149, size: 1920, offset: 6144)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 1920, elements: !153)
!150 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 43, baseType: !55)
!153 = !{!154}
!154 = !DISubrange(count: 240)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !127, file: !126, line: 376, baseType: !156, size: 20608, offset: 8064)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 20608, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 644)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !127, file: !126, line: 377, baseType: !11, size: 32, offset: 28672)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !126, line: 418, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 395, size: 1120, elements: !163)
!163 = !{!164, !166, !167, !168, !169, !170, !171, !175, !176, !177, !178, !179, !180, !181, !182, !186, !187, !188, !192, !196, !198}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !162, file: !126, line: 397, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !162, file: !126, line: 398, baseType: !11, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !162, file: !126, line: 399, baseType: !11, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !162, file: !126, line: 400, baseType: !11, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !162, file: !126, line: 401, baseType: !11, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !162, file: !126, line: 402, baseType: !11, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !162, file: !126, line: 403, baseType: !172, size: 96, offset: 192)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 96, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 12)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !162, file: !126, line: 404, baseType: !11, size: 32, offset: 288)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !162, file: !126, line: 405, baseType: !11, size: 32, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !162, file: !126, line: 406, baseType: !11, size: 32, offset: 352)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !162, file: !126, line: 407, baseType: !11, size: 32, offset: 384)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !162, file: !126, line: 408, baseType: !11, size: 32, offset: 416)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !162, file: !126, line: 409, baseType: !11, size: 32, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !162, file: !126, line: 410, baseType: !11, size: 32, offset: 480)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !162, file: !126, line: 411, baseType: !183, size: 64, offset: 512)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 64, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 2)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !162, file: !126, line: 412, baseType: !165, size: 32, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !162, file: !126, line: 413, baseType: !165, size: 32, offset: 608)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !162, file: !126, line: 414, baseType: !189, size: 128, offset: 640)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 128, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 4)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !162, file: !126, line: 415, baseType: !193, size: 160, offset: 768)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 160, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 5)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !162, file: !126, line: 416, baseType: !197, size: 160, offset: 928)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !194)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !162, file: !126, line: 417, baseType: !11, size: 32, offset: 1088)
!199 = !{!59}
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 6144, elements: !209)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !62, line: 50, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 47, size: 64, elements: !203)
!203 = !{!204, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !202, file: !62, line: 48, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 32)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !119}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !202, file: !62, line: 49, baseType: !12, size: 32, offset: 32)
!209 = !{!210}
!210 = !DISubrange(count: 96)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !213, file: !214, line: 77, type: !283, isLocal: true, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !266, globals: !268, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!215 = !{!216, !224, !230, !246, !252, !256, !26, !32, !261}
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 345, baseType: !66, size: 32, elements: !218)
!217 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!220 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!221 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!222 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!223 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !225, line: 109, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!228 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!229 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 302, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!232 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!233 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!234 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!235 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!236 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!237 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!238 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!239 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!240 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!241 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!242 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!243 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!244 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!245 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 321, baseType: !7, size: 32, elements: !247)
!247 = !{!248, !249, !250, !251}
!248 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!249 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!250 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!251 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 330, baseType: !7, size: 32, elements: !253)
!253 = !{!254, !255}
!254 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!255 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 337, baseType: !7, size: 32, elements: !257)
!257 = !{!258, !259, !260}
!258 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!259 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!260 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 355, baseType: !66, size: 32, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!264 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!265 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!266 = !{!7, !121, !55, !267, !151}
!267 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!268 = !{!211, !269}
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "func_tbl", scope: !271, file: !214, line: 536, type: !281, isLocal: true, isDefinition: true)
!271 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !214, file: !214, line: 534, type: !272, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !279)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !278}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !33, line: 197, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32)
!276 = !DISubroutineType(types: !277)
!277 = !{null}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !225, line: 113, baseType: !224)
!279 = !{!280}
!280 = !DILocalVariable(name: "uart_port", arg: 1, scope: !271, file: !214, line: 534, type: !278)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 64, elements: !184)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1024, elements: !184)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !214, line: 75, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 68, size: 512, elements: !286)
!286 = !{!287, !289, !301, !302, !313, !314}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !285, file: !214, line: 69, baseType: !288, size: 8)
!288 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !285, file: !214, line: 70, baseType: !290, size: 128, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !217, line: 378, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 373, size: 128, elements: !292)
!292 = !{!293, !295, !297, !299}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !291, file: !217, line: 374, baseType: !294, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !217, line: 317, baseType: !230)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !291, file: !217, line: 375, baseType: !296, size: 32, offset: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !217, line: 326, baseType: !246)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !291, file: !217, line: 376, baseType: !298, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !217, line: 333, baseType: !252)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !291, file: !217, line: 377, baseType: !300, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !217, line: 341, baseType: !256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !285, file: !214, line: 71, baseType: !288, size: 8, offset: 160)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !285, file: !214, line: 72, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !214, line: 66, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !214, line: 63, size: 64, elements: !305)
!305 = !{!306, !312}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !304, file: !214, line: 64, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !217, line: 410, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 32)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311, !121}
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !217, line: 359, baseType: !261)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !304, file: !214, line: 65, baseType: !121, size: 32, offset: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !285, file: !214, line: 73, baseType: !288, size: 8, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !285, file: !214, line: 74, baseType: !315, size: 224, offset: 288)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !217, line: 390, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 382, size: 224, elements: !317)
!317 = !{!318, !320, !321, !322, !323, !324, !325}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !316, file: !217, line: 383, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !316, file: !217, line: 384, baseType: !12, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !316, file: !217, line: 385, baseType: !12, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !316, file: !217, line: 386, baseType: !319, size: 32, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !316, file: !217, line: 387, baseType: !12, size: 32, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !316, file: !217, line: 388, baseType: !12, size: 32, offset: 160)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !316, file: !217, line: 389, baseType: !12, size: 32, offset: 192)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !328, file: !329, line: 59, type: !12, isLocal: false, isDefinition: true)
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !330, globals: !393, splitDebugInlining: false, nameTableKind: None)
!329 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!330 = !{!331, !339, !364}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !126, line: 656, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 650, size: 128, elements: !334)
!334 = !{!335, !336, !337, !338}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !333, file: !126, line: 652, baseType: !11, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !333, file: !126, line: 653, baseType: !11, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !333, file: !126, line: 654, baseType: !11, size: 32, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !333, file: !126, line: 655, baseType: !165, size: 32, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !126, line: 418, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 395, size: 1120, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !341, file: !126, line: 397, baseType: !165, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !341, file: !126, line: 398, baseType: !11, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !341, file: !126, line: 399, baseType: !11, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !341, file: !126, line: 400, baseType: !11, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !341, file: !126, line: 401, baseType: !11, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !341, file: !126, line: 402, baseType: !11, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !341, file: !126, line: 403, baseType: !172, size: 96, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !341, file: !126, line: 404, baseType: !11, size: 32, offset: 288)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !341, file: !126, line: 405, baseType: !11, size: 32, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !341, file: !126, line: 406, baseType: !11, size: 32, offset: 352)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !341, file: !126, line: 407, baseType: !11, size: 32, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !341, file: !126, line: 408, baseType: !11, size: 32, offset: 416)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !341, file: !126, line: 409, baseType: !11, size: 32, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !341, file: !126, line: 410, baseType: !11, size: 32, offset: 480)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !341, file: !126, line: 411, baseType: !183, size: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !341, file: !126, line: 412, baseType: !165, size: 32, offset: 576)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !341, file: !126, line: 413, baseType: !165, size: 32, offset: 608)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !341, file: !126, line: 414, baseType: !189, size: 128, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !341, file: !126, line: 415, baseType: !193, size: 160, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !341, file: !126, line: 416, baseType: !197, size: 160, offset: 928)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !341, file: !126, line: 417, baseType: !11, size: 32, offset: 1088)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !366, line: 72, baseType: !367)
!366 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 56, size: 525312, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !383, !384, !388, !392}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !367, file: !366, line: 57, baseType: !11, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !367, file: !366, line: 58, baseType: !11, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !367, file: !366, line: 59, baseType: !11, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !367, file: !366, line: 60, baseType: !11, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !367, file: !366, line: 61, baseType: !11, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !367, file: !366, line: 62, baseType: !11, size: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !367, file: !366, line: 63, baseType: !11, size: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !367, file: !366, line: 64, baseType: !11, size: 32, offset: 224)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !367, file: !366, line: 65, baseType: !11, size: 32, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !367, file: !366, line: 66, baseType: !11, size: 32, offset: 288)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !367, file: !366, line: 67, baseType: !380, size: 32, offset: 320)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 1)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !367, file: !366, line: 68, baseType: !11, size: 32, offset: 352)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !367, file: !366, line: 69, baseType: !385, size: 523904, offset: 384)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 523904, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 16372)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !367, file: !366, line: 70, baseType: !389, size: 512, offset: 524288)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 16)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !367, file: !366, line: 71, baseType: !389, size: 512, offset: 524800)
!393 = !{!326, !394}
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !328, file: !329, line: 61, type: !11, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "heap_end", scope: !398, file: !399, line: 70, type: !404, isLocal: true, isDefinition: true)
!398 = distinct !DISubprogram(name: "_sbrk_r", scope: !399, file: !399, line: 67, type: !400, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !600)
!399 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !405, !595}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !403, line: 123, baseType: !404)
!403 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 32)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !407, line: 377, size: 1920, elements: !408)
!407 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!408 = !{!409, !410, !484, !485, !486, !487, !488, !489, !490, !493, !514, !518, !519, !520, !521, !531, !544, !545, !550, !569, !570, !577, !578, !594}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !406, file: !407, line: 381, baseType: !66, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !406, file: !407, line: 386, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !407, line: 292, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !407, line: 186, size: 832, elements: !414)
!414 = !{!415, !417, !418, !419, !421, !422, !427, !428, !429, !430, !434, !440, !447, !451, !452, !453, !454, !458, !460, !461, !462, !464, !470, !483}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !413, file: !407, line: 187, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !413, file: !407, line: 188, baseType: !66, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !413, file: !407, line: 189, baseType: !66, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !413, file: !407, line: 190, baseType: !420, size: 16, offset: 96)
!420 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !413, file: !407, line: 191, baseType: !420, size: 16, offset: 112)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !413, file: !407, line: 192, baseType: !423, size: 64, offset: 128)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !407, line: 122, size: 64, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !423, file: !407, line: 123, baseType: !416, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !423, file: !407, line: 124, baseType: !66, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !413, file: !407, line: 193, baseType: !66, size: 32, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !413, file: !407, line: 196, baseType: !405, size: 32, offset: 224)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !413, file: !407, line: 200, baseType: !121, size: 32, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !413, file: !407, line: 202, baseType: !431, size: 32, offset: 288)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!432 = !DISubroutineType(types: !433)
!433 = !{!66, !405, !121, !404, !66}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !413, file: !407, line: 204, baseType: !435, size: 32, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 32)
!436 = !DISubroutineType(types: !437)
!437 = !{!66, !405, !121, !438, !66}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !413, file: !407, line: 207, baseType: !441, size: 32, offset: 352)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 32)
!442 = !DISubroutineType(types: !443)
!443 = !{!444, !405, !121, !444, !66}
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !445, line: 116, baseType: !446)
!445 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!446 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !413, file: !407, line: 208, baseType: !448, size: 32, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 32)
!449 = !DISubroutineType(types: !450)
!450 = !{!66, !405, !121}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !413, file: !407, line: 211, baseType: !423, size: 64, offset: 416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !413, file: !407, line: 212, baseType: !416, size: 32, offset: 480)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !413, file: !407, line: 213, baseType: !66, size: 32, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !413, file: !407, line: 216, baseType: !455, size: 24, offset: 544)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 24, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 3)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !413, file: !407, line: 217, baseType: !459, size: 8, offset: 568)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !381)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !413, file: !407, line: 220, baseType: !423, size: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !413, file: !407, line: 223, baseType: !66, size: 32, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !413, file: !407, line: 224, baseType: !463, size: 32, offset: 672)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !445, line: 46, baseType: !446)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !413, file: !407, line: 231, baseType: !465, size: 32, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !407, line: 35, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !467, line: 34, baseType: !468)
!467 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 32)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !467, line: 33, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !413, file: !407, line: 233, baseType: !471, size: 64, offset: 736)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !445, line: 170, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !445, line: 162, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !472, file: !445, line: 164, baseType: !66, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !472, file: !445, line: 169, baseType: !476, size: 32, offset: 32)
!476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !445, line: 165, size: 32, elements: !477)
!477 = !{!478, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !476, file: !445, line: 167, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !480, line: 116, baseType: !66)
!480 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!481 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !476, file: !445, line: 168, baseType: !482, size: 32)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !190)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !413, file: !407, line: 234, baseType: !66, size: 32, offset: 800)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !406, file: !407, line: 386, baseType: !411, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !406, file: !407, line: 386, baseType: !411, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !406, file: !407, line: 388, baseType: !66, size: 32, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !406, file: !407, line: 390, baseType: !404, size: 32, offset: 160)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !406, file: !407, line: 392, baseType: !66, size: 32, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !406, file: !407, line: 394, baseType: !66, size: 32, offset: 224)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !406, file: !407, line: 395, baseType: !491, size: 32, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 32)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !407, line: 45, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !406, file: !407, line: 397, baseType: !494, size: 32, offset: 288)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 32)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !407, line: 349, size: 128, elements: !496)
!496 = !{!497, !510, !511, !512}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !495, file: !407, line: 352, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 32)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !407, line: 52, size: 192, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !499, file: !407, line: 54, baseType: !498, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !499, file: !407, line: 55, baseType: !66, size: 32, offset: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !499, file: !407, line: 55, baseType: !66, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !499, file: !407, line: 55, baseType: !66, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !499, file: !407, line: 55, baseType: !66, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !499, file: !407, line: 56, baseType: !507, size: 32, offset: 160)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 32, elements: !381)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !407, line: 22, baseType: !509)
!509 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !495, file: !407, line: 353, baseType: !66, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !495, file: !407, line: 354, baseType: !498, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !495, file: !407, line: 355, baseType: !513, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !406, file: !407, line: 399, baseType: !515, size: 32, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 32)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !405}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !406, file: !407, line: 401, baseType: !66, size: 32, offset: 352)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !406, file: !407, line: 404, baseType: !66, size: 32, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !406, file: !407, line: 405, baseType: !404, size: 32, offset: 416)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !406, file: !407, line: 407, baseType: !522, size: 32, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 32)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !407, line: 324, size: 192, elements: !524)
!524 = !{!525, !527, !528, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !523, file: !407, line: 325, baseType: !526, size: 48)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !456)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !523, file: !407, line: 326, baseType: !526, size: 48, offset: 48)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !523, file: !407, line: 327, baseType: !53, size: 16, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !523, file: !407, line: 330, baseType: !530, size: 64, offset: 128)
!530 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !406, file: !407, line: 408, baseType: !532, size: 32, offset: 480)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 32)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !407, line: 60, size: 288, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !533, file: !407, line: 62, baseType: !66, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !533, file: !407, line: 63, baseType: !66, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !533, file: !407, line: 64, baseType: !66, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !533, file: !407, line: 65, baseType: !66, size: 32, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !533, file: !407, line: 66, baseType: !66, size: 32, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !533, file: !407, line: 67, baseType: !66, size: 32, offset: 160)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !533, file: !407, line: 68, baseType: !66, size: 32, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !533, file: !407, line: 69, baseType: !66, size: 32, offset: 224)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !533, file: !407, line: 70, baseType: !66, size: 32, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !406, file: !407, line: 409, baseType: !404, size: 32, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !406, file: !407, line: 412, baseType: !546, size: 32, offset: 544)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 32)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !66}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !406, file: !407, line: 416, baseType: !551, size: 32, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 32)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !407, line: 90, size: 1120, elements: !553)
!553 = !{!554, !555, !556, !560}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !552, file: !407, line: 91, baseType: !551, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !552, file: !407, line: 92, baseType: !66, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !552, file: !407, line: 93, baseType: !557, size: 1024, offset: 64)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 1024, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !552, file: !407, line: 94, baseType: !561, size: 32, offset: 1088)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 32)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !407, line: 79, size: 2112, elements: !563)
!563 = !{!564, !566, !567, !568}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !562, file: !407, line: 80, baseType: !565, size: 1024)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1024, elements: !558)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !562, file: !407, line: 81, baseType: !565, size: 1024, offset: 1024)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !562, file: !407, line: 83, baseType: !508, size: 32, offset: 2048)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !562, file: !407, line: 86, baseType: !508, size: 32, offset: 2080)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !406, file: !407, line: 417, baseType: !552, size: 1120, offset: 608)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !406, file: !407, line: 420, baseType: !571, size: 96, offset: 1728)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !407, line: 296, size: 96, elements: !572)
!572 = !{!573, !575, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !571, file: !407, line: 298, baseType: !574, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !571, file: !407, line: 299, baseType: !66, size: 32, offset: 32)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !571, file: !407, line: 300, baseType: !411, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !406, file: !407, line: 421, baseType: !411, size: 32, offset: 1824)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !406, file: !407, line: 422, baseType: !579, size: 32, offset: 1856)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 32)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !407, line: 359, size: 640, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !588, !589, !590, !591, !592, !593}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !580, file: !407, line: 362, baseType: !404, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !580, file: !407, line: 363, baseType: !471, size: 64, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !580, file: !407, line: 364, baseType: !471, size: 64, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !580, file: !407, line: 365, baseType: !471, size: 64, offset: 160)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !580, file: !407, line: 366, baseType: !587, size: 64, offset: 224)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 64, elements: !131)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !580, file: !407, line: 367, baseType: !66, size: 32, offset: 288)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !580, file: !407, line: 368, baseType: !471, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !580, file: !407, line: 369, baseType: !471, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !580, file: !407, line: 370, baseType: !471, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !580, file: !407, line: 371, baseType: !471, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !580, file: !407, line: 372, baseType: !471, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !406, file: !407, line: 423, baseType: !404, size: 32, offset: 1888)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !480, line: 46, baseType: !7)
!596 = distinct !DICompileUnit(language: DW_LANG_C99, file: !597, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !598, globals: !599, splitDebugInlining: false, nameTableKind: None)
!597 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!598 = !{!404, !402}
!599 = !{!396}
!600 = !{!601, !602, !603, !604}
!601 = !DILocalVariable(name: "r", arg: 1, scope: !398, file: !399, line: 67, type: !405)
!602 = !DILocalVariable(name: "nbytes", arg: 2, scope: !398, file: !399, line: 67, type: !595)
!603 = !DILocalVariable(name: "prev_heap_end", scope: !398, file: !399, line: 71, type: !404)
!604 = !DILocalVariable(name: "stack", scope: !398, file: !399, line: 72, type: !404)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !607, file: !612, line: 4, type: !618, isLocal: false, isDefinition: true)
!607 = distinct !DICompileUnit(language: DW_LANG_C99, file: !608, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !609, splitDebugInlining: false, nameTableKind: None)
!608 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!609 = !{!605, !610, !616}
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !607, file: !612, line: 5, type: !613, isLocal: false, isDefinition: true)
!612 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 88, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 11)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !607, file: !612, line: 6, type: !613, isLocal: false, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 248, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 31)
!621 = distinct !DICompileUnit(language: DW_LANG_C99, file: !622, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !623, retainedTypes: !629, splitDebugInlining: false, nameTableKind: None)
!622 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!623 = !{!624}
!624 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !625, line: 1209, baseType: !7, size: 32, elements: !626)
!625 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!626 = !{!627, !628}
!627 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!628 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!629 = !{!630, !632}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !9, line: 116, baseType: !7)
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !635, retainedTypes: !713, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!635 = !{!636}
!636 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !637, line: 150, baseType: !7, size: 32, elements: !638)
!637 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!639 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!640 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!641 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!642 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!643 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!644 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!645 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!646 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!647 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!648 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!649 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!650 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!651 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!652 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!653 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!654 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!655 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!656 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!657 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!658 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!659 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!660 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!661 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!662 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!663 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!664 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!665 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!666 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!667 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!668 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!669 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!670 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!671 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!672 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!673 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!674 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!675 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!676 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!677 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!678 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!679 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!680 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!681 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!682 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!683 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!684 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!685 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!686 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!687 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!688 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!689 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!690 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!691 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!692 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!693 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!694 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!695 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!696 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!697 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!698 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!699 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!700 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!701 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!702 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!703 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!704 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!705 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!706 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!707 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!708 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!709 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!710 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!711 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!712 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!713 = !{!630, !8}
!714 = distinct !DICompileUnit(language: DW_LANG_C99, file: !715, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!716 = !{!717, !742}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !126, line: 418, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 395, size: 1120, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !719, file: !126, line: 397, baseType: !165, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !719, file: !126, line: 398, baseType: !11, size: 32, offset: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !719, file: !126, line: 399, baseType: !11, size: 32, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !719, file: !126, line: 400, baseType: !11, size: 32, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !719, file: !126, line: 401, baseType: !11, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !719, file: !126, line: 402, baseType: !11, size: 32, offset: 160)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !719, file: !126, line: 403, baseType: !172, size: 96, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !719, file: !126, line: 404, baseType: !11, size: 32, offset: 288)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !719, file: !126, line: 405, baseType: !11, size: 32, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !719, file: !126, line: 406, baseType: !11, size: 32, offset: 352)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !719, file: !126, line: 407, baseType: !11, size: 32, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !719, file: !126, line: 408, baseType: !11, size: 32, offset: 416)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !719, file: !126, line: 409, baseType: !11, size: 32, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !719, file: !126, line: 410, baseType: !11, size: 32, offset: 480)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !719, file: !126, line: 411, baseType: !183, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !719, file: !126, line: 412, baseType: !165, size: 32, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !719, file: !126, line: 413, baseType: !165, size: 32, offset: 608)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !719, file: !126, line: 414, baseType: !189, size: 128, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !719, file: !126, line: 415, baseType: !193, size: 160, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !719, file: !126, line: 416, baseType: !197, size: 160, offset: 928)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !719, file: !126, line: 417, baseType: !11, size: 32, offset: 1088)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !126, line: 378, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 363, size: 28704, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !744, file: !126, line: 365, baseType: !130, size: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !744, file: !126, line: 366, baseType: !134, size: 768, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !744, file: !126, line: 367, baseType: !130, size: 256, offset: 1024)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !744, file: !126, line: 368, baseType: !134, size: 768, offset: 1280)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !744, file: !126, line: 369, baseType: !130, size: 256, offset: 2048)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !744, file: !126, line: 370, baseType: !134, size: 768, offset: 2304)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !744, file: !126, line: 371, baseType: !130, size: 256, offset: 3072)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !744, file: !126, line: 372, baseType: !134, size: 768, offset: 3328)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !744, file: !126, line: 373, baseType: !130, size: 256, offset: 4096)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !744, file: !126, line: 374, baseType: !145, size: 1792, offset: 4352)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !744, file: !126, line: 375, baseType: !149, size: 1920, offset: 6144)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !744, file: !126, line: 376, baseType: !156, size: 20608, offset: 8064)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !744, file: !126, line: 377, baseType: !11, size: 32, offset: 28672)
!759 = distinct !DICompileUnit(language: DW_LANG_C99, file: !760, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !761, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!761 = !{!762, !636}
!762 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !763, line: 55, baseType: !7, size: 32, elements: !764)
!763 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!765 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!766 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!767 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!768 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!769 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!770 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!771 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!772 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!773 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!774 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!775 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!776 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!777 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!778 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!779 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!780 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!781 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!782 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!783 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!784 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!785 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!786 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!787 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!788 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!789 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!790 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!791 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!792 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!793 = distinct !DICompileUnit(language: DW_LANG_C99, file: !794, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!794 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!795 = distinct !DICompileUnit(language: DW_LANG_C99, file: !796, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !797, retainedTypes: !861, splitDebugInlining: false, nameTableKind: None)
!796 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!797 = !{!798, !805, !762, !836, !842, !846, !850, !856}
!798 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !799, line: 233, baseType: !66, size: 32, elements: !800)
!799 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!800 = !{!801, !802, !803, !804}
!801 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!802 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!803 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!804 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!805 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !225, line: 249, baseType: !7, size: 32, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835}
!807 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!808 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!809 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!810 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!811 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!812 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!813 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!814 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!815 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!816 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!817 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!818 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!819 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!820 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!821 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!822 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!823 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!824 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!825 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!826 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!827 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!828 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!829 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!830 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!831 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!832 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!833 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!834 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!835 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!836 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !799, line: 224, baseType: !66, size: 32, elements: !837)
!837 = !{!838, !839, !840, !841}
!838 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!839 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!840 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!841 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!842 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !799, line: 217, baseType: !7, size: 32, elements: !843)
!843 = !{!844, !845}
!844 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!845 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!846 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !799, line: 210, baseType: !7, size: 32, elements: !847)
!847 = !{!848, !849}
!848 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!849 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!850 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !799, line: 242, baseType: !7, size: 32, elements: !851)
!851 = !{!852, !853, !854, !855}
!852 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!853 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!854 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!855 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!856 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !857, line: 57, baseType: !7, size: 32, elements: !858)
!857 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!858 = !{!859, !860}
!859 = !DIEnumerator(name: "eDirection_IN", value: 0)
!860 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!861 = !{!862, !121, !863, !151, !864, !865}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !763, line: 87, baseType: !762)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !799, line: 220, baseType: !842)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !799, line: 247, baseType: !850)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !857, line: 60, baseType: !856)
!866 = distinct !DICompileUnit(language: DW_LANG_C99, file: !867, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !868, splitDebugInlining: false, nameTableKind: None)
!867 = !DIFile(filename: "../../../../../driver/board/mt76x7_hdk/ept/src/bsp_gpio_ept_config.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!868 = !{!12, !10}
!869 = distinct !DICompileUnit(language: DW_LANG_C99, file: !870, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !871, splitDebugInlining: false, nameTableKind: None)
!870 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!871 = !{!224, !230, !246, !252, !256, !805}
!872 = !{!"Ubuntu clang version 14.0.6"}
!873 = !{i32 7, !"Dwarf Version", i32 2}
!874 = !{i32 2, !"Debug Info Version", i32 3}
!875 = !{i32 1, !"wchar_size", i32 4}
!876 = !{i32 1, !"min_enum_size", i32 4}
!877 = !{i32 1, !"branch-target-enforcement", i32 0}
!878 = !{i32 1, !"sign-return-address", i32 0}
!879 = !{i32 1, !"sign-return-address-all", i32 0}
!880 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!881 = !{i32 7, !"frame-pointer", i32 2}
!882 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !622, file: !622, line: 54, type: !883, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !886)
!883 = !DISubroutineType(types: !884)
!884 = !{!885, !8, !54}
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !9, line: 56, baseType: !66)
!886 = !{!887, !888, !889, !891}
!887 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !882, file: !622, line: 54, type: !8)
!888 = !DILocalVariable(name: "outEnable", arg: 2, scope: !882, file: !622, line: 54, type: !54)
!889 = !DILocalVariable(name: "no", scope: !882, file: !622, line: 57, type: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !9, line: 60, baseType: !53)
!891 = !DILocalVariable(name: "remainder", scope: !882, file: !622, line: 58, type: !890)
!892 = !DILocation(line: 0, scope: !882)
!893 = !DILocation(line: 59, column: 19, scope: !882)
!894 = !DILocation(line: 60, column: 17, scope: !882)
!895 = !DILocation(line: 61, column: 5, scope: !882)
!896 = !DILocation(line: 65, column: 27, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !622, line: 65, column: 17)
!898 = distinct !DILexicalBlock(scope: !882, file: !622, line: 61, column: 17)
!899 = !DILocation(line: 0, scope: !897)
!900 = !DILocation(line: 65, column: 17, scope: !898)
!901 = !DILocation(line: 66, column: 21, scope: !902)
!902 = distinct !DILexicalBlock(scope: !897, file: !622, line: 65, column: 33)
!903 = !DILocation(line: 67, column: 73, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !622, line: 66, column: 38)
!905 = distinct !DILexicalBlock(scope: !902, file: !622, line: 66, column: 21)
!906 = !DILocation(line: 67, column: 69, scope: !904)
!907 = !DILocation(line: 67, column: 66, scope: !904)
!908 = !DILocation(line: 68, column: 17, scope: !904)
!909 = !DILocation(line: 68, column: 28, scope: !905)
!910 = !DILocation(line: 69, column: 77, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !622, line: 68, column: 45)
!912 = distinct !DILexicalBlock(scope: !905, file: !622, line: 68, column: 28)
!913 = !DILocation(line: 70, column: 77, scope: !911)
!914 = !DILocation(line: 71, column: 17, scope: !911)
!915 = !DILocation(line: 72, column: 77, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !622, line: 71, column: 45)
!917 = distinct !DILexicalBlock(scope: !912, file: !622, line: 71, column: 28)
!918 = !DILocation(line: 73, column: 77, scope: !916)
!919 = !DILocation(line: 74, column: 17, scope: !916)
!920 = !DILocation(line: 75, column: 79, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !622, line: 74, column: 45)
!922 = distinct !DILexicalBlock(scope: !917, file: !622, line: 74, column: 28)
!923 = !DILocation(line: 76, column: 79, scope: !921)
!924 = !DILocation(line: 77, column: 17, scope: !921)
!925 = !DILocation(line: 78, column: 79, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !622, line: 77, column: 45)
!927 = distinct !DILexicalBlock(scope: !922, file: !622, line: 77, column: 28)
!928 = !DILocation(line: 79, column: 79, scope: !926)
!929 = !DILocation(line: 80, column: 17, scope: !926)
!930 = !DILocation(line: 81, column: 79, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !622, line: 80, column: 45)
!932 = distinct !DILexicalBlock(scope: !927, file: !622, line: 80, column: 28)
!933 = !DILocation(line: 82, column: 79, scope: !931)
!934 = !DILocation(line: 83, column: 17, scope: !931)
!935 = !DILocation(line: 85, column: 17, scope: !902)
!936 = !DILocation(line: 86, column: 13, scope: !902)
!937 = !DILocation(line: 88, column: 21, scope: !938)
!938 = distinct !DILexicalBlock(scope: !897, file: !622, line: 86, column: 20)
!939 = !DILocation(line: 89, column: 72, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !622, line: 88, column: 38)
!941 = distinct !DILexicalBlock(scope: !938, file: !622, line: 88, column: 21)
!942 = !DILocation(line: 89, column: 66, scope: !940)
!943 = !DILocation(line: 90, column: 17, scope: !940)
!944 = !DILocation(line: 90, column: 28, scope: !941)
!945 = !DILocation(line: 91, column: 77, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !622, line: 90, column: 45)
!947 = distinct !DILexicalBlock(scope: !941, file: !622, line: 90, column: 28)
!948 = !DILocation(line: 92, column: 17, scope: !946)
!949 = !DILocation(line: 93, column: 77, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !622, line: 92, column: 45)
!951 = distinct !DILexicalBlock(scope: !947, file: !622, line: 92, column: 28)
!952 = !DILocation(line: 94, column: 17, scope: !950)
!953 = !DILocation(line: 95, column: 79, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !622, line: 94, column: 45)
!955 = distinct !DILexicalBlock(scope: !951, file: !622, line: 94, column: 28)
!956 = !DILocation(line: 96, column: 17, scope: !954)
!957 = !DILocation(line: 97, column: 79, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !622, line: 96, column: 45)
!959 = distinct !DILexicalBlock(scope: !955, file: !622, line: 96, column: 28)
!960 = !DILocation(line: 98, column: 17, scope: !958)
!961 = !DILocation(line: 99, column: 79, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !622, line: 98, column: 45)
!963 = distinct !DILexicalBlock(scope: !959, file: !622, line: 98, column: 28)
!964 = !DILocation(line: 100, column: 17, scope: !962)
!965 = !DILocation(line: 103, column: 17, scope: !938)
!966 = !DILocation(line: 109, column: 27, scope: !967)
!967 = distinct !DILexicalBlock(scope: !898, file: !622, line: 109, column: 17)
!968 = !DILocation(line: 0, scope: !967)
!969 = !DILocation(line: 109, column: 17, scope: !898)
!970 = !DILocation(line: 110, column: 21, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !622, line: 109, column: 33)
!972 = !DILocation(line: 111, column: 73, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !622, line: 110, column: 36)
!974 = distinct !DILexicalBlock(scope: !971, file: !622, line: 110, column: 21)
!975 = !DILocation(line: 111, column: 69, scope: !973)
!976 = !DILocation(line: 111, column: 66, scope: !973)
!977 = !DILocation(line: 112, column: 17, scope: !973)
!978 = !DILocation(line: 113, column: 79, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !622, line: 112, column: 24)
!980 = !DILocation(line: 114, column: 79, scope: !979)
!981 = !DILocation(line: 117, column: 17, scope: !971)
!982 = !DILocation(line: 118, column: 13, scope: !971)
!983 = !DILocation(line: 120, column: 21, scope: !984)
!984 = distinct !DILexicalBlock(scope: !967, file: !622, line: 118, column: 20)
!985 = !DILocation(line: 121, column: 72, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !622, line: 120, column: 36)
!987 = distinct !DILexicalBlock(scope: !984, file: !622, line: 120, column: 21)
!988 = !DILocation(line: 121, column: 66, scope: !986)
!989 = !DILocation(line: 122, column: 17, scope: !986)
!990 = !DILocation(line: 123, column: 79, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !622, line: 122, column: 24)
!992 = !DILocation(line: 126, column: 17, scope: !984)
!993 = !DILocation(line: 133, column: 1, scope: !882)
!994 = distinct !DISubprogram(name: "halGPO_Write", scope: !622, file: !622, line: 136, type: !883, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !995)
!995 = !{!996, !997, !998, !999}
!996 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !994, file: !622, line: 136, type: !8)
!997 = !DILocalVariable(name: "writeValue", arg: 2, scope: !994, file: !622, line: 136, type: !54)
!998 = !DILocalVariable(name: "no", scope: !994, file: !622, line: 138, type: !890)
!999 = !DILocalVariable(name: "remainder", scope: !994, file: !622, line: 139, type: !890)
!1000 = !DILocation(line: 0, scope: !994)
!1001 = !DILocation(line: 140, column: 19, scope: !994)
!1002 = !DILocation(line: 141, column: 17, scope: !994)
!1003 = !DILocation(line: 142, column: 5, scope: !994)
!1004 = !DILocation(line: 145, column: 17, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !622, line: 145, column: 17)
!1006 = distinct !DILexicalBlock(scope: !994, file: !622, line: 142, column: 17)
!1007 = !DILocation(line: 0, scope: !1005)
!1008 = !DILocation(line: 145, column: 17, scope: !1006)
!1009 = !DILocation(line: 146, column: 17, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !622, line: 145, column: 29)
!1011 = !DILocation(line: 147, column: 13, scope: !1010)
!1012 = !DILocation(line: 148, column: 17, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1005, file: !622, line: 147, column: 20)
!1014 = !DILocation(line: 153, column: 17, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1006, file: !622, line: 153, column: 17)
!1016 = !DILocation(line: 0, scope: !1015)
!1017 = !DILocation(line: 153, column: 17, scope: !1006)
!1018 = !DILocation(line: 154, column: 17, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !622, line: 153, column: 29)
!1020 = !DILocation(line: 155, column: 13, scope: !1019)
!1021 = !DILocation(line: 156, column: 17, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1015, file: !622, line: 155, column: 20)
!1023 = !DILocation(line: 163, column: 1, scope: !994)
!1024 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !622, file: !622, line: 169, type: !1025, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!54, !8}
!1027 = !{!1028, !1029, !1030, !1031}
!1028 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1024, file: !622, line: 169, type: !8)
!1029 = !DILocalVariable(name: "no", scope: !1024, file: !622, line: 171, type: !890)
!1030 = !DILocalVariable(name: "remainder", scope: !1024, file: !622, line: 172, type: !890)
!1031 = !DILocalVariable(name: "dout", scope: !1024, file: !622, line: 175, type: !54)
!1032 = !DILocation(line: 0, scope: !1024)
!1033 = !DILocation(line: 173, column: 19, scope: !1024)
!1034 = !DILocation(line: 174, column: 17, scope: !1024)
!1035 = !DILocation(line: 177, column: 5, scope: !1024)
!1036 = !DILocation(line: 183, column: 13, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1024, file: !622, line: 177, column: 17)
!1038 = !DILocation(line: 0, scope: !1037)
!1039 = !DILocation(line: 187, column: 5, scope: !1024)
!1040 = !DILocation(line: 188, column: 1, scope: !1024)
!1041 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !622, file: !622, line: 189, type: !1025, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1042)
!1042 = !{!1043, !1044, !1045, !1046}
!1043 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1041, file: !622, line: 189, type: !8)
!1044 = !DILocalVariable(name: "no", scope: !1041, file: !622, line: 191, type: !890)
!1045 = !DILocalVariable(name: "remainder", scope: !1041, file: !622, line: 192, type: !890)
!1046 = !DILocalVariable(name: "din", scope: !1041, file: !622, line: 195, type: !54)
!1047 = !DILocation(line: 0, scope: !1041)
!1048 = !DILocation(line: 193, column: 19, scope: !1041)
!1049 = !DILocation(line: 194, column: 17, scope: !1041)
!1050 = !DILocation(line: 196, column: 5, scope: !1041)
!1051 = !DILocation(line: 203, column: 13, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1041, file: !622, line: 196, column: 17)
!1053 = !DILocation(line: 0, scope: !1052)
!1054 = !DILocation(line: 208, column: 5, scope: !1041)
!1055 = !DILocation(line: 209, column: 1, scope: !1041)
!1056 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !622, file: !622, line: 210, type: !1025, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1057)
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1056, file: !622, line: 210, type: !8)
!1059 = !DILocalVariable(name: "no", scope: !1056, file: !622, line: 212, type: !890)
!1060 = !DILocalVariable(name: "remainder", scope: !1056, file: !622, line: 213, type: !890)
!1061 = !DILocalVariable(name: "outEnable", scope: !1056, file: !622, line: 216, type: !54)
!1062 = !DILocation(line: 0, scope: !1056)
!1063 = !DILocation(line: 214, column: 19, scope: !1056)
!1064 = !DILocation(line: 215, column: 17, scope: !1056)
!1065 = !DILocation(line: 218, column: 5, scope: !1056)
!1066 = !DILocation(line: 224, column: 13, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1056, file: !622, line: 218, column: 17)
!1068 = !DILocation(line: 0, scope: !1067)
!1069 = !DILocation(line: 228, column: 5, scope: !1056)
!1070 = !DILocation(line: 229, column: 1, scope: !1056)
!1071 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !622, file: !622, line: 232, type: !1072, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!885, !8}
!1074 = !{!1075, !1076, !1077}
!1075 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1071, file: !622, line: 232, type: !8)
!1076 = !DILocalVariable(name: "no", scope: !1071, file: !622, line: 234, type: !890)
!1077 = !DILocalVariable(name: "remainder", scope: !1071, file: !622, line: 235, type: !890)
!1078 = !DILocation(line: 0, scope: !1071)
!1079 = !DILocation(line: 236, column: 19, scope: !1071)
!1080 = !DILocation(line: 237, column: 17, scope: !1071)
!1081 = !DILocation(line: 238, column: 5, scope: !1071)
!1082 = !DILocation(line: 239, column: 5, scope: !1071)
!1083 = !DILocation(line: 241, column: 27, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !622, line: 241, column: 17)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !622, line: 239, column: 17)
!1086 = !DILocation(line: 241, column: 17, scope: !1085)
!1087 = !DILocation(line: 241, column: 17, scope: !1084)
!1088 = !DILocation(line: 242, column: 17, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !622, line: 241, column: 34)
!1090 = !DILocation(line: 243, column: 13, scope: !1089)
!1091 = !DILocation(line: 243, column: 24, scope: !1084)
!1092 = !DILocation(line: 244, column: 73, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !622, line: 243, column: 41)
!1094 = distinct !DILexicalBlock(scope: !1084, file: !622, line: 243, column: 24)
!1095 = !DILocation(line: 245, column: 73, scope: !1093)
!1096 = !DILocation(line: 246, column: 13, scope: !1093)
!1097 = !DILocation(line: 247, column: 73, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !622, line: 246, column: 41)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !622, line: 246, column: 24)
!1100 = !DILocation(line: 248, column: 73, scope: !1098)
!1101 = !DILocation(line: 249, column: 13, scope: !1098)
!1102 = !DILocation(line: 250, column: 75, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !622, line: 249, column: 41)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !622, line: 249, column: 24)
!1105 = !DILocation(line: 251, column: 75, scope: !1103)
!1106 = !DILocation(line: 252, column: 13, scope: !1103)
!1107 = !DILocation(line: 253, column: 75, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !622, line: 252, column: 41)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !622, line: 252, column: 24)
!1110 = !DILocation(line: 254, column: 75, scope: !1108)
!1111 = !DILocation(line: 255, column: 13, scope: !1108)
!1112 = !DILocation(line: 256, column: 75, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !622, line: 255, column: 41)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !622, line: 255, column: 24)
!1115 = !DILocation(line: 257, column: 75, scope: !1113)
!1116 = !DILocation(line: 258, column: 13, scope: !1113)
!1117 = !DILocation(line: 261, column: 18, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1085, file: !622, line: 261, column: 17)
!1119 = !DILocation(line: 261, column: 17, scope: !1085)
!1120 = !DILocation(line: 262, column: 75, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !622, line: 261, column: 29)
!1122 = !DILocation(line: 263, column: 75, scope: !1121)
!1123 = !DILocation(line: 264, column: 13, scope: !1121)
!1124 = !DILocation(line: 265, column: 17, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !622, line: 264, column: 20)
!1126 = !DILocation(line: 272, column: 1, scope: !1071)
!1127 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !622, file: !622, line: 359, type: !1072, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1127, file: !622, line: 359, type: !8)
!1130 = !DILocalVariable(name: "no", scope: !1127, file: !622, line: 362, type: !890)
!1131 = !DILocalVariable(name: "remainder", scope: !1127, file: !622, line: 363, type: !890)
!1132 = !DILocation(line: 0, scope: !1127)
!1133 = !DILocation(line: 364, column: 19, scope: !1127)
!1134 = !DILocation(line: 365, column: 17, scope: !1127)
!1135 = !DILocation(line: 367, column: 5, scope: !1127)
!1136 = !DILocation(line: 369, column: 27, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !622, line: 369, column: 17)
!1138 = distinct !DILexicalBlock(scope: !1127, file: !622, line: 367, column: 17)
!1139 = !DILocation(line: 369, column: 17, scope: !1138)
!1140 = !DILocation(line: 369, column: 17, scope: !1137)
!1141 = !DILocation(line: 370, column: 17, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !622, line: 369, column: 34)
!1143 = !DILocation(line: 371, column: 13, scope: !1142)
!1144 = !DILocation(line: 371, column: 24, scope: !1137)
!1145 = !DILocation(line: 372, column: 73, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !622, line: 371, column: 41)
!1147 = distinct !DILexicalBlock(scope: !1137, file: !622, line: 371, column: 24)
!1148 = !DILocation(line: 373, column: 73, scope: !1146)
!1149 = !DILocation(line: 374, column: 13, scope: !1146)
!1150 = !DILocation(line: 375, column: 73, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !622, line: 374, column: 41)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !622, line: 374, column: 24)
!1153 = !DILocation(line: 376, column: 73, scope: !1151)
!1154 = !DILocation(line: 377, column: 13, scope: !1151)
!1155 = !DILocation(line: 378, column: 75, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !622, line: 377, column: 41)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !622, line: 377, column: 24)
!1158 = !DILocation(line: 379, column: 75, scope: !1156)
!1159 = !DILocation(line: 380, column: 13, scope: !1156)
!1160 = !DILocation(line: 381, column: 75, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !622, line: 380, column: 41)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !622, line: 380, column: 24)
!1163 = !DILocation(line: 382, column: 75, scope: !1161)
!1164 = !DILocation(line: 383, column: 13, scope: !1161)
!1165 = !DILocation(line: 384, column: 75, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !622, line: 383, column: 41)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !622, line: 383, column: 24)
!1168 = !DILocation(line: 385, column: 75, scope: !1166)
!1169 = !DILocation(line: 386, column: 13, scope: !1166)
!1170 = !DILocation(line: 389, column: 18, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1138, file: !622, line: 389, column: 17)
!1172 = !DILocation(line: 389, column: 17, scope: !1138)
!1173 = !DILocation(line: 390, column: 75, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !622, line: 389, column: 29)
!1175 = !DILocation(line: 391, column: 75, scope: !1174)
!1176 = !DILocation(line: 392, column: 13, scope: !1174)
!1177 = !DILocation(line: 393, column: 17, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1171, file: !622, line: 392, column: 20)
!1179 = !DILocation(line: 401, column: 1, scope: !1127)
!1180 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !622, file: !622, line: 274, type: !1072, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1181)
!1181 = !{!1182, !1183, !1184}
!1182 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1180, file: !622, line: 274, type: !8)
!1183 = !DILocalVariable(name: "no", scope: !1180, file: !622, line: 276, type: !890)
!1184 = !DILocalVariable(name: "remainder", scope: !1180, file: !622, line: 277, type: !890)
!1185 = !DILocation(line: 0, scope: !1180)
!1186 = !DILocation(line: 278, column: 19, scope: !1180)
!1187 = !DILocation(line: 279, column: 17, scope: !1180)
!1188 = !DILocation(line: 281, column: 5, scope: !1180)
!1189 = !DILocation(line: 283, column: 27, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !622, line: 283, column: 17)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !622, line: 281, column: 17)
!1192 = !DILocation(line: 283, column: 17, scope: !1191)
!1193 = !DILocation(line: 283, column: 17, scope: !1190)
!1194 = !DILocation(line: 284, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !622, line: 283, column: 34)
!1196 = !DILocation(line: 285, column: 13, scope: !1195)
!1197 = !DILocation(line: 285, column: 24, scope: !1190)
!1198 = !DILocation(line: 286, column: 73, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !622, line: 285, column: 41)
!1200 = distinct !DILexicalBlock(scope: !1190, file: !622, line: 285, column: 24)
!1201 = !DILocation(line: 287, column: 73, scope: !1199)
!1202 = !DILocation(line: 288, column: 13, scope: !1199)
!1203 = !DILocation(line: 289, column: 73, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !622, line: 288, column: 41)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !622, line: 288, column: 24)
!1206 = !DILocation(line: 290, column: 73, scope: !1204)
!1207 = !DILocation(line: 291, column: 13, scope: !1204)
!1208 = !DILocation(line: 292, column: 75, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !622, line: 291, column: 41)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !622, line: 291, column: 24)
!1211 = !DILocation(line: 293, column: 75, scope: !1209)
!1212 = !DILocation(line: 294, column: 13, scope: !1209)
!1213 = !DILocation(line: 295, column: 75, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !622, line: 294, column: 41)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !622, line: 294, column: 24)
!1216 = !DILocation(line: 296, column: 75, scope: !1214)
!1217 = !DILocation(line: 297, column: 13, scope: !1214)
!1218 = !DILocation(line: 298, column: 75, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !622, line: 297, column: 41)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !622, line: 297, column: 24)
!1221 = !DILocation(line: 299, column: 75, scope: !1219)
!1222 = !DILocation(line: 300, column: 13, scope: !1219)
!1223 = !DILocation(line: 303, column: 18, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1191, file: !622, line: 303, column: 17)
!1225 = !DILocation(line: 303, column: 17, scope: !1191)
!1226 = !DILocation(line: 304, column: 75, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !622, line: 303, column: 29)
!1228 = !DILocation(line: 305, column: 75, scope: !1227)
!1229 = !DILocation(line: 306, column: 13, scope: !1227)
!1230 = !DILocation(line: 307, column: 17, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !622, line: 306, column: 20)
!1232 = !DILocation(line: 314, column: 1, scope: !1180)
!1233 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !622, file: !622, line: 316, type: !1072, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1234)
!1234 = !{!1235, !1236, !1237}
!1235 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1233, file: !622, line: 316, type: !8)
!1236 = !DILocalVariable(name: "no", scope: !1233, file: !622, line: 318, type: !890)
!1237 = !DILocalVariable(name: "remainder", scope: !1233, file: !622, line: 319, type: !890)
!1238 = !DILocation(line: 0, scope: !1233)
!1239 = !DILocation(line: 320, column: 19, scope: !1233)
!1240 = !DILocation(line: 321, column: 17, scope: !1233)
!1241 = !DILocation(line: 322, column: 5, scope: !1233)
!1242 = !DILocation(line: 323, column: 5, scope: !1233)
!1243 = !DILocation(line: 325, column: 27, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !622, line: 325, column: 17)
!1245 = distinct !DILexicalBlock(scope: !1233, file: !622, line: 323, column: 17)
!1246 = !DILocation(line: 325, column: 17, scope: !1245)
!1247 = !DILocation(line: 325, column: 17, scope: !1244)
!1248 = !DILocation(line: 326, column: 17, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !622, line: 325, column: 34)
!1250 = !DILocation(line: 327, column: 13, scope: !1249)
!1251 = !DILocation(line: 327, column: 24, scope: !1244)
!1252 = !DILocation(line: 328, column: 73, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !622, line: 327, column: 41)
!1254 = distinct !DILexicalBlock(scope: !1244, file: !622, line: 327, column: 24)
!1255 = !DILocation(line: 329, column: 73, scope: !1253)
!1256 = !DILocation(line: 330, column: 13, scope: !1253)
!1257 = !DILocation(line: 331, column: 73, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !622, line: 330, column: 41)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !622, line: 330, column: 24)
!1260 = !DILocation(line: 332, column: 73, scope: !1258)
!1261 = !DILocation(line: 333, column: 13, scope: !1258)
!1262 = !DILocation(line: 334, column: 75, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !622, line: 333, column: 41)
!1264 = distinct !DILexicalBlock(scope: !1259, file: !622, line: 333, column: 24)
!1265 = !DILocation(line: 335, column: 75, scope: !1263)
!1266 = !DILocation(line: 336, column: 13, scope: !1263)
!1267 = !DILocation(line: 337, column: 75, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !622, line: 336, column: 41)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !622, line: 336, column: 24)
!1270 = !DILocation(line: 338, column: 75, scope: !1268)
!1271 = !DILocation(line: 339, column: 13, scope: !1268)
!1272 = !DILocation(line: 340, column: 75, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !622, line: 339, column: 41)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !622, line: 339, column: 24)
!1275 = !DILocation(line: 341, column: 75, scope: !1273)
!1276 = !DILocation(line: 342, column: 13, scope: !1273)
!1277 = !DILocation(line: 345, column: 18, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1245, file: !622, line: 345, column: 17)
!1279 = !DILocation(line: 345, column: 17, scope: !1245)
!1280 = !DILocation(line: 346, column: 75, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !622, line: 345, column: 29)
!1282 = !DILocation(line: 347, column: 75, scope: !1281)
!1283 = !DILocation(line: 348, column: 13, scope: !1281)
!1284 = !DILocation(line: 349, column: 17, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !622, line: 348, column: 20)
!1286 = !DILocation(line: 357, column: 1, scope: !1233)
!1287 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !622, file: !622, line: 404, type: !883, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1288)
!1288 = !{!1289, !1290, !1291, !1292}
!1289 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1287, file: !622, line: 404, type: !8)
!1290 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1287, file: !622, line: 404, type: !54)
!1291 = !DILocalVariable(name: "no", scope: !1287, file: !622, line: 406, type: !890)
!1292 = !DILocalVariable(name: "remainder", scope: !1287, file: !622, line: 407, type: !890)
!1293 = !DILocation(line: 0, scope: !1287)
!1294 = !DILocation(line: 408, column: 19, scope: !1287)
!1295 = !DILocation(line: 409, column: 17, scope: !1287)
!1296 = !DILocation(line: 411, column: 5, scope: !1287)
!1297 = !DILocation(line: 413, column: 84, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1287, file: !622, line: 411, column: 17)
!1299 = !DILocation(line: 413, column: 70, scope: !1298)
!1300 = !DILocation(line: 413, column: 64, scope: !1298)
!1301 = !DILocation(line: 413, column: 61, scope: !1298)
!1302 = !DILocation(line: 414, column: 79, scope: !1298)
!1303 = !DILocation(line: 414, column: 83, scope: !1298)
!1304 = !DILocation(line: 414, column: 88, scope: !1298)
!1305 = !DILocation(line: 414, column: 61, scope: !1298)
!1306 = !DILocation(line: 415, column: 13, scope: !1298)
!1307 = !DILocation(line: 417, column: 27, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1298, file: !622, line: 417, column: 17)
!1309 = !DILocation(line: 417, column: 17, scope: !1298)
!1310 = !DILocation(line: 418, column: 88, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !622, line: 417, column: 33)
!1312 = !DILocation(line: 418, column: 74, scope: !1311)
!1313 = !DILocation(line: 418, column: 68, scope: !1311)
!1314 = !DILocation(line: 418, column: 65, scope: !1311)
!1315 = !DILocation(line: 419, column: 83, scope: !1311)
!1316 = !DILocation(line: 419, column: 87, scope: !1311)
!1317 = !DILocation(line: 419, column: 92, scope: !1311)
!1318 = !DILocation(line: 419, column: 65, scope: !1311)
!1319 = !DILocation(line: 420, column: 13, scope: !1311)
!1320 = !DILocation(line: 420, column: 24, scope: !1308)
!1321 = !DILocation(line: 421, column: 73, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !622, line: 420, column: 41)
!1323 = distinct !DILexicalBlock(scope: !1308, file: !622, line: 420, column: 24)
!1324 = !DILocation(line: 422, column: 91, scope: !1322)
!1325 = !DILocation(line: 422, column: 100, scope: !1322)
!1326 = !DILocation(line: 422, column: 73, scope: !1322)
!1327 = !DILocation(line: 423, column: 73, scope: !1322)
!1328 = !DILocation(line: 424, column: 13, scope: !1322)
!1329 = !DILocation(line: 425, column: 73, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !622, line: 424, column: 41)
!1331 = distinct !DILexicalBlock(scope: !1323, file: !622, line: 424, column: 24)
!1332 = !DILocation(line: 426, column: 91, scope: !1330)
!1333 = !DILocation(line: 426, column: 100, scope: !1330)
!1334 = !DILocation(line: 426, column: 73, scope: !1330)
!1335 = !DILocation(line: 427, column: 73, scope: !1330)
!1336 = !DILocation(line: 428, column: 13, scope: !1330)
!1337 = !DILocation(line: 429, column: 75, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !622, line: 428, column: 41)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !622, line: 428, column: 24)
!1340 = !DILocation(line: 430, column: 93, scope: !1338)
!1341 = !DILocation(line: 430, column: 102, scope: !1338)
!1342 = !DILocation(line: 430, column: 75, scope: !1338)
!1343 = !DILocation(line: 431, column: 75, scope: !1338)
!1344 = !DILocation(line: 432, column: 13, scope: !1338)
!1345 = !DILocation(line: 433, column: 75, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !622, line: 432, column: 41)
!1347 = distinct !DILexicalBlock(scope: !1339, file: !622, line: 432, column: 24)
!1348 = !DILocation(line: 434, column: 93, scope: !1346)
!1349 = !DILocation(line: 434, column: 102, scope: !1346)
!1350 = !DILocation(line: 434, column: 75, scope: !1346)
!1351 = !DILocation(line: 435, column: 75, scope: !1346)
!1352 = !DILocation(line: 436, column: 13, scope: !1346)
!1353 = !DILocation(line: 437, column: 75, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !622, line: 436, column: 41)
!1355 = distinct !DILexicalBlock(scope: !1347, file: !622, line: 436, column: 24)
!1356 = !DILocation(line: 438, column: 93, scope: !1354)
!1357 = !DILocation(line: 438, column: 102, scope: !1354)
!1358 = !DILocation(line: 438, column: 75, scope: !1354)
!1359 = !DILocation(line: 439, column: 75, scope: !1354)
!1360 = !DILocation(line: 440, column: 13, scope: !1354)
!1361 = !DILocation(line: 443, column: 18, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1298, file: !622, line: 443, column: 17)
!1363 = !DILocation(line: 443, column: 17, scope: !1298)
!1364 = !DILocation(line: 444, column: 75, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !622, line: 443, column: 29)
!1366 = !DILocation(line: 445, column: 93, scope: !1365)
!1367 = !DILocation(line: 445, column: 102, scope: !1365)
!1368 = !DILocation(line: 445, column: 75, scope: !1365)
!1369 = !DILocation(line: 446, column: 75, scope: !1365)
!1370 = !DILocation(line: 447, column: 13, scope: !1365)
!1371 = !DILocation(line: 448, column: 88, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1362, file: !622, line: 447, column: 20)
!1373 = !DILocation(line: 448, column: 74, scope: !1372)
!1374 = !DILocation(line: 448, column: 68, scope: !1372)
!1375 = !DILocation(line: 448, column: 65, scope: !1372)
!1376 = !DILocation(line: 449, column: 83, scope: !1372)
!1377 = !DILocation(line: 449, column: 87, scope: !1372)
!1378 = !DILocation(line: 449, column: 92, scope: !1372)
!1379 = !DILocation(line: 449, column: 65, scope: !1372)
!1380 = !DILocation(line: 453, column: 84, scope: !1298)
!1381 = !DILocation(line: 453, column: 70, scope: !1298)
!1382 = !DILocation(line: 453, column: 64, scope: !1298)
!1383 = !DILocation(line: 453, column: 61, scope: !1298)
!1384 = !DILocation(line: 454, column: 79, scope: !1298)
!1385 = !DILocation(line: 454, column: 83, scope: !1298)
!1386 = !DILocation(line: 454, column: 88, scope: !1298)
!1387 = !DILocation(line: 454, column: 61, scope: !1298)
!1388 = !DILocation(line: 455, column: 13, scope: !1298)
!1389 = !DILocation(line: 460, column: 1, scope: !1287)
!1390 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !622, file: !622, line: 463, type: !1391, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1394)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!885, !8, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!1394 = !{!1395, !1396, !1397, !1398, !1399}
!1395 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1390, file: !622, line: 463, type: !8)
!1396 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1390, file: !622, line: 463, type: !1393)
!1397 = !DILocalVariable(name: "no", scope: !1390, file: !622, line: 465, type: !890)
!1398 = !DILocalVariable(name: "remainder", scope: !1390, file: !622, line: 466, type: !890)
!1399 = !DILocalVariable(name: "temp", scope: !1390, file: !622, line: 467, type: !8)
!1400 = !DILocation(line: 0, scope: !1390)
!1401 = !DILocation(line: 468, column: 19, scope: !1390)
!1402 = !DILocation(line: 469, column: 17, scope: !1390)
!1403 = !DILocation(line: 471, column: 5, scope: !1390)
!1404 = !DILocation(line: 473, column: 20, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1390, file: !622, line: 471, column: 17)
!1406 = !DILocation(line: 474, column: 40, scope: !1405)
!1407 = !DILocation(line: 474, column: 26, scope: !1405)
!1408 = !DILocation(line: 474, column: 18, scope: !1405)
!1409 = !DILocation(line: 475, column: 40, scope: !1405)
!1410 = !DILocation(line: 475, column: 29, scope: !1405)
!1411 = !DILocation(line: 476, column: 13, scope: !1405)
!1412 = !DILocation(line: 478, column: 27, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1405, file: !622, line: 478, column: 17)
!1414 = !DILocation(line: 478, column: 17, scope: !1405)
!1415 = !DILocation(line: 479, column: 24, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !622, line: 478, column: 33)
!1417 = !DILocation(line: 480, column: 44, scope: !1416)
!1418 = !DILocation(line: 480, column: 30, scope: !1416)
!1419 = !DILocation(line: 480, column: 22, scope: !1416)
!1420 = !DILocation(line: 481, column: 44, scope: !1416)
!1421 = !DILocation(line: 481, column: 33, scope: !1416)
!1422 = !DILocation(line: 482, column: 13, scope: !1416)
!1423 = !DILocation(line: 482, column: 24, scope: !1413)
!1424 = !DILocation(line: 483, column: 24, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !622, line: 482, column: 41)
!1426 = distinct !DILexicalBlock(scope: !1413, file: !622, line: 482, column: 24)
!1427 = !DILocation(line: 485, column: 53, scope: !1425)
!1428 = !DILocation(line: 485, column: 33, scope: !1425)
!1429 = !DILocation(line: 486, column: 13, scope: !1425)
!1430 = !DILocation(line: 487, column: 24, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !622, line: 486, column: 41)
!1432 = distinct !DILexicalBlock(scope: !1426, file: !622, line: 486, column: 24)
!1433 = !DILocation(line: 489, column: 53, scope: !1431)
!1434 = !DILocation(line: 489, column: 33, scope: !1431)
!1435 = !DILocation(line: 490, column: 13, scope: !1431)
!1436 = !DILocation(line: 491, column: 24, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !622, line: 490, column: 41)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !622, line: 490, column: 24)
!1439 = !DILocation(line: 493, column: 53, scope: !1437)
!1440 = !DILocation(line: 493, column: 33, scope: !1437)
!1441 = !DILocation(line: 494, column: 13, scope: !1437)
!1442 = !DILocation(line: 495, column: 24, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !622, line: 494, column: 41)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !622, line: 494, column: 24)
!1445 = !DILocation(line: 497, column: 53, scope: !1443)
!1446 = !DILocation(line: 497, column: 33, scope: !1443)
!1447 = !DILocation(line: 498, column: 13, scope: !1443)
!1448 = !DILocation(line: 499, column: 24, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !622, line: 498, column: 41)
!1450 = distinct !DILexicalBlock(scope: !1444, file: !622, line: 498, column: 24)
!1451 = !DILocation(line: 501, column: 53, scope: !1449)
!1452 = !DILocation(line: 501, column: 33, scope: !1449)
!1453 = !DILocation(line: 502, column: 13, scope: !1449)
!1454 = !DILocation(line: 505, column: 18, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1405, file: !622, line: 505, column: 17)
!1456 = !DILocation(line: 505, column: 17, scope: !1405)
!1457 = !DILocation(line: 506, column: 24, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !622, line: 505, column: 29)
!1459 = !DILocation(line: 508, column: 53, scope: !1458)
!1460 = !DILocation(line: 508, column: 33, scope: !1458)
!1461 = !DILocation(line: 509, column: 13, scope: !1458)
!1462 = !DILocation(line: 510, column: 24, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1455, file: !622, line: 509, column: 20)
!1464 = !DILocation(line: 511, column: 44, scope: !1463)
!1465 = !DILocation(line: 511, column: 30, scope: !1463)
!1466 = !DILocation(line: 511, column: 22, scope: !1463)
!1467 = !DILocation(line: 512, column: 44, scope: !1463)
!1468 = !DILocation(line: 512, column: 33, scope: !1463)
!1469 = !DILocation(line: 516, column: 20, scope: !1405)
!1470 = !DILocation(line: 517, column: 40, scope: !1405)
!1471 = !DILocation(line: 517, column: 26, scope: !1405)
!1472 = !DILocation(line: 517, column: 18, scope: !1405)
!1473 = !DILocation(line: 518, column: 40, scope: !1405)
!1474 = !DILocation(line: 518, column: 29, scope: !1405)
!1475 = !DILocation(line: 519, column: 13, scope: !1405)
!1476 = !DILocation(line: 0, scope: !1405)
!1477 = !DILocation(line: 524, column: 1, scope: !1390)
!1478 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !622, file: !622, line: 526, type: !1479, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !621, retainedNodes: !1482)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !8, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !625, line: 1212, baseType: !624)
!1482 = !{!1483, !1484, !1485, !1486}
!1483 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1478, file: !622, line: 526, type: !8)
!1484 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1478, file: !622, line: 526, type: !1481)
!1485 = !DILocalVariable(name: "no", scope: !1478, file: !622, line: 529, type: !890)
!1486 = !DILocalVariable(name: "remainder", scope: !1478, file: !622, line: 530, type: !890)
!1487 = !DILocation(line: 0, scope: !1478)
!1488 = !DILocation(line: 531, column: 19, scope: !1478)
!1489 = !DILocation(line: 532, column: 17, scope: !1478)
!1490 = !DILocation(line: 534, column: 9, scope: !1478)
!1491 = !DILocation(line: 536, column: 9, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !622, line: 534, column: 45)
!1493 = distinct !DILexicalBlock(scope: !1478, file: !622, line: 534, column: 9)
!1494 = !DILocation(line: 538, column: 56, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1492, file: !622, line: 536, column: 21)
!1496 = !DILocation(line: 538, column: 53, scope: !1495)
!1497 = !DILocation(line: 538, column: 47, scope: !1495)
!1498 = !DILocation(line: 539, column: 17, scope: !1495)
!1499 = !DILocation(line: 541, column: 56, scope: !1495)
!1500 = !DILocation(line: 541, column: 53, scope: !1495)
!1501 = !DILocation(line: 541, column: 47, scope: !1495)
!1502 = !DILocation(line: 542, column: 17, scope: !1495)
!1503 = !DILocation(line: 548, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !622, line: 547, column: 51)
!1505 = distinct !DILexicalBlock(scope: !1493, file: !622, line: 547, column: 16)
!1506 = !DILocation(line: 550, column: 57, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1504, file: !622, line: 548, column: 21)
!1508 = !DILocation(line: 550, column: 54, scope: !1507)
!1509 = !DILocation(line: 550, column: 50, scope: !1507)
!1510 = !DILocation(line: 550, column: 47, scope: !1507)
!1511 = !DILocation(line: 551, column: 17, scope: !1507)
!1512 = !DILocation(line: 553, column: 57, scope: !1507)
!1513 = !DILocation(line: 553, column: 54, scope: !1507)
!1514 = !DILocation(line: 553, column: 50, scope: !1507)
!1515 = !DILocation(line: 553, column: 47, scope: !1507)
!1516 = !DILocation(line: 554, column: 17, scope: !1507)
!1517 = !DILocation(line: 560, column: 1, scope: !1478)
!1518 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !634, file: !634, line: 85, type: !1519, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !633, retainedNodes: !1523)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!1521, !1522, !54}
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !9, line: 79, baseType: null)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !637, line: 225, baseType: !636)
!1523 = !{!1524, !1525, !1526}
!1524 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1518, file: !634, line: 85, type: !1522)
!1525 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1518, file: !634, line: 85, type: !54)
!1526 = !DILocalVariable(name: "temp", scope: !1518, file: !634, line: 87, type: !12)
!1527 = !DILocation(line: 0, scope: !1518)
!1528 = !DILocation(line: 88, column: 5, scope: !1518)
!1529 = !DILocation(line: 91, column: 20, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1518, file: !634, line: 88, column: 24)
!1531 = !DILocation(line: 92, column: 18, scope: !1530)
!1532 = !DILocation(line: 93, column: 66, scope: !1530)
!1533 = !DILocation(line: 93, column: 63, scope: !1530)
!1534 = !DILocation(line: 93, column: 56, scope: !1530)
!1535 = !DILocation(line: 94, column: 13, scope: !1530)
!1536 = !DILocation(line: 97, column: 20, scope: !1530)
!1537 = !DILocation(line: 98, column: 18, scope: !1530)
!1538 = !DILocation(line: 99, column: 67, scope: !1530)
!1539 = !DILocation(line: 99, column: 74, scope: !1530)
!1540 = !DILocation(line: 99, column: 64, scope: !1530)
!1541 = !DILocation(line: 99, column: 56, scope: !1530)
!1542 = !DILocation(line: 100, column: 13, scope: !1530)
!1543 = !DILocation(line: 103, column: 20, scope: !1530)
!1544 = !DILocation(line: 104, column: 18, scope: !1530)
!1545 = !DILocation(line: 105, column: 67, scope: !1530)
!1546 = !DILocation(line: 105, column: 74, scope: !1530)
!1547 = !DILocation(line: 105, column: 64, scope: !1530)
!1548 = !DILocation(line: 105, column: 56, scope: !1530)
!1549 = !DILocation(line: 106, column: 13, scope: !1530)
!1550 = !DILocation(line: 109, column: 20, scope: !1530)
!1551 = !DILocation(line: 110, column: 18, scope: !1530)
!1552 = !DILocation(line: 111, column: 67, scope: !1530)
!1553 = !DILocation(line: 111, column: 74, scope: !1530)
!1554 = !DILocation(line: 111, column: 64, scope: !1530)
!1555 = !DILocation(line: 111, column: 56, scope: !1530)
!1556 = !DILocation(line: 112, column: 13, scope: !1530)
!1557 = !DILocation(line: 115, column: 20, scope: !1530)
!1558 = !DILocation(line: 116, column: 18, scope: !1530)
!1559 = !DILocation(line: 117, column: 67, scope: !1530)
!1560 = !DILocation(line: 117, column: 74, scope: !1530)
!1561 = !DILocation(line: 117, column: 64, scope: !1530)
!1562 = !DILocation(line: 117, column: 56, scope: !1530)
!1563 = !DILocation(line: 118, column: 13, scope: !1530)
!1564 = !DILocation(line: 121, column: 20, scope: !1530)
!1565 = !DILocation(line: 122, column: 18, scope: !1530)
!1566 = !DILocation(line: 123, column: 67, scope: !1530)
!1567 = !DILocation(line: 123, column: 74, scope: !1530)
!1568 = !DILocation(line: 123, column: 64, scope: !1530)
!1569 = !DILocation(line: 123, column: 56, scope: !1530)
!1570 = !DILocation(line: 124, column: 13, scope: !1530)
!1571 = !DILocation(line: 127, column: 20, scope: !1530)
!1572 = !DILocation(line: 128, column: 18, scope: !1530)
!1573 = !DILocation(line: 129, column: 67, scope: !1530)
!1574 = !DILocation(line: 129, column: 74, scope: !1530)
!1575 = !DILocation(line: 129, column: 64, scope: !1530)
!1576 = !DILocation(line: 129, column: 56, scope: !1530)
!1577 = !DILocation(line: 130, column: 13, scope: !1530)
!1578 = !DILocation(line: 133, column: 20, scope: !1530)
!1579 = !DILocation(line: 134, column: 18, scope: !1530)
!1580 = !DILocation(line: 135, column: 67, scope: !1530)
!1581 = !DILocation(line: 135, column: 74, scope: !1530)
!1582 = !DILocation(line: 135, column: 64, scope: !1530)
!1583 = !DILocation(line: 135, column: 56, scope: !1530)
!1584 = !DILocation(line: 136, column: 13, scope: !1530)
!1585 = !DILocation(line: 139, column: 20, scope: !1530)
!1586 = !DILocation(line: 140, column: 18, scope: !1530)
!1587 = !DILocation(line: 141, column: 67, scope: !1530)
!1588 = !DILocation(line: 141, column: 64, scope: !1530)
!1589 = !DILocation(line: 141, column: 56, scope: !1530)
!1590 = !DILocation(line: 142, column: 13, scope: !1530)
!1591 = !DILocation(line: 145, column: 20, scope: !1530)
!1592 = !DILocation(line: 146, column: 18, scope: !1530)
!1593 = !DILocation(line: 147, column: 67, scope: !1530)
!1594 = !DILocation(line: 147, column: 74, scope: !1530)
!1595 = !DILocation(line: 147, column: 64, scope: !1530)
!1596 = !DILocation(line: 147, column: 56, scope: !1530)
!1597 = !DILocation(line: 148, column: 13, scope: !1530)
!1598 = !DILocation(line: 151, column: 20, scope: !1530)
!1599 = !DILocation(line: 152, column: 18, scope: !1530)
!1600 = !DILocation(line: 153, column: 67, scope: !1530)
!1601 = !DILocation(line: 153, column: 74, scope: !1530)
!1602 = !DILocation(line: 153, column: 64, scope: !1530)
!1603 = !DILocation(line: 153, column: 56, scope: !1530)
!1604 = !DILocation(line: 154, column: 13, scope: !1530)
!1605 = !DILocation(line: 157, column: 20, scope: !1530)
!1606 = !DILocation(line: 158, column: 18, scope: !1530)
!1607 = !DILocation(line: 159, column: 67, scope: !1530)
!1608 = !DILocation(line: 159, column: 74, scope: !1530)
!1609 = !DILocation(line: 159, column: 64, scope: !1530)
!1610 = !DILocation(line: 159, column: 56, scope: !1530)
!1611 = !DILocation(line: 160, column: 29, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1530, file: !634, line: 160, column: 17)
!1613 = !DILocation(line: 161, column: 17, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1612, file: !634, line: 160, column: 60)
!1615 = !DILocation(line: 162, column: 13, scope: !1614)
!1616 = !DILocation(line: 166, column: 20, scope: !1530)
!1617 = !DILocation(line: 167, column: 18, scope: !1530)
!1618 = !DILocation(line: 168, column: 67, scope: !1530)
!1619 = !DILocation(line: 168, column: 74, scope: !1530)
!1620 = !DILocation(line: 168, column: 64, scope: !1530)
!1621 = !DILocation(line: 168, column: 56, scope: !1530)
!1622 = !DILocation(line: 169, column: 29, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1530, file: !634, line: 169, column: 17)
!1624 = !DILocation(line: 170, column: 17, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1623, file: !634, line: 169, column: 45)
!1626 = !DILocation(line: 171, column: 13, scope: !1625)
!1627 = !DILocation(line: 175, column: 20, scope: !1530)
!1628 = !DILocation(line: 176, column: 18, scope: !1530)
!1629 = !DILocation(line: 177, column: 67, scope: !1530)
!1630 = !DILocation(line: 177, column: 74, scope: !1530)
!1631 = !DILocation(line: 177, column: 64, scope: !1530)
!1632 = !DILocation(line: 177, column: 56, scope: !1530)
!1633 = !DILocation(line: 178, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1530, file: !634, line: 178, column: 17)
!1635 = !DILocation(line: 178, column: 17, scope: !1530)
!1636 = !DILocation(line: 179, column: 17, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !634, line: 178, column: 30)
!1638 = !DILocation(line: 180, column: 13, scope: !1637)
!1639 = !DILocation(line: 184, column: 20, scope: !1530)
!1640 = !DILocation(line: 185, column: 18, scope: !1530)
!1641 = !DILocation(line: 186, column: 67, scope: !1530)
!1642 = !DILocation(line: 186, column: 74, scope: !1530)
!1643 = !DILocation(line: 186, column: 64, scope: !1530)
!1644 = !DILocation(line: 186, column: 56, scope: !1530)
!1645 = !DILocation(line: 187, column: 29, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1530, file: !634, line: 187, column: 17)
!1647 = !DILocation(line: 188, column: 17, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1646, file: !634, line: 187, column: 45)
!1649 = !DILocation(line: 189, column: 13, scope: !1648)
!1650 = !DILocation(line: 193, column: 20, scope: !1530)
!1651 = !DILocation(line: 194, column: 18, scope: !1530)
!1652 = !DILocation(line: 195, column: 67, scope: !1530)
!1653 = !DILocation(line: 195, column: 74, scope: !1530)
!1654 = !DILocation(line: 195, column: 64, scope: !1530)
!1655 = !DILocation(line: 195, column: 56, scope: !1530)
!1656 = !DILocation(line: 196, column: 29, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1530, file: !634, line: 196, column: 17)
!1658 = !DILocation(line: 197, column: 17, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1657, file: !634, line: 196, column: 45)
!1660 = !DILocation(line: 198, column: 13, scope: !1659)
!1661 = !DILocation(line: 202, column: 20, scope: !1530)
!1662 = !DILocation(line: 203, column: 18, scope: !1530)
!1663 = !DILocation(line: 204, column: 67, scope: !1530)
!1664 = !DILocation(line: 204, column: 64, scope: !1530)
!1665 = !DILocation(line: 204, column: 56, scope: !1530)
!1666 = !DILocation(line: 205, column: 29, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1530, file: !634, line: 205, column: 17)
!1668 = !DILocation(line: 206, column: 17, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1667, file: !634, line: 205, column: 45)
!1670 = !DILocation(line: 207, column: 13, scope: !1669)
!1671 = !DILocation(line: 211, column: 20, scope: !1530)
!1672 = !DILocation(line: 212, column: 18, scope: !1530)
!1673 = !DILocation(line: 213, column: 67, scope: !1530)
!1674 = !DILocation(line: 213, column: 74, scope: !1530)
!1675 = !DILocation(line: 213, column: 64, scope: !1530)
!1676 = !DILocation(line: 213, column: 56, scope: !1530)
!1677 = !DILocation(line: 214, column: 13, scope: !1530)
!1678 = !DILocation(line: 217, column: 20, scope: !1530)
!1679 = !DILocation(line: 218, column: 18, scope: !1530)
!1680 = !DILocation(line: 219, column: 67, scope: !1530)
!1681 = !DILocation(line: 219, column: 74, scope: !1530)
!1682 = !DILocation(line: 219, column: 64, scope: !1530)
!1683 = !DILocation(line: 219, column: 56, scope: !1530)
!1684 = !DILocation(line: 220, column: 13, scope: !1530)
!1685 = !DILocation(line: 223, column: 20, scope: !1530)
!1686 = !DILocation(line: 224, column: 18, scope: !1530)
!1687 = !DILocation(line: 225, column: 67, scope: !1530)
!1688 = !DILocation(line: 225, column: 74, scope: !1530)
!1689 = !DILocation(line: 225, column: 64, scope: !1530)
!1690 = !DILocation(line: 225, column: 56, scope: !1530)
!1691 = !DILocation(line: 226, column: 13, scope: !1530)
!1692 = !DILocation(line: 229, column: 20, scope: !1530)
!1693 = !DILocation(line: 230, column: 18, scope: !1530)
!1694 = !DILocation(line: 231, column: 67, scope: !1530)
!1695 = !DILocation(line: 231, column: 74, scope: !1530)
!1696 = !DILocation(line: 231, column: 64, scope: !1530)
!1697 = !DILocation(line: 231, column: 56, scope: !1530)
!1698 = !DILocation(line: 232, column: 13, scope: !1530)
!1699 = !DILocation(line: 235, column: 20, scope: !1530)
!1700 = !DILocation(line: 236, column: 18, scope: !1530)
!1701 = !DILocation(line: 237, column: 66, scope: !1530)
!1702 = !DILocation(line: 237, column: 73, scope: !1530)
!1703 = !DILocation(line: 237, column: 63, scope: !1530)
!1704 = !DILocation(line: 237, column: 56, scope: !1530)
!1705 = !DILocation(line: 238, column: 13, scope: !1530)
!1706 = !DILocation(line: 241, column: 20, scope: !1530)
!1707 = !DILocation(line: 242, column: 18, scope: !1530)
!1708 = !DILocation(line: 243, column: 67, scope: !1530)
!1709 = !DILocation(line: 243, column: 74, scope: !1530)
!1710 = !DILocation(line: 243, column: 64, scope: !1530)
!1711 = !DILocation(line: 243, column: 56, scope: !1530)
!1712 = !DILocation(line: 244, column: 13, scope: !1530)
!1713 = !DILocation(line: 247, column: 20, scope: !1530)
!1714 = !DILocation(line: 248, column: 18, scope: !1530)
!1715 = !DILocation(line: 249, column: 67, scope: !1530)
!1716 = !DILocation(line: 249, column: 74, scope: !1530)
!1717 = !DILocation(line: 249, column: 64, scope: !1530)
!1718 = !DILocation(line: 249, column: 56, scope: !1530)
!1719 = !DILocation(line: 250, column: 13, scope: !1530)
!1720 = !DILocation(line: 253, column: 20, scope: !1530)
!1721 = !DILocation(line: 254, column: 18, scope: !1530)
!1722 = !DILocation(line: 255, column: 67, scope: !1530)
!1723 = !DILocation(line: 255, column: 74, scope: !1530)
!1724 = !DILocation(line: 255, column: 64, scope: !1530)
!1725 = !DILocation(line: 255, column: 56, scope: !1530)
!1726 = !DILocation(line: 256, column: 13, scope: !1530)
!1727 = !DILocation(line: 259, column: 20, scope: !1530)
!1728 = !DILocation(line: 260, column: 18, scope: !1530)
!1729 = !DILocation(line: 261, column: 67, scope: !1530)
!1730 = !DILocation(line: 261, column: 74, scope: !1530)
!1731 = !DILocation(line: 261, column: 64, scope: !1530)
!1732 = !DILocation(line: 261, column: 56, scope: !1530)
!1733 = !DILocation(line: 262, column: 13, scope: !1530)
!1734 = !DILocation(line: 265, column: 20, scope: !1530)
!1735 = !DILocation(line: 266, column: 18, scope: !1530)
!1736 = !DILocation(line: 267, column: 67, scope: !1530)
!1737 = !DILocation(line: 267, column: 74, scope: !1530)
!1738 = !DILocation(line: 267, column: 64, scope: !1530)
!1739 = !DILocation(line: 267, column: 56, scope: !1530)
!1740 = !DILocation(line: 268, column: 13, scope: !1530)
!1741 = !DILocation(line: 271, column: 20, scope: !1530)
!1742 = !DILocation(line: 272, column: 18, scope: !1530)
!1743 = !DILocation(line: 273, column: 67, scope: !1530)
!1744 = !DILocation(line: 273, column: 74, scope: !1530)
!1745 = !DILocation(line: 273, column: 64, scope: !1530)
!1746 = !DILocation(line: 273, column: 56, scope: !1530)
!1747 = !DILocation(line: 274, column: 13, scope: !1530)
!1748 = !DILocation(line: 278, column: 1, scope: !1518)
!1749 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !715, file: !715, line: 47, type: !1750, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !1752)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !12}
!1752 = !{!1753}
!1753 = !DILocalVariable(name: "addr", arg: 1, scope: !1749, file: !715, line: 47, type: !12)
!1754 = !DILocation(line: 0, scope: !1749)
!1755 = !DILocation(line: 49, column: 15, scope: !1749)
!1756 = !DILocation(line: 51, column: 5, scope: !1749)
!1757 = !{i64 2624}
!1758 = !DILocation(line: 52, column: 5, scope: !1749)
!1759 = !{i64 2651}
!1760 = !DILocation(line: 53, column: 1, scope: !1749)
!1761 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !715, file: !715, line: 56, type: !1762, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !7}
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "source", arg: 1, scope: !1761, file: !715, line: 56, type: !7)
!1766 = !DILocation(line: 0, scope: !1761)
!1767 = !DILocation(line: 58, column: 16, scope: !1761)
!1768 = !DILocation(line: 59, column: 1, scope: !1761)
!1769 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !715, file: !715, line: 61, type: !1770, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!12}
!1772 = !{!1773}
!1773 = !DILocalVariable(name: "mask", scope: !1769, file: !715, line: 63, type: !12)
!1774 = !DILocation(line: 470, column: 3, scope: !1775, inlinedAt: !1779)
!1775 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1776, file: !1776, line: 466, type: !1770, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !1777)
!1776 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!1777 = !{!1778}
!1778 = !DILocalVariable(name: "result", scope: !1775, file: !1776, line: 468, type: !12)
!1779 = distinct !DILocation(line: 64, column: 5, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1769, file: !715, line: 64, column: 5)
!1781 = !{i64 302173}
!1782 = !DILocation(line: 0, scope: !1775, inlinedAt: !1779)
!1783 = !DILocation(line: 0, scope: !1769)
!1784 = !DILocation(line: 330, column: 3, scope: !1785, inlinedAt: !1787)
!1785 = distinct !DISubprogram(name: "__disable_irq", scope: !1776, file: !1776, line: 328, type: !276, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !1786)
!1786 = !{}
!1787 = distinct !DILocation(line: 64, column: 5, scope: !1780)
!1788 = !{i64 298837}
!1789 = !DILocation(line: 65, column: 5, scope: !1769)
!1790 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !715, file: !715, line: 68, type: !1750, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !1791)
!1791 = !{!1792}
!1792 = !DILocalVariable(name: "mask", arg: 1, scope: !1790, file: !715, line: 68, type: !12)
!1793 = !DILocation(line: 0, scope: !1790)
!1794 = !DILocalVariable(name: "priMask", arg: 1, scope: !1795, file: !1776, line: 481, type: !12)
!1795 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1776, file: !1776, line: 481, type: !1750, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !1796)
!1796 = !{!1794}
!1797 = !DILocation(line: 0, scope: !1795, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 70, column: 5, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1790, file: !715, line: 70, column: 5)
!1800 = !DILocation(line: 483, column: 3, scope: !1795, inlinedAt: !1798)
!1801 = !{i64 302491}
!1802 = !DILocation(line: 71, column: 1, scope: !1790)
!1803 = distinct !DISubprogram(name: "pinmux_config", scope: !760, file: !760, line: 54, type: !1804, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !1806)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!122, !862, !12}
!1806 = !{!1807, !1808, !1809}
!1807 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !1803, file: !760, line: 54, type: !862)
!1808 = !DILocalVariable(name: "function", arg: 2, scope: !1803, file: !760, line: 54, type: !12)
!1809 = !DILocalVariable(name: "ePadIndex", scope: !1803, file: !760, line: 56, type: !1522)
!1810 = !DILocation(line: 0, scope: !1803)
!1811 = !DILocation(line: 60, column: 5, scope: !1803)
!1812 = !DILocation(line: 205, column: 38, scope: !1803)
!1813 = !DILocation(line: 205, column: 5, scope: !1803)
!1814 = !DILocation(line: 207, column: 5, scope: !1803)
!1815 = !DILocation(line: 208, column: 1, scope: !1803)
!1816 = distinct !DISubprogram(name: "top_xtal_init", scope: !3, file: !3, line: 52, type: !276, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1817)
!1817 = !{!1818, !1819}
!1818 = !DILocalVariable(name: "u4RegVal", scope: !1816, file: !3, line: 54, type: !12)
!1819 = !DILocalVariable(name: "reg", scope: !1816, file: !3, line: 55, type: !509)
!1820 = !DILocation(line: 0, scope: !1816)
!1821 = !DILocation(line: 55, column: 25, scope: !1816)
!1822 = !DILocation(line: 56, column: 16, scope: !1816)
!1823 = !DILocation(line: 56, column: 23, scope: !1816)
!1824 = !DILocation(line: 58, column: 16, scope: !1816)
!1825 = !DILocation(line: 61, column: 5, scope: !1816)
!1826 = !DILocation(line: 59, column: 14, scope: !1816)
!1827 = !DILocation(line: 0, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 61, column: 18)
!1829 = !DILocation(line: 87, column: 38, scope: !1816)
!1830 = !DILocation(line: 88, column: 21, scope: !1816)
!1831 = !DILocation(line: 88, column: 19, scope: !1816)
!1832 = !DILocation(line: 89, column: 5, scope: !1816)
!1833 = !DILocation(line: 90, column: 17, scope: !1816)
!1834 = !DILocation(line: 90, column: 33, scope: !1816)
!1835 = !DILocation(line: 90, column: 5, scope: !1816)
!1836 = !DILocation(line: 91, column: 1, scope: !1816)
!1837 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !3, file: !3, line: 98, type: !1770, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1786)
!1838 = !DILocation(line: 100, column: 12, scope: !1837)
!1839 = !DILocation(line: 100, column: 5, scope: !1837)
!1840 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !3, file: !3, line: 108, type: !1770, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1786)
!1841 = !DILocation(line: 110, column: 12, scope: !1840)
!1842 = !DILocation(line: 110, column: 5, scope: !1840)
!1843 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !3, file: !3, line: 118, type: !276, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1844)
!1844 = !{!1845, !1846}
!1845 = !DILocalVariable(name: "reg", scope: !1843, file: !3, line: 120, type: !11)
!1846 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1843, file: !3, line: 121, type: !10)
!1847 = !DILocation(line: 120, column: 5, scope: !1843)
!1848 = !DILocation(line: 120, column: 23, scope: !1843)
!1849 = !DILocation(line: 0, scope: !1843)
!1850 = !DILocation(line: 123, column: 11, scope: !1843)
!1851 = !DILocation(line: 123, column: 9, scope: !1843)
!1852 = !DILocation(line: 124, column: 12, scope: !1843)
!1853 = !DILocation(line: 124, column: 16, scope: !1843)
!1854 = !DILocation(line: 124, column: 39, scope: !1843)
!1855 = !DILocation(line: 124, column: 9, scope: !1843)
!1856 = !DILocation(line: 126, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 126, column: 9)
!1858 = !DILocation(line: 126, column: 13, scope: !1857)
!1859 = !DILocation(line: 126, column: 9, scope: !1843)
!1860 = !DILocation(line: 127, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 126, column: 47)
!1862 = !DILocation(line: 127, column: 13, scope: !1861)
!1863 = !DILocation(line: 128, column: 15, scope: !1861)
!1864 = !DILocation(line: 128, column: 19, scope: !1861)
!1865 = !DILocation(line: 128, column: 13, scope: !1861)
!1866 = !DILocation(line: 129, column: 15, scope: !1861)
!1867 = !DILocation(line: 129, column: 19, scope: !1861)
!1868 = !DILocation(line: 129, column: 13, scope: !1861)
!1869 = !DILocation(line: 130, column: 46, scope: !1861)
!1870 = !DILocation(line: 130, column: 9, scope: !1861)
!1871 = !DILocation(line: 132, column: 9, scope: !1861)
!1872 = !DILocation(line: 133, column: 19, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 132, column: 12)
!1874 = !DILocation(line: 133, column: 17, scope: !1873)
!1875 = !DILocation(line: 134, column: 19, scope: !1873)
!1876 = !DILocation(line: 134, column: 23, scope: !1873)
!1877 = !DILocation(line: 134, column: 17, scope: !1873)
!1878 = !DILocation(line: 135, column: 19, scope: !1861)
!1879 = !DILocation(line: 135, column: 18, scope: !1861)
!1880 = !DILocation(line: 135, column: 9, scope: !1873)
!1881 = distinct !{!1881, !1871, !1882}
!1882 = !DILocation(line: 135, column: 22, scope: !1861)
!1883 = !DILocation(line: 138, column: 1, scope: !1843)
!1884 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !1885, file: !1885, line: 176, type: !1886, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1890)
!1885 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/ept_configure_pins_by_ept/GCC")
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!12, !1888}
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1890 = !{!1891}
!1891 = !DILocalVariable(name: "Register", arg: 1, scope: !1884, file: !1885, line: 176, type: !1888)
!1892 = !DILocation(line: 0, scope: !1884)
!1893 = !DILocation(line: 178, column: 13, scope: !1884)
!1894 = !DILocation(line: 178, column: 12, scope: !1884)
!1895 = !DILocation(line: 178, column: 5, scope: !1884)
!1896 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !1885, file: !1885, line: 171, type: !1897, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1899)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1888, !12}
!1899 = !{!1900, !1901}
!1900 = !DILocalVariable(name: "Register", arg: 1, scope: !1896, file: !1885, line: 171, type: !1888)
!1901 = !DILocalVariable(name: "Value", arg: 2, scope: !1896, file: !1885, line: 171, type: !12)
!1902 = !DILocation(line: 0, scope: !1896)
!1903 = !DILocation(line: 173, column: 6, scope: !1896)
!1904 = !DILocation(line: 173, column: 36, scope: !1896)
!1905 = !DILocation(line: 174, column: 1, scope: !1896)
!1906 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !3, file: !3, line: 145, type: !1907, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1909)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !151}
!1909 = !{!1910, !1911, !1912}
!1910 = !DILocalVariable(name: "fg960M", arg: 1, scope: !1906, file: !3, line: 145, type: !151)
!1911 = !DILocalVariable(name: "reg", scope: !1906, file: !3, line: 147, type: !11)
!1912 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1906, file: !3, line: 148, type: !10)
!1913 = !DILocation(line: 0, scope: !1906)
!1914 = !DILocation(line: 147, column: 5, scope: !1906)
!1915 = !DILocation(line: 147, column: 23, scope: !1906)
!1916 = !DILocation(line: 150, column: 11, scope: !1906)
!1917 = !DILocation(line: 150, column: 9, scope: !1906)
!1918 = !DILocation(line: 151, column: 12, scope: !1906)
!1919 = !DILocation(line: 151, column: 16, scope: !1906)
!1920 = !DILocation(line: 151, column: 39, scope: !1906)
!1921 = !DILocation(line: 151, column: 9, scope: !1906)
!1922 = !DILocation(line: 153, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 153, column: 9)
!1924 = !DILocation(line: 153, column: 13, scope: !1923)
!1925 = !DILocation(line: 153, column: 9, scope: !1906)
!1926 = !DILocation(line: 154, column: 15, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 153, column: 45)
!1928 = !DILocation(line: 154, column: 13, scope: !1927)
!1929 = !DILocation(line: 155, column: 15, scope: !1927)
!1930 = !DILocation(line: 155, column: 19, scope: !1927)
!1931 = !DILocation(line: 155, column: 13, scope: !1927)
!1932 = !DILocation(line: 156, column: 15, scope: !1927)
!1933 = !DILocation(line: 156, column: 19, scope: !1927)
!1934 = !DILocation(line: 156, column: 13, scope: !1927)
!1935 = !DILocation(line: 157, column: 15, scope: !1927)
!1936 = !DILocation(line: 157, column: 13, scope: !1927)
!1937 = !DILocation(line: 158, column: 46, scope: !1927)
!1938 = !DILocation(line: 158, column: 9, scope: !1927)
!1939 = !DILocation(line: 160, column: 15, scope: !1927)
!1940 = !DILocation(line: 160, column: 13, scope: !1927)
!1941 = !DILocation(line: 161, column: 15, scope: !1927)
!1942 = !DILocation(line: 161, column: 19, scope: !1927)
!1943 = !DILocation(line: 161, column: 13, scope: !1927)
!1944 = !DILocation(line: 162, column: 15, scope: !1927)
!1945 = !DILocation(line: 162, column: 19, scope: !1927)
!1946 = !DILocation(line: 162, column: 13, scope: !1927)
!1947 = !DILocation(line: 163, column: 15, scope: !1927)
!1948 = !DILocation(line: 163, column: 19, scope: !1927)
!1949 = !DILocation(line: 163, column: 13, scope: !1927)
!1950 = !DILocation(line: 164, column: 46, scope: !1927)
!1951 = !DILocation(line: 164, column: 9, scope: !1927)
!1952 = !DILocation(line: 166, column: 9, scope: !1927)
!1953 = !DILocation(line: 167, column: 19, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 166, column: 12)
!1955 = !DILocation(line: 167, column: 17, scope: !1954)
!1956 = !DILocation(line: 168, column: 19, scope: !1954)
!1957 = !DILocation(line: 168, column: 23, scope: !1954)
!1958 = !DILocation(line: 168, column: 17, scope: !1954)
!1959 = !DILocation(line: 169, column: 19, scope: !1927)
!1960 = !DILocation(line: 169, column: 18, scope: !1927)
!1961 = !DILocation(line: 169, column: 9, scope: !1954)
!1962 = distinct !{!1962, !1952, !1963}
!1963 = !DILocation(line: 169, column: 22, scope: !1927)
!1964 = !DILocation(line: 171, column: 15, scope: !1927)
!1965 = !DILocation(line: 171, column: 13, scope: !1927)
!1966 = !DILocation(line: 172, column: 15, scope: !1927)
!1967 = !DILocation(line: 172, column: 19, scope: !1927)
!1968 = !DILocation(line: 172, column: 13, scope: !1927)
!1969 = !DILocation(line: 173, column: 15, scope: !1927)
!1970 = !DILocation(line: 173, column: 19, scope: !1927)
!1971 = !DILocation(line: 173, column: 13, scope: !1927)
!1972 = !DILocation(line: 174, column: 5, scope: !1927)
!1973 = !DILocation(line: 176, column: 11, scope: !1906)
!1974 = !DILocation(line: 176, column: 9, scope: !1906)
!1975 = !DILocation(line: 177, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 177, column: 9)
!1977 = !DILocation(line: 0, scope: !1976)
!1978 = !DILocation(line: 177, column: 9, scope: !1906)
!1979 = !DILocation(line: 178, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 177, column: 17)
!1981 = !DILocation(line: 178, column: 13, scope: !1980)
!1982 = !DILocation(line: 179, column: 5, scope: !1980)
!1983 = !DILocation(line: 180, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 179, column: 12)
!1985 = !DILocation(line: 182, column: 42, scope: !1906)
!1986 = !DILocation(line: 182, column: 5, scope: !1906)
!1987 = !DILocation(line: 184, column: 1, scope: !1906)
!1988 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !3, file: !3, line: 191, type: !276, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1989)
!1989 = !{!1990, !1991}
!1990 = !DILocalVariable(name: "reg", scope: !1988, file: !3, line: 193, type: !11)
!1991 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1988, file: !3, line: 194, type: !10)
!1992 = !DILocation(line: 193, column: 5, scope: !1988)
!1993 = !DILocation(line: 193, column: 23, scope: !1988)
!1994 = !DILocation(line: 0, scope: !1988)
!1995 = !DILocation(line: 196, column: 11, scope: !1988)
!1996 = !DILocation(line: 196, column: 9, scope: !1988)
!1997 = !DILocation(line: 197, column: 11, scope: !1988)
!1998 = !DILocation(line: 197, column: 15, scope: !1988)
!1999 = !DILocation(line: 197, column: 9, scope: !1988)
!2000 = !DILocation(line: 198, column: 11, scope: !1988)
!2001 = !DILocation(line: 198, column: 15, scope: !1988)
!2002 = !DILocation(line: 198, column: 9, scope: !1988)
!2003 = !DILocation(line: 199, column: 11, scope: !1988)
!2004 = !DILocation(line: 199, column: 9, scope: !1988)
!2005 = !DILocation(line: 200, column: 42, scope: !1988)
!2006 = !DILocation(line: 200, column: 5, scope: !1988)
!2007 = !DILocation(line: 202, column: 11, scope: !1988)
!2008 = !DILocation(line: 202, column: 9, scope: !1988)
!2009 = !DILocation(line: 203, column: 11, scope: !1988)
!2010 = !DILocation(line: 203, column: 15, scope: !1988)
!2011 = !DILocation(line: 203, column: 9, scope: !1988)
!2012 = !DILocation(line: 204, column: 11, scope: !1988)
!2013 = !DILocation(line: 204, column: 15, scope: !1988)
!2014 = !DILocation(line: 204, column: 9, scope: !1988)
!2015 = !DILocation(line: 205, column: 11, scope: !1988)
!2016 = !DILocation(line: 205, column: 9, scope: !1988)
!2017 = !DILocation(line: 206, column: 42, scope: !1988)
!2018 = !DILocation(line: 206, column: 5, scope: !1988)
!2019 = !DILocation(line: 209, column: 1, scope: !1988)
!2020 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !3, file: !3, line: 216, type: !276, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2021)
!2021 = !{!2022, !2023}
!2022 = !DILocalVariable(name: "reg", scope: !2020, file: !3, line: 218, type: !11)
!2023 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2020, file: !3, line: 219, type: !10)
!2024 = !DILocation(line: 218, column: 5, scope: !2020)
!2025 = !DILocation(line: 218, column: 23, scope: !2020)
!2026 = !DILocation(line: 0, scope: !2020)
!2027 = !DILocation(line: 222, column: 11, scope: !2020)
!2028 = !DILocation(line: 222, column: 9, scope: !2020)
!2029 = !DILocation(line: 223, column: 11, scope: !2020)
!2030 = !DILocation(line: 223, column: 15, scope: !2020)
!2031 = !DILocation(line: 223, column: 9, scope: !2020)
!2032 = !DILocation(line: 224, column: 11, scope: !2020)
!2033 = !DILocation(line: 224, column: 9, scope: !2020)
!2034 = !DILocation(line: 225, column: 39, scope: !2020)
!2035 = !DILocation(line: 225, column: 5, scope: !2020)
!2036 = !DILocation(line: 228, column: 11, scope: !2020)
!2037 = !DILocation(line: 228, column: 9, scope: !2020)
!2038 = !DILocation(line: 229, column: 11, scope: !2020)
!2039 = !DILocation(line: 229, column: 15, scope: !2020)
!2040 = !DILocation(line: 229, column: 9, scope: !2020)
!2041 = !DILocation(line: 230, column: 11, scope: !2020)
!2042 = !DILocation(line: 230, column: 9, scope: !2020)
!2043 = !DILocation(line: 231, column: 39, scope: !2020)
!2044 = !DILocation(line: 231, column: 5, scope: !2020)
!2045 = !DILocation(line: 233, column: 5, scope: !2020)
!2046 = !DILocation(line: 233, column: 12, scope: !2020)
!2047 = !DILocation(line: 233, column: 19, scope: !2020)
!2048 = !DILocation(line: 233, column: 16, scope: !2020)
!2049 = distinct !{!2049, !2045, !2050}
!2050 = !DILocation(line: 233, column: 52, scope: !2020)
!2051 = !DILocation(line: 235, column: 21, scope: !2020)
!2052 = !DILocation(line: 235, column: 19, scope: !2020)
!2053 = !DILocation(line: 236, column: 5, scope: !2020)
!2054 = !DILocation(line: 237, column: 17, scope: !2020)
!2055 = !DILocation(line: 237, column: 33, scope: !2020)
!2056 = !DILocation(line: 237, column: 5, scope: !2020)
!2057 = !DILocation(line: 239, column: 1, scope: !2020)
!2058 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !3, file: !3, line: 246, type: !276, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "reg", scope: !2058, file: !3, line: 248, type: !11)
!2061 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2058, file: !3, line: 249, type: !10)
!2062 = !DILocation(line: 248, column: 5, scope: !2058)
!2063 = !DILocation(line: 248, column: 23, scope: !2058)
!2064 = !DILocation(line: 0, scope: !2058)
!2065 = !DILocation(line: 252, column: 5, scope: !2058)
!2066 = !DILocation(line: 255, column: 11, scope: !2058)
!2067 = !DILocation(line: 255, column: 9, scope: !2058)
!2068 = !DILocation(line: 256, column: 11, scope: !2058)
!2069 = !DILocation(line: 256, column: 15, scope: !2058)
!2070 = !DILocation(line: 256, column: 9, scope: !2058)
!2071 = !DILocation(line: 257, column: 11, scope: !2058)
!2072 = !DILocation(line: 257, column: 15, scope: !2058)
!2073 = !DILocation(line: 257, column: 9, scope: !2058)
!2074 = !DILocation(line: 258, column: 39, scope: !2058)
!2075 = !DILocation(line: 258, column: 5, scope: !2058)
!2076 = !DILocation(line: 260, column: 5, scope: !2058)
!2077 = !DILocation(line: 260, column: 12, scope: !2058)
!2078 = !DILocation(line: 260, column: 19, scope: !2058)
!2079 = !DILocation(line: 260, column: 16, scope: !2058)
!2080 = distinct !{!2080, !2076, !2081}
!2081 = !DILocation(line: 260, column: 52, scope: !2058)
!2082 = !DILocation(line: 263, column: 11, scope: !2058)
!2083 = !DILocation(line: 263, column: 9, scope: !2058)
!2084 = !DILocation(line: 264, column: 11, scope: !2058)
!2085 = !DILocation(line: 264, column: 15, scope: !2058)
!2086 = !DILocation(line: 264, column: 9, scope: !2058)
!2087 = !DILocation(line: 265, column: 11, scope: !2058)
!2088 = !DILocation(line: 265, column: 15, scope: !2058)
!2089 = !DILocation(line: 265, column: 9, scope: !2058)
!2090 = !DILocation(line: 266, column: 39, scope: !2058)
!2091 = !DILocation(line: 266, column: 5, scope: !2058)
!2092 = !DILocation(line: 269, column: 11, scope: !2058)
!2093 = !DILocation(line: 269, column: 9, scope: !2058)
!2094 = !DILocation(line: 270, column: 11, scope: !2058)
!2095 = !DILocation(line: 270, column: 15, scope: !2058)
!2096 = !DILocation(line: 270, column: 9, scope: !2058)
!2097 = !DILocation(line: 271, column: 11, scope: !2058)
!2098 = !DILocation(line: 271, column: 15, scope: !2058)
!2099 = !DILocation(line: 271, column: 9, scope: !2058)
!2100 = !DILocation(line: 272, column: 39, scope: !2058)
!2101 = !DILocation(line: 272, column: 5, scope: !2058)
!2102 = !DILocation(line: 273, column: 19, scope: !2058)
!2103 = !DILocation(line: 274, column: 5, scope: !2058)
!2104 = !DILocation(line: 275, column: 17, scope: !2058)
!2105 = !DILocation(line: 275, column: 33, scope: !2058)
!2106 = !DILocation(line: 275, column: 5, scope: !2058)
!2107 = !DILocation(line: 277, column: 1, scope: !2058)
!2108 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !3, file: !3, line: 284, type: !276, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2109 = !{!2110, !2111}
!2110 = !DILocalVariable(name: "reg", scope: !2108, file: !3, line: 286, type: !11)
!2111 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2108, file: !3, line: 287, type: !10)
!2112 = !DILocation(line: 286, column: 5, scope: !2108)
!2113 = !DILocation(line: 286, column: 23, scope: !2108)
!2114 = !DILocation(line: 0, scope: !2108)
!2115 = !DILocation(line: 290, column: 5, scope: !2108)
!2116 = !DILocation(line: 293, column: 11, scope: !2108)
!2117 = !DILocation(line: 293, column: 9, scope: !2108)
!2118 = !DILocation(line: 294, column: 11, scope: !2108)
!2119 = !DILocation(line: 294, column: 15, scope: !2108)
!2120 = !DILocation(line: 294, column: 9, scope: !2108)
!2121 = !DILocation(line: 295, column: 11, scope: !2108)
!2122 = !DILocation(line: 295, column: 15, scope: !2108)
!2123 = !DILocation(line: 295, column: 9, scope: !2108)
!2124 = !DILocation(line: 296, column: 39, scope: !2108)
!2125 = !DILocation(line: 296, column: 5, scope: !2108)
!2126 = !DILocation(line: 298, column: 5, scope: !2108)
!2127 = !DILocation(line: 298, column: 12, scope: !2108)
!2128 = !DILocation(line: 298, column: 19, scope: !2108)
!2129 = !DILocation(line: 298, column: 16, scope: !2108)
!2130 = distinct !{!2130, !2126, !2131}
!2131 = !DILocation(line: 298, column: 52, scope: !2108)
!2132 = !DILocation(line: 301, column: 11, scope: !2108)
!2133 = !DILocation(line: 301, column: 9, scope: !2108)
!2134 = !DILocation(line: 302, column: 11, scope: !2108)
!2135 = !DILocation(line: 302, column: 15, scope: !2108)
!2136 = !DILocation(line: 302, column: 9, scope: !2108)
!2137 = !DILocation(line: 303, column: 11, scope: !2108)
!2138 = !DILocation(line: 303, column: 15, scope: !2108)
!2139 = !DILocation(line: 303, column: 9, scope: !2108)
!2140 = !DILocation(line: 304, column: 39, scope: !2108)
!2141 = !DILocation(line: 304, column: 5, scope: !2108)
!2142 = !DILocation(line: 307, column: 11, scope: !2108)
!2143 = !DILocation(line: 307, column: 9, scope: !2108)
!2144 = !DILocation(line: 308, column: 11, scope: !2108)
!2145 = !DILocation(line: 308, column: 15, scope: !2108)
!2146 = !DILocation(line: 308, column: 9, scope: !2108)
!2147 = !DILocation(line: 309, column: 11, scope: !2108)
!2148 = !DILocation(line: 309, column: 15, scope: !2108)
!2149 = !DILocation(line: 309, column: 9, scope: !2108)
!2150 = !DILocation(line: 310, column: 39, scope: !2108)
!2151 = !DILocation(line: 310, column: 5, scope: !2108)
!2152 = !DILocation(line: 311, column: 19, scope: !2108)
!2153 = !DILocation(line: 312, column: 5, scope: !2108)
!2154 = !DILocation(line: 313, column: 17, scope: !2108)
!2155 = !DILocation(line: 313, column: 33, scope: !2108)
!2156 = !DILocation(line: 313, column: 5, scope: !2108)
!2157 = !DILocation(line: 315, column: 1, scope: !2108)
!2158 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !3, file: !3, line: 323, type: !276, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2159)
!2159 = !{!2160, !2161}
!2160 = !DILocalVariable(name: "reg", scope: !2158, file: !3, line: 325, type: !11)
!2161 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2158, file: !3, line: 326, type: !10)
!2162 = !DILocation(line: 325, column: 5, scope: !2158)
!2163 = !DILocation(line: 325, column: 23, scope: !2158)
!2164 = !DILocation(line: 0, scope: !2158)
!2165 = !DILocation(line: 329, column: 5, scope: !2158)
!2166 = !DILocation(line: 332, column: 11, scope: !2158)
!2167 = !DILocation(line: 332, column: 9, scope: !2158)
!2168 = !DILocation(line: 333, column: 11, scope: !2158)
!2169 = !DILocation(line: 333, column: 15, scope: !2158)
!2170 = !DILocation(line: 333, column: 9, scope: !2158)
!2171 = !DILocation(line: 334, column: 11, scope: !2158)
!2172 = !DILocation(line: 334, column: 9, scope: !2158)
!2173 = !DILocation(line: 335, column: 39, scope: !2158)
!2174 = !DILocation(line: 335, column: 5, scope: !2158)
!2175 = !DILocation(line: 337, column: 5, scope: !2158)
!2176 = !DILocation(line: 337, column: 12, scope: !2158)
!2177 = !DILocation(line: 337, column: 19, scope: !2158)
!2178 = !DILocation(line: 337, column: 16, scope: !2158)
!2179 = distinct !{!2179, !2175, !2180}
!2180 = !DILocation(line: 337, column: 52, scope: !2158)
!2181 = !DILocation(line: 340, column: 11, scope: !2158)
!2182 = !DILocation(line: 340, column: 9, scope: !2158)
!2183 = !DILocation(line: 341, column: 11, scope: !2158)
!2184 = !DILocation(line: 341, column: 15, scope: !2158)
!2185 = !DILocation(line: 341, column: 9, scope: !2158)
!2186 = !DILocation(line: 342, column: 11, scope: !2158)
!2187 = !DILocation(line: 342, column: 15, scope: !2158)
!2188 = !DILocation(line: 342, column: 9, scope: !2158)
!2189 = !DILocation(line: 343, column: 39, scope: !2158)
!2190 = !DILocation(line: 343, column: 5, scope: !2158)
!2191 = !DILocation(line: 344, column: 19, scope: !2158)
!2192 = !DILocation(line: 345, column: 5, scope: !2158)
!2193 = !DILocation(line: 346, column: 17, scope: !2158)
!2194 = !DILocation(line: 346, column: 33, scope: !2158)
!2195 = !DILocation(line: 346, column: 5, scope: !2158)
!2196 = !DILocation(line: 348, column: 1, scope: !2158)
!2197 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !3, file: !3, line: 353, type: !276, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2198 = !{!2199, !2200}
!2199 = !DILocalVariable(name: "reg", scope: !2197, file: !3, line: 355, type: !17)
!2200 = !DILocalVariable(name: "pTopCfgHclk", scope: !2197, file: !3, line: 356, type: !16)
!2201 = !DILocation(line: 355, column: 5, scope: !2197)
!2202 = !DILocation(line: 355, column: 21, scope: !2197)
!2203 = !DILocation(line: 0, scope: !2197)
!2204 = !DILocation(line: 358, column: 11, scope: !2197)
!2205 = !DILocation(line: 358, column: 9, scope: !2197)
!2206 = !DILocation(line: 359, column: 11, scope: !2197)
!2207 = !DILocation(line: 359, column: 15, scope: !2197)
!2208 = !DILocation(line: 359, column: 9, scope: !2197)
!2209 = !DILocation(line: 360, column: 11, scope: !2197)
!2210 = !DILocation(line: 360, column: 9, scope: !2197)
!2211 = !DILocation(line: 361, column: 37, scope: !2197)
!2212 = !DILocation(line: 361, column: 5, scope: !2197)
!2213 = !DILocation(line: 362, column: 1, scope: !2197)
!2214 = distinct !DISubprogram(name: "getc", scope: !24, file: !24, line: 68, type: !2215, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2217)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!66}
!2217 = !{!2218}
!2218 = !DILocalVariable(name: "rc", scope: !2214, file: !24, line: 71, type: !66)
!2219 = !DILocation(line: 71, column: 14, scope: !2214)
!2220 = !DILocation(line: 0, scope: !2214)
!2221 = !DILocation(line: 72, column: 5, scope: !2214)
!2222 = distinct !DISubprogram(name: "getc_nowait", scope: !24, file: !24, line: 80, type: !2215, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2223)
!2223 = !{!2224}
!2224 = !DILocalVariable(name: "c", scope: !2222, file: !24, line: 82, type: !267)
!2225 = !DILocation(line: 84, column: 9, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !24, line: 84, column: 9)
!2227 = !DILocation(line: 84, column: 40, scope: !2226)
!2228 = !DILocation(line: 84, column: 9, scope: !2222)
!2229 = !DILocation(line: 85, column: 13, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !24, line: 84, column: 47)
!2231 = !DILocation(line: 86, column: 16, scope: !2230)
!2232 = !DILocation(line: 0, scope: !2222)
!2233 = !DILocation(line: 86, column: 9, scope: !2230)
!2234 = !DILocation(line: 0, scope: !2226)
!2235 = !DILocation(line: 90, column: 1, scope: !2222)
!2236 = distinct !DISubprogram(name: "uart_output_char", scope: !24, file: !24, line: 93, type: !2237, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2240)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !2239, !55}
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !27, line: 75, baseType: !26)
!2240 = !{!2241, !2242, !2243}
!2241 = !DILocalVariable(name: "port_no", arg: 1, scope: !2236, file: !24, line: 93, type: !2239)
!2242 = !DILocalVariable(name: "c", arg: 2, scope: !2236, file: !24, line: 93, type: !55)
!2243 = !DILocalVariable(name: "base", scope: !2236, file: !24, line: 95, type: !7)
!2244 = !DILocation(line: 0, scope: !2236)
!2245 = !DILocation(line: 95, column: 25, scope: !2236)
!2246 = !DILocation(line: 97, column: 5, scope: !2236)
!2247 = !DILocation(line: 97, column: 14, scope: !2236)
!2248 = !DILocation(line: 97, column: 42, scope: !2236)
!2249 = !DILocation(line: 97, column: 12, scope: !2236)
!2250 = distinct !{!2250, !2246, !2251}
!2251 = !DILocation(line: 98, column: 9, scope: !2236)
!2252 = !DILocation(line: 99, column: 35, scope: !2236)
!2253 = !DILocation(line: 99, column: 5, scope: !2236)
!2254 = !DILocation(line: 99, column: 33, scope: !2236)
!2255 = !DILocation(line: 102, column: 1, scope: !2236)
!2256 = distinct !DISubprogram(name: "uart_input_char", scope: !24, file: !24, line: 106, type: !2257, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!151, !2239}
!2259 = !{!2260, !2261, !2262}
!2260 = !DILocalVariable(name: "port_no", arg: 1, scope: !2256, file: !24, line: 106, type: !2239)
!2261 = !DILocalVariable(name: "base", scope: !2256, file: !24, line: 108, type: !7)
!2262 = !DILocalVariable(name: "c", scope: !2256, file: !24, line: 109, type: !267)
!2263 = !DILocation(line: 0, scope: !2256)
!2264 = !DILocation(line: 108, column: 25, scope: !2256)
!2265 = !DILocation(line: 111, column: 5, scope: !2256)
!2266 = !DILocation(line: 111, column: 14, scope: !2256)
!2267 = !DILocation(line: 111, column: 42, scope: !2256)
!2268 = !DILocation(line: 111, column: 12, scope: !2256)
!2269 = distinct !{!2269, !2265, !2270}
!2270 = !DILocation(line: 112, column: 9, scope: !2256)
!2271 = !DILocation(line: 114, column: 9, scope: !2256)
!2272 = !DILocation(line: 116, column: 5, scope: !2256)
!2273 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !24, file: !24, line: 120, type: !2274, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!12, !2239}
!2276 = !{!2277, !2278, !2279}
!2277 = !DILocalVariable(name: "port_no", arg: 1, scope: !2273, file: !24, line: 120, type: !2239)
!2278 = !DILocalVariable(name: "base", scope: !2273, file: !24, line: 122, type: !7)
!2279 = !DILocalVariable(name: "c", scope: !2273, file: !24, line: 123, type: !267)
!2280 = !DILocation(line: 0, scope: !2273)
!2281 = !DILocation(line: 122, column: 25, scope: !2273)
!2282 = !DILocation(line: 125, column: 9, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2273, file: !24, line: 125, column: 9)
!2284 = !DILocation(line: 125, column: 37, scope: !2283)
!2285 = !DILocation(line: 125, column: 9, scope: !2273)
!2286 = !DILocation(line: 126, column: 13, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !24, line: 125, column: 44)
!2288 = !DILocation(line: 127, column: 16, scope: !2287)
!2289 = !DILocation(line: 127, column: 9, scope: !2287)
!2290 = !DILocation(line: 0, scope: !2283)
!2291 = !DILocation(line: 131, column: 1, scope: !2273)
!2292 = distinct !DISubprogram(name: "halUART_HWInit", scope: !24, file: !24, line: 136, type: !2293, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !2239}
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "u_port", arg: 1, scope: !2292, file: !24, line: 136, type: !2239)
!2297 = !DILocation(line: 0, scope: !2292)
!2298 = !DILocation(line: 139, column: 5, scope: !2292)
!2299 = !DILocation(line: 140, column: 9, scope: !2292)
!2300 = !DILocation(line: 153, column: 5, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !24, line: 147, column: 38)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !24, line: 147, column: 16)
!2303 = distinct !DILexicalBlock(scope: !2292, file: !24, line: 140, column: 9)
!2304 = !DILocation(line: 0, scope: !2303)
!2305 = !DILocation(line: 155, column: 1, scope: !2292)
!2306 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !24, file: !24, line: 158, type: !2307, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2311)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !2239, !12, !2309, !2309, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 36, baseType: !2310)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !53)
!2311 = !{!2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2327, !2328}
!2312 = !DILocalVariable(name: "u_port", arg: 1, scope: !2306, file: !24, line: 158, type: !2239)
!2313 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2306, file: !24, line: 158, type: !12)
!2314 = !DILocalVariable(name: "databit", arg: 3, scope: !2306, file: !24, line: 158, type: !2309)
!2315 = !DILocalVariable(name: "parity", arg: 4, scope: !2306, file: !24, line: 158, type: !2309)
!2316 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2306, file: !24, line: 158, type: !2309)
!2317 = !DILocalVariable(name: "control_word", scope: !2306, file: !24, line: 160, type: !2309)
!2318 = !DILocalVariable(name: "UART_BASE", scope: !2306, file: !24, line: 161, type: !12)
!2319 = !DILocalVariable(name: "data", scope: !2306, file: !24, line: 162, type: !12)
!2320 = !DILocalVariable(name: "uart_lcr", scope: !2306, file: !24, line: 162, type: !12)
!2321 = !DILocalVariable(name: "high_speed_div", scope: !2306, file: !24, line: 162, type: !12)
!2322 = !DILocalVariable(name: "sample_count", scope: !2306, file: !24, line: 162, type: !12)
!2323 = !DILocalVariable(name: "sample_point", scope: !2306, file: !24, line: 162, type: !12)
!2324 = !DILocalVariable(name: "fraction", scope: !2306, file: !24, line: 162, type: !12)
!2325 = !DILocalVariable(name: "fraction_L_mapping", scope: !2306, file: !24, line: 163, type: !2326)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2309, size: 176, elements: !614)
!2327 = !DILocalVariable(name: "fraction_M_mapping", scope: !2306, file: !24, line: 164, type: !2326)
!2328 = !DILocalVariable(name: "status", scope: !2306, file: !24, line: 165, type: !122)
!2329 = !DILocation(line: 0, scope: !2306)
!2330 = !DILocation(line: 163, column: 15, scope: !2306)
!2331 = !DILocation(line: 164, column: 15, scope: !2306)
!2332 = !DILocation(line: 166, column: 20, scope: !2306)
!2333 = !DILocation(line: 166, column: 18, scope: !2306)
!2334 = !DILocation(line: 168, column: 9, scope: !2306)
!2335 = !DILocation(line: 176, column: 5, scope: !2306)
!2336 = !DILocation(line: 176, column: 44, scope: !2306)
!2337 = !DILocation(line: 177, column: 16, scope: !2306)
!2338 = !DILocation(line: 178, column: 50, scope: !2306)
!2339 = !DILocation(line: 178, column: 38, scope: !2306)
!2340 = !DILocation(line: 179, column: 12, scope: !2306)
!2341 = !DILocation(line: 179, column: 25, scope: !2306)
!2342 = !DILocation(line: 180, column: 28, scope: !2306)
!2343 = !DILocation(line: 180, column: 34, scope: !2306)
!2344 = !DILocation(line: 182, column: 29, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2306, file: !24, line: 181, column: 5)
!2346 = !DILocation(line: 182, column: 46, scope: !2345)
!2347 = !DILocation(line: 183, column: 26, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !24, line: 183, column: 13)
!2349 = !DILocation(line: 183, column: 13, scope: !2345)
!2350 = !DILocation(line: 192, column: 30, scope: !2306)
!2351 = !DILocation(line: 192, column: 35, scope: !2306)
!2352 = !DILocation(line: 192, column: 46, scope: !2306)
!2353 = !DILocation(line: 192, column: 74, scope: !2306)
!2354 = !DILocation(line: 192, column: 53, scope: !2306)
!2355 = !DILocation(line: 192, column: 80, scope: !2306)
!2356 = !DILocation(line: 193, column: 56, scope: !2306)
!2357 = !DILocation(line: 193, column: 5, scope: !2306)
!2358 = !DILocation(line: 193, column: 38, scope: !2306)
!2359 = !DILocation(line: 194, column: 57, scope: !2306)
!2360 = !DILocation(line: 194, column: 63, scope: !2306)
!2361 = !DILocation(line: 194, column: 5, scope: !2306)
!2362 = !DILocation(line: 194, column: 38, scope: !2306)
!2363 = !DILocation(line: 195, column: 5, scope: !2306)
!2364 = !DILocation(line: 195, column: 45, scope: !2306)
!2365 = !DILocation(line: 196, column: 5, scope: !2306)
!2366 = !DILocation(line: 196, column: 47, scope: !2306)
!2367 = !DILocation(line: 197, column: 46, scope: !2306)
!2368 = !DILocation(line: 197, column: 5, scope: !2306)
!2369 = !DILocation(line: 197, column: 44, scope: !2306)
!2370 = !DILocation(line: 198, column: 46, scope: !2306)
!2371 = !DILocation(line: 198, column: 5, scope: !2306)
!2372 = !DILocation(line: 198, column: 44, scope: !2306)
!2373 = !DILocation(line: 199, column: 38, scope: !2306)
!2374 = !DILocation(line: 200, column: 5, scope: !2306)
!2375 = !DILocation(line: 200, column: 38, scope: !2306)
!2376 = !DILocation(line: 202, column: 20, scope: !2306)
!2377 = !DILocation(line: 203, column: 18, scope: !2306)
!2378 = !DILocation(line: 205, column: 18, scope: !2306)
!2379 = !DILocation(line: 207, column: 18, scope: !2306)
!2380 = !DILocation(line: 208, column: 18, scope: !2306)
!2381 = !DILocation(line: 209, column: 5, scope: !2306)
!2382 = !DILocation(line: 213, column: 1, scope: !2306)
!2383 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !24, file: !24, line: 215, type: !2384, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2387)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !2239, !122, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!2387 = !{!2388, !2389, !2390}
!2388 = !DILocalVariable(name: "u_port", arg: 1, scope: !2383, file: !24, line: 215, type: !2239)
!2389 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2383, file: !24, line: 215, type: !122)
!2390 = !DILocalVariable(name: "length", arg: 3, scope: !2383, file: !24, line: 215, type: !2386)
!2391 = !DILocation(line: 0, scope: !2383)
!2392 = !DILocation(line: 217, column: 16, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2383, file: !24, line: 217, column: 9)
!2394 = !DILocation(line: 0, scope: !2393)
!2395 = !DILocation(line: 217, column: 9, scope: !2383)
!2396 = !DILocation(line: 218, column: 13, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !24, line: 217, column: 31)
!2398 = !DILocation(line: 219, column: 23, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !24, line: 218, column: 20)
!2400 = distinct !DILexicalBlock(scope: !2397, file: !24, line: 218, column: 13)
!2401 = !DILocation(line: 220, column: 9, scope: !2399)
!2402 = !DILocation(line: 221, column: 23, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !24, line: 220, column: 16)
!2404 = !DILocation(line: 221, column: 21, scope: !2403)
!2405 = !DILocation(line: 222, column: 24, scope: !2403)
!2406 = !DILocation(line: 222, column: 21, scope: !2403)
!2407 = !DILocation(line: 225, column: 13, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2393, file: !24, line: 224, column: 12)
!2409 = !DILocation(line: 226, column: 23, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !24, line: 225, column: 20)
!2411 = distinct !DILexicalBlock(scope: !2408, file: !24, line: 225, column: 13)
!2412 = !DILocation(line: 227, column: 9, scope: !2410)
!2413 = !DILocation(line: 228, column: 23, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2411, file: !24, line: 227, column: 16)
!2415 = !DILocation(line: 228, column: 21, scope: !2414)
!2416 = !DILocation(line: 229, column: 24, scope: !2414)
!2417 = !DILocation(line: 229, column: 21, scope: !2414)
!2418 = !DILocation(line: 233, column: 5, scope: !2383)
!2419 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !24, file: !24, line: 236, type: !2420, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2422)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !2239, !319, !12}
!2422 = !{!2423, !2424, !2425, !2426}
!2423 = !DILocalVariable(name: "u_port", arg: 1, scope: !2419, file: !24, line: 236, type: !2239)
!2424 = !DILocalVariable(name: "data", arg: 2, scope: !2419, file: !24, line: 236, type: !319)
!2425 = !DILocalVariable(name: "length", arg: 3, scope: !2419, file: !24, line: 236, type: !12)
!2426 = !DILocalVariable(name: "idx", scope: !2419, file: !24, line: 238, type: !8)
!2427 = !DILocation(line: 0, scope: !2419)
!2428 = !DILocation(line: 239, column: 23, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !24, line: 239, column: 5)
!2430 = distinct !DILexicalBlock(scope: !2419, file: !24, line: 239, column: 5)
!2431 = !DILocation(line: 239, column: 5, scope: !2430)
!2432 = !DILocation(line: 240, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2429, file: !24, line: 239, column: 40)
!2434 = !DILocation(line: 244, column: 9, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !24, line: 242, column: 42)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !24, line: 242, column: 20)
!2437 = distinct !DILexicalBlock(scope: !2433, file: !24, line: 240, column: 13)
!2438 = !DILocation(line: 0, scope: !2437)
!2439 = !DILocation(line: 239, column: 36, scope: !2429)
!2440 = distinct !{!2440, !2431, !2441}
!2441 = !DILocation(line: 246, column: 5, scope: !2430)
!2442 = !DILocation(line: 249, column: 1, scope: !2419)
!2443 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !24, file: !24, line: 251, type: !2444, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2448)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2239, !2446, !12}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 32)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DILocalVariable(name: "u_port", arg: 1, scope: !2443, file: !24, line: 251, type: !2239)
!2450 = !DILocalVariable(name: "data", arg: 2, scope: !2443, file: !24, line: 251, type: !2446)
!2451 = !DILocalVariable(name: "length", arg: 3, scope: !2443, file: !24, line: 251, type: !12)
!2452 = !DILocalVariable(name: "idx", scope: !2443, file: !24, line: 253, type: !8)
!2453 = !DILocation(line: 0, scope: !2443)
!2454 = !DILocation(line: 254, column: 23, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !24, line: 254, column: 5)
!2456 = distinct !DILexicalBlock(scope: !2443, file: !24, line: 254, column: 5)
!2457 = !DILocation(line: 254, column: 5, scope: !2456)
!2458 = !DILocation(line: 255, column: 13, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !24, line: 254, column: 40)
!2460 = !DILocation(line: 256, column: 61, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !24, line: 255, column: 35)
!2462 = distinct !DILexicalBlock(scope: !2459, file: !24, line: 255, column: 13)
!2463 = !DILocation(line: 256, column: 59, scope: !2461)
!2464 = !DILocation(line: 257, column: 9, scope: !2461)
!2465 = !DILocation(line: 258, column: 61, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !24, line: 257, column: 42)
!2467 = distinct !DILexicalBlock(scope: !2462, file: !24, line: 257, column: 20)
!2468 = !DILocation(line: 258, column: 59, scope: !2466)
!2469 = !DILocation(line: 259, column: 9, scope: !2466)
!2470 = !DILocation(line: 254, column: 36, scope: !2455)
!2471 = distinct !{!2471, !2457, !2472}
!2472 = !DILocation(line: 261, column: 5, scope: !2456)
!2473 = !DILocation(line: 264, column: 1, scope: !2443)
!2474 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !24, file: !24, line: 266, type: !2475, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2477)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{null, !2239, !319, !12, !12}
!2477 = !{!2478, !2479, !2480, !2481}
!2478 = !DILocalVariable(name: "u_port", arg: 1, scope: !2474, file: !24, line: 266, type: !2239)
!2479 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2474, file: !24, line: 266, type: !319)
!2480 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2474, file: !24, line: 266, type: !12)
!2481 = !DILocalVariable(name: "threshold", arg: 4, scope: !2474, file: !24, line: 266, type: !12)
!2482 = !DILocation(line: 0, scope: !2474)
!2483 = !DILocation(line: 268, column: 9, scope: !2474)
!2484 = !DILocation(line: 274, column: 5, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !24, line: 271, column: 38)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !24, line: 271, column: 16)
!2487 = distinct !DILexicalBlock(scope: !2474, file: !24, line: 268, column: 9)
!2488 = !DILocation(line: 0, scope: !2487)
!2489 = !DILocation(line: 276, column: 1, scope: !2474)
!2490 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !24, file: !24, line: 278, type: !2491, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2493)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{null, !2239, !319, !12, !12, !12, !12}
!2493 = !{!2494, !2495, !2496, !2497, !2498, !2499}
!2494 = !DILocalVariable(name: "u_port", arg: 1, scope: !2490, file: !24, line: 278, type: !2239)
!2495 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2490, file: !24, line: 278, type: !319)
!2496 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2490, file: !24, line: 278, type: !12)
!2497 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2490, file: !24, line: 278, type: !12)
!2498 = !DILocalVariable(name: "threshold", arg: 5, scope: !2490, file: !24, line: 278, type: !12)
!2499 = !DILocalVariable(name: "timeout", arg: 6, scope: !2490, file: !24, line: 278, type: !12)
!2500 = !DILocation(line: 0, scope: !2490)
!2501 = !DILocation(line: 280, column: 9, scope: !2490)
!2502 = !DILocation(line: 286, column: 5, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !24, line: 283, column: 38)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !24, line: 283, column: 16)
!2505 = distinct !DILexicalBlock(scope: !2490, file: !24, line: 280, column: 9)
!2506 = !DILocation(line: 0, scope: !2505)
!2507 = !DILocation(line: 288, column: 1, scope: !2490)
!2508 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !24, file: !24, line: 290, type: !2509, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !2239, !274}
!2511 = !{!2512, !2513}
!2512 = !DILocalVariable(name: "u_port", arg: 1, scope: !2508, file: !24, line: 290, type: !2239)
!2513 = !DILocalVariable(name: "func", arg: 2, scope: !2508, file: !24, line: 290, type: !274)
!2514 = !DILocation(line: 0, scope: !2508)
!2515 = !DILocation(line: 292, column: 9, scope: !2508)
!2516 = !DILocation(line: 296, column: 5, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !24, line: 294, column: 38)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !24, line: 294, column: 16)
!2519 = distinct !DILexicalBlock(scope: !2508, file: !24, line: 292, column: 9)
!2520 = !DILocation(line: 0, scope: !2519)
!2521 = !DILocation(line: 298, column: 1, scope: !2508)
!2522 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !24, file: !24, line: 300, type: !2509, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2523)
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "u_port", arg: 1, scope: !2522, file: !24, line: 300, type: !2239)
!2525 = !DILocalVariable(name: "func", arg: 2, scope: !2522, file: !24, line: 300, type: !274)
!2526 = !DILocation(line: 0, scope: !2522)
!2527 = !DILocation(line: 302, column: 9, scope: !2522)
!2528 = !DILocation(line: 306, column: 5, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !24, line: 304, column: 38)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !24, line: 304, column: 16)
!2531 = distinct !DILexicalBlock(scope: !2522, file: !24, line: 302, column: 9)
!2532 = !DILocation(line: 0, scope: !2531)
!2533 = !DILocation(line: 308, column: 1, scope: !2522)
!2534 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !24, file: !24, line: 310, type: !2293, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2535)
!2535 = !{!2536, !2537, !2538, !2539}
!2536 = !DILocalVariable(name: "u_port", arg: 1, scope: !2534, file: !24, line: 310, type: !2239)
!2537 = !DILocalVariable(name: "base", scope: !2534, file: !24, line: 312, type: !7)
!2538 = !DILocalVariable(name: "EFR", scope: !2534, file: !24, line: 313, type: !2309)
!2539 = !DILocalVariable(name: "LCR", scope: !2534, file: !24, line: 313, type: !2309)
!2540 = !DILocation(line: 0, scope: !2534)
!2541 = !DILocation(line: 312, column: 25, scope: !2534)
!2542 = !DILocation(line: 315, column: 11, scope: !2534)
!2543 = !DILocation(line: 317, column: 33, scope: !2534)
!2544 = !DILocation(line: 318, column: 11, scope: !2534)
!2545 = !DILocation(line: 320, column: 35, scope: !2534)
!2546 = !DILocation(line: 320, column: 33, scope: !2534)
!2547 = !DILocation(line: 322, column: 5, scope: !2534)
!2548 = !DILocation(line: 322, column: 39, scope: !2534)
!2549 = !DILocation(line: 324, column: 33, scope: !2534)
!2550 = !DILocation(line: 325, column: 5, scope: !2534)
!2551 = !DILocation(line: 325, column: 33, scope: !2534)
!2552 = !DILocation(line: 327, column: 35, scope: !2534)
!2553 = !DILocation(line: 327, column: 33, scope: !2534)
!2554 = !DILocation(line: 328, column: 1, scope: !2534)
!2555 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !24, file: !24, line: 330, type: !2556, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2239, !151, !151, !151}
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2564, !2565}
!2559 = !DILocalVariable(name: "u_port", arg: 1, scope: !2555, file: !24, line: 330, type: !2239)
!2560 = !DILocalVariable(name: "xon", arg: 2, scope: !2555, file: !24, line: 330, type: !151)
!2561 = !DILocalVariable(name: "xoff", arg: 3, scope: !2555, file: !24, line: 330, type: !151)
!2562 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2555, file: !24, line: 330, type: !151)
!2563 = !DILocalVariable(name: "base", scope: !2555, file: !24, line: 332, type: !7)
!2564 = !DILocalVariable(name: "EFR", scope: !2555, file: !24, line: 333, type: !2309)
!2565 = !DILocalVariable(name: "LCR", scope: !2555, file: !24, line: 333, type: !2309)
!2566 = !DILocation(line: 0, scope: !2555)
!2567 = !DILocation(line: 332, column: 25, scope: !2555)
!2568 = !DILocation(line: 335, column: 11, scope: !2555)
!2569 = !DILocation(line: 337, column: 33, scope: !2555)
!2570 = !DILocation(line: 338, column: 36, scope: !2555)
!2571 = !DILocation(line: 338, column: 5, scope: !2555)
!2572 = !DILocation(line: 338, column: 34, scope: !2555)
!2573 = !DILocation(line: 339, column: 5, scope: !2555)
!2574 = !DILocation(line: 339, column: 34, scope: !2555)
!2575 = !DILocation(line: 340, column: 37, scope: !2555)
!2576 = !DILocation(line: 340, column: 5, scope: !2555)
!2577 = !DILocation(line: 340, column: 35, scope: !2555)
!2578 = !DILocation(line: 341, column: 5, scope: !2555)
!2579 = !DILocation(line: 341, column: 35, scope: !2555)
!2580 = !DILocation(line: 343, column: 11, scope: !2555)
!2581 = !DILocation(line: 345, column: 35, scope: !2555)
!2582 = !DILocation(line: 345, column: 33, scope: !2555)
!2583 = !DILocation(line: 347, column: 35, scope: !2555)
!2584 = !DILocation(line: 347, column: 33, scope: !2555)
!2585 = !DILocation(line: 349, column: 43, scope: !2555)
!2586 = !DILocation(line: 349, column: 5, scope: !2555)
!2587 = !DILocation(line: 349, column: 41, scope: !2555)
!2588 = !DILocation(line: 350, column: 5, scope: !2555)
!2589 = !DILocation(line: 350, column: 39, scope: !2555)
!2590 = !DILocation(line: 351, column: 1, scope: !2555)
!2591 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !24, file: !24, line: 353, type: !2293, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2592)
!2592 = !{!2593, !2594, !2595}
!2593 = !DILocalVariable(name: "u_port", arg: 1, scope: !2591, file: !24, line: 353, type: !2239)
!2594 = !DILocalVariable(name: "base", scope: !2591, file: !24, line: 355, type: !7)
!2595 = !DILocalVariable(name: "LCR", scope: !2591, file: !24, line: 356, type: !2309)
!2596 = !DILocation(line: 0, scope: !2591)
!2597 = !DILocation(line: 355, column: 25, scope: !2591)
!2598 = !DILocation(line: 358, column: 11, scope: !2591)
!2599 = !DILocation(line: 360, column: 33, scope: !2591)
!2600 = !DILocation(line: 362, column: 5, scope: !2591)
!2601 = !DILocation(line: 362, column: 33, scope: !2591)
!2602 = !DILocation(line: 364, column: 33, scope: !2591)
!2603 = !DILocation(line: 366, column: 35, scope: !2591)
!2604 = !DILocation(line: 366, column: 33, scope: !2591)
!2605 = !DILocation(line: 367, column: 1, scope: !2591)
!2606 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !24, file: !24, line: 436, type: !2293, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2607)
!2607 = !{!2608, !2609}
!2608 = !DILocalVariable(name: "u_port", arg: 1, scope: !2606, file: !24, line: 436, type: !2239)
!2609 = !DILocalVariable(name: "base", scope: !2606, file: !24, line: 438, type: !7)
!2610 = !DILocation(line: 0, scope: !2606)
!2611 = !DILocation(line: 438, column: 25, scope: !2606)
!2612 = !DILocation(line: 440, column: 5, scope: !2606)
!2613 = !DILocation(line: 440, column: 33, scope: !2606)
!2614 = !DILocation(line: 441, column: 5, scope: !2606)
!2615 = !DILocation(line: 441, column: 33, scope: !2606)
!2616 = !DILocation(line: 442, column: 5, scope: !2606)
!2617 = !DILocation(line: 442, column: 34, scope: !2606)
!2618 = !DILocation(line: 443, column: 5, scope: !2606)
!2619 = !DILocation(line: 443, column: 35, scope: !2606)
!2620 = !DILocation(line: 445, column: 33, scope: !2606)
!2621 = !DILocation(line: 446, column: 5, scope: !2606)
!2622 = !DILocation(line: 446, column: 33, scope: !2606)
!2623 = !DILocation(line: 447, column: 5, scope: !2606)
!2624 = !DILocation(line: 447, column: 33, scope: !2606)
!2625 = !DILocation(line: 449, column: 33, scope: !2606)
!2626 = !DILocation(line: 450, column: 33, scope: !2606)
!2627 = !DILocation(line: 451, column: 33, scope: !2606)
!2628 = !DILocation(line: 453, column: 33, scope: !2606)
!2629 = !DILocation(line: 454, column: 33, scope: !2606)
!2630 = !DILocation(line: 455, column: 33, scope: !2606)
!2631 = !DILocation(line: 457, column: 33, scope: !2606)
!2632 = !DILocation(line: 458, column: 5, scope: !2606)
!2633 = !DILocation(line: 458, column: 33, scope: !2606)
!2634 = !DILocation(line: 459, column: 5, scope: !2606)
!2635 = !DILocation(line: 459, column: 39, scope: !2606)
!2636 = !DILocation(line: 460, column: 5, scope: !2606)
!2637 = !DILocation(line: 460, column: 40, scope: !2606)
!2638 = !DILocation(line: 461, column: 5, scope: !2606)
!2639 = !DILocation(line: 461, column: 42, scope: !2606)
!2640 = !DILocation(line: 462, column: 5, scope: !2606)
!2641 = !DILocation(line: 462, column: 42, scope: !2606)
!2642 = !DILocation(line: 463, column: 5, scope: !2606)
!2643 = !DILocation(line: 463, column: 35, scope: !2606)
!2644 = !DILocation(line: 464, column: 5, scope: !2606)
!2645 = !DILocation(line: 464, column: 41, scope: !2606)
!2646 = !DILocation(line: 465, column: 5, scope: !2606)
!2647 = !DILocation(line: 465, column: 39, scope: !2606)
!2648 = !DILocation(line: 466, column: 5, scope: !2606)
!2649 = !DILocation(line: 466, column: 38, scope: !2606)
!2650 = !DILocation(line: 467, column: 5, scope: !2606)
!2651 = !DILocation(line: 467, column: 42, scope: !2606)
!2652 = !DILocation(line: 468, column: 5, scope: !2606)
!2653 = !DILocation(line: 468, column: 45, scope: !2606)
!2654 = !DILocation(line: 469, column: 5, scope: !2606)
!2655 = !DILocation(line: 469, column: 39, scope: !2606)
!2656 = !DILocation(line: 470, column: 5, scope: !2606)
!2657 = !DILocation(line: 470, column: 39, scope: !2606)
!2658 = !DILocation(line: 471, column: 5, scope: !2606)
!2659 = !DILocation(line: 471, column: 42, scope: !2606)
!2660 = !DILocation(line: 472, column: 1, scope: !2606)
!2661 = distinct !DISubprogram(name: "uart_query_empty", scope: !24, file: !24, line: 474, type: !2293, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2662)
!2662 = !{!2663, !2664}
!2663 = !DILocalVariable(name: "u_port", arg: 1, scope: !2661, file: !24, line: 474, type: !2239)
!2664 = !DILocalVariable(name: "base", scope: !2661, file: !24, line: 476, type: !7)
!2665 = !DILocation(line: 0, scope: !2661)
!2666 = !DILocation(line: 476, column: 25, scope: !2661)
!2667 = !DILocation(line: 478, column: 5, scope: !2661)
!2668 = !DILocation(line: 478, column: 14, scope: !2661)
!2669 = !DILocation(line: 478, column: 42, scope: !2661)
!2670 = !DILocation(line: 478, column: 12, scope: !2661)
!2671 = distinct !{!2671, !2667, !2672}
!2672 = !DILocation(line: 478, column: 50, scope: !2661)
!2673 = !DILocation(line: 479, column: 1, scope: !2661)
!2674 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !794, file: !794, line: 64, type: !2675, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !438, !66, !438, null}
!2677 = !{!2678, !2679, !2680, !2681, !2690}
!2678 = !DILocalVariable(name: "func", arg: 1, scope: !2674, file: !794, line: 64, type: !438)
!2679 = !DILocalVariable(name: "line", arg: 2, scope: !2674, file: !794, line: 64, type: !66)
!2680 = !DILocalVariable(name: "message", arg: 3, scope: !2674, file: !794, line: 64, type: !438)
!2681 = !DILocalVariable(name: "ap", scope: !2674, file: !794, line: 66, type: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2683, line: 46, baseType: !2684)
!2683 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2685, line: 32, baseType: !2686)
!2685 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!2686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !794, baseType: !2687)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !2688)
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2687, file: !794, line: 66, baseType: !121, size: 32)
!2690 = !DILocalVariable(name: "mask", scope: !2674, file: !794, line: 68, type: !12)
!2691 = !DILocation(line: 0, scope: !2674)
!2692 = !DILocation(line: 66, column: 5, scope: !2674)
!2693 = !DILocation(line: 66, column: 13, scope: !2674)
!2694 = !DILocation(line: 68, column: 5, scope: !2674)
!2695 = !DILocation(line: 69, column: 5, scope: !2674)
!2696 = !DILocation(line: 71, column: 5, scope: !2674)
!2697 = !DILocation(line: 72, column: 5, scope: !2674)
!2698 = !DILocation(line: 73, column: 5, scope: !2674)
!2699 = !DILocation(line: 75, column: 37, scope: !2674)
!2700 = !DILocation(line: 75, column: 5, scope: !2674)
!2701 = !DILocation(line: 77, column: 1, scope: !2674)
!2702 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !794, file: !794, line: 78, type: !2675, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !2703)
!2703 = !{!2704, !2705, !2706, !2707, !2708}
!2704 = !DILocalVariable(name: "func", arg: 1, scope: !2702, file: !794, line: 78, type: !438)
!2705 = !DILocalVariable(name: "line", arg: 2, scope: !2702, file: !794, line: 78, type: !66)
!2706 = !DILocalVariable(name: "message", arg: 3, scope: !2702, file: !794, line: 78, type: !438)
!2707 = !DILocalVariable(name: "ap", scope: !2702, file: !794, line: 80, type: !2682)
!2708 = !DILocalVariable(name: "mask", scope: !2702, file: !794, line: 82, type: !12)
!2709 = !DILocation(line: 0, scope: !2702)
!2710 = !DILocation(line: 80, column: 5, scope: !2702)
!2711 = !DILocation(line: 80, column: 13, scope: !2702)
!2712 = !DILocation(line: 82, column: 5, scope: !2702)
!2713 = !DILocation(line: 83, column: 5, scope: !2702)
!2714 = !DILocation(line: 85, column: 5, scope: !2702)
!2715 = !DILocation(line: 86, column: 5, scope: !2702)
!2716 = !DILocation(line: 87, column: 5, scope: !2702)
!2717 = !DILocation(line: 89, column: 37, scope: !2702)
!2718 = !DILocation(line: 89, column: 5, scope: !2702)
!2719 = !DILocation(line: 91, column: 1, scope: !2702)
!2720 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !794, file: !794, line: 92, type: !2675, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !2721)
!2721 = !{!2722, !2723, !2724, !2725, !2726}
!2722 = !DILocalVariable(name: "func", arg: 1, scope: !2720, file: !794, line: 92, type: !438)
!2723 = !DILocalVariable(name: "line", arg: 2, scope: !2720, file: !794, line: 92, type: !66)
!2724 = !DILocalVariable(name: "message", arg: 3, scope: !2720, file: !794, line: 92, type: !438)
!2725 = !DILocalVariable(name: "ap", scope: !2720, file: !794, line: 94, type: !2682)
!2726 = !DILocalVariable(name: "mask", scope: !2720, file: !794, line: 96, type: !12)
!2727 = !DILocation(line: 0, scope: !2720)
!2728 = !DILocation(line: 94, column: 5, scope: !2720)
!2729 = !DILocation(line: 94, column: 13, scope: !2720)
!2730 = !DILocation(line: 96, column: 5, scope: !2720)
!2731 = !DILocation(line: 97, column: 5, scope: !2720)
!2732 = !DILocation(line: 99, column: 5, scope: !2720)
!2733 = !DILocation(line: 100, column: 5, scope: !2720)
!2734 = !DILocation(line: 101, column: 5, scope: !2720)
!2735 = !DILocation(line: 103, column: 37, scope: !2720)
!2736 = !DILocation(line: 103, column: 5, scope: !2720)
!2737 = !DILocation(line: 105, column: 1, scope: !2720)
!2738 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !794, file: !794, line: 106, type: !2675, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744}
!2740 = !DILocalVariable(name: "func", arg: 1, scope: !2738, file: !794, line: 106, type: !438)
!2741 = !DILocalVariable(name: "line", arg: 2, scope: !2738, file: !794, line: 106, type: !66)
!2742 = !DILocalVariable(name: "message", arg: 3, scope: !2738, file: !794, line: 106, type: !438)
!2743 = !DILocalVariable(name: "ap", scope: !2738, file: !794, line: 108, type: !2682)
!2744 = !DILocalVariable(name: "mask", scope: !2738, file: !794, line: 110, type: !12)
!2745 = !DILocation(line: 0, scope: !2738)
!2746 = !DILocation(line: 108, column: 5, scope: !2738)
!2747 = !DILocation(line: 108, column: 13, scope: !2738)
!2748 = !DILocation(line: 110, column: 5, scope: !2738)
!2749 = !DILocation(line: 111, column: 5, scope: !2738)
!2750 = !DILocation(line: 113, column: 5, scope: !2738)
!2751 = !DILocation(line: 114, column: 5, scope: !2738)
!2752 = !DILocation(line: 115, column: 5, scope: !2738)
!2753 = !DILocation(line: 117, column: 37, scope: !2738)
!2754 = !DILocation(line: 117, column: 5, scope: !2738)
!2755 = !DILocation(line: 119, column: 1, scope: !2738)
!2756 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !794, file: !794, line: 121, type: !2757, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !2761)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !438, !66, !438, !2759, !66, null}
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2761 = !{!2762, !2763, !2764, !2765, !2766}
!2762 = !DILocalVariable(name: "func", arg: 1, scope: !2756, file: !794, line: 121, type: !438)
!2763 = !DILocalVariable(name: "line", arg: 2, scope: !2756, file: !794, line: 121, type: !66)
!2764 = !DILocalVariable(name: "message", arg: 3, scope: !2756, file: !794, line: 121, type: !438)
!2765 = !DILocalVariable(name: "data", arg: 4, scope: !2756, file: !794, line: 121, type: !2759)
!2766 = !DILocalVariable(name: "length", arg: 5, scope: !2756, file: !794, line: 121, type: !66)
!2767 = !DILocation(line: 0, scope: !2756)
!2768 = !DILocation(line: 123, column: 1, scope: !2756)
!2769 = distinct !DISubprogram(name: "hal_nvic_init", scope: !62, file: !62, line: 60, type: !2770, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1786)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!2772}
!2772 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !65, line: 158, baseType: !64)
!2773 = !DILocation(line: 62, column: 5, scope: !2769)
!2774 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !62, file: !62, line: 65, type: !2775, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!2772, !119}
!2777 = !{!2778, !2779}
!2778 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2774, file: !62, line: 65, type: !119)
!2779 = !DILocalVariable(name: "status", scope: !2774, file: !62, line: 67, type: !2772)
!2780 = !DILocation(line: 0, scope: !2774)
!2781 = !DILocation(line: 69, column: 40, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2774, file: !62, line: 69, column: 9)
!2783 = !DILocation(line: 73, column: 9, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2782, file: !62, line: 72, column: 12)
!2785 = !DILocation(line: 77, column: 5, scope: !2774)
!2786 = !DILocation(line: 78, column: 1, scope: !2774)
!2787 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !126, file: !126, line: 1494, type: !2788, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !120}
!2790 = !{!2791}
!2791 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2787, file: !126, line: 1494, type: !120)
!2792 = !DILocation(line: 0, scope: !2787)
!2793 = !DILocation(line: 1497, column: 91, scope: !2787)
!2794 = !DILocation(line: 1497, column: 61, scope: !2787)
!2795 = !DILocation(line: 1497, column: 40, scope: !2787)
!2796 = !DILocation(line: 1497, column: 3, scope: !2787)
!2797 = !DILocation(line: 1497, column: 46, scope: !2787)
!2798 = !DILocation(line: 1498, column: 1, scope: !2787)
!2799 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !62, file: !62, line: 80, type: !2775, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2800)
!2800 = !{!2801, !2802}
!2801 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2799, file: !62, line: 80, type: !119)
!2802 = !DILocalVariable(name: "status", scope: !2799, file: !62, line: 82, type: !2772)
!2803 = !DILocation(line: 0, scope: !2799)
!2804 = !DILocation(line: 84, column: 40, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2799, file: !62, line: 84, column: 9)
!2806 = !DILocation(line: 88, column: 9, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2805, file: !62, line: 87, column: 12)
!2808 = !DILocation(line: 92, column: 5, scope: !2799)
!2809 = !DILocation(line: 93, column: 1, scope: !2799)
!2810 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !126, file: !126, line: 1507, type: !2788, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2811)
!2811 = !{!2812}
!2812 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2810, file: !126, line: 1507, type: !120)
!2813 = !DILocation(line: 0, scope: !2810)
!2814 = !DILocation(line: 1509, column: 65, scope: !2810)
!2815 = !DILocation(line: 1509, column: 44, scope: !2810)
!2816 = !DILocation(line: 1509, column: 32, scope: !2810)
!2817 = !DILocation(line: 1509, column: 3, scope: !2810)
!2818 = !DILocation(line: 1509, column: 39, scope: !2810)
!2819 = !DILocation(line: 1510, column: 1, scope: !2810)
!2820 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !62, file: !62, line: 95, type: !2821, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!12, !119}
!2823 = !{!2824, !2825}
!2824 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2820, file: !62, line: 95, type: !119)
!2825 = !DILocalVariable(name: "ret", scope: !2820, file: !62, line: 97, type: !12)
!2826 = !DILocation(line: 0, scope: !2820)
!2827 = !DILocation(line: 99, column: 40, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2820, file: !62, line: 99, column: 9)
!2829 = !DILocation(line: 102, column: 15, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2828, file: !62, line: 101, column: 12)
!2831 = !DILocation(line: 105, column: 5, scope: !2820)
!2832 = !DILocation(line: 106, column: 1, scope: !2820)
!2833 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !126, file: !126, line: 1523, type: !2834, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!12, !120}
!2836 = !{!2837}
!2837 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2833, file: !126, line: 1523, type: !120)
!2838 = !DILocation(line: 0, scope: !2833)
!2839 = !DILocation(line: 1525, column: 51, scope: !2833)
!2840 = !DILocation(line: 1525, column: 23, scope: !2833)
!2841 = !DILocation(line: 1525, column: 83, scope: !2833)
!2842 = !DILocation(line: 1525, column: 22, scope: !2833)
!2843 = !DILocation(line: 1525, column: 3, scope: !2833)
!2844 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !62, file: !62, line: 108, type: !2775, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2845)
!2845 = !{!2846, !2847}
!2846 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2844, file: !62, line: 108, type: !119)
!2847 = !DILocalVariable(name: "status", scope: !2844, file: !62, line: 110, type: !2772)
!2848 = !DILocation(line: 0, scope: !2844)
!2849 = !DILocation(line: 112, column: 40, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2844, file: !62, line: 112, column: 9)
!2851 = !DILocation(line: 116, column: 9, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2850, file: !62, line: 115, column: 12)
!2853 = !DILocation(line: 120, column: 5, scope: !2844)
!2854 = !DILocation(line: 121, column: 1, scope: !2844)
!2855 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !126, file: !126, line: 1535, type: !2788, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2856)
!2856 = !{!2857}
!2857 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2855, file: !126, line: 1535, type: !120)
!2858 = !DILocation(line: 0, scope: !2855)
!2859 = !DILocation(line: 1537, column: 65, scope: !2855)
!2860 = !DILocation(line: 1537, column: 44, scope: !2855)
!2861 = !DILocation(line: 1537, column: 32, scope: !2855)
!2862 = !DILocation(line: 1537, column: 3, scope: !2855)
!2863 = !DILocation(line: 1537, column: 39, scope: !2855)
!2864 = !DILocation(line: 1538, column: 1, scope: !2855)
!2865 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !62, file: !62, line: 123, type: !2775, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2866)
!2866 = !{!2867, !2868}
!2867 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2865, file: !62, line: 123, type: !119)
!2868 = !DILocalVariable(name: "status", scope: !2865, file: !62, line: 125, type: !2772)
!2869 = !DILocation(line: 0, scope: !2865)
!2870 = !DILocation(line: 127, column: 40, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2865, file: !62, line: 127, column: 9)
!2872 = !DILocation(line: 131, column: 9, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2871, file: !62, line: 130, column: 12)
!2874 = !DILocation(line: 135, column: 5, scope: !2865)
!2875 = !DILocation(line: 136, column: 1, scope: !2865)
!2876 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !126, file: !126, line: 1547, type: !2788, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2877)
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2876, file: !126, line: 1547, type: !120)
!2879 = !DILocation(line: 0, scope: !2876)
!2880 = !DILocation(line: 1549, column: 65, scope: !2876)
!2881 = !DILocation(line: 1549, column: 44, scope: !2876)
!2882 = !DILocation(line: 1549, column: 32, scope: !2876)
!2883 = !DILocation(line: 1549, column: 3, scope: !2876)
!2884 = !DILocation(line: 1549, column: 39, scope: !2876)
!2885 = !DILocation(line: 1550, column: 1, scope: !2876)
!2886 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !62, file: !62, line: 138, type: !2887, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!2772, !119, !12}
!2889 = !{!2890, !2891, !2892}
!2890 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2886, file: !62, line: 138, type: !119)
!2891 = !DILocalVariable(name: "priority", arg: 2, scope: !2886, file: !62, line: 138, type: !12)
!2892 = !DILocalVariable(name: "status", scope: !2886, file: !62, line: 140, type: !2772)
!2893 = !DILocation(line: 0, scope: !2886)
!2894 = !DILocation(line: 142, column: 40, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2886, file: !62, line: 142, column: 9)
!2896 = !DILocation(line: 146, column: 9, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2895, file: !62, line: 145, column: 12)
!2898 = !DILocation(line: 150, column: 5, scope: !2886)
!2899 = !DILocation(line: 151, column: 1, scope: !2886)
!2900 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !126, file: !126, line: 1577, type: !2901, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !120, !12}
!2903 = !{!2904, !2905}
!2904 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2900, file: !126, line: 1577, type: !120)
!2905 = !DILocalVariable(name: "priority", arg: 2, scope: !2900, file: !126, line: 1577, type: !12)
!2906 = !DILocation(line: 0, scope: !2900)
!2907 = !DILocation(line: 1582, column: 34, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !126, line: 1581, column: 8)
!2909 = distinct !DILexicalBlock(scope: !2900, file: !126, line: 1579, column: 6)
!2910 = !DILocation(line: 1582, column: 5, scope: !2908)
!2911 = !DILocation(line: 1582, column: 32, scope: !2908)
!2912 = !DILocation(line: 1583, column: 1, scope: !2900)
!2913 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !62, file: !62, line: 153, type: !2821, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2914)
!2914 = !{!2915, !2916}
!2915 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2913, file: !62, line: 153, type: !119)
!2916 = !DILocalVariable(name: "ret", scope: !2913, file: !62, line: 155, type: !12)
!2917 = !DILocation(line: 0, scope: !2913)
!2918 = !DILocation(line: 157, column: 40, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2913, file: !62, line: 157, column: 9)
!2920 = !DILocation(line: 160, column: 15, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2919, file: !62, line: 159, column: 12)
!2922 = !DILocation(line: 163, column: 5, scope: !2913)
!2923 = !DILocation(line: 164, column: 1, scope: !2913)
!2924 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !126, file: !126, line: 1597, type: !2834, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2925)
!2925 = !{!2926}
!2926 = !DILocalVariable(name: "IRQn", arg: 1, scope: !2924, file: !126, line: 1597, type: !120)
!2927 = !DILocation(line: 0, scope: !2924)
!2928 = !DILocation(line: 1603, column: 23, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !126, line: 1602, column: 8)
!2930 = distinct !DILexicalBlock(scope: !2924, file: !126, line: 1600, column: 6)
!2931 = !DILocation(line: 1603, column: 60, scope: !2929)
!2932 = !DILocation(line: 1604, column: 1, scope: !2924)
!2933 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !62, file: !62, line: 173, type: !276, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1786)
!2934 = !DILocation(line: 175, column: 1, scope: !2933)
!2935 = distinct !DISubprogram(name: "isrC_main", scope: !62, file: !62, line: 178, type: !2770, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2936)
!2936 = !{!2937, !2938}
!2937 = !DILocalVariable(name: "status", scope: !2935, file: !62, line: 180, type: !2772)
!2938 = !DILocalVariable(name: "irq_number", scope: !2935, file: !62, line: 181, type: !119)
!2939 = !DILocation(line: 0, scope: !2935)
!2940 = !DILocation(line: 188, column: 34, scope: !2935)
!2941 = !DILocation(line: 189, column: 24, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2935, file: !62, line: 189, column: 9)
!2943 = !DILocation(line: 192, column: 48, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2942, file: !62, line: 192, column: 16)
!2945 = !DILocation(line: 192, column: 62, scope: !2944)
!2946 = !DILocation(line: 192, column: 16, scope: !2942)
!2947 = !DILocation(line: 194, column: 9, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2944, file: !62, line: 192, column: 71)
!2949 = !DILocation(line: 195, column: 9, scope: !2948)
!2950 = !DILocation(line: 197, column: 55, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2944, file: !62, line: 196, column: 12)
!2952 = !DILocation(line: 197, column: 41, scope: !2951)
!2953 = !DILocation(line: 197, column: 53, scope: !2951)
!2954 = !DILocation(line: 198, column: 41, scope: !2951)
!2955 = !DILocation(line: 198, column: 9, scope: !2951)
!2956 = !DILocation(line: 202, column: 5, scope: !2935)
!2957 = !DILocation(line: 203, column: 1, scope: !2935)
!2958 = distinct !DISubprogram(name: "get_current_irq", scope: !62, file: !62, line: 166, type: !1770, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2959)
!2959 = !{!2960}
!2960 = !DILocalVariable(name: "irq_num", scope: !2958, file: !62, line: 168, type: !12)
!2961 = !DILocation(line: 168, column: 31, scope: !2958)
!2962 = !DILocation(line: 168, column: 36, scope: !2958)
!2963 = !DILocation(line: 0, scope: !2958)
!2964 = !DILocation(line: 169, column: 21, scope: !2958)
!2965 = !DILocation(line: 169, column: 5, scope: !2958)
!2966 = distinct !DISubprogram(name: "get_pending_irq", scope: !62, file: !62, line: 55, type: !1770, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1786)
!2967 = !DILocation(line: 57, column: 19, scope: !2966)
!2968 = !DILocation(line: 57, column: 51, scope: !2966)
!2969 = !DILocation(line: 57, column: 5, scope: !2966)
!2970 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !62, file: !62, line: 205, type: !2971, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2974)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!2772, !119, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !65, line: 175, baseType: !205)
!2974 = !{!2975, !2976, !2977}
!2975 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2970, file: !62, line: 205, type: !119)
!2976 = !DILocalVariable(name: "callback", arg: 2, scope: !2970, file: !62, line: 205, type: !2973)
!2977 = !DILocalVariable(name: "mask", scope: !2970, file: !62, line: 207, type: !12)
!2978 = !DILocation(line: 0, scope: !2970)
!2979 = !DILocation(line: 209, column: 24, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2970, file: !62, line: 209, column: 9)
!2981 = !DILocation(line: 213, column: 12, scope: !2970)
!2982 = !DILocation(line: 214, column: 5, scope: !2970)
!2983 = !DILocation(line: 215, column: 37, scope: !2970)
!2984 = !DILocation(line: 215, column: 51, scope: !2970)
!2985 = !DILocation(line: 216, column: 37, scope: !2970)
!2986 = !DILocation(line: 216, column: 49, scope: !2970)
!2987 = !DILocation(line: 217, column: 5, scope: !2970)
!2988 = !DILocation(line: 219, column: 5, scope: !2970)
!2989 = !DILocation(line: 220, column: 1, scope: !2970)
!2990 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !62, file: !62, line: 222, type: !2991, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!2772, !2386}
!2993 = !{!2994}
!2994 = !DILocalVariable(name: "mask", arg: 1, scope: !2990, file: !62, line: 222, type: !2386)
!2995 = !DILocation(line: 0, scope: !2990)
!2996 = !DILocation(line: 224, column: 13, scope: !2990)
!2997 = !DILocation(line: 224, column: 11, scope: !2990)
!2998 = !DILocation(line: 225, column: 5, scope: !2990)
!2999 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !62, file: !62, line: 228, type: !3000, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!2772, !12}
!3002 = !{!3003}
!3003 = !DILocalVariable(name: "mask", arg: 1, scope: !2999, file: !62, line: 228, type: !12)
!3004 = !DILocation(line: 0, scope: !2999)
!3005 = !DILocation(line: 230, column: 5, scope: !2999)
!3006 = !DILocation(line: 231, column: 5, scope: !2999)
!3007 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !796, file: !796, line: 50, type: !3008, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3012)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!3010, !3011, !151}
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !799, line: 238, baseType: !798)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !225, line: 281, baseType: !805)
!3012 = !{!3013, !3014, !3015}
!3013 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3007, file: !796, line: 50, type: !3011)
!3014 = !DILocalVariable(name: "function_index", arg: 2, scope: !3007, file: !796, line: 50, type: !151)
!3015 = !DILocalVariable(name: "ret_value", scope: !3007, file: !796, line: 52, type: !122)
!3016 = !DILocation(line: 0, scope: !3007)
!3017 = !DILocation(line: 53, column: 18, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3007, file: !796, line: 53, column: 9)
!3019 = !DILocation(line: 53, column: 9, scope: !3007)
!3020 = !DILocation(line: 57, column: 24, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3007, file: !796, line: 57, column: 9)
!3022 = !DILocation(line: 57, column: 9, scope: !3007)
!3023 = !DILocation(line: 57, column: 9, scope: !3021)
!3024 = !DILocation(line: 60, column: 17, scope: !3007)
!3025 = !DILocation(line: 61, column: 12, scope: !3007)
!3026 = !DILocation(line: 61, column: 5, scope: !3007)
!3027 = !DILocation(line: 62, column: 1, scope: !3007)
!3028 = distinct !DISubprogram(name: "hal_gpio_init", scope: !796, file: !796, line: 64, type: !3029, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3032)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!3031, !3011}
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !799, line: 229, baseType: !836)
!3032 = !{!3033}
!3033 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3028, file: !796, line: 64, type: !3011)
!3034 = !DILocation(line: 0, scope: !3028)
!3035 = !DILocation(line: 66, column: 5, scope: !3028)
!3036 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !796, file: !796, line: 69, type: !3029, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3037)
!3037 = !{!3038}
!3038 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3036, file: !796, line: 69, type: !3011)
!3039 = !DILocation(line: 0, scope: !3036)
!3040 = !DILocation(line: 71, column: 5, scope: !3036)
!3041 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !796, file: !796, line: 74, type: !3042, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3045)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!3031, !3011, !3044}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 32)
!3045 = !{!3046, !3047, !3048}
!3046 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3041, file: !796, line: 74, type: !3011)
!3047 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3041, file: !796, line: 74, type: !3044)
!3048 = !DILocalVariable(name: "status", scope: !3041, file: !796, line: 76, type: !3049)
!3049 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !857, line: 67, baseType: !3050)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !857, line: 62, size: 64, elements: !3051)
!3051 = !{!3052, !3053, !3054, !3055}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3050, file: !857, line: 63, baseType: !12, size: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3050, file: !857, line: 64, baseType: !151, size: 8, offset: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3050, file: !857, line: 65, baseType: !151, size: 8, offset: 40)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3050, file: !857, line: 66, baseType: !151, size: 8, offset: 48)
!3056 = !DILocation(line: 0, scope: !3041)
!3057 = !DILocation(line: 77, column: 14, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3041, file: !796, line: 77, column: 9)
!3059 = !DILocation(line: 77, column: 9, scope: !3041)
!3060 = !DILocation(line: 81, column: 18, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3041, file: !796, line: 81, column: 9)
!3062 = !DILocation(line: 81, column: 9, scope: !3041)
!3063 = !DILocation(line: 85, column: 14, scope: !3041)
!3064 = !DILocation(line: 86, column: 18, scope: !3041)
!3065 = !DILocation(line: 86, column: 16, scope: !3041)
!3066 = !DILocation(line: 87, column: 5, scope: !3041)
!3067 = !DILocation(line: 88, column: 1, scope: !3041)
!3068 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !796, file: !796, line: 90, type: !3069, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3071)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!3031, !3011, !863}
!3071 = !{!3072, !3073, !3074}
!3072 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3068, file: !796, line: 90, type: !3011)
!3073 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3068, file: !796, line: 90, type: !863)
!3074 = !DILocalVariable(name: "ret_value", scope: !3068, file: !796, line: 92, type: !122)
!3075 = !DILocation(line: 0, scope: !3068)
!3076 = !DILocation(line: 93, column: 18, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3068, file: !796, line: 93, column: 9)
!3078 = !DILocation(line: 93, column: 9, scope: !3068)
!3079 = !DILocation(line: 97, column: 60, scope: !3068)
!3080 = !DILocation(line: 97, column: 17, scope: !3068)
!3081 = !DILocation(line: 98, column: 12, scope: !3068)
!3082 = !DILocation(line: 98, column: 5, scope: !3068)
!3083 = !DILocation(line: 99, column: 1, scope: !3068)
!3084 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !796, file: !796, line: 101, type: !3042, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3085)
!3085 = !{!3086, !3087, !3088}
!3086 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3084, file: !796, line: 101, type: !3011)
!3087 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3084, file: !796, line: 101, type: !3044)
!3088 = !DILocalVariable(name: "status", scope: !3084, file: !796, line: 103, type: !3049)
!3089 = !DILocation(line: 0, scope: !3084)
!3090 = !DILocation(line: 104, column: 18, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3084, file: !796, line: 104, column: 9)
!3092 = !DILocation(line: 104, column: 9, scope: !3084)
!3093 = !DILocation(line: 108, column: 14, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3084, file: !796, line: 108, column: 9)
!3095 = !DILocation(line: 108, column: 9, scope: !3084)
!3096 = !DILocation(line: 112, column: 14, scope: !3084)
!3097 = !DILocation(line: 113, column: 18, scope: !3084)
!3098 = !DILocation(line: 113, column: 16, scope: !3084)
!3099 = !DILocation(line: 114, column: 5, scope: !3084)
!3100 = !DILocation(line: 115, column: 1, scope: !3084)
!3101 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !796, file: !796, line: 117, type: !3102, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3105)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!3031, !3011, !3104}
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !799, line: 213, baseType: !846)
!3105 = !{!3106, !3107, !3108}
!3106 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3101, file: !796, line: 117, type: !3011)
!3107 = !DILocalVariable(name: "direction", arg: 2, scope: !3101, file: !796, line: 117, type: !3104)
!3108 = !DILocalVariable(name: "ret_value", scope: !3101, file: !796, line: 119, type: !122)
!3109 = !DILocation(line: 0, scope: !3101)
!3110 = !DILocation(line: 120, column: 18, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3101, file: !796, line: 120, column: 9)
!3112 = !DILocation(line: 120, column: 9, scope: !3101)
!3113 = !DILocation(line: 123, column: 17, scope: !3101)
!3114 = !DILocation(line: 125, column: 12, scope: !3101)
!3115 = !DILocation(line: 125, column: 5, scope: !3101)
!3116 = !DILocation(line: 126, column: 1, scope: !3101)
!3117 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !796, file: !796, line: 128, type: !3118, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3121)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!3031, !3011, !3120}
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 32)
!3121 = !{!3122, !3123, !3124}
!3122 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3117, file: !796, line: 128, type: !3011)
!3123 = !DILocalVariable(name: "direction", arg: 2, scope: !3117, file: !796, line: 128, type: !3120)
!3124 = !DILocalVariable(name: "status", scope: !3117, file: !796, line: 131, type: !3049)
!3125 = !DILocation(line: 0, scope: !3117)
!3126 = !DILocation(line: 132, column: 18, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3117, file: !796, line: 132, column: 9)
!3128 = !DILocation(line: 132, column: 9, scope: !3117)
!3129 = !DILocation(line: 136, column: 14, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3117, file: !796, line: 136, column: 9)
!3131 = !DILocation(line: 136, column: 9, scope: !3117)
!3132 = !DILocation(line: 140, column: 14, scope: !3117)
!3133 = !DILocation(line: 141, column: 18, scope: !3117)
!3134 = !DILocation(line: 141, column: 16, scope: !3117)
!3135 = !DILocation(line: 142, column: 5, scope: !3117)
!3136 = !DILocation(line: 143, column: 1, scope: !3117)
!3137 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !796, file: !796, line: 146, type: !3029, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3138)
!3138 = !{!3139, !3140}
!3139 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3137, file: !796, line: 146, type: !3011)
!3140 = !DILocalVariable(name: "status", scope: !3137, file: !796, line: 148, type: !3049)
!3141 = !DILocation(line: 0, scope: !3137)
!3142 = !DILocation(line: 149, column: 18, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3137, file: !796, line: 149, column: 9)
!3144 = !DILocation(line: 149, column: 9, scope: !3137)
!3145 = !DILocation(line: 153, column: 14, scope: !3137)
!3146 = !DILocation(line: 154, column: 76, scope: !3137)
!3147 = !DILocation(line: 154, column: 12, scope: !3137)
!3148 = !DILocation(line: 154, column: 5, scope: !3137)
!3149 = !DILocation(line: 155, column: 1, scope: !3137)
!3150 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !796, file: !796, line: 157, type: !3029, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3151)
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3150, file: !796, line: 157, type: !3011)
!3153 = !DILocalVariable(name: "ret_value", scope: !3150, file: !796, line: 159, type: !122)
!3154 = !DILocation(line: 0, scope: !3150)
!3155 = !DILocation(line: 160, column: 18, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3150, file: !796, line: 160, column: 9)
!3157 = !DILocation(line: 160, column: 9, scope: !3150)
!3158 = !DILocation(line: 164, column: 17, scope: !3150)
!3159 = !DILocation(line: 165, column: 19, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3150, file: !796, line: 165, column: 9)
!3161 = !DILocation(line: 165, column: 9, scope: !3150)
!3162 = !DILocation(line: 168, column: 17, scope: !3150)
!3163 = !DILocation(line: 169, column: 12, scope: !3150)
!3164 = !DILocation(line: 169, column: 5, scope: !3150)
!3165 = !DILocation(line: 170, column: 1, scope: !3150)
!3166 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !796, file: !796, line: 172, type: !3029, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3167)
!3167 = !{!3168, !3169}
!3168 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3166, file: !796, line: 172, type: !3011)
!3169 = !DILocalVariable(name: "ret_value", scope: !3166, file: !796, line: 174, type: !122)
!3170 = !DILocation(line: 0, scope: !3166)
!3171 = !DILocation(line: 175, column: 18, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3166, file: !796, line: 175, column: 9)
!3173 = !DILocation(line: 175, column: 9, scope: !3166)
!3174 = !DILocation(line: 179, column: 17, scope: !3166)
!3175 = !DILocation(line: 180, column: 19, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3166, file: !796, line: 180, column: 9)
!3177 = !DILocation(line: 180, column: 9, scope: !3166)
!3178 = !DILocation(line: 183, column: 17, scope: !3166)
!3179 = !DILocation(line: 184, column: 12, scope: !3166)
!3180 = !DILocation(line: 184, column: 5, scope: !3166)
!3181 = !DILocation(line: 185, column: 1, scope: !3166)
!3182 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !796, file: !796, line: 187, type: !3029, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3183)
!3183 = !{!3184, !3185}
!3184 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3182, file: !796, line: 187, type: !3011)
!3185 = !DILocalVariable(name: "ret_value", scope: !3182, file: !796, line: 189, type: !122)
!3186 = !DILocation(line: 0, scope: !3182)
!3187 = !DILocation(line: 191, column: 18, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3182, file: !796, line: 191, column: 9)
!3189 = !DILocation(line: 191, column: 9, scope: !3182)
!3190 = !DILocation(line: 195, column: 17, scope: !3182)
!3191 = !DILocation(line: 196, column: 12, scope: !3182)
!3192 = !DILocation(line: 196, column: 5, scope: !3182)
!3193 = !DILocation(line: 197, column: 1, scope: !3182)
!3194 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !796, file: !796, line: 200, type: !3195, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3197)
!3195 = !DISubroutineType(types: !3196)
!3196 = !{!3031, !3011, !864}
!3197 = !{!3198, !3199, !3200}
!3198 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3194, file: !796, line: 200, type: !3011)
!3199 = !DILocalVariable(name: "driving", arg: 2, scope: !3194, file: !796, line: 200, type: !864)
!3200 = !DILocalVariable(name: "ret_value", scope: !3194, file: !796, line: 202, type: !122)
!3201 = !DILocation(line: 0, scope: !3194)
!3202 = !DILocation(line: 204, column: 18, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3194, file: !796, line: 204, column: 9)
!3204 = !DILocation(line: 204, column: 9, scope: !3194)
!3205 = !DILocation(line: 208, column: 64, scope: !3194)
!3206 = !DILocation(line: 208, column: 17, scope: !3194)
!3207 = !DILocation(line: 210, column: 12, scope: !3194)
!3208 = !DILocation(line: 210, column: 5, scope: !3194)
!3209 = !DILocation(line: 211, column: 1, scope: !3194)
!3210 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !796, file: !796, line: 214, type: !3211, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !3214)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!3031, !3011, !3213}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 32)
!3214 = !{!3215, !3216, !3217, !3218}
!3215 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3210, file: !796, line: 214, type: !3011)
!3216 = !DILocalVariable(name: "driving", arg: 2, scope: !3210, file: !796, line: 214, type: !3213)
!3217 = !DILocalVariable(name: "ret_value", scope: !3210, file: !796, line: 216, type: !122)
!3218 = !DILocalVariable(name: "value", scope: !3210, file: !796, line: 217, type: !151)
!3219 = !DILocation(line: 0, scope: !3210)
!3220 = !DILocation(line: 217, column: 5, scope: !3210)
!3221 = !DILocation(line: 219, column: 18, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3210, file: !796, line: 219, column: 9)
!3223 = !DILocation(line: 219, column: 9, scope: !3210)
!3224 = !DILocation(line: 223, column: 17, scope: !3210)
!3225 = !DILocation(line: 225, column: 44, scope: !3210)
!3226 = !DILocation(line: 225, column: 16, scope: !3210)
!3227 = !DILocation(line: 225, column: 14, scope: !3210)
!3228 = !DILocation(line: 227, column: 12, scope: !3210)
!3229 = !DILocation(line: 227, column: 5, scope: !3210)
!3230 = !DILocation(line: 228, column: 1, scope: !3210)
!3231 = distinct !DISubprogram(name: "hal_uart_init", scope: !214, file: !214, line: 234, type: !3232, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3236)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!3234, !278, !3235}
!3234 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !217, line: 351, baseType: !216)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!3236 = !{!3237, !3238}
!3237 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3231, file: !214, line: 234, type: !278)
!3238 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3231, file: !214, line: 234, type: !3235)
!3239 = !DILocation(line: 0, scope: !3231)
!3240 = !DILocation(line: 236, column: 10, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3231, file: !214, line: 236, column: 9)
!3242 = !DILocation(line: 236, column: 9, scope: !3231)
!3243 = !DILocation(line: 239, column: 41, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3231, file: !214, line: 239, column: 9)
!3245 = !{i8 0, i8 2}
!3246 = !DILocation(line: 239, column: 9, scope: !3231)
!3247 = !DILocation(line: 242, column: 5, scope: !3231)
!3248 = !DILocation(line: 243, column: 45, scope: !3231)
!3249 = !DILocation(line: 243, column: 12, scope: !3231)
!3250 = !DILocation(line: 244, column: 12, scope: !3231)
!3251 = !DILocation(line: 243, column: 5, scope: !3231)
!3252 = !DILocation(line: 245, column: 58, scope: !3231)
!3253 = !DILocation(line: 246, column: 30, scope: !3231)
!3254 = !{i32 0, i32 2}
!3255 = !DILocation(line: 246, column: 5, scope: !3231)
!3256 = !DILocation(line: 247, column: 5, scope: !3231)
!3257 = !DILocation(line: 249, column: 31, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3231, file: !214, line: 249, column: 9)
!3259 = !DILocation(line: 249, column: 28, scope: !3258)
!3260 = !DILocation(line: 261, column: 1, scope: !3231)
!3261 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !214, file: !214, line: 93, type: !3262, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3266)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!288, !278, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!3266 = !{!3267, !3268}
!3267 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3261, file: !214, line: 93, type: !278)
!3268 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3261, file: !214, line: 93, type: !3264)
!3269 = !DILocation(line: 0, scope: !3261)
!3270 = !DILocation(line: 95, column: 10, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3261, file: !214, line: 95, column: 9)
!3272 = !DILocation(line: 95, column: 9, scope: !3261)
!3273 = !DILocation(line: 101, column: 23, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3261, file: !214, line: 101, column: 9)
!3275 = !DILocation(line: 101, column: 32, scope: !3274)
!3276 = !DILocation(line: 101, column: 60, scope: !3274)
!3277 = !DILocation(line: 102, column: 27, scope: !3274)
!3278 = !DILocation(line: 102, column: 34, scope: !3274)
!3279 = !DILocation(line: 102, column: 58, scope: !3274)
!3280 = !DILocation(line: 103, column: 27, scope: !3274)
!3281 = !DILocation(line: 103, column: 36, scope: !3274)
!3282 = !DILocation(line: 103, column: 59, scope: !3274)
!3283 = !DILocation(line: 104, column: 27, scope: !3274)
!3284 = !DILocation(line: 104, column: 39, scope: !3274)
!3285 = !DILocation(line: 101, column: 9, scope: !3261)
!3286 = !DILocation(line: 109, column: 1, scope: !3261)
!3287 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !214, file: !214, line: 139, type: !3288, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!2239, !278}
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3287, file: !214, line: 139, type: !278)
!3292 = !DILocation(line: 0, scope: !3287)
!3293 = !DILocation(line: 141, column: 24, scope: !3287)
!3294 = !DILocation(line: 141, column: 12, scope: !3287)
!3295 = !DILocation(line: 141, column: 5, scope: !3287)
!3296 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !214, file: !214, line: 593, type: !3297, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!3234, !278, !3264}
!3299 = !{!3300, !3301}
!3300 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3296, file: !214, line: 593, type: !278)
!3301 = !DILocalVariable(name: "config", arg: 2, scope: !3296, file: !214, line: 593, type: !3264)
!3302 = !DILocation(line: 0, scope: !3296)
!3303 = !DILocation(line: 595, column: 10, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3296, file: !214, line: 595, column: 9)
!3305 = !DILocation(line: 595, column: 9, scope: !3296)
!3306 = !DILocation(line: 598, column: 45, scope: !3296)
!3307 = !DILocation(line: 598, column: 12, scope: !3296)
!3308 = !DILocation(line: 598, column: 59, scope: !3296)
!3309 = !DILocation(line: 598, column: 5, scope: !3296)
!3310 = !DILocation(line: 599, column: 23, scope: !3296)
!3311 = !DILocation(line: 600, column: 59, scope: !3296)
!3312 = !DILocation(line: 600, column: 23, scope: !3296)
!3313 = !DILocation(line: 601, column: 62, scope: !3296)
!3314 = !DILocation(line: 601, column: 23, scope: !3296)
!3315 = !DILocation(line: 602, column: 57, scope: !3296)
!3316 = !DILocation(line: 602, column: 23, scope: !3296)
!3317 = !DILocation(line: 603, column: 58, scope: !3296)
!3318 = !DILocation(line: 603, column: 23, scope: !3296)
!3319 = !DILocation(line: 599, column: 5, scope: !3296)
!3320 = !DILocation(line: 604, column: 5, scope: !3296)
!3321 = !DILocation(line: 605, column: 1, scope: !3296)
!3322 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !214, file: !214, line: 145, type: !3323, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!12, !294}
!3325 = !{!3326, !3327}
!3326 = !DILocalVariable(name: "bandrate", arg: 1, scope: !3322, file: !214, line: 145, type: !294)
!3327 = !DILocalVariable(name: "baudrate_tbl", scope: !3322, file: !214, line: 147, type: !3328)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 416, elements: !3329)
!3329 = !{!3330}
!3330 = !DISubrange(count: 13)
!3331 = !DILocation(line: 0, scope: !3322)
!3332 = !DILocation(line: 147, column: 14, scope: !3322)
!3333 = !DILocation(line: 151, column: 12, scope: !3322)
!3334 = !DILocation(line: 151, column: 5, scope: !3322)
!3335 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !214, file: !214, line: 155, type: !3336, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3338)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!2309, !296}
!3338 = !{!3339, !3340}
!3339 = !DILocalVariable(name: "word_length", arg: 1, scope: !3335, file: !214, line: 155, type: !296)
!3340 = !DILocalVariable(name: "databit_tbl", scope: !3335, file: !214, line: 157, type: !3341)
!3341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2309, size: 64, elements: !190)
!3342 = !DILocation(line: 0, scope: !3335)
!3343 = !DILocation(line: 157, column: 14, scope: !3335)
!3344 = !DILocation(line: 160, column: 12, scope: !3335)
!3345 = !DILocation(line: 160, column: 5, scope: !3335)
!3346 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !214, file: !214, line: 164, type: !3347, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!2309, !300}
!3349 = !{!3350, !3351}
!3350 = !DILocalVariable(name: "parity", arg: 1, scope: !3346, file: !214, line: 164, type: !300)
!3351 = !DILocalVariable(name: "parity_tbl", scope: !3346, file: !214, line: 166, type: !3352)
!3352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2309, size: 80, elements: !194)
!3353 = !DILocation(line: 0, scope: !3346)
!3354 = !DILocation(line: 166, column: 14, scope: !3346)
!3355 = !DILocation(line: 169, column: 12, scope: !3346)
!3356 = !DILocation(line: 169, column: 5, scope: !3346)
!3357 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !214, file: !214, line: 173, type: !3358, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3360)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!2309, !298}
!3360 = !{!3361, !3362}
!3361 = !DILocalVariable(name: "stopbit", arg: 1, scope: !3357, file: !214, line: 173, type: !298)
!3362 = !DILocalVariable(name: "stopbit_tbl", scope: !3357, file: !214, line: 175, type: !3363)
!3363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2309, size: 48, elements: !456)
!3364 = !DILocation(line: 0, scope: !3357)
!3365 = !DILocation(line: 175, column: 14, scope: !3357)
!3366 = !DILocation(line: 178, column: 12, scope: !3357)
!3367 = !DILocation(line: 178, column: 5, scope: !3357)
!3368 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !214, file: !214, line: 87, type: !3369, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3371)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!288, !278}
!3371 = !{!3372}
!3372 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3368, file: !214, line: 87, type: !278)
!3373 = !DILocation(line: 0, scope: !3368)
!3374 = !DILocation(line: 89, column: 23, scope: !3368)
!3375 = !DILocation(line: 89, column: 5, scope: !3368)
!3376 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !214, file: !214, line: 264, type: !3377, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!3234, !278}
!3379 = !{!3380}
!3380 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3376, file: !214, line: 264, type: !278)
!3381 = !DILocation(line: 0, scope: !3376)
!3382 = !DILocation(line: 266, column: 10, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3376, file: !214, line: 266, column: 9)
!3384 = !DILocation(line: 266, column: 9, scope: !3376)
!3385 = !DILocation(line: 269, column: 41, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3376, file: !214, line: 269, column: 9)
!3387 = !DILocation(line: 269, column: 62, scope: !3386)
!3388 = !DILocation(line: 269, column: 9, scope: !3376)
!3389 = !DILocation(line: 272, column: 5, scope: !3376)
!3390 = !DILocation(line: 275, column: 22, scope: !3376)
!3391 = !DILocation(line: 275, column: 5, scope: !3376)
!3392 = !DILocation(line: 284, column: 5, scope: !3376)
!3393 = !DILocation(line: 286, column: 5, scope: !3376)
!3394 = !DILocation(line: 287, column: 1, scope: !3376)
!3395 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !214, file: !214, line: 290, type: !3396, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3398)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{null, !278, !267}
!3398 = !{!3399, !3400, !3401}
!3399 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3395, file: !214, line: 290, type: !278)
!3400 = !DILocalVariable(name: "byte", arg: 2, scope: !3395, file: !214, line: 290, type: !267)
!3401 = !DILocalVariable(name: "int_no", scope: !3395, file: !214, line: 292, type: !2239)
!3402 = !DILocation(line: 0, scope: !3395)
!3403 = !DILocation(line: 292, column: 26, scope: !3395)
!3404 = !DILocation(line: 294, column: 16, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3395, file: !214, line: 294, column: 9)
!3406 = !DILocation(line: 294, column: 9, scope: !3395)
!3407 = !DILocation(line: 295, column: 9, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3405, file: !214, line: 294, column: 34)
!3409 = !DILocation(line: 296, column: 5, scope: !3408)
!3410 = !DILocation(line: 299, column: 1, scope: !3395)
!3411 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !214, file: !214, line: 302, type: !3412, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!12, !278, !2446, !12}
!3414 = !{!3415, !3416, !3417, !3418, !3419}
!3415 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3411, file: !214, line: 302, type: !278)
!3416 = !DILocalVariable(name: "data", arg: 2, scope: !3411, file: !214, line: 302, type: !2446)
!3417 = !DILocalVariable(name: "size", arg: 3, scope: !3411, file: !214, line: 302, type: !12)
!3418 = !DILocalVariable(name: "int_no", scope: !3411, file: !214, line: 304, type: !2239)
!3419 = !DILocalVariable(name: "index", scope: !3411, file: !214, line: 305, type: !12)
!3420 = !DILocation(line: 0, scope: !3411)
!3421 = !DILocation(line: 304, column: 26, scope: !3411)
!3422 = !DILocation(line: 307, column: 14, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3411, file: !214, line: 307, column: 9)
!3424 = !DILocation(line: 307, column: 9, scope: !3411)
!3425 = !DILocation(line: 313, column: 53, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !214, line: 312, column: 48)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !214, line: 312, column: 9)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !214, line: 312, column: 9)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !214, line: 311, column: 33)
!3430 = distinct !DILexicalBlock(scope: !3411, file: !214, line: 311, column: 9)
!3431 = !DILocation(line: 313, column: 13, scope: !3426)
!3432 = !DILocation(line: 312, column: 44, scope: !3427)
!3433 = !DILocation(line: 312, column: 31, scope: !3427)
!3434 = !DILocation(line: 312, column: 9, scope: !3428)
!3435 = distinct !{!3435, !3434, !3436}
!3436 = !DILocation(line: 314, column: 9, scope: !3428)
!3437 = !DILocation(line: 318, column: 1, scope: !3411)
!3438 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !214, file: !214, line: 320, type: !3412, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445}
!3440 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3438, file: !214, line: 320, type: !278)
!3441 = !DILocalVariable(name: "data", arg: 2, scope: !3438, file: !214, line: 320, type: !2446)
!3442 = !DILocalVariable(name: "size", arg: 3, scope: !3438, file: !214, line: 320, type: !12)
!3443 = !DILocalVariable(name: "actual_space", scope: !3438, file: !214, line: 322, type: !12)
!3444 = !DILocalVariable(name: "send_size", scope: !3438, file: !214, line: 322, type: !12)
!3445 = !DILocalVariable(name: "ch", scope: !3438, file: !214, line: 323, type: !3446)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !33, line: 144, baseType: !32)
!3447 = !DILocation(line: 0, scope: !3438)
!3448 = !DILocation(line: 322, column: 5, scope: !3438)
!3449 = !DILocation(line: 328, column: 10, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3438, file: !214, line: 328, column: 9)
!3451 = !DILocation(line: 328, column: 9, scope: !3438)
!3452 = !DILocation(line: 332, column: 15, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3438, file: !214, line: 332, column: 9)
!3454 = !DILocation(line: 332, column: 24, scope: !3453)
!3455 = !DILocation(line: 335, column: 42, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3438, file: !214, line: 335, column: 9)
!3457 = !DILocation(line: 335, column: 9, scope: !3438)
!3458 = !DILocation(line: 349, column: 30, scope: !3438)
!3459 = !DILocation(line: 349, column: 5, scope: !3438)
!3460 = !DILocation(line: 350, column: 9, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3438, file: !214, line: 350, column: 9)
!3462 = !DILocation(line: 350, column: 22, scope: !3461)
!3463 = !DILocation(line: 355, column: 5, scope: !3438)
!3464 = !DILocation(line: 357, column: 22, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3438, file: !214, line: 357, column: 9)
!3466 = !DILocation(line: 357, column: 19, scope: !3465)
!3467 = !DILocation(line: 357, column: 9, scope: !3438)
!3468 = !DILocation(line: 358, column: 14, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3465, file: !214, line: 357, column: 36)
!3470 = !{i32 14, i32 18}
!3471 = !DILocation(line: 359, column: 9, scope: !3469)
!3472 = !DILocation(line: 360, column: 5, scope: !3469)
!3473 = !DILocation(line: 362, column: 1, scope: !3438)
!3474 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !214, file: !214, line: 191, type: !3475, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!3446, !2239, !288}
!3477 = !{!3478, !3479, !3480}
!3478 = !DILocalVariable(name: "port", arg: 1, scope: !3474, file: !214, line: 191, type: !2239)
!3479 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3474, file: !214, line: 191, type: !288)
!3480 = !DILocalVariable(name: "ch", scope: !3474, file: !214, line: 193, type: !3446)
!3481 = !DILocation(line: 0, scope: !3474)
!3482 = !DILocation(line: 195, column: 14, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3474, file: !214, line: 195, column: 9)
!3484 = !DILocation(line: 195, column: 9, scope: !3474)
!3485 = !DILocation(line: 209, column: 5, scope: !3474)
!3486 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !214, file: !214, line: 365, type: !3487, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3489)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!267, !278}
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3486, file: !214, line: 365, type: !278)
!3491 = !DILocalVariable(name: "int_no", scope: !3486, file: !214, line: 367, type: !2239)
!3492 = !DILocation(line: 0, scope: !3486)
!3493 = !DILocation(line: 367, column: 26, scope: !3486)
!3494 = !DILocation(line: 369, column: 16, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3486, file: !214, line: 369, column: 9)
!3496 = !DILocation(line: 369, column: 9, scope: !3486)
!3497 = !DILocation(line: 370, column: 22, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3495, file: !214, line: 369, column: 33)
!3499 = !DILocation(line: 370, column: 9, scope: !3498)
!3500 = !DILocation(line: 0, scope: !3495)
!3501 = !DILocation(line: 375, column: 1, scope: !3486)
!3502 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !214, file: !214, line: 377, type: !3503, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3505)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!12, !278}
!3505 = !{!3506, !3507}
!3506 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3502, file: !214, line: 377, type: !278)
!3507 = !DILocalVariable(name: "int_no", scope: !3502, file: !214, line: 379, type: !2239)
!3508 = !DILocation(line: 0, scope: !3502)
!3509 = !DILocation(line: 379, column: 26, scope: !3502)
!3510 = !DILocation(line: 381, column: 16, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3502, file: !214, line: 381, column: 9)
!3512 = !DILocation(line: 381, column: 9, scope: !3502)
!3513 = !DILocation(line: 382, column: 16, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3511, file: !214, line: 381, column: 33)
!3515 = !DILocation(line: 382, column: 9, scope: !3514)
!3516 = !DILocation(line: 0, scope: !3511)
!3517 = !DILocation(line: 387, column: 1, scope: !3502)
!3518 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !214, file: !214, line: 390, type: !3519, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3521)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!12, !278, !319, !12}
!3521 = !{!3522, !3523, !3524, !3525, !3526}
!3522 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3518, file: !214, line: 390, type: !278)
!3523 = !DILocalVariable(name: "buffer", arg: 2, scope: !3518, file: !214, line: 390, type: !319)
!3524 = !DILocalVariable(name: "size", arg: 3, scope: !3518, file: !214, line: 390, type: !12)
!3525 = !DILocalVariable(name: "int_no", scope: !3518, file: !214, line: 392, type: !2239)
!3526 = !DILocalVariable(name: "index", scope: !3518, file: !214, line: 393, type: !12)
!3527 = !DILocation(line: 0, scope: !3518)
!3528 = !DILocation(line: 392, column: 26, scope: !3518)
!3529 = !DILocation(line: 395, column: 16, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3518, file: !214, line: 395, column: 9)
!3531 = !DILocation(line: 395, column: 9, scope: !3518)
!3532 = !DILocation(line: 401, column: 38, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !214, line: 400, column: 48)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !214, line: 400, column: 9)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !214, line: 400, column: 9)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !214, line: 399, column: 33)
!3537 = distinct !DILexicalBlock(scope: !3518, file: !214, line: 399, column: 9)
!3538 = !DILocation(line: 401, column: 13, scope: !3533)
!3539 = !DILocation(line: 401, column: 27, scope: !3533)
!3540 = !DILocation(line: 400, column: 44, scope: !3534)
!3541 = !DILocation(line: 400, column: 31, scope: !3534)
!3542 = !DILocation(line: 400, column: 9, scope: !3535)
!3543 = distinct !{!3543, !3542, !3544}
!3544 = !DILocation(line: 402, column: 9, scope: !3535)
!3545 = !DILocation(line: 406, column: 1, scope: !3518)
!3546 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !214, file: !214, line: 408, type: !3519, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553}
!3548 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3546, file: !214, line: 408, type: !278)
!3549 = !DILocalVariable(name: "buffer", arg: 2, scope: !3546, file: !214, line: 408, type: !319)
!3550 = !DILocalVariable(name: "size", arg: 3, scope: !3546, file: !214, line: 408, type: !12)
!3551 = !DILocalVariable(name: "actual_size", scope: !3546, file: !214, line: 410, type: !12)
!3552 = !DILocalVariable(name: "receive_size", scope: !3546, file: !214, line: 410, type: !12)
!3553 = !DILocalVariable(name: "ch", scope: !3546, file: !214, line: 411, type: !3446)
!3554 = !DILocation(line: 0, scope: !3546)
!3555 = !DILocation(line: 410, column: 5, scope: !3546)
!3556 = !DILocation(line: 413, column: 10, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3546, file: !214, line: 413, column: 9)
!3558 = !DILocation(line: 413, column: 9, scope: !3546)
!3559 = !DILocation(line: 417, column: 17, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3546, file: !214, line: 417, column: 9)
!3561 = !DILocation(line: 417, column: 26, scope: !3560)
!3562 = !DILocation(line: 421, column: 30, scope: !3546)
!3563 = !DILocation(line: 421, column: 5, scope: !3546)
!3564 = !DILocation(line: 422, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3546, file: !214, line: 422, column: 9)
!3566 = !DILocation(line: 422, column: 21, scope: !3565)
!3567 = !DILocation(line: 427, column: 5, scope: !3546)
!3568 = !DILocation(line: 429, column: 25, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3546, file: !214, line: 429, column: 9)
!3570 = !DILocation(line: 429, column: 22, scope: !3569)
!3571 = !DILocation(line: 429, column: 9, scope: !3546)
!3572 = !DILocation(line: 430, column: 14, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !214, line: 429, column: 38)
!3574 = !DILocation(line: 431, column: 9, scope: !3573)
!3575 = !DILocation(line: 432, column: 5, scope: !3573)
!3576 = !DILocation(line: 435, column: 1, scope: !3546)
!3577 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !214, file: !214, line: 438, type: !3503, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3578)
!3578 = !{!3579, !3580}
!3579 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3577, file: !214, line: 438, type: !278)
!3580 = !DILocalVariable(name: "length", scope: !3577, file: !214, line: 440, type: !12)
!3581 = !DILocation(line: 0, scope: !3577)
!3582 = !DILocation(line: 440, column: 5, scope: !3577)
!3583 = !DILocation(line: 440, column: 14, scope: !3577)
!3584 = !DILocation(line: 442, column: 10, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3577, file: !214, line: 442, column: 9)
!3586 = !DILocation(line: 442, column: 9, scope: !3577)
!3587 = !DILocation(line: 446, column: 30, scope: !3577)
!3588 = !DILocation(line: 446, column: 5, scope: !3577)
!3589 = !DILocation(line: 447, column: 12, scope: !3577)
!3590 = !DILocation(line: 447, column: 5, scope: !3577)
!3591 = !DILocation(line: 448, column: 1, scope: !3577)
!3592 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !214, file: !214, line: 451, type: !3503, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3593)
!3593 = !{!3594, !3595}
!3594 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3592, file: !214, line: 451, type: !278)
!3595 = !DILocalVariable(name: "length", scope: !3592, file: !214, line: 453, type: !12)
!3596 = !DILocation(line: 0, scope: !3592)
!3597 = !DILocation(line: 453, column: 5, scope: !3592)
!3598 = !DILocation(line: 453, column: 14, scope: !3592)
!3599 = !DILocation(line: 455, column: 10, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3592, file: !214, line: 455, column: 9)
!3601 = !DILocation(line: 455, column: 9, scope: !3592)
!3602 = !DILocation(line: 459, column: 30, scope: !3592)
!3603 = !DILocation(line: 459, column: 5, scope: !3592)
!3604 = !DILocation(line: 461, column: 12, scope: !3592)
!3605 = !DILocation(line: 461, column: 5, scope: !3592)
!3606 = !DILocation(line: 462, column: 1, scope: !3592)
!3607 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !214, file: !214, line: 543, type: !3608, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3610)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!3234, !278, !307, !121}
!3610 = !{!3611, !3612, !3613, !3614}
!3611 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3607, file: !214, line: 543, type: !278)
!3612 = !DILocalVariable(name: "user_callback", arg: 2, scope: !3607, file: !214, line: 544, type: !307)
!3613 = !DILocalVariable(name: "user_data", arg: 3, scope: !3607, file: !214, line: 545, type: !121)
!3614 = !DILocalVariable(name: "ch", scope: !3607, file: !214, line: 547, type: !3446)
!3615 = !DILocation(line: 0, scope: !3607)
!3616 = !DILocation(line: 549, column: 10, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3607, file: !214, line: 549, column: 9)
!3618 = !DILocation(line: 549, column: 9, scope: !3607)
!3619 = !DILocation(line: 556, column: 53, scope: !3607)
!3620 = !DILocation(line: 556, column: 62, scope: !3607)
!3621 = !DILocation(line: 557, column: 53, scope: !3607)
!3622 = !DILocation(line: 557, column: 63, scope: !3607)
!3623 = !DILocation(line: 558, column: 37, scope: !3607)
!3624 = !DILocation(line: 558, column: 54, scope: !3607)
!3625 = !DILocation(line: 560, column: 39, scope: !3607)
!3626 = !DILocation(line: 561, column: 39, scope: !3607)
!3627 = !DILocation(line: 560, column: 5, scope: !3607)
!3628 = !DILocation(line: 562, column: 5, scope: !3607)
!3629 = !DILocation(line: 564, column: 44, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3607, file: !214, line: 564, column: 9)
!3631 = !DILocation(line: 564, column: 9, scope: !3607)
!3632 = !DILocation(line: 565, column: 9, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3630, file: !214, line: 564, column: 59)
!3634 = !DILocation(line: 566, column: 5, scope: !3633)
!3635 = !DILocation(line: 567, column: 9, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3630, file: !214, line: 566, column: 12)
!3637 = !DILocation(line: 569, column: 10, scope: !3607)
!3638 = !DILocation(line: 570, column: 5, scope: !3607)
!3639 = !DILocation(line: 578, column: 5, scope: !3607)
!3640 = !DILocation(line: 579, column: 1, scope: !3607)
!3641 = !DILocation(line: 0, scope: !271)
!3642 = !DILocation(line: 539, column: 12, scope: !271)
!3643 = !DILocation(line: 539, column: 5, scope: !271)
!3644 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !214, file: !214, line: 511, type: !276, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3645)
!3645 = !{!3646}
!3646 = !DILocalVariable(name: "callback_context", scope: !3647, file: !214, line: 514, type: !3649)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !214, line: 513, column: 60)
!3648 = distinct !DILexicalBlock(scope: !3644, file: !214, line: 513, column: 9)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 32)
!3650 = !DILocation(line: 513, column: 42, scope: !3648)
!3651 = !DILocation(line: 513, column: 9, scope: !3644)
!3652 = !DILocation(line: 515, column: 39, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3647, file: !214, line: 515, column: 13)
!3654 = !DILocation(line: 515, column: 18, scope: !3653)
!3655 = !DILocation(line: 515, column: 13, scope: !3647)
!3656 = !DILocation(line: 516, column: 89, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3653, file: !214, line: 515, column: 49)
!3658 = !DILocation(line: 516, column: 13, scope: !3657)
!3659 = !DILocation(line: 517, column: 9, scope: !3657)
!3660 = !DILocation(line: 519, column: 32, scope: !3644)
!3661 = !DILocation(line: 519, column: 5, scope: !3644)
!3662 = !DILocation(line: 520, column: 1, scope: !3644)
!3663 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !214, file: !214, line: 523, type: !276, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3664)
!3664 = !{!3665}
!3665 = !DILocalVariable(name: "callback_context", scope: !3666, file: !214, line: 526, type: !3649)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !214, line: 525, column: 60)
!3667 = distinct !DILexicalBlock(scope: !3663, file: !214, line: 525, column: 9)
!3668 = !DILocation(line: 525, column: 42, scope: !3667)
!3669 = !DILocation(line: 525, column: 9, scope: !3663)
!3670 = !DILocation(line: 527, column: 39, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3666, file: !214, line: 527, column: 13)
!3672 = !DILocation(line: 527, column: 18, scope: !3671)
!3673 = !DILocation(line: 527, column: 13, scope: !3666)
!3674 = !DILocation(line: 528, column: 89, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3671, file: !214, line: 527, column: 49)
!3676 = !DILocation(line: 528, column: 13, scope: !3675)
!3677 = !DILocation(line: 529, column: 9, scope: !3675)
!3678 = !DILocation(line: 531, column: 32, scope: !3663)
!3679 = !DILocation(line: 531, column: 5, scope: !3663)
!3680 = !DILocation(line: 532, column: 1, scope: !3663)
!3681 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !214, file: !214, line: 464, type: !3682, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{null, !2239, !288}
!3684 = !{!3685, !3686, !3687, !3688, !3689, !3691}
!3685 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3681, file: !214, line: 464, type: !2239)
!3686 = !DILocalVariable(name: "is_rx", arg: 2, scope: !3681, file: !214, line: 464, type: !288)
!3687 = !DILocalVariable(name: "avail_size", scope: !3681, file: !214, line: 466, type: !12)
!3688 = !DILocalVariable(name: "avail_space", scope: !3681, file: !214, line: 466, type: !12)
!3689 = !DILocalVariable(name: "dma_config", scope: !3681, file: !214, line: 467, type: !3690)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32)
!3691 = !DILocalVariable(name: "ch", scope: !3681, file: !214, line: 468, type: !3446)
!3692 = !DILocation(line: 0, scope: !3681)
!3693 = !DILocation(line: 466, column: 5, scope: !3681)
!3694 = !DILocation(line: 471, column: 9, scope: !3681)
!3695 = !DILocation(line: 472, column: 9, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3697, file: !214, line: 471, column: 16)
!3697 = distinct !DILexicalBlock(scope: !3681, file: !214, line: 471, column: 9)
!3698 = !DILocation(line: 473, column: 13, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3696, file: !214, line: 473, column: 13)
!3700 = !DILocation(line: 473, column: 39, scope: !3699)
!3701 = !DILocation(line: 473, column: 24, scope: !3699)
!3702 = !DILocation(line: 473, column: 13, scope: !3696)
!3703 = !DILocation(line: 478, column: 9, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3697, file: !214, line: 477, column: 12)
!3705 = !DILocation(line: 479, column: 13, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3704, file: !214, line: 479, column: 13)
!3707 = !DILocation(line: 479, column: 40, scope: !3706)
!3708 = !DILocation(line: 479, column: 77, scope: !3706)
!3709 = !DILocation(line: 479, column: 63, scope: !3706)
!3710 = !DILocation(line: 479, column: 25, scope: !3706)
!3711 = !DILocation(line: 479, column: 13, scope: !3704)
!3712 = !DILocation(line: 0, scope: !3697)
!3713 = !DILocation(line: 484, column: 1, scope: !3681)
!3714 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !214, file: !214, line: 486, type: !276, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3715)
!3715 = !{!3716}
!3716 = !DILocalVariable(name: "callback_context", scope: !3717, file: !214, line: 490, type: !3649)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !214, line: 489, column: 70)
!3718 = distinct !DILexicalBlock(scope: !3714, file: !214, line: 488, column: 9)
!3719 = !DILocation(line: 488, column: 43, scope: !3718)
!3720 = !DILocation(line: 488, column: 61, scope: !3718)
!3721 = !DILocation(line: 489, column: 14, scope: !3718)
!3722 = !DILocation(line: 489, column: 63, scope: !3718)
!3723 = !DILocation(line: 488, column: 9, scope: !3714)
!3724 = !DILocation(line: 491, column: 39, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3717, file: !214, line: 491, column: 13)
!3726 = !DILocation(line: 491, column: 18, scope: !3725)
!3727 = !DILocation(line: 491, column: 13, scope: !3717)
!3728 = !DILocation(line: 492, column: 88, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !214, line: 491, column: 49)
!3730 = !DILocation(line: 492, column: 13, scope: !3729)
!3731 = !DILocation(line: 493, column: 9, scope: !3729)
!3732 = !DILocation(line: 495, column: 32, scope: !3714)
!3733 = !DILocation(line: 495, column: 5, scope: !3714)
!3734 = !DILocation(line: 496, column: 1, scope: !3714)
!3735 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !214, file: !214, line: 499, type: !276, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3736)
!3736 = !{!3737}
!3737 = !DILocalVariable(name: "callback_context", scope: !3738, file: !214, line: 503, type: !3649)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !214, line: 502, column: 70)
!3739 = distinct !DILexicalBlock(scope: !3735, file: !214, line: 501, column: 9)
!3740 = !DILocation(line: 501, column: 43, scope: !3739)
!3741 = !DILocation(line: 501, column: 61, scope: !3739)
!3742 = !DILocation(line: 502, column: 14, scope: !3739)
!3743 = !DILocation(line: 502, column: 63, scope: !3739)
!3744 = !DILocation(line: 501, column: 9, scope: !3735)
!3745 = !DILocation(line: 504, column: 39, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3738, file: !214, line: 504, column: 13)
!3747 = !DILocation(line: 504, column: 18, scope: !3746)
!3748 = !DILocation(line: 504, column: 13, scope: !3738)
!3749 = !DILocation(line: 505, column: 88, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3746, file: !214, line: 504, column: 49)
!3751 = !DILocation(line: 505, column: 13, scope: !3750)
!3752 = !DILocation(line: 506, column: 9, scope: !3750)
!3753 = !DILocation(line: 508, column: 32, scope: !3735)
!3754 = !DILocation(line: 508, column: 5, scope: !3735)
!3755 = !DILocation(line: 509, column: 1, scope: !3735)
!3756 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !214, file: !214, line: 582, type: !3757, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!3234, !278, !294}
!3759 = !{!3760, !3761}
!3760 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3756, file: !214, line: 582, type: !278)
!3761 = !DILocalVariable(name: "baudrate", arg: 2, scope: !3756, file: !214, line: 582, type: !294)
!3762 = !DILocation(line: 0, scope: !3756)
!3763 = !DILocation(line: 584, column: 11, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3756, file: !214, line: 584, column: 9)
!3765 = !DILocation(line: 584, column: 46, scope: !3764)
!3766 = !DILocation(line: 588, column: 37, scope: !3756)
!3767 = !DILocation(line: 588, column: 50, scope: !3756)
!3768 = !DILocation(line: 588, column: 59, scope: !3756)
!3769 = !DILocation(line: 589, column: 12, scope: !3756)
!3770 = !DILocation(line: 589, column: 5, scope: !3756)
!3771 = !DILocation(line: 590, column: 1, scope: !3756)
!3772 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !214, file: !214, line: 608, type: !3773, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3777)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!3234, !278, !3775}
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!3777 = !{!3778, !3779}
!3778 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3772, file: !214, line: 608, type: !278)
!3779 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !3772, file: !214, line: 608, type: !3775)
!3780 = !DILocation(line: 0, scope: !3772)
!3781 = !DILocation(line: 610, column: 10, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3772, file: !214, line: 610, column: 9)
!3783 = !DILocation(line: 610, column: 9, scope: !3772)
!3784 = !DILocation(line: 614, column: 10, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3772, file: !214, line: 614, column: 9)
!3786 = !DILocation(line: 614, column: 9, scope: !3772)
!3787 = !DILocation(line: 618, column: 37, scope: !3772)
!3788 = !DILocation(line: 618, column: 56, scope: !3772)
!3789 = !DILocation(line: 619, column: 45, scope: !3772)
!3790 = !DILocation(line: 619, column: 12, scope: !3772)
!3791 = !DILocation(line: 620, column: 12, scope: !3772)
!3792 = !DILocation(line: 619, column: 5, scope: !3772)
!3793 = !DILocation(line: 621, column: 5, scope: !3772)
!3794 = !DILocation(line: 622, column: 5, scope: !3772)
!3795 = !DILocation(line: 623, column: 33, scope: !3772)
!3796 = !DILocation(line: 624, column: 50, scope: !3772)
!3797 = !DILocation(line: 625, column: 50, scope: !3772)
!3798 = !DILocation(line: 626, column: 50, scope: !3772)
!3799 = !DILocation(line: 627, column: 50, scope: !3772)
!3800 = !DILocation(line: 628, column: 33, scope: !3772)
!3801 = !DILocation(line: 623, column: 5, scope: !3772)
!3802 = !DILocation(line: 630, column: 50, scope: !3772)
!3803 = !DILocation(line: 631, column: 50, scope: !3772)
!3804 = !DILocation(line: 632, column: 50, scope: !3772)
!3805 = !DILocation(line: 629, column: 5, scope: !3772)
!3806 = !DILocation(line: 634, column: 5, scope: !3772)
!3807 = !DILocation(line: 635, column: 1, scope: !3772)
!3808 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !214, file: !214, line: 112, type: !3809, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!288, !3775}
!3811 = !{!3812}
!3812 = !DILocalVariable(name: "dma_config", arg: 1, scope: !3808, file: !214, line: 112, type: !3775)
!3813 = !DILocation(line: 0, scope: !3808)
!3814 = !DILocation(line: 114, column: 14, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3808, file: !214, line: 114, column: 9)
!3816 = !DILocation(line: 114, column: 9, scope: !3808)
!3817 = !DILocation(line: 117, column: 29, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3808, file: !214, line: 117, column: 9)
!3819 = !DILocation(line: 117, column: 14, scope: !3818)
!3820 = !DILocation(line: 117, column: 9, scope: !3808)
!3821 = !DILocation(line: 120, column: 21, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3808, file: !214, line: 120, column: 9)
!3823 = !DILocation(line: 120, column: 61, scope: !3822)
!3824 = !DILocation(line: 120, column: 47, scope: !3822)
!3825 = !DILocation(line: 120, column: 9, scope: !3808)
!3826 = !DILocation(line: 123, column: 61, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3808, file: !214, line: 123, column: 9)
!3828 = !DILocation(line: 123, column: 47, scope: !3827)
!3829 = !DILocation(line: 123, column: 9, scope: !3808)
!3830 = !DILocation(line: 126, column: 29, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3808, file: !214, line: 126, column: 9)
!3832 = !DILocation(line: 126, column: 14, scope: !3831)
!3833 = !DILocation(line: 126, column: 9, scope: !3808)
!3834 = !DILocation(line: 129, column: 21, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3808, file: !214, line: 129, column: 9)
!3836 = !DILocation(line: 129, column: 58, scope: !3835)
!3837 = !DILocation(line: 129, column: 44, scope: !3835)
!3838 = !DILocation(line: 129, column: 9, scope: !3808)
!3839 = !DILocation(line: 136, column: 1, scope: !3808)
!3840 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !214, file: !214, line: 182, type: !3841, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3843)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!12, !12}
!3843 = !{!3844, !3845}
!3844 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !3840, file: !214, line: 182, type: !12)
!3845 = !DILocalVariable(name: "ticks_per_us", scope: !3840, file: !214, line: 184, type: !12)
!3846 = !DILocation(line: 0, scope: !3840)
!3847 = !DILocation(line: 186, column: 20, scope: !3840)
!3848 = !DILocation(line: 186, column: 39, scope: !3840)
!3849 = !DILocation(line: 188, column: 25, scope: !3840)
!3850 = !DILocation(line: 188, column: 5, scope: !3840)
!3851 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !214, file: !214, line: 637, type: !3377, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3852)
!3852 = !{!3853, !3854}
!3853 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3851, file: !214, line: 637, type: !278)
!3854 = !DILocalVariable(name: "int_no", scope: !3851, file: !214, line: 639, type: !2239)
!3855 = !DILocation(line: 0, scope: !3851)
!3856 = !DILocation(line: 641, column: 10, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3851, file: !214, line: 641, column: 9)
!3858 = !DILocation(line: 641, column: 9, scope: !3851)
!3859 = !DILocation(line: 645, column: 14, scope: !3851)
!3860 = !DILocation(line: 646, column: 5, scope: !3851)
!3861 = !DILocation(line: 648, column: 5, scope: !3851)
!3862 = !DILocation(line: 649, column: 1, scope: !3851)
!3863 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !214, file: !214, line: 651, type: !3864, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3866)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!3234, !278, !151, !151, !151}
!3866 = !{!3867, !3868, !3869, !3870, !3871}
!3867 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3863, file: !214, line: 651, type: !278)
!3868 = !DILocalVariable(name: "xon", arg: 2, scope: !3863, file: !214, line: 652, type: !151)
!3869 = !DILocalVariable(name: "xoff", arg: 3, scope: !3863, file: !214, line: 653, type: !151)
!3870 = !DILocalVariable(name: "escape_character", arg: 4, scope: !3863, file: !214, line: 654, type: !151)
!3871 = !DILocalVariable(name: "int_no", scope: !3863, file: !214, line: 656, type: !2239)
!3872 = !DILocation(line: 0, scope: !3863)
!3873 = !DILocation(line: 658, column: 10, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3863, file: !214, line: 658, column: 9)
!3875 = !DILocation(line: 658, column: 9, scope: !3863)
!3876 = !DILocation(line: 662, column: 14, scope: !3863)
!3877 = !DILocation(line: 663, column: 5, scope: !3863)
!3878 = !DILocation(line: 665, column: 5, scope: !3863)
!3879 = !DILocation(line: 666, column: 1, scope: !3863)
!3880 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !214, file: !214, line: 668, type: !3377, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3881)
!3881 = !{!3882, !3883}
!3882 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3880, file: !214, line: 668, type: !278)
!3883 = !DILocalVariable(name: "int_no", scope: !3880, file: !214, line: 670, type: !2239)
!3884 = !DILocation(line: 0, scope: !3880)
!3885 = !DILocation(line: 672, column: 10, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3880, file: !214, line: 672, column: 9)
!3887 = !DILocation(line: 672, column: 9, scope: !3880)
!3888 = !DILocation(line: 676, column: 14, scope: !3880)
!3889 = !DILocation(line: 677, column: 5, scope: !3880)
!3890 = !DILocation(line: 679, column: 5, scope: !3880)
!3891 = !DILocation(line: 680, column: 1, scope: !3880)
!3892 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !214, file: !214, line: 683, type: !3893, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!3234, !278, !12}
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3892, file: !214, line: 683, type: !278)
!3897 = !DILocalVariable(name: "timeout", arg: 2, scope: !3892, file: !214, line: 683, type: !12)
!3898 = !DILocation(line: 0, scope: !3892)
!3899 = !DILocation(line: 685, column: 10, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3892, file: !214, line: 685, column: 9)
!3901 = !DILocation(line: 685, column: 9, scope: !3892)
!3902 = !DILocation(line: 689, column: 19, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3892, file: !214, line: 689, column: 9)
!3904 = !DILocation(line: 0, scope: !3903)
!3905 = !DILocation(line: 696, column: 1, scope: !3892)
!3906 = distinct !DISubprogram(name: "gpio_mode_init", scope: !867, file: !867, line: 93, type: !276, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !3907)
!3907 = !{!3908, !3909}
!3908 = !DILocalVariable(name: "i", scope: !3906, file: !867, line: 95, type: !12)
!3909 = !DILocalVariable(name: "mode_temp", scope: !3906, file: !867, line: 98, type: !3910)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !3911)
!3911 = !{!3912}
!3912 = !DISubrange(count: 10)
!3913 = !DILocation(line: 98, column: 14, scope: !3906)
!3914 = !DILocation(line: 0, scope: !3906)
!3915 = !DILocation(line: 100, column: 5, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3906, file: !867, line: 100, column: 5)
!3917 = !DILocation(line: 101, column: 9, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3919, file: !867, line: 100, column: 50)
!3919 = distinct !DILexicalBlock(scope: !3916, file: !867, line: 100, column: 5)
!3920 = !DILocation(line: 100, column: 46, scope: !3919)
!3921 = !DILocation(line: 100, column: 19, scope: !3919)
!3922 = distinct !{!3922, !3915, !3923}
!3923 = !DILocation(line: 103, column: 5, scope: !3916)
!3924 = !DILocation(line: 106, column: 1, scope: !3906)
!3925 = distinct !DISubprogram(name: "gpio_oe_init", scope: !867, file: !867, line: 114, type: !276, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !3926)
!3926 = !{!3927, !3928}
!3927 = !DILocalVariable(name: "i", scope: !3925, file: !867, line: 116, type: !12)
!3928 = !DILocalVariable(name: "oe_temp", scope: !3925, file: !867, line: 119, type: !3929)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 96, elements: !456)
!3930 = !DILocation(line: 0, scope: !3925)
!3931 = !DILocation(line: 122, column: 9, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3933, file: !867, line: 121, column: 48)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !867, line: 121, column: 5)
!3934 = distinct !DILexicalBlock(scope: !3925, file: !867, line: 121, column: 5)
!3935 = !DILocation(line: 125, column: 1, scope: !3925)
!3936 = distinct !DISubprogram(name: "gpio_ies_init", scope: !867, file: !867, line: 133, type: !276, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !3937)
!3937 = !{!3938, !3939}
!3938 = !DILocalVariable(name: "i", scope: !3936, file: !867, line: 135, type: !12)
!3939 = !DILocalVariable(name: "ies_temp", scope: !3936, file: !867, line: 138, type: !3929)
!3940 = !DILocation(line: 0, scope: !3936)
!3941 = !DILocation(line: 141, column: 9, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !867, line: 140, column: 49)
!3943 = distinct !DILexicalBlock(scope: !3944, file: !867, line: 140, column: 5)
!3944 = distinct !DILexicalBlock(scope: !3936, file: !867, line: 140, column: 5)
!3945 = !DILocation(line: 145, column: 33, scope: !3936)
!3946 = !DILocation(line: 146, column: 33, scope: !3936)
!3947 = !DILocation(line: 147, column: 33, scope: !3936)
!3948 = !DILocation(line: 150, column: 33, scope: !3936)
!3949 = !DILocation(line: 151, column: 33, scope: !3936)
!3950 = !DILocation(line: 152, column: 33, scope: !3936)
!3951 = !DILocation(line: 155, column: 35, scope: !3936)
!3952 = !DILocation(line: 156, column: 35, scope: !3936)
!3953 = !DILocation(line: 157, column: 35, scope: !3936)
!3954 = !DILocation(line: 160, column: 35, scope: !3936)
!3955 = !DILocation(line: 161, column: 35, scope: !3936)
!3956 = !DILocation(line: 162, column: 35, scope: !3936)
!3957 = !DILocation(line: 165, column: 35, scope: !3936)
!3958 = !DILocation(line: 166, column: 35, scope: !3936)
!3959 = !DILocation(line: 167, column: 35, scope: !3936)
!3960 = !DILocation(line: 170, column: 35, scope: !3936)
!3961 = !DILocation(line: 171, column: 35, scope: !3936)
!3962 = !DILocation(line: 172, column: 35, scope: !3936)
!3963 = !DILocation(line: 174, column: 1, scope: !3936)
!3964 = distinct !DISubprogram(name: "gpio_pull_up_init", scope: !867, file: !867, line: 182, type: !276, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !3965)
!3965 = !{!3966, !3967}
!3966 = !DILocalVariable(name: "i", scope: !3964, file: !867, line: 184, type: !12)
!3967 = !DILocalVariable(name: "pull_up_temp", scope: !3964, file: !867, line: 187, type: !3929)
!3968 = !DILocation(line: 0, scope: !3964)
!3969 = !DILocation(line: 190, column: 9, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3971, file: !867, line: 189, column: 53)
!3971 = distinct !DILexicalBlock(scope: !3972, file: !867, line: 189, column: 5)
!3972 = distinct !DILexicalBlock(scope: !3964, file: !867, line: 189, column: 5)
!3973 = !DILocation(line: 194, column: 33, scope: !3964)
!3974 = !DILocation(line: 202, column: 33, scope: !3964)
!3975 = !DILocation(line: 210, column: 35, scope: !3964)
!3976 = !DILocation(line: 218, column: 35, scope: !3964)
!3977 = !DILocation(line: 226, column: 35, scope: !3964)
!3978 = !DILocation(line: 234, column: 35, scope: !3964)
!3979 = !DILocation(line: 241, column: 1, scope: !3964)
!3980 = distinct !DISubprogram(name: "gpio_pull_down_init", scope: !867, file: !867, line: 250, type: !276, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !3981)
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "i", scope: !3980, file: !867, line: 252, type: !12)
!3983 = !DILocalVariable(name: "pull_down_temp", scope: !3980, file: !867, line: 255, type: !3929)
!3984 = !DILocation(line: 0, scope: !3980)
!3985 = !DILocation(line: 258, column: 9, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !867, line: 257, column: 55)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !867, line: 257, column: 5)
!3988 = distinct !DILexicalBlock(scope: !3980, file: !867, line: 257, column: 5)
!3989 = !DILocation(line: 261, column: 1, scope: !3980)
!3990 = distinct !DISubprogram(name: "gpio_output_init", scope: !867, file: !867, line: 269, type: !276, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !3991)
!3991 = !{!3992, !3993}
!3992 = !DILocalVariable(name: "i", scope: !3990, file: !867, line: 271, type: !12)
!3993 = !DILocalVariable(name: "output_temp", scope: !3990, file: !867, line: 274, type: !3929)
!3994 = !DILocation(line: 0, scope: !3990)
!3995 = !DILocation(line: 277, column: 9, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !867, line: 276, column: 52)
!3997 = distinct !DILexicalBlock(scope: !3998, file: !867, line: 276, column: 5)
!3998 = distinct !DILexicalBlock(scope: !3990, file: !867, line: 276, column: 5)
!3999 = !DILocation(line: 281, column: 1, scope: !3990)
!4000 = distinct !DISubprogram(name: "bsp_ept_gpio_set_control_by_cm4", scope: !867, file: !867, line: 289, type: !276, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !1786)
!4001 = !DILocation(line: 292, column: 39, scope: !4000)
!4002 = !DILocation(line: 293, column: 39, scope: !4000)
!4003 = !DILocation(line: 294, column: 39, scope: !4000)
!4004 = !DILocation(line: 295, column: 1, scope: !4000)
!4005 = distinct !DISubprogram(name: "bsp_ept_gpio_setting_init", scope: !867, file: !867, line: 302, type: !276, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !866, retainedNodes: !1786)
!4006 = !DILocation(line: 304, column: 5, scope: !4005)
!4007 = !DILocation(line: 305, column: 5, scope: !4005)
!4008 = !DILocation(line: 306, column: 5, scope: !4005)
!4009 = !DILocation(line: 307, column: 5, scope: !4005)
!4010 = !DILocation(line: 308, column: 5, scope: !4005)
!4011 = !DILocation(line: 309, column: 5, scope: !4005)
!4012 = !DILocation(line: 310, column: 1, scope: !4005)
!4013 = distinct !DISubprogram(name: "__io_putchar", scope: !870, file: !870, line: 55, type: !4014, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!66, !66}
!4016 = !{!4017}
!4017 = !DILocalVariable(name: "ch", arg: 1, scope: !4013, file: !870, line: 55, type: !66)
!4018 = !DILocation(line: 0, scope: !4013)
!4019 = !DILocation(line: 62, column: 35, scope: !4013)
!4020 = !DILocation(line: 62, column: 5, scope: !4013)
!4021 = !DILocation(line: 63, column: 5, scope: !4013)
!4022 = distinct !DISubprogram(name: "main", scope: !870, file: !870, line: 110, type: !2215, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !1786)
!4023 = !DILocation(line: 113, column: 5, scope: !4022)
!4024 = !DILocation(line: 115, column: 5, scope: !4022)
!4025 = !DILocation(line: 118, column: 5, scope: !4022)
!4026 = !DILocation(line: 319, column: 3, scope: !4027, inlinedAt: !4028)
!4027 = distinct !DISubprogram(name: "__enable_irq", scope: !1776, file: !1776, line: 317, type: !276, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !1786)
!4028 = distinct !DILocation(line: 121, column: 5, scope: !4022)
!4029 = !{i64 500020}
!4030 = !DILocation(line: 496, column: 3, scope: !4031, inlinedAt: !4032)
!4031 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1776, file: !1776, line: 494, type: !276, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !1786)
!4032 = distinct !DILocation(line: 122, column: 5, scope: !4022)
!4033 = !{i64 504295}
!4034 = !DILocation(line: 125, column: 5, scope: !4022)
!4035 = !DILocation(line: 126, column: 5, scope: !4022)
!4036 = !DILocation(line: 129, column: 5, scope: !4022)
!4037 = !DILocation(line: 130, column: 5, scope: !4022)
!4038 = !DILocation(line: 133, column: 5, scope: !4022)
!4039 = !DILocation(line: 135, column: 5, scope: !4022)
!4040 = distinct !{!4040, !4039, !4041}
!4041 = !DILocation(line: 135, column: 14, scope: !4022)
!4042 = distinct !DISubprogram(name: "SystemClock_Config", scope: !870, file: !870, line: 93, type: !276, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !1786)
!4043 = !DILocation(line: 95, column: 5, scope: !4042)
!4044 = !DILocation(line: 96, column: 1, scope: !4042)
!4045 = distinct !DISubprogram(name: "prvSetupHardware", scope: !870, file: !870, line: 103, type: !276, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !1786)
!4046 = !DILocation(line: 106, column: 5, scope: !4045)
!4047 = !DILocation(line: 107, column: 1, scope: !4045)
!4048 = distinct !DISubprogram(name: "log_uart_init", scope: !870, file: !870, line: 71, type: !276, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !869, retainedNodes: !4049)
!4049 = !{!4050}
!4050 = !DILocalVariable(name: "uart_config", scope: !4048, file: !870, line: 73, type: !4051)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !217, line: 378, baseType: !4052)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !217, line: 373, size: 128, elements: !4053)
!4053 = !{!4054, !4055, !4056, !4057}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4052, file: !217, line: 374, baseType: !294, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4052, file: !217, line: 375, baseType: !296, size: 32, offset: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4052, file: !217, line: 376, baseType: !298, size: 32, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4052, file: !217, line: 377, baseType: !300, size: 32, offset: 96)
!4058 = !DILocation(line: 73, column: 5, scope: !4048)
!4059 = !DILocation(line: 73, column: 23, scope: !4048)
!4060 = !DILocation(line: 75, column: 5, scope: !4048)
!4061 = !DILocation(line: 76, column: 5, scope: !4048)
!4062 = !DILocation(line: 77, column: 5, scope: !4048)
!4063 = !DILocation(line: 78, column: 5, scope: !4048)
!4064 = !DILocation(line: 80, column: 17, scope: !4048)
!4065 = !DILocation(line: 80, column: 26, scope: !4048)
!4066 = !DILocation(line: 81, column: 17, scope: !4048)
!4067 = !DILocation(line: 81, column: 29, scope: !4048)
!4068 = !DILocation(line: 82, column: 17, scope: !4048)
!4069 = !DILocation(line: 82, column: 26, scope: !4048)
!4070 = !DILocation(line: 83, column: 17, scope: !4048)
!4071 = !DILocation(line: 83, column: 24, scope: !4048)
!4072 = !DILocation(line: 84, column: 5, scope: !4048)
!4073 = !DILocation(line: 86, column: 1, scope: !4048)
!4074 = distinct !DISubprogram(name: "SysTick_Set", scope: !329, file: !329, line: 70, type: !3841, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !4075)
!4075 = !{!4076, !4077}
!4076 = !DILocalVariable(name: "ticks", arg: 1, scope: !4074, file: !329, line: 70, type: !12)
!4077 = !DILocalVariable(name: "val", scope: !4074, file: !329, line: 72, type: !12)
!4078 = !DILocation(line: 0, scope: !4074)
!4079 = !DILocation(line: 74, column: 16, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4074, file: !329, line: 74, column: 9)
!4081 = !DILocation(line: 74, column: 21, scope: !4080)
!4082 = !DILocation(line: 74, column: 9, scope: !4074)
!4083 = !DILocation(line: 78, column: 20, scope: !4074)
!4084 = !DILocation(line: 80, column: 19, scope: !4074)
!4085 = !DILocation(line: 83, column: 20, scope: !4074)
!4086 = !DILocation(line: 84, column: 20, scope: !4074)
!4087 = !DILocation(line: 86, column: 19, scope: !4074)
!4088 = !DILocation(line: 88, column: 5, scope: !4074)
!4089 = !DILocation(line: 89, column: 1, scope: !4074)
!4090 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !329, file: !329, line: 98, type: !276, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1786)
!4091 = !DILocation(line: 100, column: 28, scope: !4090)
!4092 = !DILocation(line: 101, column: 1, scope: !4090)
!4093 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !329, file: !329, line: 110, type: !1770, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1786)
!4094 = !DILocation(line: 112, column: 12, scope: !4093)
!4095 = !DILocation(line: 112, column: 5, scope: !4093)
!4096 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !329, file: !329, line: 122, type: !276, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1786)
!4097 = !DILocation(line: 124, column: 23, scope: !4096)
!4098 = !DILocation(line: 124, column: 21, scope: !4096)
!4099 = !DILocation(line: 125, column: 1, scope: !4096)
!4100 = distinct !DISubprogram(name: "SystemInit", scope: !329, file: !329, line: 136, type: !276, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1786)
!4101 = !DILocation(line: 140, column: 16, scope: !4100)
!4102 = !DILocation(line: 144, column: 16, scope: !4100)
!4103 = !DILocation(line: 147, column: 16, scope: !4100)
!4104 = !DILocation(line: 150, column: 1, scope: !4100)
!4105 = distinct !DISubprogram(name: "CachePreInit", scope: !329, file: !329, line: 158, type: !276, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !328, retainedNodes: !1786)
!4106 = !DILocation(line: 161, column: 22, scope: !4105)
!4107 = !DILocation(line: 164, column: 21, scope: !4105)
!4108 = !DILocation(line: 167, column: 21, scope: !4105)
!4109 = !DILocation(line: 170, column: 29, scope: !4105)
!4110 = !DILocation(line: 171, column: 33, scope: !4105)
!4111 = !DILocation(line: 173, column: 28, scope: !4105)
!4112 = !DILocation(line: 178, column: 30, scope: !4105)
!4113 = !DILocation(line: 192, column: 1, scope: !4105)
!4114 = distinct !DISubprogram(name: "_close", scope: !399, file: !399, line: 11, type: !4014, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4115)
!4115 = !{!4116}
!4116 = !DILocalVariable(name: "file", arg: 1, scope: !4114, file: !399, line: 11, type: !66)
!4117 = !DILocation(line: 0, scope: !4114)
!4118 = !DILocation(line: 13, column: 5, scope: !4114)
!4119 = distinct !DISubprogram(name: "_fstat", scope: !399, file: !399, line: 16, type: !4120, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4168)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!66, !66, !4122}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 32)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4124, line: 27, size: 704, elements: !4125)
!4124 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!4125 = !{!4126, !4129, !4132, !4135, !4138, !4141, !4144, !4145, !4148, !4158, !4159, !4160, !4163, !4166}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4123, file: !4124, line: 29, baseType: !4127, size: 16)
!4127 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !403, line: 161, baseType: !4128)
!4128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !445, line: 56, baseType: !420)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4123, file: !4124, line: 30, baseType: !4130, size: 16, offset: 16)
!4130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !403, line: 139, baseType: !4131)
!4131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !445, line: 75, baseType: !53)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4123, file: !4124, line: 31, baseType: !4133, size: 32, offset: 32)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !403, line: 189, baseType: !4134)
!4134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !445, line: 90, baseType: !14)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4123, file: !4124, line: 32, baseType: !4136, size: 16, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !403, line: 194, baseType: !4137)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !445, line: 209, baseType: !53)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4123, file: !4124, line: 33, baseType: !4139, size: 16, offset: 80)
!4139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !403, line: 165, baseType: !4140)
!4140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !445, line: 60, baseType: !53)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4123, file: !4124, line: 34, baseType: !4142, size: 16, offset: 96)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !403, line: 169, baseType: !4143)
!4143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !445, line: 63, baseType: !53)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4123, file: !4124, line: 35, baseType: !4127, size: 16, offset: 112)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4123, file: !4124, line: 36, baseType: !4146, size: 32, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !403, line: 157, baseType: !4147)
!4147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !445, line: 102, baseType: !463)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4123, file: !4124, line: 42, baseType: !4149, size: 128, offset: 192)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4150, line: 47, size: 128, elements: !4151)
!4150 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!4151 = !{!4152, !4157}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4149, file: !4150, line: 48, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !4154, line: 42, baseType: !4155)
!4154 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!4155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !15, line: 200, baseType: !4156)
!4156 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4149, file: !4150, line: 49, baseType: !446, size: 32, offset: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4123, file: !4124, line: 43, baseType: !4149, size: 128, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4123, file: !4124, line: 44, baseType: !4149, size: 128, offset: 448)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4123, file: !4124, line: 45, baseType: !4161, size: 32, offset: 576)
!4161 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !403, line: 102, baseType: !4162)
!4162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !445, line: 34, baseType: !446)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4123, file: !4124, line: 46, baseType: !4164, size: 32, offset: 608)
!4164 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !403, line: 97, baseType: !4165)
!4165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !445, line: 30, baseType: !446)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !4123, file: !4124, line: 48, baseType: !4167, size: 64, offset: 640)
!4167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 64, elements: !184)
!4168 = !{!4169, !4170}
!4169 = !DILocalVariable(name: "file", arg: 1, scope: !4119, file: !399, line: 16, type: !66)
!4170 = !DILocalVariable(name: "st", arg: 2, scope: !4119, file: !399, line: 16, type: !4122)
!4171 = !DILocation(line: 0, scope: !4119)
!4172 = !DILocation(line: 18, column: 5, scope: !4119)
!4173 = distinct !DISubprogram(name: "_isatty", scope: !399, file: !399, line: 22, type: !4014, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4174)
!4174 = !{!4175}
!4175 = !DILocalVariable(name: "file", arg: 1, scope: !4173, file: !399, line: 22, type: !66)
!4176 = !DILocation(line: 0, scope: !4173)
!4177 = !DILocation(line: 24, column: 5, scope: !4173)
!4178 = distinct !DISubprogram(name: "_lseek", scope: !399, file: !399, line: 27, type: !4179, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4181)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!66, !66, !66, !66}
!4181 = !{!4182, !4183, !4184}
!4182 = !DILocalVariable(name: "file", arg: 1, scope: !4178, file: !399, line: 27, type: !66)
!4183 = !DILocalVariable(name: "ptr", arg: 2, scope: !4178, file: !399, line: 27, type: !66)
!4184 = !DILocalVariable(name: "dir", arg: 3, scope: !4178, file: !399, line: 27, type: !66)
!4185 = !DILocation(line: 0, scope: !4178)
!4186 = !DILocation(line: 29, column: 5, scope: !4178)
!4187 = distinct !DISubprogram(name: "_open", scope: !399, file: !399, line: 32, type: !4188, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4190)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!66, !438, !66, !66}
!4190 = !{!4191, !4192, !4193}
!4191 = !DILocalVariable(name: "name", arg: 1, scope: !4187, file: !399, line: 32, type: !438)
!4192 = !DILocalVariable(name: "flags", arg: 2, scope: !4187, file: !399, line: 32, type: !66)
!4193 = !DILocalVariable(name: "mode", arg: 3, scope: !4187, file: !399, line: 32, type: !66)
!4194 = !DILocation(line: 0, scope: !4187)
!4195 = !DILocation(line: 34, column: 5, scope: !4187)
!4196 = distinct !DISubprogram(name: "_read", scope: !399, file: !399, line: 37, type: !4197, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4199)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!66, !66, !404, !66}
!4199 = !{!4200, !4201, !4202}
!4200 = !DILocalVariable(name: "file", arg: 1, scope: !4196, file: !399, line: 37, type: !66)
!4201 = !DILocalVariable(name: "ptr", arg: 2, scope: !4196, file: !399, line: 37, type: !404)
!4202 = !DILocalVariable(name: "len", arg: 3, scope: !4196, file: !399, line: 37, type: !66)
!4203 = !DILocation(line: 0, scope: !4196)
!4204 = !DILocation(line: 39, column: 5, scope: !4196)
!4205 = distinct !DISubprogram(name: "_write", scope: !399, file: !399, line: 52, type: !4197, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4206)
!4206 = !{!4207, !4208, !4209, !4210}
!4207 = !DILocalVariable(name: "file", arg: 1, scope: !4205, file: !399, line: 52, type: !66)
!4208 = !DILocalVariable(name: "ptr", arg: 2, scope: !4205, file: !399, line: 52, type: !404)
!4209 = !DILocalVariable(name: "len", arg: 3, scope: !4205, file: !399, line: 52, type: !66)
!4210 = !DILocalVariable(name: "i", scope: !4205, file: !399, line: 54, type: !66)
!4211 = !DILocation(line: 0, scope: !4205)
!4212 = !DILocation(line: 56, column: 19, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !399, line: 56, column: 5)
!4214 = distinct !DILexicalBlock(scope: !4205, file: !399, line: 56, column: 5)
!4215 = !DILocation(line: 56, column: 5, scope: !4214)
!4216 = !DILocation(line: 57, column: 26, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4213, file: !399, line: 56, column: 31)
!4218 = !DILocation(line: 57, column: 22, scope: !4217)
!4219 = !DILocation(line: 57, column: 9, scope: !4217)
!4220 = !DILocation(line: 56, column: 27, scope: !4213)
!4221 = distinct !{!4221, !4215, !4222}
!4222 = !DILocation(line: 58, column: 5, scope: !4214)
!4223 = !DILocation(line: 60, column: 5, scope: !4205)
!4224 = !DILocation(line: 0, scope: !398)
!4225 = !DILocation(line: 74, column: 5, scope: !398)
!4226 = !{i64 1213}
!4227 = !DILocation(line: 76, column: 14, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !398, file: !399, line: 76, column: 9)
!4229 = !DILocation(line: 76, column: 11, scope: !4228)
!4230 = !DILocation(line: 76, column: 9, scope: !398)
!4231 = !DILocation(line: 82, column: 32, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !398, file: !399, line: 82, column: 9)
!4233 = !DILocation(line: 82, column: 15, scope: !4232)
!4234 = !DILocation(line: 93, column: 1, scope: !398)
!4235 = !DILocation(line: 82, column: 9, scope: !398)
!4236 = distinct !DISubprogram(name: "_exit", scope: !399, file: !399, line: 95, type: !548, scopeLine: 96, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4237)
!4237 = !{!4238}
!4238 = !DILocalVariable(name: "__status", arg: 1, scope: !4236, file: !399, line: 95, type: !66)
!4239 = !DILocation(line: 0, scope: !4236)
!4240 = !DILocation(line: 97, column: 5, scope: !4236)
!4241 = !DILocation(line: 98, column: 5, scope: !4236)
!4242 = distinct !{!4242, !4241, !4243}
!4243 = !DILocation(line: 100, column: 5, scope: !4236)
!4244 = distinct !DISubprogram(name: "_kill", scope: !399, file: !399, line: 104, type: !4245, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !4247)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!66, !66, !66}
!4247 = !{!4248, !4249}
!4248 = !DILocalVariable(name: "pid", arg: 1, scope: !4244, file: !399, line: 104, type: !66)
!4249 = !DILocalVariable(name: "sig", arg: 2, scope: !4244, file: !399, line: 104, type: !66)
!4250 = !DILocation(line: 0, scope: !4244)
!4251 = !DILocation(line: 106, column: 5, scope: !4244)
!4252 = !DILocation(line: 107, column: 5, scope: !4244)
!4253 = distinct !DISubprogram(name: "_getpid", scope: !399, file: !399, line: 111, type: !4254, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !596, retainedNodes: !1786)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!4256}
!4256 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !403, line: 174, baseType: !4257)
!4257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !445, line: 52, baseType: !66)
!4258 = !DILocation(line: 113, column: 5, scope: !4253)
!4259 = !DILocation(line: 114, column: 5, scope: !4253)
