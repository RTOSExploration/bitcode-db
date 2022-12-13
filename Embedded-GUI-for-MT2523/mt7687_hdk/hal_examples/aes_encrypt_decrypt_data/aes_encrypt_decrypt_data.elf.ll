; ModuleID = './build/aes_encrypt_decrypt_data.elf.bc'
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
%struct.hal_aes_buffer_t = type { i8*, i32 }
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
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.hal_aes_buffer_t, i32, %struct._reent*, i8*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i8*, i32)*, i32 (%struct._reent*, i8*, i32, i32)*, i32 (%struct._reent*, i8*)*, %struct.hal_aes_buffer_t, i8*, i32, [3 x i8], [1 x i8], %struct.hal_aes_buffer_t, i32, i32, %struct.__lock*, %struct._mbstate_t, i32 }
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
@g_crypt_lock = dso_local local_unnamed_addr global i8 0, align 1, !dbg !59
@__FUNCTION__.hal_aes_encrypt_with_padding = private unnamed_addr constant [29 x i8] c"hal_aes_encrypt_with_padding\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"NULL input.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Inadequate encrypted buffer.\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"do_aes_encrypt fail.\00", align 1
@__FUNCTION__.hal_aes_decrypt = private unnamed_addr constant [16 x i8] c"hal_aes_decrypt\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Invalid encrypted text length: %lu.\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"Plain text buffer lengthL %lu is too small, encrypted length is: %lu\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"key length is %lu, invalid. It has to be 16, 24 or 32.\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"do_aes_decrypt fail\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Decrypted raw data(AES %s): \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"CBC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ECB\00", align 1
@g_aes_op_done = internal global i8 0, align 1, !dbg !121
@__FUNCTION__.do_aes_encrypt = private unnamed_addr constant [15 x i8] c"do_aes_encrypt\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"aes_operate fail.\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"wait for encrypt timeout.\00", align 1
@__FUNCTION__.do_aes_decrypt = private unnamed_addr constant [15 x i8] c"do_aes_decrypt\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"wait for decrypt timeout.\00", align 1
@g_cache_status = dso_local global i8 0, align 1, !dbg !125
@g_cache_con = external dso_local local_unnamed_addr global %union.CACHE_CON_Type, align 4
@g_cache_region_en = external dso_local local_unnamed_addr global i32, align 4
@g_cache_entry = external dso_local local_unnamed_addr global [16 x %struct.CACHE_ENTRY_Type], align 4
@.str.13 = private unnamed_addr constant [50 x i8] c"../../../../../driver/chip/mt7687/src/hal_cache.c\00", align 1
@__func__.hal_cache_region_config = private unnamed_addr constant [24 x i8] c"hal_cache_region_config\00", align 1
@.str.1.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !207
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !309
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !367
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.30 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.31 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@__const.aes_encrypt_decrypt_data_example.hardware_id = private unnamed_addr constant [16 x i8] c"MTK0000020140815", align 1
@__const.aes_encrypt_decrypt_data_example.aes_cbc_iv = private unnamed_addr constant [16 x i8] c"a3FhU81Cwh63Pv3F", align 1
@__const.aes_encrypt_decrypt_data_example.plain = private unnamed_addr constant [30 x i8] c"\00\0B\16!,7BMXc\00\0B\16!,7BMXc\00\0B\16!,7BMXc", align 1
@.str.2.32 = private unnamed_addr constant [13 x i8] c"Origin data:\00", align 1
@.str.3.33 = private unnamed_addr constant [12 x i8] c"aes_cbc_iv:\00", align 1
@.str.4.34 = private unnamed_addr constant [5 x i8] c"Key:\00", align 1
@.str.5.35 = private unnamed_addr constant [25 x i8] c"Encrypted data(AES CBC):\00", align 1
@.str.6.36 = private unnamed_addr constant [25 x i8] c"Decrypted data(AES CBC):\00", align 1
@.str.7.37 = private unnamed_addr constant [25 x i8] c"Encrypted data(AES ECB):\00", align 1
@.str.8.38 = private unnamed_addr constant [25 x i8] c"Decrypted data(AES ECB):\00", align 1
@.str.9.39 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.10.40 = private unnamed_addr constant [7 x i8] c" %02x \00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !423
@System_Initialize_Done = internal global i32 0, align 4, !dbg !481
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !483
@end = external dso_local global i8, align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.48 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.49 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:01 GMT +00:00\00", align 1, !dbg !692
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !697
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !703

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !966 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !971, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.value(metadata i8 %1, metadata !972, metadata !DIExpression()), !dbg !976
  %3 = lshr i32 %0, 5, !dbg !977
  call void @llvm.dbg.value(metadata i32 %3, metadata !973, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !976
  %4 = trunc i32 %0 to i16, !dbg !978
  %5 = and i16 %4, 31, !dbg !978
  call void @llvm.dbg.value(metadata i16 %4, metadata !975, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !976
  %6 = trunc i32 %3 to i16, !dbg !979
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !979

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !980
  %9 = zext i16 %5 to i32, !dbg !983
  %10 = icmp ult i16 %5, 27, !dbg !983
  br i1 %8, label %11, label %46, !dbg !984

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !985

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !987
  %14 = xor i32 %13, -1, !dbg !990
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !991
  %16 = and i32 %15, %14, !dbg !991
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !991
  br label %44, !dbg !992

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !993
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !993

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !994
  %21 = and i32 %20, -3, !dbg !994
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !994
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !997
  %23 = or i32 %22, 2048, !dbg !997
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !997
  br label %44, !dbg !998

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !999
  %26 = and i32 %25, -3, !dbg !999
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !999
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1002
  %28 = or i32 %27, 2048, !dbg !1002
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1002
  br label %44, !dbg !1003

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1004
  %31 = and i32 %30, -3, !dbg !1004
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1004
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1007
  %33 = or i32 %32, 2048, !dbg !1007
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1007
  br label %44, !dbg !1008

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1009
  %36 = and i32 %35, -3, !dbg !1009
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1009
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1012
  %38 = or i32 %37, 2048, !dbg !1012
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1012
  br label %44, !dbg !1013

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1014
  %41 = and i32 %40, -3, !dbg !1014
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1014
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1017
  %43 = or i32 %42, 2048, !dbg !1017
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1017
  br label %44, !dbg !1018

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1019
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1019
  br label %97, !dbg !1020

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1021

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1023
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1026
  %50 = or i32 %49, %48, !dbg !1026
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1026
  br label %68, !dbg !1027

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1028
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1028

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1029
  %55 = or i32 %54, 2050, !dbg !1029
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1029
  br label %68, !dbg !1032

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1033
  %58 = or i32 %57, 2050, !dbg !1033
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1033
  br label %68, !dbg !1036

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1037
  %61 = or i32 %60, 2050, !dbg !1037
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1037
  br label %68, !dbg !1040

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1041
  %64 = or i32 %63, 2050, !dbg !1041
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1041
  br label %68, !dbg !1044

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1045
  %67 = or i32 %66, 2050, !dbg !1045
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1045
  br label %68, !dbg !1048

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1049
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1049
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1050
  %72 = zext i16 %5 to i32, !dbg !1052
  %73 = icmp eq i16 %5, 0, !dbg !1052
  br i1 %71, label %74, label %87, !dbg !1053

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1054

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1056
  %77 = xor i32 %76, -1, !dbg !1059
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1060
  %79 = and i32 %78, %77, !dbg !1060
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1060
  br label %85, !dbg !1061

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1062
  %82 = and i32 %81, -3, !dbg !1062
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1062
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1064
  %84 = or i32 %83, 2048, !dbg !1064
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1064
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1065
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1065
  br label %97, !dbg !1066

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1067

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1069
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1072
  %91 = or i32 %90, %89, !dbg !1072
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1072
  br label %95, !dbg !1073

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1074
  %94 = or i32 %93, 2050, !dbg !1074
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1074
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1076
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1076
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !976
  ret i32 %98, !dbg !1077
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1078 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1080, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8 %1, metadata !1081, metadata !DIExpression()), !dbg !1084
  %3 = lshr i32 %0, 5, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %3, metadata !1082, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1084
  %4 = trunc i32 %0 to i16, !dbg !1086
  %5 = and i16 %4, 31, !dbg !1086
  call void @llvm.dbg.value(metadata i16 %5, metadata !1083, metadata !DIExpression()), !dbg !1084
  %6 = trunc i32 %3 to i16, !dbg !1087
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1087

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1088
  %9 = zext i16 %5 to i32, !dbg !1091
  %10 = shl nuw i32 1, %9, !dbg !1091
  br i1 %8, label %12, label %11, !dbg !1092

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1093
  br label %19, !dbg !1095

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1096
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1098
  %15 = zext i16 %5 to i32, !dbg !1100
  %16 = shl nuw i32 1, %15, !dbg !1100
  br i1 %14, label %18, label %17, !dbg !1101

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1102
  br label %19, !dbg !1104

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1105
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1084
  ret i32 %20, !dbg !1107
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1112, metadata !DIExpression()), !dbg !1116
  %2 = lshr i32 %0, 5, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %2, metadata !1113, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1116
  %3 = and i32 %0, 31, !dbg !1118
  call void @llvm.dbg.value(metadata i32 %0, metadata !1114, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1116
  call void @llvm.dbg.value(metadata i8 0, metadata !1115, metadata !DIExpression()), !dbg !1116
  %4 = trunc i32 %2 to i16, !dbg !1119
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1119

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1115, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1116
  br label %6, !dbg !1120

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1122
  %9 = lshr i32 %8, %3, !dbg !1122
  %10 = trunc i32 %9 to i8, !dbg !1122
  %11 = and i8 %10, 1, !dbg !1122
  call void @llvm.dbg.value(metadata i8 %11, metadata !1115, metadata !DIExpression()), !dbg !1116
  br label %12, !dbg !1123

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1116
  ret i8 %13, !dbg !1124
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1125 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1127, metadata !DIExpression()), !dbg !1131
  %2 = lshr i32 %0, 5, !dbg !1132
  call void @llvm.dbg.value(metadata i32 %2, metadata !1128, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1131
  %3 = and i32 %0, 31, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %0, metadata !1129, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1131
  call void @llvm.dbg.value(metadata i8 0, metadata !1130, metadata !DIExpression()), !dbg !1131
  %4 = trunc i32 %2 to i16, !dbg !1134
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1134

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1130, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1131
  br label %6, !dbg !1135

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1137
  %9 = lshr i32 %8, %3, !dbg !1137
  %10 = trunc i32 %9 to i8, !dbg !1137
  %11 = and i8 %10, 1, !dbg !1137
  call void @llvm.dbg.value(metadata i8 %11, metadata !1130, metadata !DIExpression()), !dbg !1131
  br label %12, !dbg !1138

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1131
  ret i8 %13, !dbg !1139
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1142, metadata !DIExpression()), !dbg !1146
  %2 = lshr i32 %0, 5, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %2, metadata !1143, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1146
  %3 = and i32 %0, 31, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %0, metadata !1144, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1146
  call void @llvm.dbg.value(metadata i8 0, metadata !1145, metadata !DIExpression()), !dbg !1146
  %4 = trunc i32 %2 to i16, !dbg !1149
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1149

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1145, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1146
  br label %6, !dbg !1150

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1152
  %9 = lshr i32 %8, %3, !dbg !1152
  %10 = trunc i32 %9 to i8, !dbg !1152
  %11 = and i8 %10, 1, !dbg !1152
  call void @llvm.dbg.value(metadata i8 %11, metadata !1145, metadata !DIExpression()), !dbg !1146
  br label %12, !dbg !1153

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1146
  ret i8 %13, !dbg !1154
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1155 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1159, metadata !DIExpression()), !dbg !1162
  %2 = lshr i32 %0, 5, !dbg !1163
  call void @llvm.dbg.value(metadata i32 %2, metadata !1160, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1162
  %3 = trunc i32 %0 to i16, !dbg !1164
  %4 = and i16 %3, 31, !dbg !1164
  call void @llvm.dbg.value(metadata i16 %3, metadata !1161, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1162
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #15, !dbg !1165
  %6 = trunc i32 %2 to i16, !dbg !1166
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1166

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1167
  br i1 %8, label %9, label %12, !dbg !1170

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1171
  %11 = shl nuw nsw i32 1, %10, !dbg !1172
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1172
  br label %49, !dbg !1174

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1175
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1175

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1176
  %16 = and i32 %15, -29, !dbg !1176
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1176
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1179
  %18 = or i32 %17, 2052, !dbg !1179
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1179
  br label %49, !dbg !1180

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1181
  %21 = and i32 %20, -29, !dbg !1181
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1181
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1184
  %23 = or i32 %22, 2052, !dbg !1184
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1184
  br label %49, !dbg !1185

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1186
  %26 = and i32 %25, -29, !dbg !1186
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1186
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1189
  %28 = or i32 %27, 2052, !dbg !1189
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1189
  br label %49, !dbg !1190

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1191
  %31 = and i32 %30, -29, !dbg !1191
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1191
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1194
  %33 = or i32 %32, 2052, !dbg !1194
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1194
  br label %49, !dbg !1195

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1196
  %36 = and i32 %35, -29, !dbg !1196
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1196
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1199
  %38 = or i32 %37, 2052, !dbg !1199
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1199
  br label %49, !dbg !1200

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1201
  br i1 %40, label %41, label %46, !dbg !1203

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1204
  %43 = and i32 %42, -29, !dbg !1204
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1204
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1206
  %45 = or i32 %44, 2052, !dbg !1206
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1206
  br label %49, !dbg !1207

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1208
  %48 = shl nuw i32 1, %47, !dbg !1208
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1208
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1162
  ret i32 %50, !dbg !1210
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1211 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1213, metadata !DIExpression()), !dbg !1216
  %2 = lshr i32 %0, 5, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %2, metadata !1214, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1216
  %3 = trunc i32 %0 to i16, !dbg !1218
  %4 = and i16 %3, 31, !dbg !1218
  call void @llvm.dbg.value(metadata i16 %3, metadata !1215, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1216
  %5 = trunc i32 %2 to i16, !dbg !1219
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1219

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1220
  br i1 %7, label %8, label %11, !dbg !1223

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1224
  %10 = shl nuw nsw i32 1, %9, !dbg !1225
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1225
  br label %48, !dbg !1227

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1228
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1228

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1229
  %15 = and i32 %14, -29, !dbg !1229
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1229
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1232
  %17 = or i32 %16, 2048, !dbg !1232
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1232
  br label %48, !dbg !1233

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1234
  %20 = and i32 %19, -29, !dbg !1234
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1234
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1237
  %22 = or i32 %21, 2048, !dbg !1237
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1237
  br label %48, !dbg !1238

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1239
  %25 = and i32 %24, -29, !dbg !1239
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1239
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1242
  %27 = or i32 %26, 2048, !dbg !1242
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1242
  br label %48, !dbg !1243

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1244
  %30 = and i32 %29, -29, !dbg !1244
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1244
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1247
  %32 = or i32 %31, 2048, !dbg !1247
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1247
  br label %48, !dbg !1248

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1249
  %35 = and i32 %34, -29, !dbg !1249
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1249
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1252
  %37 = or i32 %36, 2048, !dbg !1252
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1252
  br label %48, !dbg !1253

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1254
  br i1 %39, label %40, label %45, !dbg !1256

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1257
  %42 = and i32 %41, -29, !dbg !1257
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1257
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1259
  %44 = or i32 %43, 2048, !dbg !1259
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1259
  br label %48, !dbg !1260

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1261
  %47 = shl nuw i32 1, %46, !dbg !1261
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1261
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1216
  ret i32 %49, !dbg !1263
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1264 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1266, metadata !DIExpression()), !dbg !1269
  %2 = lshr i32 %0, 5, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %2, metadata !1267, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1269
  %3 = trunc i32 %0 to i16, !dbg !1271
  %4 = and i16 %3, 31, !dbg !1271
  call void @llvm.dbg.value(metadata i16 %3, metadata !1268, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1269
  %5 = trunc i32 %2 to i16, !dbg !1272
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1272

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1273
  br i1 %7, label %8, label %11, !dbg !1276

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1277
  %10 = shl nuw nsw i32 1, %9, !dbg !1278
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1278
  br label %48, !dbg !1280

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1281
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1281

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1282
  %15 = and i32 %14, -29, !dbg !1282
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1282
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1285
  %17 = or i32 %16, 2048, !dbg !1285
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1285
  br label %48, !dbg !1286

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1287
  %20 = and i32 %19, -29, !dbg !1287
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1287
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1290
  %22 = or i32 %21, 2048, !dbg !1290
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1290
  br label %48, !dbg !1291

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1292
  %25 = and i32 %24, -29, !dbg !1292
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1292
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1295
  %27 = or i32 %26, 2048, !dbg !1295
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1295
  br label %48, !dbg !1296

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1297
  %30 = and i32 %29, -29, !dbg !1297
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1297
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1300
  %32 = or i32 %31, 2048, !dbg !1300
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1300
  br label %48, !dbg !1301

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1302
  %35 = and i32 %34, -29, !dbg !1302
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1302
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1305
  %37 = or i32 %36, 2048, !dbg !1305
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1305
  br label %48, !dbg !1306

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1307
  br i1 %39, label %40, label %45, !dbg !1309

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1310
  %42 = and i32 %41, -29, !dbg !1310
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1310
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1312
  %44 = or i32 %43, 2048, !dbg !1312
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1312
  br label %48, !dbg !1313

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1314
  %47 = shl nuw i32 1, %46, !dbg !1314
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1314
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1269
  ret i32 %49, !dbg !1316
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1317 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1319, metadata !DIExpression()), !dbg !1322
  %2 = lshr i32 %0, 5, !dbg !1323
  call void @llvm.dbg.value(metadata i32 %2, metadata !1320, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1322
  %3 = trunc i32 %0 to i16, !dbg !1324
  %4 = and i16 %3, 31, !dbg !1324
  call void @llvm.dbg.value(metadata i16 %3, metadata !1321, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1322
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #15, !dbg !1325
  %6 = trunc i32 %2 to i16, !dbg !1326
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1326

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1327
  br i1 %8, label %9, label %12, !dbg !1330

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1331
  %11 = shl nuw nsw i32 1, %10, !dbg !1332
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1332
  br label %49, !dbg !1334

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1335
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1335

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1336
  %16 = and i32 %15, -29, !dbg !1336
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1336
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1339
  %18 = or i32 %17, 2068, !dbg !1339
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1339
  br label %49, !dbg !1340

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1341
  %21 = and i32 %20, -29, !dbg !1341
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1341
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1344
  %23 = or i32 %22, 2068, !dbg !1344
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1344
  br label %49, !dbg !1345

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1346
  %26 = and i32 %25, -29, !dbg !1346
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1346
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1349
  %28 = or i32 %27, 2068, !dbg !1349
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1349
  br label %49, !dbg !1350

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1351
  %31 = and i32 %30, -29, !dbg !1351
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1351
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1354
  %33 = or i32 %32, 2068, !dbg !1354
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1354
  br label %49, !dbg !1355

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1356
  %36 = and i32 %35, -29, !dbg !1356
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1356
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1359
  %38 = or i32 %37, 2068, !dbg !1359
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1359
  br label %49, !dbg !1360

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1361
  br i1 %40, label %41, label %46, !dbg !1363

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1364
  %43 = and i32 %42, -29, !dbg !1364
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1364
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1366
  %45 = or i32 %44, 2068, !dbg !1366
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1366
  br label %49, !dbg !1367

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1368
  %48 = shl nuw i32 1, %47, !dbg !1368
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1368
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1322
  ret i32 %50, !dbg !1370
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1371 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1373, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i8 %1, metadata !1374, metadata !DIExpression()), !dbg !1377
  %3 = lshr i32 %0, 4, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %3, metadata !1375, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1377
  %4 = trunc i32 %0 to i16, !dbg !1379
  %5 = and i16 %4, 15, !dbg !1379
  call void @llvm.dbg.value(metadata i16 %4, metadata !1376, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1377
  %6 = trunc i32 %3 to i16, !dbg !1380
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1380

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1381
  %9 = zext i16 %8 to i32, !dbg !1381
  %10 = shl nuw i32 3, %9, !dbg !1383
  %11 = xor i32 %10, -1, !dbg !1384
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1385
  %13 = and i32 %12, %11, !dbg !1385
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1385
  %14 = lshr i8 %1, 2, !dbg !1386
  %15 = zext i8 %14 to i32, !dbg !1386
  %16 = add nsw i32 %15, -1, !dbg !1387
  %17 = shl i32 %16, %9, !dbg !1388
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1389
  %19 = or i32 %18, %17, !dbg !1389
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1389
  br label %131, !dbg !1390

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1391
  br i1 %21, label %22, label %35, !dbg !1393

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1394
  %24 = zext i16 %23 to i32, !dbg !1394
  %25 = shl nuw nsw i32 3, %24, !dbg !1396
  %26 = xor i32 %25, -1, !dbg !1397
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1398
  %28 = and i32 %27, %26, !dbg !1398
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1398
  %29 = lshr i8 %1, 2, !dbg !1399
  %30 = zext i8 %29 to i32, !dbg !1399
  %31 = add nsw i32 %30, -1, !dbg !1400
  %32 = shl nsw i32 %31, %24, !dbg !1401
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1402
  %34 = or i32 %33, %32, !dbg !1402
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1402
  br label %131, !dbg !1403

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1404
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1404

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1405
  %39 = and i32 %38, -449, !dbg !1405
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1405
  %40 = lshr i8 %1, 1, !dbg !1408
  %41 = zext i8 %40 to i32, !dbg !1408
  %42 = shl nuw nsw i32 %41, 6, !dbg !1409
  %43 = add nsw i32 %42, -64, !dbg !1409
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1410
  %45 = or i32 %44, %43, !dbg !1410
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1410
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1411
  %47 = or i32 %46, 2048, !dbg !1411
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1411
  br label %131, !dbg !1412

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1413
  %50 = and i32 %49, -449, !dbg !1413
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1413
  %51 = lshr i8 %1, 1, !dbg !1416
  %52 = zext i8 %51 to i32, !dbg !1416
  %53 = shl nuw nsw i32 %52, 6, !dbg !1417
  %54 = add nsw i32 %53, -64, !dbg !1417
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1418
  %56 = or i32 %55, %54, !dbg !1418
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1418
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1419
  %58 = or i32 %57, 2048, !dbg !1419
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1419
  br label %131, !dbg !1420

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1421
  %61 = and i32 %60, -449, !dbg !1421
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1421
  %62 = lshr i8 %1, 1, !dbg !1424
  %63 = zext i8 %62 to i32, !dbg !1424
  %64 = shl nuw nsw i32 %63, 6, !dbg !1425
  %65 = add nsw i32 %64, -64, !dbg !1425
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1426
  %67 = or i32 %66, %65, !dbg !1426
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1426
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1427
  %69 = or i32 %68, 2048, !dbg !1427
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1427
  br label %131, !dbg !1428

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1429
  %72 = and i32 %71, -449, !dbg !1429
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1429
  %73 = lshr i8 %1, 1, !dbg !1432
  %74 = zext i8 %73 to i32, !dbg !1432
  %75 = shl nuw nsw i32 %74, 6, !dbg !1433
  %76 = add nsw i32 %75, -64, !dbg !1433
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1434
  %78 = or i32 %77, %76, !dbg !1434
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1434
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1435
  %80 = or i32 %79, 2048, !dbg !1435
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1435
  br label %131, !dbg !1436

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1437
  %83 = and i32 %82, -449, !dbg !1437
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1437
  %84 = lshr i8 %1, 1, !dbg !1440
  %85 = zext i8 %84 to i32, !dbg !1440
  %86 = shl nuw nsw i32 %85, 6, !dbg !1441
  %87 = add nsw i32 %86, -64, !dbg !1441
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1442
  %89 = or i32 %88, %87, !dbg !1442
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1442
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1443
  %91 = or i32 %90, 2048, !dbg !1443
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1443
  br label %131, !dbg !1444

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1445
  br i1 %93, label %94, label %105, !dbg !1447

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1448
  %96 = and i32 %95, -449, !dbg !1448
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1448
  %97 = lshr i8 %1, 1, !dbg !1450
  %98 = zext i8 %97 to i32, !dbg !1450
  %99 = shl nuw nsw i32 %98, 6, !dbg !1451
  %100 = add nsw i32 %99, -64, !dbg !1451
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1452
  %102 = or i32 %101, %100, !dbg !1452
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1452
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1453
  %104 = or i32 %103, 2048, !dbg !1453
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1453
  br label %131, !dbg !1454

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1455
  %107 = zext i16 %106 to i32, !dbg !1455
  %108 = shl nuw i32 3, %107, !dbg !1457
  %109 = xor i32 %108, -1, !dbg !1458
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1459
  %111 = and i32 %110, %109, !dbg !1459
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1459
  %112 = lshr i8 %1, 2, !dbg !1460
  %113 = zext i8 %112 to i32, !dbg !1460
  %114 = add nsw i32 %113, -1, !dbg !1461
  %115 = shl i32 %114, %107, !dbg !1462
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1463
  %117 = or i32 %116, %115, !dbg !1463
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1463
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1464
  %120 = zext i16 %119 to i32, !dbg !1464
  %121 = shl nuw i32 3, %120, !dbg !1465
  %122 = xor i32 %121, -1, !dbg !1466
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1467
  %124 = and i32 %123, %122, !dbg !1467
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1467
  %125 = lshr i8 %1, 2, !dbg !1468
  %126 = zext i8 %125 to i32, !dbg !1468
  %127 = add nsw i32 %126, -1, !dbg !1469
  %128 = shl i32 %127, %120, !dbg !1470
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1471
  %130 = or i32 %129, %128, !dbg !1471
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1471
  br label %131, !dbg !1472

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1377
  ret i32 %132, !dbg !1473
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1474 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1479, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i8* %1, metadata !1480, metadata !DIExpression()), !dbg !1484
  %3 = lshr i32 %0, 4, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %3, metadata !1481, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1484
  %4 = trunc i32 %0 to i16, !dbg !1486
  %5 = and i16 %4, 15, !dbg !1486
  call void @llvm.dbg.value(metadata i16 %4, metadata !1482, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1484
  %6 = trunc i32 %3 to i16, !dbg !1487
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1487

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %8, metadata !1483, metadata !DIExpression()), !dbg !1484
  %9 = shl nuw nsw i16 %5, 1, !dbg !1490
  %10 = zext i16 %9 to i32, !dbg !1490
  %11 = shl nuw i32 3, %10, !dbg !1491
  %12 = and i32 %8, %11, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %12, metadata !1483, metadata !DIExpression()), !dbg !1484
  %13 = lshr i32 %12, %10, !dbg !1493
  %14 = trunc i32 %13 to i8, !dbg !1494
  %15 = shl i8 %14, 2, !dbg !1494
  %16 = add i8 %15, 4, !dbg !1494
  br label %89, !dbg !1495

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1496
  br i1 %18, label %19, label %29, !dbg !1498

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %20, metadata !1483, metadata !DIExpression()), !dbg !1484
  %21 = shl nuw nsw i16 %5, 1, !dbg !1501
  %22 = zext i16 %21 to i32, !dbg !1501
  %23 = shl nuw nsw i32 3, %22, !dbg !1502
  %24 = and i32 %20, %23, !dbg !1503
  call void @llvm.dbg.value(metadata i32 %24, metadata !1483, metadata !DIExpression()), !dbg !1484
  %25 = lshr i32 %24, %22, !dbg !1504
  %26 = trunc i32 %25 to i8, !dbg !1505
  %27 = shl i8 %26, 2, !dbg !1505
  %28 = add i8 %27, 4, !dbg !1505
  br label %89, !dbg !1506

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1507
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1507

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %32, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %32, metadata !1483, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1484
  %33 = lshr i32 %32, 5, !dbg !1511
  %34 = trunc i32 %33 to i8, !dbg !1512
  %35 = and i8 %34, 14, !dbg !1512
  %36 = add nuw nsw i8 %35, 2, !dbg !1512
  br label %89, !dbg !1513

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %38, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %38, metadata !1483, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1484
  %39 = lshr i32 %38, 5, !dbg !1517
  %40 = trunc i32 %39 to i8, !dbg !1518
  %41 = and i8 %40, 14, !dbg !1518
  %42 = add nuw nsw i8 %41, 2, !dbg !1518
  br label %89, !dbg !1519

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %44, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %44, metadata !1483, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1484
  %45 = lshr i32 %44, 5, !dbg !1523
  %46 = trunc i32 %45 to i8, !dbg !1524
  %47 = and i8 %46, 14, !dbg !1524
  %48 = add nuw nsw i8 %47, 2, !dbg !1524
  br label %89, !dbg !1525

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %50, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %50, metadata !1483, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1484
  %51 = lshr i32 %50, 5, !dbg !1529
  %52 = trunc i32 %51 to i8, !dbg !1530
  %53 = and i8 %52, 14, !dbg !1530
  %54 = add nuw nsw i8 %53, 2, !dbg !1530
  br label %89, !dbg !1531

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %56, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %56, metadata !1483, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1484
  %57 = lshr i32 %56, 5, !dbg !1535
  %58 = trunc i32 %57 to i8, !dbg !1536
  %59 = and i8 %58, 14, !dbg !1536
  %60 = add nuw nsw i8 %59, 2, !dbg !1536
  br label %89, !dbg !1537

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1538
  br i1 %62, label %63, label %69, !dbg !1540

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %64, metadata !1483, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %64, metadata !1483, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1484
  %65 = lshr i32 %64, 5, !dbg !1543
  %66 = trunc i32 %65 to i8, !dbg !1544
  %67 = and i8 %66, 14, !dbg !1544
  %68 = add nuw nsw i8 %67, 2, !dbg !1544
  br label %89, !dbg !1545

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %70, metadata !1483, metadata !DIExpression()), !dbg !1484
  %71 = shl nuw nsw i16 %5, 1, !dbg !1548
  %72 = zext i16 %71 to i32, !dbg !1548
  %73 = shl nuw i32 3, %72, !dbg !1549
  %74 = and i32 %70, %73, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %74, metadata !1483, metadata !DIExpression()), !dbg !1484
  %75 = lshr i32 %74, %72, !dbg !1551
  %76 = trunc i32 %75 to i8, !dbg !1552
  %77 = shl i8 %76, 2, !dbg !1552
  %78 = add i8 %77, 4, !dbg !1552
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %80, metadata !1483, metadata !DIExpression()), !dbg !1484
  %81 = shl nuw nsw i16 %5, 1, !dbg !1554
  %82 = zext i16 %81 to i32, !dbg !1554
  %83 = shl nuw i32 3, %82, !dbg !1555
  %84 = and i32 %80, %83, !dbg !1556
  call void @llvm.dbg.value(metadata i32 %84, metadata !1483, metadata !DIExpression()), !dbg !1484
  %85 = lshr i32 %84, %82, !dbg !1557
  %86 = trunc i32 %85 to i8, !dbg !1558
  %87 = shl i8 %86, 2, !dbg !1558
  %88 = add i8 %87, 4, !dbg !1558
  br label %89, !dbg !1559

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1560
  br label %91, !dbg !1561

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1484
  ret i32 %92, !dbg !1561
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1562 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1567, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i32 %1, metadata !1568, metadata !DIExpression()), !dbg !1571
  %3 = lshr i32 %0, 5, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %3, metadata !1569, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1571
  %4 = trunc i32 %0 to i16, !dbg !1573
  %5 = and i16 %4, 31, !dbg !1573
  call void @llvm.dbg.value(metadata i16 %5, metadata !1570, metadata !DIExpression()), !dbg !1571
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1574

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1569, metadata !DIExpression()), !dbg !1571
  %7 = trunc i32 %3 to i16, !dbg !1575
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1575

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1578
  %10 = shl nuw i32 1, %9, !dbg !1580
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1581
  %12 = or i32 %11, %10, !dbg !1581
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1581
  br label %32, !dbg !1582

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1583
  %15 = shl nuw i32 1, %14, !dbg !1584
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1585
  %17 = or i32 %16, %15, !dbg !1585
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1585
  br label %32, !dbg !1586

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1587
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1587

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1590
  %22 = shl nuw i32 1, %21, !dbg !1592
  %23 = xor i32 %22, -1, !dbg !1593
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1594
  %25 = and i32 %24, %23, !dbg !1594
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1594
  br label %32, !dbg !1595

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1596
  %28 = shl nuw i32 1, %27, !dbg !1597
  %29 = xor i32 %28, -1, !dbg !1598
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1599
  %31 = and i32 %30, %29, !dbg !1599
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1599
  br label %32, !dbg !1600

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1601
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1602 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1608, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 %1, metadata !1609, metadata !DIExpression()), !dbg !1611
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
  ], !dbg !1612

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %4, metadata !1610, metadata !DIExpression()), !dbg !1611
  %5 = and i32 %4, -16, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %5, metadata !1610, metadata !DIExpression()), !dbg !1611
  %6 = zext i8 %1 to i32, !dbg !1616
  %7 = or i32 %5, %6, !dbg !1617
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1618
  br label %187, !dbg !1619

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %9, metadata !1610, metadata !DIExpression()), !dbg !1611
  %10 = and i32 %9, -241, !dbg !1621
  call void @llvm.dbg.value(metadata i32 %10, metadata !1610, metadata !DIExpression()), !dbg !1611
  %11 = zext i8 %1 to i32, !dbg !1622
  %12 = shl nuw nsw i32 %11, 4, !dbg !1623
  %13 = or i32 %10, %12, !dbg !1624
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1625
  br label %187, !dbg !1626

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %15, metadata !1610, metadata !DIExpression()), !dbg !1611
  %16 = and i32 %15, -3841, !dbg !1628
  call void @llvm.dbg.value(metadata i32 %16, metadata !1610, metadata !DIExpression()), !dbg !1611
  %17 = zext i8 %1 to i32, !dbg !1629
  %18 = shl nuw nsw i32 %17, 8, !dbg !1630
  %19 = or i32 %16, %18, !dbg !1631
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1632
  br label %187, !dbg !1633

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %21, metadata !1610, metadata !DIExpression()), !dbg !1611
  %22 = and i32 %21, -61441, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %22, metadata !1610, metadata !DIExpression()), !dbg !1611
  %23 = zext i8 %1 to i32, !dbg !1636
  %24 = shl nuw nsw i32 %23, 12, !dbg !1637
  %25 = or i32 %22, %24, !dbg !1638
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1639
  br label %187, !dbg !1640

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %27, metadata !1610, metadata !DIExpression()), !dbg !1611
  %28 = and i32 %27, -983041, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %28, metadata !1610, metadata !DIExpression()), !dbg !1611
  %29 = zext i8 %1 to i32, !dbg !1643
  %30 = shl nuw nsw i32 %29, 16, !dbg !1644
  %31 = or i32 %28, %30, !dbg !1645
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1646
  br label %187, !dbg !1647

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1648
  call void @llvm.dbg.value(metadata i32 %33, metadata !1610, metadata !DIExpression()), !dbg !1611
  %34 = and i32 %33, -15728641, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %34, metadata !1610, metadata !DIExpression()), !dbg !1611
  %35 = zext i8 %1 to i32, !dbg !1650
  %36 = shl nuw nsw i32 %35, 20, !dbg !1651
  %37 = or i32 %34, %36, !dbg !1652
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1653
  br label %187, !dbg !1654

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %39, metadata !1610, metadata !DIExpression()), !dbg !1611
  %40 = and i32 %39, -251658241, !dbg !1656
  call void @llvm.dbg.value(metadata i32 %40, metadata !1610, metadata !DIExpression()), !dbg !1611
  %41 = zext i8 %1 to i32, !dbg !1657
  %42 = shl nuw i32 %41, 24, !dbg !1658
  %43 = or i32 %40, %42, !dbg !1659
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1660
  br label %187, !dbg !1661

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %45, metadata !1610, metadata !DIExpression()), !dbg !1611
  %46 = and i32 %45, 268435455, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %46, metadata !1610, metadata !DIExpression()), !dbg !1611
  %47 = zext i8 %1 to i32, !dbg !1664
  %48 = shl i32 %47, 28, !dbg !1665
  %49 = or i32 %46, %48, !dbg !1666
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1667
  br label %187, !dbg !1668

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %51, metadata !1610, metadata !DIExpression()), !dbg !1611
  %52 = and i32 %51, -16, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %52, metadata !1610, metadata !DIExpression()), !dbg !1611
  %53 = zext i8 %1 to i32, !dbg !1671
  %54 = or i32 %52, %53, !dbg !1672
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1673
  br label %187, !dbg !1674

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1675
  call void @llvm.dbg.value(metadata i32 %56, metadata !1610, metadata !DIExpression()), !dbg !1611
  %57 = and i32 %56, -241, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %57, metadata !1610, metadata !DIExpression()), !dbg !1611
  %58 = zext i8 %1 to i32, !dbg !1677
  %59 = shl nuw nsw i32 %58, 4, !dbg !1678
  %60 = or i32 %57, %59, !dbg !1679
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1680
  br label %187, !dbg !1681

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %62, metadata !1610, metadata !DIExpression()), !dbg !1611
  %63 = and i32 %62, -3841, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %63, metadata !1610, metadata !DIExpression()), !dbg !1611
  %64 = zext i8 %1 to i32, !dbg !1684
  %65 = shl nuw nsw i32 %64, 8, !dbg !1685
  %66 = or i32 %63, %65, !dbg !1686
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1687
  br label %187, !dbg !1688

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1689
  call void @llvm.dbg.value(metadata i32 %68, metadata !1610, metadata !DIExpression()), !dbg !1611
  %69 = and i32 %68, -61441, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %69, metadata !1610, metadata !DIExpression()), !dbg !1611
  %70 = zext i8 %1 to i32, !dbg !1691
  %71 = shl nuw nsw i32 %70, 12, !dbg !1692
  %72 = or i32 %69, %71, !dbg !1693
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1694
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1695

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #16, !dbg !1697
  br label %187, !dbg !1699

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %76, metadata !1610, metadata !DIExpression()), !dbg !1611
  %77 = and i32 %76, -983041, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %77, metadata !1610, metadata !DIExpression()), !dbg !1611
  %78 = zext i8 %1 to i32, !dbg !1702
  %79 = shl nuw nsw i32 %78, 16, !dbg !1703
  %80 = or i32 %77, %79, !dbg !1704
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1705
  %81 = and i8 %1, -2, !dbg !1706
  %82 = icmp eq i8 %81, 4, !dbg !1706
  br i1 %82, label %83, label %187, !dbg !1706

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #16, !dbg !1708
  br label %187, !dbg !1710

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %86, metadata !1610, metadata !DIExpression()), !dbg !1611
  %87 = and i32 %86, -15728641, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %87, metadata !1610, metadata !DIExpression()), !dbg !1611
  %88 = zext i8 %1 to i32, !dbg !1713
  %89 = shl nuw nsw i32 %88, 20, !dbg !1714
  %90 = or i32 %87, %89, !dbg !1715
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1716
  %91 = icmp eq i8 %1, 6, !dbg !1717
  br i1 %91, label %92, label %187, !dbg !1719

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #16, !dbg !1720
  br label %187, !dbg !1722

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1723
  call void @llvm.dbg.value(metadata i32 %95, metadata !1610, metadata !DIExpression()), !dbg !1611
  %96 = and i32 %95, -251658241, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %96, metadata !1610, metadata !DIExpression()), !dbg !1611
  %97 = zext i8 %1 to i32, !dbg !1725
  %98 = shl nuw i32 %97, 24, !dbg !1726
  %99 = or i32 %96, %98, !dbg !1727
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1728
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1729

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #16, !dbg !1731
  br label %187, !dbg !1733

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %103, metadata !1610, metadata !DIExpression()), !dbg !1611
  %104 = and i32 %103, 268435455, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %104, metadata !1610, metadata !DIExpression()), !dbg !1611
  %105 = zext i8 %1 to i32, !dbg !1736
  %106 = shl i32 %105, 28, !dbg !1737
  %107 = or i32 %104, %106, !dbg !1738
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1739
  %108 = and i8 %1, -3, !dbg !1740
  %109 = icmp eq i8 %108, 4, !dbg !1740
  br i1 %109, label %110, label %187, !dbg !1740

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #16, !dbg !1742
  br label %187, !dbg !1744

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %113, metadata !1610, metadata !DIExpression()), !dbg !1611
  %114 = and i32 %113, -16, !dbg !1746
  call void @llvm.dbg.value(metadata i32 %114, metadata !1610, metadata !DIExpression()), !dbg !1611
  %115 = zext i8 %1 to i32, !dbg !1747
  %116 = or i32 %114, %115, !dbg !1748
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1749
  %117 = and i8 %1, -3, !dbg !1750
  %118 = icmp eq i8 %117, 4, !dbg !1750
  br i1 %118, label %119, label %187, !dbg !1750

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #16, !dbg !1752
  br label %187, !dbg !1754

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1755
  call void @llvm.dbg.value(metadata i32 %122, metadata !1610, metadata !DIExpression()), !dbg !1611
  %123 = and i32 %122, -241, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %123, metadata !1610, metadata !DIExpression()), !dbg !1611
  %124 = zext i8 %1 to i32, !dbg !1757
  %125 = shl nuw nsw i32 %124, 4, !dbg !1758
  %126 = or i32 %123, %125, !dbg !1759
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1760
  br label %187, !dbg !1761

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %128, metadata !1610, metadata !DIExpression()), !dbg !1611
  %129 = and i32 %128, -3841, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %129, metadata !1610, metadata !DIExpression()), !dbg !1611
  %130 = zext i8 %1 to i32, !dbg !1764
  %131 = shl nuw nsw i32 %130, 8, !dbg !1765
  %132 = or i32 %129, %131, !dbg !1766
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1767
  br label %187, !dbg !1768

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1769
  call void @llvm.dbg.value(metadata i32 %134, metadata !1610, metadata !DIExpression()), !dbg !1611
  %135 = and i32 %134, -61441, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %135, metadata !1610, metadata !DIExpression()), !dbg !1611
  %136 = zext i8 %1 to i32, !dbg !1771
  %137 = shl nuw nsw i32 %136, 12, !dbg !1772
  %138 = or i32 %135, %137, !dbg !1773
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1774
  br label %187, !dbg !1775

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1776
  call void @llvm.dbg.value(metadata i32 %140, metadata !1610, metadata !DIExpression()), !dbg !1611
  %141 = and i32 %140, -983041, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %141, metadata !1610, metadata !DIExpression()), !dbg !1611
  %142 = zext i8 %1 to i32, !dbg !1778
  %143 = shl nuw nsw i32 %142, 16, !dbg !1779
  %144 = or i32 %141, %143, !dbg !1780
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1781
  br label %187, !dbg !1782

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %146, metadata !1610, metadata !DIExpression()), !dbg !1611
  %147 = and i32 %146, -15728641, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %147, metadata !1610, metadata !DIExpression()), !dbg !1611
  %148 = zext i8 %1 to i32, !dbg !1785
  %149 = shl nuw nsw i32 %148, 20, !dbg !1786
  %150 = or i32 %147, %149, !dbg !1787
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1788
  br label %187, !dbg !1789

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %152, metadata !1610, metadata !DIExpression()), !dbg !1611
  %153 = and i32 %152, -251658241, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %153, metadata !1610, metadata !DIExpression()), !dbg !1611
  %154 = zext i8 %1 to i32, !dbg !1792
  %155 = shl nuw i32 %154, 24, !dbg !1793
  %156 = or i32 %153, %155, !dbg !1794
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1795
  br label %187, !dbg !1796

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %158, metadata !1610, metadata !DIExpression()), !dbg !1611
  %159 = and i32 %158, 268435455, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %159, metadata !1610, metadata !DIExpression()), !dbg !1611
  %160 = zext i8 %1 to i32, !dbg !1799
  %161 = shl i32 %160, 28, !dbg !1800
  %162 = or i32 %159, %161, !dbg !1801
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1802
  br label %187, !dbg !1803

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %164, metadata !1610, metadata !DIExpression()), !dbg !1611
  %165 = and i32 %164, -241, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %165, metadata !1610, metadata !DIExpression()), !dbg !1611
  %166 = zext i8 %1 to i32, !dbg !1806
  %167 = shl nuw nsw i32 %166, 4, !dbg !1807
  %168 = or i32 %165, %167, !dbg !1808
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1809
  br label %187, !dbg !1810

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %170, metadata !1610, metadata !DIExpression()), !dbg !1611
  %171 = and i32 %170, -3841, !dbg !1812
  call void @llvm.dbg.value(metadata i32 %171, metadata !1610, metadata !DIExpression()), !dbg !1611
  %172 = zext i8 %1 to i32, !dbg !1813
  %173 = shl nuw nsw i32 %172, 8, !dbg !1814
  %174 = or i32 %171, %173, !dbg !1815
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1816
  br label %187, !dbg !1817

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1818
  call void @llvm.dbg.value(metadata i32 %176, metadata !1610, metadata !DIExpression()), !dbg !1611
  %177 = and i32 %176, -61441, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %177, metadata !1610, metadata !DIExpression()), !dbg !1611
  %178 = zext i8 %1 to i32, !dbg !1820
  %179 = shl nuw nsw i32 %178, 12, !dbg !1821
  %180 = or i32 %177, %179, !dbg !1822
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1823
  br label %187, !dbg !1824

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %182, metadata !1610, metadata !DIExpression()), !dbg !1611
  %183 = and i32 %182, -983041, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %183, metadata !1610, metadata !DIExpression()), !dbg !1611
  %184 = zext i8 %1 to i32, !dbg !1827
  %185 = shl nuw nsw i32 %184, 16, !dbg !1828
  %186 = or i32 %183, %185, !dbg !1829
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1830
  br label %187, !dbg !1831

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1832
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !1833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1837, metadata !DIExpression()), !dbg !1838
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !1839
  tail call void asm sideeffect "dsb", ""() #17, !dbg !1840, !srcloc !1841
  tail call void asm sideeffect "isb", ""() #17, !dbg !1842, !srcloc !1843
  ret void, !dbg !1844
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !1845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1849, metadata !DIExpression()), !dbg !1850
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !1851
  ret void, !dbg !1852
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !1853 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !1858, !srcloc !1865
  call void @llvm.dbg.value(metadata i32 %1, metadata !1862, metadata !DIExpression()) #17, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %1, metadata !1857, metadata !DIExpression()), !dbg !1867
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !1868, !srcloc !1872
  ret i32 %1, !dbg !1873
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !1874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1876, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i32 %0, metadata !1878, metadata !DIExpression()) #17, !dbg !1881
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #17, !dbg !1884, !srcloc !1885
  ret void, !dbg !1886
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1887 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1891, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %1, metadata !1892, metadata !DIExpression()), !dbg !1894
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
  ], !dbg !1895

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !1893, metadata !DIExpression()), !dbg !1894
  %4 = trunc i32 %1 to i8, !dbg !1896
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #16, !dbg !1897
  br label %5, !dbg !1898

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !1894
  ret i32 %6, !dbg !1899
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !1900 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1902, metadata !DIExpression()), !dbg !1904
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %1, metadata !1903, metadata !DIExpression()), !dbg !1904
  %2 = lshr i32 %1, 13, !dbg !1906
  %3 = and i32 %2, 7, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %3, metadata !1903, metadata !DIExpression()), !dbg !1904
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %4, metadata !1902, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i32 %4, metadata !1902, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !1904
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !1909
  %6 = load i32, i32* %5, align 4, !dbg !1909
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !1909
  %8 = load i32, i32* %7, align 4, !dbg !1909
  %9 = and i32 %4, -2048, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %9, metadata !1902, metadata !DIExpression()), !dbg !1904
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !1911
  %10 = or i32 %9, %8, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %10, metadata !1902, metadata !DIExpression()), !dbg !1904
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1913
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !1914
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !1915
  tail call void @SystemCoreClockUpdate() #16, !dbg !1916
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !1917
  %13 = udiv i32 %12, 1000, !dbg !1918
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #16, !dbg !1919
  ret void, !dbg !1920
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #4 !dbg !1921 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !1922
  ret i32 %1, !dbg !1923
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #4 !dbg !1924 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !1925
  ret i32 %1, !dbg !1926
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #5 !dbg !1927 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1931
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1931
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1930, metadata !DIExpression()), !dbg !1933
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !1934
  store volatile i32 %3, i32* %1, align 4, !dbg !1935
  %4 = load volatile i32, i32* %1, align 4, !dbg !1936
  %5 = lshr i32 %4, 28, !dbg !1937
  %6 = and i32 %5, 3, !dbg !1938
  store volatile i32 %6, i32* %1, align 4, !dbg !1939
  %7 = load volatile i32, i32* %1, align 4, !dbg !1940
  %8 = icmp eq i32 %7, 0, !dbg !1942
  br i1 %8, label %9, label %22, !dbg !1943

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !1944
  store volatile i32 %10, i32* %1, align 4, !dbg !1946
  %11 = load volatile i32, i32* %1, align 4, !dbg !1947
  %12 = and i32 %11, -16777217, !dbg !1948
  store volatile i32 %12, i32* %1, align 4, !dbg !1949
  %13 = load volatile i32, i32* %1, align 4, !dbg !1950
  %14 = or i32 %13, 536870912, !dbg !1951
  store volatile i32 %14, i32* %1, align 4, !dbg !1952
  %15 = load volatile i32, i32* %1, align 4, !dbg !1953
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #15, !dbg !1954
  br label %16, !dbg !1955

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !1956
  store volatile i32 %17, i32* %1, align 4, !dbg !1958
  %18 = load volatile i32, i32* %1, align 4, !dbg !1959
  %19 = and i32 %18, 134217728, !dbg !1960
  store volatile i32 %19, i32* %1, align 4, !dbg !1961
  %20 = load volatile i32, i32* %1, align 4, !dbg !1962
  %21 = icmp eq i32 %20, 0, !dbg !1963
  br i1 %21, label %16, label %22, !dbg !1964, !llvm.loop !1965

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !1967
  ret void, !dbg !1967
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #2 !dbg !1968 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1975, metadata !DIExpression()), !dbg !1976
  %2 = bitcast i8* %0 to i32*, !dbg !1977
  %3 = load volatile i32, i32* %2, align 4, !dbg !1978
  ret i32 %3, !dbg !1979
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !1980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1984, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i32 %1, metadata !1985, metadata !DIExpression()), !dbg !1986
  %3 = bitcast i8* %0 to i32*, !dbg !1987
  store volatile i32 %1, i32* %3, align 4, !dbg !1988
  ret void, !dbg !1989
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #5 !dbg !1990 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !1994, metadata !DIExpression()), !dbg !1997
  %3 = bitcast i32* %2 to i8*, !dbg !1998
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !1998
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1995, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1996, metadata !DIExpression()), !dbg !1997
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2000
  store volatile i32 %4, i32* %2, align 4, !dbg !2001
  %5 = load volatile i32, i32* %2, align 4, !dbg !2002
  %6 = lshr i32 %5, 28, !dbg !2003
  %7 = and i32 %6, 3, !dbg !2004
  store volatile i32 %7, i32* %2, align 4, !dbg !2005
  %8 = load volatile i32, i32* %2, align 4, !dbg !2006
  %9 = icmp eq i32 %8, 3, !dbg !2008
  br i1 %9, label %38, label %10, !dbg !2009

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2010
  store volatile i32 %11, i32* %2, align 4, !dbg !2012
  %12 = load volatile i32, i32* %2, align 4, !dbg !2013
  %13 = and i32 %12, -262145, !dbg !2014
  store volatile i32 %13, i32* %2, align 4, !dbg !2015
  %14 = load volatile i32, i32* %2, align 4, !dbg !2016
  %15 = and i32 %14, -16777217, !dbg !2017
  store volatile i32 %15, i32* %2, align 4, !dbg !2018
  %16 = load volatile i32, i32* %2, align 4, !dbg !2019
  store volatile i32 %16, i32* %2, align 4, !dbg !2020
  %17 = load volatile i32, i32* %2, align 4, !dbg !2021
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #15, !dbg !2022
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2023
  store volatile i32 %18, i32* %2, align 4, !dbg !2024
  %19 = load volatile i32, i32* %2, align 4, !dbg !2025
  %20 = and i32 %19, -805306369, !dbg !2026
  store volatile i32 %20, i32* %2, align 4, !dbg !2027
  %21 = load volatile i32, i32* %2, align 4, !dbg !2028
  %22 = and i32 %21, -16777217, !dbg !2029
  store volatile i32 %22, i32* %2, align 4, !dbg !2030
  %23 = load volatile i32, i32* %2, align 4, !dbg !2031
  %24 = or i32 %23, 805306368, !dbg !2032
  store volatile i32 %24, i32* %2, align 4, !dbg !2033
  %25 = load volatile i32, i32* %2, align 4, !dbg !2034
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #15, !dbg !2035
  br label %26, !dbg !2036

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2037
  store volatile i32 %27, i32* %2, align 4, !dbg !2039
  %28 = load volatile i32, i32* %2, align 4, !dbg !2040
  %29 = and i32 %28, 67108864, !dbg !2041
  store volatile i32 %29, i32* %2, align 4, !dbg !2042
  %30 = load volatile i32, i32* %2, align 4, !dbg !2043
  %31 = icmp eq i32 %30, 0, !dbg !2044
  br i1 %31, label %26, label %32, !dbg !2045, !llvm.loop !2046

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2048
  store volatile i32 %33, i32* %2, align 4, !dbg !2049
  %34 = load volatile i32, i32* %2, align 4, !dbg !2050
  %35 = and i32 %34, -262145, !dbg !2051
  store volatile i32 %35, i32* %2, align 4, !dbg !2052
  %36 = load volatile i32, i32* %2, align 4, !dbg !2053
  %37 = and i32 %36, -16777217, !dbg !2054
  store volatile i32 %37, i32* %2, align 4, !dbg !2055
  br label %38, !dbg !2056

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2057
  store volatile i32 %39, i32* %2, align 4, !dbg !2058
  %40 = icmp eq i8 %0, 0, !dbg !2059
  %41 = load volatile i32, i32* %2, align 4, !dbg !2061
  br i1 %40, label %44, label %42, !dbg !2062

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2063
  store volatile i32 %43, i32* %2, align 4, !dbg !2065
  br label %45, !dbg !2066

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2067
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2069
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #15, !dbg !2070
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2071
  ret void, !dbg !2071
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #5 !dbg !2072 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2076
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2076
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2074, metadata !DIExpression()), !dbg !2077
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2075, metadata !DIExpression()), !dbg !2078
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2079
  store volatile i32 %3, i32* %1, align 4, !dbg !2080
  %4 = load volatile i32, i32* %1, align 4, !dbg !2081
  %5 = and i32 %4, -805306369, !dbg !2082
  store volatile i32 %5, i32* %1, align 4, !dbg !2083
  %6 = load volatile i32, i32* %1, align 4, !dbg !2084
  %7 = and i32 %6, -16777217, !dbg !2085
  store volatile i32 %7, i32* %1, align 4, !dbg !2086
  %8 = load volatile i32, i32* %1, align 4, !dbg !2087
  store volatile i32 %8, i32* %1, align 4, !dbg !2088
  %9 = load volatile i32, i32* %1, align 4, !dbg !2089
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #15, !dbg !2090
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2091
  store volatile i32 %10, i32* %1, align 4, !dbg !2092
  %11 = load volatile i32, i32* %1, align 4, !dbg !2093
  %12 = and i32 %11, -262145, !dbg !2094
  store volatile i32 %12, i32* %1, align 4, !dbg !2095
  %13 = load volatile i32, i32* %1, align 4, !dbg !2096
  %14 = and i32 %13, -16777217, !dbg !2097
  store volatile i32 %14, i32* %1, align 4, !dbg !2098
  %15 = load volatile i32, i32* %1, align 4, !dbg !2099
  store volatile i32 %15, i32* %1, align 4, !dbg !2100
  %16 = load volatile i32, i32* %1, align 4, !dbg !2101
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #15, !dbg !2102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2103
  ret void, !dbg !2103
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2104 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2108
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2106, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2107, metadata !DIExpression()), !dbg !2110
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2111
  store volatile i32 %3, i32* %1, align 4, !dbg !2112
  %4 = load volatile i32, i32* %1, align 4, !dbg !2113
  %5 = and i32 %4, -8, !dbg !2114
  store volatile i32 %5, i32* %1, align 4, !dbg !2115
  %6 = load volatile i32, i32* %1, align 4, !dbg !2116
  store volatile i32 %6, i32* %1, align 4, !dbg !2117
  %7 = load volatile i32, i32* %1, align 4, !dbg !2118
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #15, !dbg !2119
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2120
  store volatile i32 %8, i32* %1, align 4, !dbg !2121
  %9 = load volatile i32, i32* %1, align 4, !dbg !2122
  %10 = and i32 %9, -49153, !dbg !2123
  store volatile i32 %10, i32* %1, align 4, !dbg !2124
  %11 = load volatile i32, i32* %1, align 4, !dbg !2125
  store volatile i32 %11, i32* %1, align 4, !dbg !2126
  %12 = load volatile i32, i32* %1, align 4, !dbg !2127
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #15, !dbg !2128
  br label %13, !dbg !2129

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2130
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2131
  %16 = icmp eq i32 %14, %15, !dbg !2132
  br i1 %16, label %17, label %13, !dbg !2129, !llvm.loop !2133

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #15, !dbg !2135
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2136
  tail call void @SystemCoreClockUpdate() #16, !dbg !2137
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2138
  %20 = udiv i32 %19, 1000, !dbg !2139
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !2140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2141
  ret void, !dbg !2141
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2142 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2146
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2146
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2145, metadata !DIExpression()), !dbg !2148
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #15, !dbg !2149
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2150
  store volatile i32 %3, i32* %1, align 4, !dbg !2151
  %4 = load volatile i32, i32* %1, align 4, !dbg !2152
  %5 = and i32 %4, -49153, !dbg !2153
  store volatile i32 %5, i32* %1, align 4, !dbg !2154
  %6 = load volatile i32, i32* %1, align 4, !dbg !2155
  %7 = or i32 %6, 16384, !dbg !2156
  store volatile i32 %7, i32* %1, align 4, !dbg !2157
  %8 = load volatile i32, i32* %1, align 4, !dbg !2158
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #15, !dbg !2159
  br label %9, !dbg !2160

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2161
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2162
  %12 = icmp eq i32 %10, %11, !dbg !2163
  br i1 %12, label %13, label %9, !dbg !2160, !llvm.loop !2164

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2166
  store volatile i32 %14, i32* %1, align 4, !dbg !2167
  %15 = load volatile i32, i32* %1, align 4, !dbg !2168
  %16 = and i32 %15, -1009, !dbg !2169
  store volatile i32 %16, i32* %1, align 4, !dbg !2170
  %17 = load volatile i32, i32* %1, align 4, !dbg !2171
  %18 = or i32 %17, 128, !dbg !2172
  store volatile i32 %18, i32* %1, align 4, !dbg !2173
  %19 = load volatile i32, i32* %1, align 4, !dbg !2174
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #15, !dbg !2175
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2176
  store volatile i32 %20, i32* %1, align 4, !dbg !2177
  %21 = load volatile i32, i32* %1, align 4, !dbg !2178
  %22 = and i32 %21, -8, !dbg !2179
  store volatile i32 %22, i32* %1, align 4, !dbg !2180
  %23 = load volatile i32, i32* %1, align 4, !dbg !2181
  %24 = or i32 %23, 4, !dbg !2182
  store volatile i32 %24, i32* %1, align 4, !dbg !2183
  %25 = load volatile i32, i32* %1, align 4, !dbg !2184
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #15, !dbg !2185
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2186
  tail call void @SystemCoreClockUpdate() #16, !dbg !2187
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2188
  %27 = udiv i32 %26, 1000, !dbg !2189
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !2190
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2191
  ret void, !dbg !2191
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2192 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2196
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2196
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2194, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2195, metadata !DIExpression()), !dbg !2198
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #15, !dbg !2199
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2200
  store volatile i32 %3, i32* %1, align 4, !dbg !2201
  %4 = load volatile i32, i32* %1, align 4, !dbg !2202
  %5 = and i32 %4, -49153, !dbg !2203
  store volatile i32 %5, i32* %1, align 4, !dbg !2204
  %6 = load volatile i32, i32* %1, align 4, !dbg !2205
  %7 = or i32 %6, 32768, !dbg !2206
  store volatile i32 %7, i32* %1, align 4, !dbg !2207
  %8 = load volatile i32, i32* %1, align 4, !dbg !2208
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #15, !dbg !2209
  br label %9, !dbg !2210

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2211
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2212
  %12 = icmp eq i32 %10, %11, !dbg !2213
  br i1 %12, label %13, label %9, !dbg !2210, !llvm.loop !2214

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2216
  store volatile i32 %14, i32* %1, align 4, !dbg !2217
  %15 = load volatile i32, i32* %1, align 4, !dbg !2218
  %16 = and i32 %15, -1009, !dbg !2219
  store volatile i32 %16, i32* %1, align 4, !dbg !2220
  %17 = load volatile i32, i32* %1, align 4, !dbg !2221
  %18 = or i32 %17, 32, !dbg !2222
  store volatile i32 %18, i32* %1, align 4, !dbg !2223
  %19 = load volatile i32, i32* %1, align 4, !dbg !2224
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #15, !dbg !2225
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2226
  store volatile i32 %20, i32* %1, align 4, !dbg !2227
  %21 = load volatile i32, i32* %1, align 4, !dbg !2228
  %22 = and i32 %21, -8, !dbg !2229
  store volatile i32 %22, i32* %1, align 4, !dbg !2230
  %23 = load volatile i32, i32* %1, align 4, !dbg !2231
  %24 = or i32 %23, 4, !dbg !2232
  store volatile i32 %24, i32* %1, align 4, !dbg !2233
  %25 = load volatile i32, i32* %1, align 4, !dbg !2234
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #15, !dbg !2235
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2236
  tail call void @SystemCoreClockUpdate() #16, !dbg !2237
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2238
  %27 = udiv i32 %26, 1000, !dbg !2239
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !2240
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2241
  ret void, !dbg !2241
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2242 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2246
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2246
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2244, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2245, metadata !DIExpression()), !dbg !2248
  tail call void @cmnPLL1ON() #15, !dbg !2249
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2250
  store volatile i32 %3, i32* %1, align 4, !dbg !2251
  %4 = load volatile i32, i32* %1, align 4, !dbg !2252
  %5 = and i32 %4, -49153, !dbg !2253
  store volatile i32 %5, i32* %1, align 4, !dbg !2254
  %6 = load volatile i32, i32* %1, align 4, !dbg !2255
  store volatile i32 %6, i32* %1, align 4, !dbg !2256
  %7 = load volatile i32, i32* %1, align 4, !dbg !2257
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #15, !dbg !2258
  br label %8, !dbg !2259

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2260
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2261
  %11 = icmp eq i32 %9, %10, !dbg !2262
  br i1 %11, label %12, label %8, !dbg !2259, !llvm.loop !2263

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2265
  store volatile i32 %13, i32* %1, align 4, !dbg !2266
  %14 = load volatile i32, i32* %1, align 4, !dbg !2267
  %15 = and i32 %14, -8, !dbg !2268
  store volatile i32 %15, i32* %1, align 4, !dbg !2269
  %16 = load volatile i32, i32* %1, align 4, !dbg !2270
  %17 = or i32 %16, 2, !dbg !2271
  store volatile i32 %17, i32* %1, align 4, !dbg !2272
  %18 = load volatile i32, i32* %1, align 4, !dbg !2273
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #15, !dbg !2274
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2275
  tail call void @SystemCoreClockUpdate() #16, !dbg !2276
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2277
  %20 = udiv i32 %19, 1000, !dbg !2278
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2280
  ret void, !dbg !2280
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #5 section ".ramTEXT" !dbg !2281 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2285
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2285
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2283, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2284, metadata !DIExpression()), !dbg !2287
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #15, !dbg !2288
  store volatile i32 %3, i32* %1, align 4, !dbg !2289
  %4 = load volatile i32, i32* %1, align 4, !dbg !2290
  %5 = and i32 %4, -24577, !dbg !2291
  store volatile i32 %5, i32* %1, align 4, !dbg !2292
  %6 = load volatile i32, i32* %1, align 4, !dbg !2293
  store volatile i32 %6, i32* %1, align 4, !dbg !2294
  %7 = load volatile i32, i32* %1, align 4, !dbg !2295
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #15, !dbg !2296
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2297
  ret void, !dbg !2297
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2298 {
  %1 = tail call i32 @getc_nowait() #15, !dbg !2303
  call void @llvm.dbg.value(metadata i32 %1, metadata !2302, metadata !DIExpression()), !dbg !2304
  ret i32 %1, !dbg !2305
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2306 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2309
  %2 = and i32 %1, 1, !dbg !2311
  %3 = icmp eq i32 %2, 0, !dbg !2311
  br i1 %3, label %7, label %4, !dbg !2312

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2313
  %6 = and i32 %5, 255, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %5, metadata !2308, metadata !DIExpression()), !dbg !2316
  br label %7, !dbg !2317

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2318
  ret i32 %8, !dbg !2319
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8 %1, metadata !2326, metadata !DIExpression()), !dbg !2328
  %3 = icmp eq i32 %0, 0, !dbg !2329
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %4, metadata !2327, metadata !DIExpression()), !dbg !2328
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2330

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2331
  %9 = and i32 %8, 32, !dbg !2332
  %10 = icmp eq i32 %9, 0, !dbg !2333
  br i1 %10, label %7, label %11, !dbg !2330, !llvm.loop !2334

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2336
  %13 = inttoptr i32 %4 to i32*, !dbg !2337
  store volatile i32 %12, i32* %13, align 65536, !dbg !2338
  ret void, !dbg !2339
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2340 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2344, metadata !DIExpression()), !dbg !2347
  %2 = icmp eq i32 %0, 0, !dbg !2348
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2348
  call void @llvm.dbg.value(metadata i32 %3, metadata !2345, metadata !DIExpression()), !dbg !2347
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2349

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2350
  %8 = and i32 %7, 1, !dbg !2351
  %9 = icmp eq i32 %8, 0, !dbg !2352
  br i1 %9, label %6, label %10, !dbg !2349, !llvm.loop !2353

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2355
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2355
  %13 = trunc i32 %12 to i8, !dbg !2355
  call void @llvm.dbg.value(metadata i8 %13, metadata !2346, metadata !DIExpression()), !dbg !2347
  ret i8 %13, !dbg !2356
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2357 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2361, metadata !DIExpression()), !dbg !2364
  %2 = icmp eq i32 %0, 0, !dbg !2365
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %3, metadata !2362, metadata !DIExpression()), !dbg !2364
  %4 = or i32 %3, 20, !dbg !2366
  %5 = inttoptr i32 %4 to i32*, !dbg !2366
  %6 = load volatile i32, i32* %5, align 4, !dbg !2366
  %7 = and i32 %6, 1, !dbg !2368
  %8 = icmp eq i32 %7, 0, !dbg !2368
  br i1 %8, label %13, label %9, !dbg !2369

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2370
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2370
  %12 = and i32 %11, 255, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %11, metadata !2363, metadata !DIExpression()), !dbg !2364
  br label %13, !dbg !2373

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2374
  ret i32 %14, !dbg !2375
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !2376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2381
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #15, !dbg !2382
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2383

2:                                                ; preds = %1
  br label %3, !dbg !2384

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2388
  %6 = or i32 %5, 1, !dbg !2388
  store volatile i32 %6, i32* %4, align 4, !dbg !2388
  br label %7, !dbg !2389

7:                                                ; preds = %3, %1
  ret void, !dbg !2389
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !2390 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2396, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i16 %2, metadata !2398, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i16 %3, metadata !2399, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i16 %4, metadata !2400, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2402, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2409, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2411, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression()), !dbg !2413
  %6 = tail call i32 @top_xtal_freq_get() #16, !dbg !2416
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2417
  %7 = icmp eq i32 %0, 1, !dbg !2418
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %8, metadata !2402, metadata !DIExpression()), !dbg !2413
  %9 = or i32 %8, 36, !dbg !2419
  %10 = inttoptr i32 %9 to i32*, !dbg !2419
  store volatile i32 3, i32* %10, align 4, !dbg !2420
  %11 = or i32 %8, 12, !dbg !2421
  %12 = inttoptr i32 %11 to i32*, !dbg !2421
  %13 = load volatile i32, i32* %12, align 4, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %13, metadata !2404, metadata !DIExpression()), !dbg !2413
  %14 = or i32 %13, 128, !dbg !2422
  store volatile i32 %14, i32* %12, align 4, !dbg !2423
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2424
  %16 = udiv i32 %15, %1, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %16, metadata !2403, metadata !DIExpression()), !dbg !2413
  %17 = lshr i32 %16, 8, !dbg !2426
  %18 = add nuw nsw i32 %17, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %18, metadata !2405, metadata !DIExpression()), !dbg !2413
  %19 = udiv i32 %16, %18, !dbg !2428
  %20 = add i32 %19, -1, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %20, metadata !2406, metadata !DIExpression()), !dbg !2413
  %21 = icmp eq i32 %20, 3, !dbg !2431
  %22 = lshr i32 %20, 1, !dbg !2433
  %23 = add nsw i32 %22, -1, !dbg !2433
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %24, metadata !2407, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i32 undef, metadata !2412, metadata !DIExpression()), !dbg !2413
  %25 = mul i32 %15, 10, !dbg !2434
  %26 = udiv i32 %25, %1, !dbg !2435
  %27 = udiv i32 %26, %16, !dbg !2436
  %28 = mul i32 %19, -10, !dbg !2437
  %29 = add i32 %27, %28, !dbg !2438
  %30 = urem i32 %29, 10, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %30, metadata !2408, metadata !DIExpression()), !dbg !2413
  %31 = and i32 %18, 255, !dbg !2440
  %32 = inttoptr i32 %8 to i32*, !dbg !2441
  store volatile i32 %31, i32* %32, align 65536, !dbg !2442
  %33 = lshr i32 %18, 8, !dbg !2443
  %34 = and i32 %33, 255, !dbg !2444
  %35 = or i32 %8, 4, !dbg !2445
  %36 = inttoptr i32 %35 to i32*, !dbg !2445
  store volatile i32 %34, i32* %36, align 4, !dbg !2446
  %37 = or i32 %8, 40, !dbg !2447
  %38 = inttoptr i32 %37 to i32*, !dbg !2447
  store volatile i32 %20, i32* %38, align 8, !dbg !2448
  %39 = or i32 %8, 44, !dbg !2449
  %40 = inttoptr i32 %39 to i32*, !dbg !2449
  store volatile i32 %24, i32* %40, align 4, !dbg !2450
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2451
  %42 = load i16, i16* %41, align 2, !dbg !2451
  %43 = zext i16 %42 to i32, !dbg !2451
  %44 = or i32 %8, 88, !dbg !2452
  %45 = inttoptr i32 %44 to i32*, !dbg !2452
  store volatile i32 %43, i32* %45, align 8, !dbg !2453
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2454
  %47 = load i16, i16* %46, align 2, !dbg !2454
  %48 = zext i16 %47 to i32, !dbg !2454
  %49 = or i32 %8, 84, !dbg !2455
  %50 = inttoptr i32 %49 to i32*, !dbg !2455
  store volatile i32 %48, i32* %50, align 4, !dbg !2456
  store volatile i32 %13, i32* %12, align 4, !dbg !2457
  %51 = or i32 %8, 8, !dbg !2458
  %52 = inttoptr i32 %51 to i32*, !dbg !2458
  store volatile i32 71, i32* %52, align 8, !dbg !2459
  %53 = inttoptr i32 %11 to i16*, !dbg !2460
  %54 = load volatile i16, i16* %53, align 4, !dbg !2460
  call void @llvm.dbg.value(metadata i16 %54, metadata !2401, metadata !DIExpression()), !dbg !2413
  %55 = and i16 %54, -64, !dbg !2461
  call void @llvm.dbg.value(metadata i16 %54, metadata !2401, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2413
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2401, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2413
  %56 = and i16 %2, -61, !dbg !2462
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2401, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2413
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2401, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2413
  %57 = and i16 %4, -57, !dbg !2463
  call void @llvm.dbg.value(metadata i16 undef, metadata !2401, metadata !DIExpression()), !dbg !2413
  %58 = or i16 %56, %3, !dbg !2462
  %59 = or i16 %58, %57, !dbg !2463
  %60 = or i16 %59, %55, !dbg !2464
  call void @llvm.dbg.value(metadata i16 %60, metadata !2401, metadata !DIExpression()), !dbg !2413
  store volatile i16 %60, i16* %53, align 4, !dbg !2465
  ret void, !dbg !2466
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !2467 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2472, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %1, metadata !2473, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32* %2, metadata !2474, metadata !DIExpression()), !dbg !2475
  %4 = icmp eq i32 %0, 0, !dbg !2476
  %5 = icmp eq i32 %1, 0, !dbg !2478
  br i1 %4, label %6, label %16, !dbg !2479

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2480

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2482
  %9 = zext i16 %8 to i32, !dbg !2482
  br label %26, !dbg !2485

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2486
  %12 = zext i16 %11 to i32, !dbg !2486
  store i32 %12, i32* %2, align 4, !dbg !2488
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2489
  %14 = zext i16 %13 to i32, !dbg !2489
  %15 = sub nsw i32 %12, %14, !dbg !2490
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2491

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2493
  %19 = zext i16 %18 to i32, !dbg !2493
  br label %26, !dbg !2496

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2497
  %22 = zext i16 %21 to i32, !dbg !2497
  store i32 %22, i32* %2, align 4, !dbg !2499
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2500
  %24 = zext i16 %23 to i32, !dbg !2500
  %25 = sub nsw i32 %22, %24, !dbg !2501
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2478
  ret void, !dbg !2502
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2507, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8* %1, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %2, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !2510, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !2510, metadata !DIExpression()), !dbg !2511
  %4 = icmp eq i32 %2, 0, !dbg !2512
  br i1 %4, label %15, label %5, !dbg !2515

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2510, metadata !DIExpression()), !dbg !2511
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2516

7:                                                ; preds = %5
  br label %8, !dbg !2518

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2522
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2522
  store i8 %10, i8* %11, align 1, !dbg !2522
  br label %12, !dbg !2523

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2523
  call void @llvm.dbg.value(metadata i32 %13, metadata !2510, metadata !DIExpression()), !dbg !2511
  %14 = icmp eq i32 %13, %2, !dbg !2512
  br i1 %14, label %15, label %5, !dbg !2515, !llvm.loop !2524

15:                                               ; preds = %12, %3
  ret void, !dbg !2526
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8* %1, metadata !2534, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 %2, metadata !2535, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 0, metadata !2536, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 0, metadata !2536, metadata !DIExpression()), !dbg !2537
  %4 = icmp eq i32 %2, 0, !dbg !2538
  br i1 %4, label %16, label %5, !dbg !2541

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2536, metadata !DIExpression()), !dbg !2537
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2542

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2544
  %9 = load i8, i8* %8, align 1, !dbg !2544
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2547
  br label %13, !dbg !2548

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2549
  %12 = load i8, i8* %11, align 1, !dbg !2549
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2552
  br label %13, !dbg !2553

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %14, metadata !2536, metadata !DIExpression()), !dbg !2537
  %15 = icmp eq i32 %14, %2, !dbg !2538
  br i1 %15, label %16, label %5, !dbg !2541, !llvm.loop !2555

16:                                               ; preds = %13, %3
  ret void, !dbg !2557
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !2558 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2562, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8* %1, metadata !2563, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %2, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %3, metadata !2565, metadata !DIExpression()), !dbg !2566
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2567

5:                                                ; preds = %4
  br label %6, !dbg !2568

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2572
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #16, !dbg !2572
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #16, !dbg !2572
  br label %9, !dbg !2573

9:                                                ; preds = %6, %4
  ret void, !dbg !2573
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !2574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %1, metadata !2579, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %2, metadata !2580, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %3, metadata !2581, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %4, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %5, metadata !2583, metadata !DIExpression()), !dbg !2584
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2585

7:                                                ; preds = %6
  br label %8, !dbg !2586

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2590
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !2590
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #16, !dbg !2590
  br label %11, !dbg !2591

11:                                               ; preds = %8, %6
  ret void, !dbg !2591
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2592 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2597, metadata !DIExpression()), !dbg !2598
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2599

3:                                                ; preds = %2
  br label %4, !dbg !2600

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !2604
  br label %6, !dbg !2605

6:                                                ; preds = %4, %2
  ret void, !dbg !2605
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2606 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2609, metadata !DIExpression()), !dbg !2610
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2611

3:                                                ; preds = %2
  br label %4, !dbg !2612

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !2616
  br label %6, !dbg !2617

6:                                                ; preds = %4, %2
  ret void, !dbg !2617
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2624
  %2 = icmp eq i32 %0, 0, !dbg !2625
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2625
  call void @llvm.dbg.value(metadata i32 %3, metadata !2621, metadata !DIExpression()), !dbg !2624
  %4 = or i32 %3, 12, !dbg !2626
  %5 = inttoptr i32 %4 to i32*, !dbg !2626
  %6 = load volatile i32, i32* %5, align 4, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %6, metadata !2623, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2624
  store volatile i32 191, i32* %5, align 4, !dbg !2627
  %7 = or i32 %3, 8, !dbg !2628
  %8 = inttoptr i32 %7 to i32*, !dbg !2628
  %9 = load volatile i32, i32* %8, align 8, !dbg !2628
  call void @llvm.dbg.value(metadata i32 %9, metadata !2622, metadata !DIExpression()), !dbg !2624
  %10 = and i32 %9, 65327, !dbg !2629
  %11 = or i32 %10, 208, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %9, metadata !2622, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2624
  store volatile i32 %11, i32* %8, align 8, !dbg !2630
  %12 = or i32 %3, 68, !dbg !2631
  %13 = inttoptr i32 %12 to i32*, !dbg !2631
  store volatile i32 0, i32* %13, align 4, !dbg !2632
  store volatile i32 0, i32* %5, align 4, !dbg !2633
  %14 = or i32 %3, 16, !dbg !2634
  %15 = inttoptr i32 %14 to i32*, !dbg !2634
  store volatile i32 2, i32* %15, align 16, !dbg !2635
  %16 = and i32 %6, 65535, !dbg !2636
  store volatile i32 %16, i32* %5, align 4, !dbg !2637
  ret void, !dbg !2638
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 %1, metadata !2644, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 %2, metadata !2645, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 %3, metadata !2646, metadata !DIExpression()), !dbg !2650
  %5 = icmp eq i32 %0, 0, !dbg !2651
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %6, metadata !2647, metadata !DIExpression()), !dbg !2650
  %7 = or i32 %6, 12, !dbg !2652
  %8 = inttoptr i32 %7 to i32*, !dbg !2652
  %9 = load volatile i32, i32* %8, align 4, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %9, metadata !2649, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2650
  store volatile i32 191, i32* %8, align 4, !dbg !2653
  %10 = zext i8 %1 to i32, !dbg !2654
  %11 = or i32 %6, 16, !dbg !2655
  %12 = inttoptr i32 %11 to i32*, !dbg !2655
  store volatile i32 %10, i32* %12, align 16, !dbg !2656
  %13 = or i32 %6, 20, !dbg !2657
  %14 = inttoptr i32 %13 to i32*, !dbg !2657
  store volatile i32 %10, i32* %14, align 4, !dbg !2658
  %15 = zext i8 %2 to i32, !dbg !2659
  %16 = or i32 %6, 24, !dbg !2660
  %17 = inttoptr i32 %16 to i32*, !dbg !2660
  store volatile i32 %15, i32* %17, align 8, !dbg !2661
  %18 = or i32 %6, 28, !dbg !2662
  %19 = inttoptr i32 %18 to i32*, !dbg !2662
  store volatile i32 %15, i32* %19, align 4, !dbg !2663
  %20 = or i32 %6, 8, !dbg !2664
  %21 = inttoptr i32 %20 to i32*, !dbg !2664
  %22 = load volatile i32, i32* %21, align 8, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %22, metadata !2648, metadata !DIExpression()), !dbg !2650
  %23 = and i32 %22, 65525, !dbg !2665
  %24 = or i32 %23, 10, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %22, metadata !2648, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2650
  store volatile i32 %24, i32* %21, align 8, !dbg !2666
  %25 = and i32 %9, 65535, !dbg !2667
  store volatile i32 %25, i32* %8, align 4, !dbg !2668
  %26 = zext i8 %3 to i32, !dbg !2669
  %27 = or i32 %6, 64, !dbg !2670
  %28 = inttoptr i32 %27 to i32*, !dbg !2670
  store volatile i32 %26, i32* %28, align 64, !dbg !2671
  %29 = or i32 %6, 68, !dbg !2672
  %30 = inttoptr i32 %29 to i32*, !dbg !2672
  store volatile i32 1, i32* %30, align 4, !dbg !2673
  ret void, !dbg !2674
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2675 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2677, metadata !DIExpression()), !dbg !2680
  %2 = icmp eq i32 %0, 0, !dbg !2681
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2681
  call void @llvm.dbg.value(metadata i32 %3, metadata !2678, metadata !DIExpression()), !dbg !2680
  %4 = or i32 %3, 12, !dbg !2682
  %5 = inttoptr i32 %4 to i32*, !dbg !2682
  %6 = load volatile i32, i32* %5, align 4, !dbg !2682
  call void @llvm.dbg.value(metadata i32 %6, metadata !2679, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2680
  store volatile i32 191, i32* %5, align 4, !dbg !2683
  %7 = or i32 %3, 8, !dbg !2684
  %8 = inttoptr i32 %7 to i32*, !dbg !2684
  store volatile i32 0, i32* %8, align 8, !dbg !2685
  store volatile i32 0, i32* %5, align 4, !dbg !2686
  %9 = and i32 %6, 65535, !dbg !2687
  store volatile i32 %9, i32* %5, align 4, !dbg !2688
  ret void, !dbg !2689
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !2690 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2692, metadata !DIExpression()), !dbg !2694
  %2 = icmp eq i32 %0, 0, !dbg !2695
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %3, metadata !2693, metadata !DIExpression()), !dbg !2694
  %4 = or i32 %3, 12, !dbg !2696
  %5 = inttoptr i32 %4 to i32*, !dbg !2696
  store volatile i32 191, i32* %5, align 4, !dbg !2697
  %6 = or i32 %3, 8, !dbg !2698
  %7 = inttoptr i32 %6 to i32*, !dbg !2698
  store volatile i32 16, i32* %7, align 8, !dbg !2699
  %8 = or i32 %3, 16, !dbg !2700
  %9 = inttoptr i32 %8 to i32*, !dbg !2700
  store volatile i32 0, i32* %9, align 16, !dbg !2701
  %10 = or i32 %3, 24, !dbg !2702
  %11 = inttoptr i32 %10 to i32*, !dbg !2702
  store volatile i32 0, i32* %11, align 8, !dbg !2703
  store volatile i32 128, i32* %5, align 4, !dbg !2704
  %12 = inttoptr i32 %3 to i32*, !dbg !2705
  store volatile i32 0, i32* %12, align 65536, !dbg !2706
  %13 = or i32 %3, 4, !dbg !2707
  %14 = inttoptr i32 %13 to i32*, !dbg !2707
  store volatile i32 0, i32* %14, align 4, !dbg !2708
  store volatile i32 0, i32* %5, align 4, !dbg !2709
  store volatile i32 0, i32* %14, align 4, !dbg !2710
  store volatile i32 0, i32* %7, align 8, !dbg !2711
  store volatile i32 191, i32* %5, align 4, !dbg !2712
  store volatile i32 0, i32* %7, align 8, !dbg !2713
  store volatile i32 0, i32* %5, align 4, !dbg !2714
  store volatile i32 0, i32* %9, align 16, !dbg !2715
  %15 = or i32 %3, 28, !dbg !2716
  %16 = inttoptr i32 %15 to i32*, !dbg !2716
  store volatile i32 0, i32* %16, align 4, !dbg !2717
  %17 = or i32 %3, 36, !dbg !2718
  %18 = inttoptr i32 %17 to i32*, !dbg !2718
  store volatile i32 0, i32* %18, align 4, !dbg !2719
  %19 = or i32 %3, 40, !dbg !2720
  %20 = inttoptr i32 %19 to i32*, !dbg !2720
  store volatile i32 0, i32* %20, align 8, !dbg !2721
  %21 = or i32 %3, 44, !dbg !2722
  %22 = inttoptr i32 %21 to i32*, !dbg !2722
  store volatile i32 0, i32* %22, align 4, !dbg !2723
  %23 = or i32 %3, 52, !dbg !2724
  %24 = inttoptr i32 %23 to i32*, !dbg !2724
  store volatile i32 0, i32* %24, align 4, !dbg !2725
  %25 = or i32 %3, 60, !dbg !2726
  %26 = inttoptr i32 %25 to i32*, !dbg !2726
  store volatile i32 0, i32* %26, align 4, !dbg !2727
  %27 = or i32 %3, 64, !dbg !2728
  %28 = inttoptr i32 %27 to i32*, !dbg !2728
  store volatile i32 0, i32* %28, align 64, !dbg !2729
  %29 = or i32 %3, 68, !dbg !2730
  %30 = inttoptr i32 %29 to i32*, !dbg !2730
  store volatile i32 0, i32* %30, align 4, !dbg !2731
  %31 = or i32 %3, 72, !dbg !2732
  %32 = inttoptr i32 %31 to i32*, !dbg !2732
  store volatile i32 0, i32* %32, align 8, !dbg !2733
  %33 = or i32 %3, 76, !dbg !2734
  %34 = inttoptr i32 %33 to i32*, !dbg !2734
  store volatile i32 0, i32* %34, align 4, !dbg !2735
  %35 = or i32 %3, 80, !dbg !2736
  %36 = inttoptr i32 %35 to i32*, !dbg !2736
  store volatile i32 0, i32* %36, align 16, !dbg !2737
  %37 = or i32 %3, 84, !dbg !2738
  %38 = inttoptr i32 %37 to i32*, !dbg !2738
  store volatile i32 0, i32* %38, align 4, !dbg !2739
  %39 = or i32 %3, 88, !dbg !2740
  %40 = inttoptr i32 %39 to i32*, !dbg !2740
  store volatile i32 0, i32* %40, align 8, !dbg !2741
  %41 = or i32 %3, 96, !dbg !2742
  %42 = inttoptr i32 %41 to i32*, !dbg !2742
  store volatile i32 0, i32* %42, align 32, !dbg !2743
  ret void, !dbg !2744
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !2745 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2747, metadata !DIExpression()), !dbg !2749
  %2 = icmp eq i32 %0, 0, !dbg !2750
  call void @llvm.dbg.value(metadata i32 undef, metadata !2748, metadata !DIExpression()), !dbg !2749
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !2751

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !2752
  %7 = and i32 %6, 64, !dbg !2753
  %8 = icmp eq i32 %7, 0, !dbg !2754
  br i1 %8, label %5, label %9, !dbg !2751, !llvm.loop !2755

9:                                                ; preds = %5
  ret void, !dbg !2757
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2758 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2762, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 %1, metadata !2763, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i8* %2, metadata !2764, metadata !DIExpression()), !dbg !2775
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2776
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2776
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2765, metadata !DIExpression()), !dbg !2777
  %7 = bitcast i32* %5 to i8*, !dbg !2778
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2778
  call void @llvm.dbg.value(metadata i32* %5, metadata !2774, metadata !DIExpression(DW_OP_deref)), !dbg !2775
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !2779
  call void @llvm.va_start(i8* nonnull %6), !dbg !2780
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2781
  %10 = load i32, i32* %9, align 4, !dbg !2781
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2781
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !2781
  call void @llvm.va_end(i8* nonnull %6), !dbg !2782
  %13 = load i32, i32* %5, align 4, !dbg !2783
  call void @llvm.dbg.value(metadata i32 %13, metadata !2774, metadata !DIExpression()), !dbg !2775
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !2784
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2785
  ret void, !dbg !2785
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2786 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2788, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 %1, metadata !2789, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8* %2, metadata !2790, metadata !DIExpression()), !dbg !2793
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2794
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2794
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2791, metadata !DIExpression()), !dbg !2795
  %7 = bitcast i32* %5 to i8*, !dbg !2796
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2796
  call void @llvm.dbg.value(metadata i32* %5, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2793
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !2797
  call void @llvm.va_start(i8* nonnull %6), !dbg !2798
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2799
  %10 = load i32, i32* %9, align 4, !dbg !2799
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2799
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !2799
  call void @llvm.va_end(i8* nonnull %6), !dbg !2800
  %13 = load i32, i32* %5, align 4, !dbg !2801
  call void @llvm.dbg.value(metadata i32 %13, metadata !2792, metadata !DIExpression()), !dbg !2793
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !2802
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2803
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2803
  ret void, !dbg !2803
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2804 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2806, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 %1, metadata !2807, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i8* %2, metadata !2808, metadata !DIExpression()), !dbg !2811
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2812
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2812
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2809, metadata !DIExpression()), !dbg !2813
  %7 = bitcast i32* %5 to i8*, !dbg !2814
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2814
  call void @llvm.dbg.value(metadata i32* %5, metadata !2810, metadata !DIExpression(DW_OP_deref)), !dbg !2811
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !2815
  call void @llvm.va_start(i8* nonnull %6), !dbg !2816
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2817
  %10 = load i32, i32* %9, align 4, !dbg !2817
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2817
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !2817
  call void @llvm.va_end(i8* nonnull %6), !dbg !2818
  %13 = load i32, i32* %5, align 4, !dbg !2819
  call void @llvm.dbg.value(metadata i32 %13, metadata !2810, metadata !DIExpression()), !dbg !2811
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2821
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2821
  ret void, !dbg !2821
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2822 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2824, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %1, metadata !2825, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i8* %2, metadata !2826, metadata !DIExpression()), !dbg !2829
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2830
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2830
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2827, metadata !DIExpression()), !dbg !2831
  %7 = bitcast i32* %5 to i8*, !dbg !2832
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2832
  call void @llvm.dbg.value(metadata i32* %5, metadata !2828, metadata !DIExpression(DW_OP_deref)), !dbg !2829
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !2833
  call void @llvm.va_start(i8* nonnull %6), !dbg !2834
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2835
  %10 = load i32, i32* %9, align 4, !dbg !2835
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2835
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !2835
  call void @llvm.va_end(i8* nonnull %6), !dbg !2836
  %13 = load i32, i32* %5, align 4, !dbg !2837
  call void @llvm.dbg.value(metadata i32 %13, metadata !2828, metadata !DIExpression()), !dbg !2829
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2839
  ret void, !dbg !2839
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !2840 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2846, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %1, metadata !2847, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %2, metadata !2848, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i8* %3, metadata !2849, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.value(metadata i32 %4, metadata !2850, metadata !DIExpression()), !dbg !2851
  ret void, !dbg !2852
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_crypt_lock_take() local_unnamed_addr #3 !dbg !2853 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !2858
  call void @llvm.dbg.value(metadata i32 %1, metadata !2857, metadata !DIExpression()), !dbg !2859
  %2 = load i8, i8* @g_crypt_lock, align 1, !dbg !2860, !range !2862
  %3 = icmp eq i8 %2, 0, !dbg !2860
  br i1 %3, label %4, label %5, !dbg !2863

4:                                                ; preds = %0
  store i8 1, i8* @g_crypt_lock, align 1, !dbg !2864
  br label %5, !dbg !2865

5:                                                ; preds = %0, %4
  %6 = phi i32 [ 0, %4 ], [ -100, %0 ], !dbg !2859
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !2859
  ret i32 %6, !dbg !2866
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @hal_crypt_lock_give() local_unnamed_addr #10 !dbg !2867 {
  store i8 0, i8* @g_crypt_lock, align 1, !dbg !2868
  ret void, !dbg !2869
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 !dbg !2870 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !2881, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !2882, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !2883, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %3, metadata !2884, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8 %4, metadata !2885, metadata !DIExpression()), !dbg !2898
  %8 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !2899
  %9 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %10 = or i1 %8, %9, !dbg !2901
  %11 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %12 = or i1 %10, %11, !dbg !2901
  %13 = icmp eq i8* %3, null
  %14 = or i1 %12, %13, !dbg !2901
  br i1 %14, label %15, label %16, !dbg !2901

15:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 154, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #16, !dbg !2902
  br label %86, !dbg !2904

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !2905
  %18 = load i32, i32* %17, align 4, !dbg !2905
  %19 = and i32 %18, 15, !dbg !2906
  call void @llvm.dbg.value(metadata i32 %19, metadata !2886, metadata !DIExpression()), !dbg !2898
  %20 = and i32 %18, -16, !dbg !2907
  call void @llvm.dbg.value(metadata i32 %18, metadata !2887, metadata !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value)), !dbg !2898
  %21 = sub nuw nsw i32 16, %19, !dbg !2908
  call void @llvm.dbg.value(metadata !DIArgList(i8 16, i32 %19), metadata !2888, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value)), !dbg !2898
  %22 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !2909
  %23 = load i32, i32* %22, align 4, !dbg !2909
  %24 = add i32 %21, %18, !dbg !2911
  %25 = icmp ult i32 %23, %24, !dbg !2912
  br i1 %25, label %26, label %27, !dbg !2913

26:                                               ; preds = %16
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 163, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #16, !dbg !2914
  br label %86, !dbg !2916

27:                                               ; preds = %16
  %28 = tail call i32 @hal_crypt_lock_take() #15, !dbg !2917
  %29 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @aes_operation_done) #16, !dbg !2918
  %30 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #16, !dbg !2919
  %31 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !2920
  %32 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !2921
  %33 = load i32, i32* %32, align 4, !dbg !2921
  %34 = trunc i32 %33 to i8, !dbg !2922
  %35 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !2923
  %36 = load i8*, i8** %35, align 4, !dbg !2923
  %37 = tail call i32 @aes_set_key(i8 noundef zeroext %34, i8* noundef %36) #16, !dbg !2924
  %38 = icmp eq i8 %4, 1, !dbg !2925
  %39 = zext i1 %38 to i8
  %40 = tail call i32 @aes_configure(i8 noundef zeroext 1, i8 noundef zeroext %39) #16, !dbg !2927
  %41 = icmp ult i32 %18, 16, !dbg !2928
  br i1 %41, label %68, label %42, !dbg !2929

42:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2890, metadata !DIExpression()), !dbg !2930
  %43 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !2931
  %44 = load i8*, i8** %43, align 4, !dbg !2931
  %45 = load i32, i32* %22, align 4, !dbg !2933
  %46 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !2934
  %47 = load i8*, i8** %46, align 4, !dbg !2934
  %48 = tail call fastcc i32 @do_aes_encrypt(i8* noundef %44, i32 noundef %45, i8* noundef %47, i32 noundef %20, i8* noundef nonnull %3) #15, !dbg !2935
  %49 = icmp eq i32 %48, 0, !dbg !2936
  br i1 %49, label %51, label %50, !dbg !2937

50:                                               ; preds = %42
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 188, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #16, !dbg !2938
  tail call void @hal_crypt_lock_give() #15, !dbg !2940
  br label %86

51:                                               ; preds = %42
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !2941
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #17, !dbg !2941
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !2893, metadata !DIExpression()), !dbg !2942
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %52, i8 0, i32 16, i1 false), !dbg !2942
  %53 = load i8*, i8** %46, align 4, !dbg !2943
  %54 = getelementptr inbounds i8, i8* %53, i32 %20, !dbg !2944
  %55 = call i8* @memcpy(i8* noundef nonnull %52, i8* noundef %54, i32 noundef %19) #16, !dbg !2945
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 %19, !dbg !2946
  %57 = call i8* @memset(i8* noundef nonnull %56, i32 noundef %21, i32 noundef %21) #16, !dbg !2947
  %58 = load i8*, i8** %43, align 4, !dbg !2930
  %59 = getelementptr inbounds i8, i8* %58, i32 %20, !dbg !2948
  %60 = getelementptr inbounds i8, i8* %59, i32 -16, !dbg !2948
  %61 = select i1 %38, i8* %60, i8* %3, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %61, metadata !2889, metadata !DIExpression()), !dbg !2898
  %62 = getelementptr inbounds i8, i8* %58, i32 %20, !dbg !2949
  %63 = load i32, i32* %22, align 4, !dbg !2951
  %64 = call fastcc i32 @do_aes_encrypt(i8* noundef %62, i32 noundef %63, i8* noundef nonnull %52, i32 noundef 16, i8* noundef nonnull %61) #15, !dbg !2952
  %65 = icmp eq i32 %64, 0, !dbg !2953
  br i1 %65, label %66, label %67, !dbg !2954

66:                                               ; preds = %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #17, !dbg !2955
  br label %83

67:                                               ; preds = %51
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 210, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #16, !dbg !2956
  call void @hal_crypt_lock_give() #15, !dbg !2958
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #17, !dbg !2955
  br label %86

68:                                               ; preds = %27
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !2959
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #17, !dbg !2959
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !2896, metadata !DIExpression()), !dbg !2960
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %69, i8 0, i32 16, i1 false), !dbg !2960
  %70 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !2961
  %71 = load i8*, i8** %70, align 4, !dbg !2961
  %72 = load i32, i32* %17, align 4, !dbg !2962
  %73 = call i8* @memcpy(i8* noundef nonnull %69, i8* noundef %71, i32 noundef %72) #16, !dbg !2963
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 %19, !dbg !2964
  %75 = call i8* @memset(i8* noundef nonnull %74, i32 noundef %21, i32 noundef %21) #16, !dbg !2965
  %76 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !2966
  %77 = load i8*, i8** %76, align 4, !dbg !2966
  %78 = load i32, i32* %22, align 4, !dbg !2968
  %79 = call fastcc i32 @do_aes_encrypt(i8* noundef %77, i32 noundef %78, i8* noundef nonnull %69, i32 noundef 16, i8* noundef nonnull %3) #15, !dbg !2969
  %80 = icmp eq i32 %79, 0, !dbg !2970
  br i1 %80, label %82, label %81, !dbg !2971

81:                                               ; preds = %68
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 223, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #16, !dbg !2972
  call void @hal_crypt_lock_give() #15, !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #17, !dbg !2975
  br label %86

82:                                               ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #17, !dbg !2975
  br label %83

83:                                               ; preds = %66, %82
  %84 = add i32 %18, 16, !dbg !2976
  %85 = and i32 %84, -16, !dbg !2976
  store i32 %85, i32* %22, align 4, !dbg !2977
  call void @hal_crypt_lock_give() #15, !dbg !2978
  br label %86, !dbg !2979

86:                                               ; preds = %67, %50, %81, %26, %83, %15
  %87 = phi i32 [ -1, %15 ], [ -1, %26 ], [ 0, %83 ], [ -1, %67 ], [ -1, %81 ], [ -1, %50 ], !dbg !2898
  ret i32 %87, !dbg !2980
}

; Function Attrs: noinline nounwind optsize
define internal void @aes_operation_done(i32 noundef %0) #3 !dbg !2981 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2983, metadata !DIExpression()), !dbg !2984
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 6) #16, !dbg !2985
  %3 = tail call i32 @hal_nvic_clear_pending_irq(i32 noundef 6) #16, !dbg !2986
  store volatile i8 1, i8* @g_aes_op_done, align 1, !dbg !2987
  %4 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !2988
  ret void, !dbg !2989
}

; Function Attrs: optsize
declare dso_local i32 @aes_set_key(i8 noundef zeroext, i8* noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i32 @aes_configure(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_aes_encrypt(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4) unnamed_addr #3 !dbg !2990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 %1, metadata !2995, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8* %2, metadata !2996, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 %3, metadata !2997, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i8* %4, metadata !2998, metadata !DIExpression()), !dbg !3001
  store volatile i8 0, i8* @g_aes_op_done, align 1, !dbg !3002
  %6 = trunc i32 %1 to i16, !dbg !3003
  %7 = trunc i32 %3 to i16, !dbg !3004
  %8 = tail call i32 @aes_operate(i8* noundef %0, i16 noundef zeroext %6, i8* noundef %2, i16 noundef zeroext %7, i8* noundef %4, i8 noundef zeroext 1) #16, !dbg !3005
  call void @llvm.dbg.value(metadata i32 %8, metadata !2999, metadata !DIExpression()), !dbg !3001
  %9 = icmp slt i32 %8, 0, !dbg !3006
  br i1 %9, label %10, label %11, !dbg !3008

10:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_encrypt, i32 0, i32 0), i32 noundef 100, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #16, !dbg !3009
  br label %19, !dbg !3011

11:                                               ; preds = %5, %15
  %12 = phi i32 [ %16, %15 ], [ 0, %5 ], !dbg !3001
  call void @llvm.dbg.value(metadata i32 %12, metadata !3000, metadata !DIExpression()), !dbg !3001
  %13 = load volatile i8, i8* @g_aes_op_done, align 1, !dbg !3012, !range !2862
  %14 = icmp eq i8 %13, 0, !dbg !3012
  br i1 %14, label %15, label %19, !dbg !3013

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %12, 1, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %16, metadata !3000, metadata !DIExpression()), !dbg !3001
  %17 = icmp eq i32 %16, 268435457, !dbg !3016
  br i1 %17, label %18, label %11, !dbg !3018, !llvm.loop !3019

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_encrypt, i32 0, i32 0), i32 noundef 108, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #16, !dbg !3021
  br label %19, !dbg !3023

19:                                               ; preds = %11, %18, %10
  %20 = phi i32 [ -1, %10 ], [ -1, %18 ], [ 0, %11 ], !dbg !3001
  ret i32 %20, !dbg !3024
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: optsize
declare dso_local i8* @memcpy(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i8* @memset(i8* noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i32 @aes_operate(i8* noundef, i16 noundef zeroext, i8* noundef, i16 noundef zeroext, i8* noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 !dbg !3025 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3027, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3028, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3029, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8* %3, metadata !3030, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i8 %4, metadata !3031, metadata !DIExpression()), !dbg !3033
  %6 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !3034
  %7 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %8 = or i1 %6, %7, !dbg !3036
  %9 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %10 = or i1 %8, %9, !dbg !3036
  %11 = icmp eq i8* %3, null
  %12 = or i1 %10, %11, !dbg !3036
  br i1 %12, label %13, label %14, !dbg !3036

13:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #16, !dbg !3037
  br label %57, !dbg !3039

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3040
  %16 = load i32, i32* %15, align 4, !dbg !3040
  %17 = and i32 %16, 15, !dbg !3042
  %18 = icmp eq i32 %17, 0, !dbg !3043
  br i1 %18, label %20, label %19, !dbg !3044

19:                                               ; preds = %14
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 250, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i32 noundef %16) #16, !dbg !3045
  br label %57, !dbg !3047

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3048
  %22 = load i32, i32* %21, align 4, !dbg !3048
  %23 = add i32 %16, -16, !dbg !3050
  %24 = icmp ult i32 %22, %23, !dbg !3051
  br i1 %24, label %25, label %26, !dbg !3052

25:                                               ; preds = %20
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 255, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i32 0, i32 0), i32 noundef %16, i32 noundef %16) #16, !dbg !3053
  br label %57, !dbg !3055

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !3056
  %28 = load i32, i32* %27, align 4, !dbg !3056
  switch i32 %28, label %29 [
    i32 16, label %30
    i32 24, label %30
    i32 32, label %30
  ], !dbg !3058

29:                                               ; preds = %26
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 261, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i32 noundef %28) #16, !dbg !3059
  br label %57, !dbg !3061

30:                                               ; preds = %26, %26, %26
  %31 = tail call i32 @hal_crypt_lock_take() #15, !dbg !3062
  %32 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @aes_operation_done) #16, !dbg !3063
  %33 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #16, !dbg !3064
  %34 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !3065
  %35 = load i32, i32* %27, align 4, !dbg !3066
  %36 = trunc i32 %35 to i8, !dbg !3067
  %37 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !3068
  %38 = load i8*, i8** %37, align 4, !dbg !3068
  %39 = tail call i32 @aes_set_key(i8 noundef zeroext %36, i8* noundef %38) #16, !dbg !3069
  %40 = icmp eq i8 %4, 1, !dbg !3070
  %41 = zext i1 %40 to i8
  %42 = tail call i32 @aes_configure(i8 noundef zeroext 1, i8 noundef zeroext %41) #16, !dbg !3072
  %43 = tail call fastcc i32 @do_aes_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %0, %struct.hal_aes_buffer_t* noundef nonnull %1, i8* noundef nonnull %3) #15, !dbg !3073
  %44 = icmp eq i32 %43, 0, !dbg !3075
  br i1 %44, label %46, label %45, !dbg !3076

45:                                               ; preds = %30
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 280, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #16, !dbg !3077
  tail call void @hal_crypt_lock_give() #15, !dbg !3079
  br label %57, !dbg !3080

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3081
  %48 = load i8*, i8** %47, align 4, !dbg !3081
  %49 = load i32, i32* %15, align 4, !dbg !3082
  %50 = add i32 %49, -1, !dbg !3083
  %51 = getelementptr inbounds i8, i8* %48, i32 %50, !dbg !3084
  %52 = load i8, i8* %51, align 1, !dbg !3084
  call void @llvm.dbg.value(metadata i8 %52, metadata !3032, metadata !DIExpression()), !dbg !3033
  %53 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), !dbg !3085
  tail call void (i8*, i32, i8*, i8*, i32, ...) @log_hal_dump_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 286, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* noundef %48, i32 noundef %49, i8* noundef %53) #16, !dbg !3085
  %54 = load i32, i32* %15, align 4, !dbg !3086
  %55 = zext i8 %52 to i32, !dbg !3087
  %56 = sub i32 %54, %55, !dbg !3088
  store i32 %56, i32* %21, align 4, !dbg !3089
  tail call void @hal_crypt_lock_give() #15, !dbg !3090
  br label %57

57:                                               ; preds = %46, %45, %29, %25, %19, %13
  %58 = phi i32 [ -1, %13 ], [ -1, %19 ], [ -1, %25 ], [ -1, %29 ], [ -1, %45 ], [ 0, %46 ], !dbg !3033
  ret i32 %58, !dbg !3091
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_aes_decrypt(%struct.hal_aes_buffer_t* nocapture noundef readonly %0, %struct.hal_aes_buffer_t* nocapture noundef readonly %1, i8* noundef %2) unnamed_addr #3 !dbg !3092 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3096, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3097, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8* %2, metadata !3098, metadata !DIExpression()), !dbg !3101
  store volatile i8 0, i8* @g_aes_op_done, align 1, !dbg !3102
  %4 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3103
  %5 = load i8*, i8** %4, align 4, !dbg !3103
  %6 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3104
  %7 = load i32, i32* %6, align 4, !dbg !3104
  %8 = trunc i32 %7 to i16, !dbg !3105
  %9 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3106
  %10 = load i8*, i8** %9, align 4, !dbg !3106
  %11 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3107
  %12 = load i32, i32* %11, align 4, !dbg !3107
  %13 = trunc i32 %12 to i16, !dbg !3108
  %14 = tail call i32 @aes_operate(i8* noundef %5, i16 noundef zeroext %8, i8* noundef %10, i16 noundef zeroext %13, i8* noundef %2, i8 noundef zeroext 0) #16, !dbg !3109
  call void @llvm.dbg.value(metadata i32 %14, metadata !3099, metadata !DIExpression()), !dbg !3101
  %15 = icmp slt i32 %14, 0, !dbg !3110
  br i1 %15, label %16, label %17, !dbg !3112

16:                                               ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_decrypt, i32 0, i32 0), i32 noundef 128, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #16, !dbg !3113
  br label %25, !dbg !3115

17:                                               ; preds = %3, %21
  %18 = phi i32 [ %22, %21 ], [ 0, %3 ], !dbg !3101
  call void @llvm.dbg.value(metadata i32 %18, metadata !3100, metadata !DIExpression()), !dbg !3101
  %19 = load volatile i8, i8* @g_aes_op_done, align 1, !dbg !3116, !range !2862
  %20 = icmp eq i8 %19, 0, !dbg !3116
  br i1 %20, label %21, label %25, !dbg !3117

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %18, 1, !dbg !3118
  call void @llvm.dbg.value(metadata i32 %22, metadata !3100, metadata !DIExpression()), !dbg !3101
  %23 = icmp eq i32 %22, 268435457, !dbg !3120
  br i1 %23, label %24, label %17, !dbg !3122, !llvm.loop !3123

24:                                               ; preds = %21
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_decrypt, i32 0, i32 0), i32 noundef 136, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #16, !dbg !3125
  br label %25, !dbg !3127

25:                                               ; preds = %17, %24, %16
  %26 = phi i32 [ -1, %16 ], [ -1, %24 ], [ 0, %17 ], !dbg !3101
  ret i32 %26, !dbg !3128
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_cbc_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #3 !dbg !3129 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3133, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3134, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3135, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i8* %3, metadata !3136, metadata !DIExpression()), !dbg !3137
  %5 = tail call i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #15, !dbg !3138
  ret i32 %5, !dbg !3139
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_cbc_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #3 !dbg !3140 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3142, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3143, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3144, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8* %3, metadata !3145, metadata !DIExpression()), !dbg !3146
  %5 = tail call i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #15, !dbg !3147
  ret i32 %5, !dbg !3148
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_ecb_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #3 !dbg !3149 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3153, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3154, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3155, metadata !DIExpression()), !dbg !3157
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !3158
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #17, !dbg !3158
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3156, metadata !DIExpression()), !dbg !3159
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !dbg !3159
  %6 = call i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #15, !dbg !3160
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #17, !dbg !3161
  ret i32 %6, !dbg !3162
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_ecb_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #3 !dbg !3163 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3165, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3166, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3167, metadata !DIExpression()), !dbg !3169
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #17, !dbg !3170
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !dbg !3171
  %6 = call i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #15, !dbg !3172
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #17, !dbg !3173
  ret i32 %6, !dbg !3174
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3175 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3183
  call void @llvm.dbg.value(metadata i32 %1, metadata !3182, metadata !DIExpression()), !dbg !3184
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3185, !range !2862
  %3 = icmp eq i8 %2, 0, !dbg !3185
  br i1 %3, label %5, label %4, !dbg !3187

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3188
  br label %15, !dbg !3190

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3191
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3193
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #15, !dbg !3194
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3195
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3196
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3197
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3198
  call void @llvm.dbg.value(metadata i32 0, metadata !3180, metadata !DIExpression()), !dbg !3184
  br label %7, !dbg !3199

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3180, metadata !DIExpression()), !dbg !3184
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3201
  store volatile i32 0, i32* %9, align 4, !dbg !3204
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3205
  store volatile i32 0, i32* %10, align 4, !dbg !3206
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3207
  store i32 0, i32* %11, align 4, !dbg !3208
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3209
  store i32 0, i32* %12, align 4, !dbg !3210
  %13 = add nuw nsw i32 %8, 1, !dbg !3211
  call void @llvm.dbg.value(metadata i32 %13, metadata !3180, metadata !DIExpression()), !dbg !3184
  %14 = icmp eq i32 %13, 16, !dbg !3212
  br i1 %14, label %15, label %7, !dbg !3199, !llvm.loop !3213

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3184
  ret i32 %16, !dbg !3215
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3216 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3219
  call void @llvm.dbg.value(metadata i32 %1, metadata !3218, metadata !DIExpression()), !dbg !3220
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3221
  %3 = and i32 %2, -31, !dbg !3221
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3221
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3222
  %5 = or i32 %4, 19, !dbg !3222
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3222
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3223
  %7 = and i32 %6, -31, !dbg !3223
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3223
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3224
  %9 = or i32 %8, 3, !dbg !3224
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3224
  tail call void asm sideeffect "isb", ""() #17, !dbg !3225, !srcloc !3229
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3230
  ret i32 0, !dbg !3231
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3232 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #15, !dbg !3235
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3236
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3237
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3238
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3239
  call void @llvm.dbg.value(metadata i32 0, metadata !3234, metadata !DIExpression()), !dbg !3240
  br label %2, !dbg !3241

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3234, metadata !DIExpression()), !dbg !3240
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3243
  store volatile i32 0, i32* %4, align 4, !dbg !3246
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3247
  store volatile i32 0, i32* %5, align 4, !dbg !3248
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3249
  store i32 0, i32* %6, align 4, !dbg !3250
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3251
  store i32 0, i32* %7, align 4, !dbg !3252
  %8 = add nuw nsw i32 %3, 1, !dbg !3253
  call void @llvm.dbg.value(metadata i32 %8, metadata !3234, metadata !DIExpression()), !dbg !3240
  %9 = icmp eq i32 %8, 16, !dbg !3254
  br i1 %9, label %10, label %2, !dbg !3241, !llvm.loop !3255

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3257
  ret i32 0, !dbg !3258
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #0 !dbg !3259 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3260
  %2 = and i32 %1, 768, !dbg !3262
  %3 = icmp eq i32 %2, 0, !dbg !3262
  br i1 %3, label %8, label %4, !dbg !3263

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3264
  %6 = or i32 %5, 13, !dbg !3264
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3264
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3265
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3266
  br label %8, !dbg !3267

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3268
  ret i32 %9, !dbg !3269
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3270 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3273
  call void @llvm.dbg.value(metadata i32 %1, metadata !3272, metadata !DIExpression()), !dbg !3274
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3275
  %3 = and i32 %2, 1, !dbg !3277
  %4 = icmp eq i32 %3, 0, !dbg !3277
  br i1 %4, label %7, label %5, !dbg !3278

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #15, !dbg !3279
  br label %7, !dbg !3281

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3282
  %9 = and i32 %8, -2, !dbg !3282
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3282
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3283
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3284
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3285
  ret i32 0, !dbg !3286
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !3287 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3291, metadata !DIExpression()), !dbg !3292
  %2 = icmp ugt i32 %0, 15, !dbg !3293
  br i1 %2, label %13, label %3, !dbg !3295

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3296
  %5 = load volatile i32, i32* %4, align 4, !dbg !3296
  %6 = and i32 %5, 256, !dbg !3298
  %7 = icmp eq i32 %6, 0, !dbg !3298
  br i1 %7, label %13, label %8, !dbg !3299

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3300
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3302
  %11 = or i32 %10, %9, !dbg !3302
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3302
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3303
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3304
  br label %13, !dbg !3305

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3292
  ret i32 %14, !dbg !3306
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !3307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3309, metadata !DIExpression()), !dbg !3310
  %2 = icmp ugt i32 %0, 15, !dbg !3311
  br i1 %2, label %11, label %3, !dbg !3313

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3314
  %5 = xor i32 %4, -1, !dbg !3315
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3316
  %7 = and i32 %6, %5, !dbg !3316
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3316
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3317
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3318
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3319
  store i32 0, i32* %9, align 4, !dbg !3320
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3321
  store i32 0, i32* %10, align 4, !dbg !3322
  br label %11, !dbg !3323

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3310
  ret i32 %12, !dbg !3324
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #0 !dbg !3325 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()), !dbg !3331
  %2 = icmp ugt i32 %0, 3, !dbg !3332
  br i1 %2, label %13, label %3, !dbg !3334

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3335
  %5 = and i32 %4, -769, !dbg !3335
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3335
  %6 = shl nuw nsw i32 %0, 8, !dbg !3336
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3337
  %8 = or i32 %7, %6, !dbg !3337
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3337
  %9 = icmp eq i32 %0, 0, !dbg !3338
  br i1 %9, label %10, label %11, !dbg !3340

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3341
  br label %11, !dbg !3343

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3344
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3345
  br label %13, !dbg !3346

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3331
  ret i32 %14, !dbg !3347
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #3 !dbg !3348 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3359, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3360, metadata !DIExpression()), !dbg !3361
  %3 = icmp ugt i32 %0, 15, !dbg !3362
  br i1 %3, label %30, label %4, !dbg !3364

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !3365
  br i1 %5, label %30, label %6, !dbg !3367

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3368
  %8 = load i32, i32* %7, align 4, !dbg !3368
  %9 = and i32 %8, 4095, !dbg !3370
  %10 = icmp eq i32 %9, 0, !dbg !3370
  br i1 %10, label %12, label %11, !dbg !3371

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i32 0, i32 0)) #18, !dbg !3372
  unreachable, !dbg !3372

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3374
  %14 = load i32, i32* %13, align 4, !dbg !3374
  %15 = and i32 %14, 4095, !dbg !3376
  %16 = icmp eq i32 %15, 0, !dbg !3376
  br i1 %16, label %18, label %17, !dbg !3377

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i32 0, i32 0)) #18, !dbg !3378
  unreachable, !dbg !3378

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3380
  store volatile i32 %8, i32* %19, align 4, !dbg !3381
  %20 = load i32, i32* %7, align 4, !dbg !3382
  %21 = load i32, i32* %13, align 4, !dbg !3383
  %22 = add i32 %21, %20, !dbg !3384
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3385
  store volatile i32 %22, i32* %23, align 4, !dbg !3386
  %24 = load volatile i32, i32* %19, align 4, !dbg !3387
  %25 = or i32 %24, 256, !dbg !3387
  store volatile i32 %25, i32* %19, align 4, !dbg !3387
  %26 = load volatile i32, i32* %19, align 4, !dbg !3388
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3389
  store i32 %26, i32* %27, align 4, !dbg !3390
  %28 = load volatile i32, i32* %23, align 4, !dbg !3391
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3392
  store i32 %28, i32* %29, align 4, !dbg !3393
  br label %30, !dbg !3394

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3361
  ret i32 %31, !dbg !3395
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3396 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3400, metadata !DIExpression()), !dbg !3402
  %2 = and i32 %0, 31, !dbg !3403
  %3 = icmp eq i32 %2, 0, !dbg !3403
  br i1 %3, label %4, label %9, !dbg !3405

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %5, metadata !3401, metadata !DIExpression()), !dbg !3402
  %6 = and i32 %0, -32, !dbg !3407
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3408
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3409
  %8 = or i32 %7, 5, !dbg !3409
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3409
  tail call void asm sideeffect "isb", ""() #17, !dbg !3410, !srcloc !3229
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !3412
  br label %9, !dbg !3413

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3402
  ret i32 %10, !dbg !3414
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3415 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3419, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i32 %1, metadata !3420, metadata !DIExpression()), !dbg !3423
  %3 = add i32 %1, %0, !dbg !3424
  call void @llvm.dbg.value(metadata i32 %3, metadata !3422, metadata !DIExpression()), !dbg !3423
  %4 = or i32 %1, %0, !dbg !3425
  %5 = and i32 %4, 31, !dbg !3425
  %6 = icmp eq i32 %5, 0, !dbg !3425
  br i1 %6, label %7, label %16, !dbg !3425

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3427
  call void @llvm.dbg.value(metadata i32 %8, metadata !3421, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.value(metadata i32 %0, metadata !3419, metadata !DIExpression()), !dbg !3423
  %9 = icmp ugt i32 %3, %0, !dbg !3428
  br i1 %9, label %10, label %15, !dbg !3429

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3419, metadata !DIExpression()), !dbg !3423
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #15, !dbg !3430
  %13 = add i32 %11, 32, !dbg !3432
  call void @llvm.dbg.value(metadata i32 %13, metadata !3419, metadata !DIExpression()), !dbg !3423
  %14 = icmp ult i32 %13, %3, !dbg !3428
  br i1 %14, label %10, label %15, !dbg !3429, !llvm.loop !3433

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #17, !dbg !3435, !srcloc !3229
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !3437
  br label %16, !dbg !3438

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3423
  ret i32 %17, !dbg !3439
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3440 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3442, metadata !DIExpression()), !dbg !3444
  %2 = and i32 %0, 31, !dbg !3445
  %3 = icmp eq i32 %2, 0, !dbg !3445
  br i1 %3, label %4, label %9, !dbg !3447

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3448
  call void @llvm.dbg.value(metadata i32 %5, metadata !3443, metadata !DIExpression()), !dbg !3444
  %6 = and i32 %0, -32, !dbg !3449
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3450
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3451
  %8 = or i32 %7, 21, !dbg !3451
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3451
  tail call void asm sideeffect "isb", ""() #17, !dbg !3452, !srcloc !3229
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !3454
  br label %9, !dbg !3455

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3444
  ret i32 %10, !dbg !3456
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3457 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %1, metadata !3460, metadata !DIExpression()), !dbg !3463
  %3 = add i32 %1, %0, !dbg !3464
  call void @llvm.dbg.value(metadata i32 %3, metadata !3462, metadata !DIExpression()), !dbg !3463
  %4 = or i32 %1, %0, !dbg !3465
  %5 = and i32 %4, 31, !dbg !3465
  %6 = icmp eq i32 %5, 0, !dbg !3465
  br i1 %6, label %7, label %16, !dbg !3465

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3467
  call void @llvm.dbg.value(metadata i32 %8, metadata !3461, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %0, metadata !3459, metadata !DIExpression()), !dbg !3463
  %9 = icmp ugt i32 %3, %0, !dbg !3468
  br i1 %9, label %10, label %15, !dbg !3469

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3459, metadata !DIExpression()), !dbg !3463
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #15, !dbg !3470
  %13 = add i32 %11, 32, !dbg !3472
  call void @llvm.dbg.value(metadata i32 %13, metadata !3459, metadata !DIExpression()), !dbg !3463
  %14 = icmp ult i32 %13, %3, !dbg !3468
  br i1 %14, label %10, label %15, !dbg !3469, !llvm.loop !3473

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #17, !dbg !3475, !srcloc !3229
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !3477
  br label %16, !dbg !3478

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3463
  ret i32 %17, !dbg !3479
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3480 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3483
  call void @llvm.dbg.value(metadata i32 %1, metadata !3482, metadata !DIExpression()), !dbg !3484
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3485
  %3 = and i32 %2, -31, !dbg !3485
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3485
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3486
  %5 = or i32 %4, 19, !dbg !3486
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3486
  tail call void asm sideeffect "isb", ""() #17, !dbg !3487, !srcloc !3229
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3489
  ret i32 0, !dbg !3490
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #0 !dbg !3491 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3495, metadata !DIExpression()), !dbg !3497
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3498
  %3 = and i32 %2, 8, !dbg !3500
  %4 = icmp eq i32 %3, 0, !dbg !3500
  br i1 %4, label %23, label %5, !dbg !3501

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3496, metadata !DIExpression()), !dbg !3497
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3502
  %8 = shl nuw nsw i32 1, %6, !dbg !3507
  %9 = and i32 %7, %8, !dbg !3508
  %10 = icmp eq i32 %9, 0, !dbg !3508
  br i1 %10, label %20, label %11, !dbg !3509

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3510
  %13 = load volatile i32, i32* %12, align 4, !dbg !3510
  %14 = and i32 %13, -257, !dbg !3513
  %15 = icmp ugt i32 %14, %0, !dbg !3514
  br i1 %15, label %20, label %16, !dbg !3515

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3516
  %18 = load volatile i32, i32* %17, align 4, !dbg !3516
  %19 = icmp ugt i32 %18, %0, !dbg !3517
  br i1 %19, label %23, label %20, !dbg !3518

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3519
  call void @llvm.dbg.value(metadata i32 %21, metadata !3496, metadata !DIExpression()), !dbg !3497
  %22 = icmp eq i32 %21, 16, !dbg !3520
  br i1 %22, label %23, label %5, !dbg !3521, !llvm.loop !3522

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3497
  ret i1 %24, !dbg !3524
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !3525 {
  ret i32 0, !dbg !3529
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3530 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3534, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i32 -1, metadata !3535, metadata !DIExpression()), !dbg !3536
  %2 = icmp ugt i32 %0, 95, !dbg !3537
  br i1 %2, label %4, label %3, !dbg !3537

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #15, !dbg !3539
  call void @llvm.dbg.value(metadata i32 0, metadata !3535, metadata !DIExpression()), !dbg !3536
  br label %4, !dbg !3541

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3536
  ret i32 %5, !dbg !3542
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3543 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3547, metadata !DIExpression()), !dbg !3548
  %2 = and i32 %0, 31, !dbg !3549
  %3 = shl nuw i32 1, %2, !dbg !3550
  %4 = lshr i32 %0, 5, !dbg !3551
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3552
  store volatile i32 %3, i32* %5, align 4, !dbg !3553
  ret void, !dbg !3554
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3555 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3557, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32 -1, metadata !3558, metadata !DIExpression()), !dbg !3559
  %2 = icmp ugt i32 %0, 95, !dbg !3560
  br i1 %2, label %4, label %3, !dbg !3560

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #15, !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3558, metadata !DIExpression()), !dbg !3559
  br label %4, !dbg !3564

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3559
  ret i32 %5, !dbg !3565
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3566 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3568, metadata !DIExpression()), !dbg !3569
  %2 = and i32 %0, 31, !dbg !3570
  %3 = shl nuw i32 1, %2, !dbg !3571
  %4 = lshr i32 %0, 5, !dbg !3572
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3573
  store volatile i32 %3, i32* %5, align 4, !dbg !3574
  ret void, !dbg !3575
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3576 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3580, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i32 255, metadata !3581, metadata !DIExpression()), !dbg !3582
  %2 = icmp ugt i32 %0, 95, !dbg !3583
  br i1 %2, label %5, label %3, !dbg !3583

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #15, !dbg !3585
  call void @llvm.dbg.value(metadata i32 %4, metadata !3581, metadata !DIExpression()), !dbg !3582
  br label %5, !dbg !3587

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3582
  ret i32 %6, !dbg !3588
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3593, metadata !DIExpression()), !dbg !3594
  %2 = lshr i32 %0, 5, !dbg !3595
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3596
  %4 = load volatile i32, i32* %3, align 4, !dbg !3596
  %5 = and i32 %0, 31, !dbg !3597
  %6 = lshr i32 %4, %5, !dbg !3598
  %7 = and i32 %6, 1, !dbg !3598
  ret i32 %7, !dbg !3599
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3600 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3602, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 -1, metadata !3603, metadata !DIExpression()), !dbg !3604
  %2 = icmp ugt i32 %0, 95, !dbg !3605
  br i1 %2, label %4, label %3, !dbg !3605

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #15, !dbg !3607
  call void @llvm.dbg.value(metadata i32 0, metadata !3603, metadata !DIExpression()), !dbg !3604
  br label %4, !dbg !3609

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3604
  ret i32 %5, !dbg !3610
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3611 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3613, metadata !DIExpression()), !dbg !3614
  %2 = and i32 %0, 31, !dbg !3615
  %3 = shl nuw i32 1, %2, !dbg !3616
  %4 = lshr i32 %0, 5, !dbg !3617
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3618
  store volatile i32 %3, i32* %5, align 4, !dbg !3619
  ret void, !dbg !3620
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3621 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3623, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 -1, metadata !3624, metadata !DIExpression()), !dbg !3625
  %2 = icmp ugt i32 %0, 95, !dbg !3626
  br i1 %2, label %4, label %3, !dbg !3626

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #15, !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3624, metadata !DIExpression()), !dbg !3625
  br label %4, !dbg !3630

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3625
  ret i32 %5, !dbg !3631
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3632 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3634, metadata !DIExpression()), !dbg !3635
  %2 = and i32 %0, 31, !dbg !3636
  %3 = shl nuw i32 1, %2, !dbg !3637
  %4 = lshr i32 %0, 5, !dbg !3638
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3639
  store volatile i32 %3, i32* %5, align 4, !dbg !3640
  ret void, !dbg !3641
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3642 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3646, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i32 %1, metadata !3647, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i32 -1, metadata !3648, metadata !DIExpression()), !dbg !3649
  %3 = icmp ugt i32 %0, 95, !dbg !3650
  br i1 %3, label %5, label %4, !dbg !3650

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #15, !dbg !3652
  call void @llvm.dbg.value(metadata i32 0, metadata !3648, metadata !DIExpression()), !dbg !3649
  br label %5, !dbg !3654

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3649
  ret i32 %6, !dbg !3655
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3656 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3660, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i32 %1, metadata !3661, metadata !DIExpression()), !dbg !3662
  %3 = trunc i32 %1 to i8, !dbg !3663
  %4 = shl i8 %3, 5, !dbg !3663
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3666
  store volatile i8 %4, i8* %5, align 1, !dbg !3667
  ret void, !dbg !3668
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3669 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 68, metadata !3672, metadata !DIExpression()), !dbg !3673
  %2 = icmp ugt i32 %0, 95, !dbg !3674
  br i1 %2, label %5, label %3, !dbg !3674

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #15, !dbg !3676
  call void @llvm.dbg.value(metadata i32 %4, metadata !3672, metadata !DIExpression()), !dbg !3673
  br label %5, !dbg !3678

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3673
  ret i32 %6, !dbg !3679
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !3680 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3682, metadata !DIExpression()), !dbg !3683
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3684
  %3 = load volatile i8, i8* %2, align 1, !dbg !3684
  %4 = lshr i8 %3, 5, !dbg !3687
  %5 = zext i8 %4 to i32, !dbg !3687
  ret i32 %5, !dbg !3688
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !3689 {
  ret void, !dbg !3690
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !3691 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !3693, metadata !DIExpression()), !dbg !3695
  %1 = tail call fastcc i32 @get_current_irq() #15, !dbg !3696
  call void @llvm.dbg.value(metadata i32 %1, metadata !3694, metadata !DIExpression()), !dbg !3695
  %2 = icmp ugt i32 %1, 95, !dbg !3697
  br i1 %2, label %12, label %3, !dbg !3697

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !3699
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !3699
  %6 = icmp eq void (i32)* %5, null, !dbg !3701
  br i1 %6, label %7, label %8, !dbg !3702

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !3693, metadata !DIExpression()), !dbg !3695
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0)) #16, !dbg !3703
  br label %12, !dbg !3705

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #15, !dbg !3706
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !3708
  store i32 %9, i32* %10, align 4, !dbg !3709
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !3710
  tail call void %11(i32 noundef %1) #16, !dbg !3711
  call void @llvm.dbg.value(metadata i32 0, metadata !3693, metadata !DIExpression()), !dbg !3695
  br label %12, !dbg !3712

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !3695
  ret i32 %13, !dbg !3713
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !3714 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3717
  %2 = and i32 %1, 511, !dbg !3718
  call void @llvm.dbg.value(metadata i32 %2, metadata !3716, metadata !DIExpression()), !dbg !3719
  %3 = add nsw i32 %2, -16, !dbg !3720
  ret i32 %3, !dbg !3721
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !3722 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !3723
  %2 = lshr i32 %1, 22, !dbg !3724
  %3 = and i32 %2, 1, !dbg !3724
  ret i32 %3, !dbg !3725
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !3726 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3731, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !3732, metadata !DIExpression()), !dbg !3734
  %3 = icmp ugt i32 %0, 95, !dbg !3735
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !3735
  br i1 %5, label %10, label %6, !dbg !3735

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3737
  call void @llvm.dbg.value(metadata i32 %7, metadata !3733, metadata !DIExpression()), !dbg !3734
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #15, !dbg !3738
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !3739
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !3740
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !3741
  store i32 0, i32* %9, align 4, !dbg !3742
  tail call void @restore_interrupt_mask(i32 noundef %7) #16, !dbg !3743
  br label %10, !dbg !3744

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !3734
  ret i32 %11, !dbg !3745
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !3746 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3750, metadata !DIExpression()), !dbg !3751
  %2 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3752
  store i32 %2, i32* %0, align 4, !dbg !3753
  ret i32 0, !dbg !3754
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !3755 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3759, metadata !DIExpression()), !dbg !3760
  tail call void @restore_interrupt_mask(i32 noundef %0) #16, !dbg !3761
  ret i32 0, !dbg !3762
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !3763 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3769, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata i8 %1, metadata !3770, metadata !DIExpression()), !dbg !3772
  %3 = icmp ugt i32 %0, 60, !dbg !3773
  br i1 %3, label %11, label %4, !dbg !3775

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !3776
  br i1 %5, label %11, label %6, !dbg !3778

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !3779
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #16, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %8, metadata !3771, metadata !DIExpression()), !dbg !3772
  %9 = icmp slt i32 %8, 0, !dbg !3781
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3781
  br label %11, !dbg !3782

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !3772
  ret i32 %12, !dbg !3783
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !3784 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3789, metadata !DIExpression()), !dbg !3790
  ret i32 0, !dbg !3791
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !3792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()), !dbg !3795
  ret i32 0, !dbg !3796
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3797 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3802, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata i32* %1, metadata !3803, metadata !DIExpression()), !dbg !3812
  %4 = icmp eq i32* %1, null, !dbg !3813
  br i1 %4, label %12, label %5, !dbg !3815

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !3816
  br i1 %6, label %12, label %7, !dbg !3818

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3819
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !3819
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !3819
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !3819
  %10 = load i8, i8* %9, align 1, !dbg !3819
  call void @llvm.dbg.value(metadata i8 %10, metadata !3804, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !3812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !3819
  %11 = zext i8 %10 to i32, !dbg !3820
  store i32 %11, i32* %1, align 4, !dbg !3821
  br label %12, !dbg !3822

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !3812
  ret i32 %13, !dbg !3823
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3824 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3828, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.value(metadata i32 %1, metadata !3829, metadata !DIExpression()), !dbg !3831
  %3 = icmp ugt i32 %0, 60, !dbg !3832
  br i1 %3, label %9, label %4, !dbg !3834

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3835
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %6, metadata !3830, metadata !DIExpression()), !dbg !3831
  %7 = icmp slt i32 %6, 0, !dbg !3837
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3837
  br label %9, !dbg !3838

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3831
  ret i32 %10, !dbg !3839
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3840 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3842, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32* %1, metadata !3843, metadata !DIExpression()), !dbg !3845
  %4 = icmp ugt i32 %0, 60, !dbg !3846
  br i1 %4, label %12, label %5, !dbg !3848

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3849
  br i1 %6, label %12, label %7, !dbg !3851

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3852
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !3852
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !3852
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !3852
  %10 = load i8, i8* %9, align 2, !dbg !3852
  call void @llvm.dbg.value(metadata i8 %10, metadata !3844, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3845
  call void @llvm.dbg.value(metadata i8 undef, metadata !3844, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3845
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !3852
  %11 = zext i8 %10 to i32, !dbg !3853
  store i32 %11, i32* %1, align 4, !dbg !3854
  br label %12, !dbg !3855

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3845
  ret i32 %13, !dbg !3856
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3862, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i32 %1, metadata !3863, metadata !DIExpression()), !dbg !3865
  %3 = icmp ugt i32 %0, 60, !dbg !3866
  br i1 %3, label %8, label %4, !dbg !3868

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #16, !dbg !3869
  call void @llvm.dbg.value(metadata i32 %5, metadata !3864, metadata !DIExpression()), !dbg !3865
  %6 = icmp slt i32 %5, 0, !dbg !3870
  %7 = select i1 %6, i32 -3, i32 0, !dbg !3870
  br label %8, !dbg !3871

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !3865
  ret i32 %9, !dbg !3872
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !3873 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i32* %1, metadata !3879, metadata !DIExpression()), !dbg !3881
  %4 = icmp ugt i32 %0, 60, !dbg !3882
  br i1 %4, label %13, label %5, !dbg !3884

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !3885
  br i1 %6, label %13, label %7, !dbg !3887

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !3888
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !3888
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !3888
  call void @llvm.dbg.value(metadata i32 undef, metadata !3880, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3881
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !3888
  %10 = load i8, i8* %9, align 4, !dbg !3888
  call void @llvm.dbg.value(metadata i8 %10, metadata !3880, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !3881
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !3888
  %11 = icmp ne i8 %10, 0, !dbg !3889
  %12 = zext i1 %11 to i32, !dbg !3889
  store i32 %12, i32* %1, align 4, !dbg !3890
  br label %13, !dbg !3891

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !3881
  ret i32 %14, !dbg !3892
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !3893 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3895, metadata !DIExpression()), !dbg !3897
  %3 = icmp ugt i32 %0, 60, !dbg !3898
  br i1 %3, label %11, label %4, !dbg !3900

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !3901
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #17, !dbg !3901
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #16, !dbg !3901
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !3901
  %7 = load i8, i8* %6, align 2, !dbg !3901
  call void @llvm.dbg.value(metadata i8 %7, metadata !3896, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !3897
  call void @llvm.dbg.value(metadata i8 undef, metadata !3896, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !3897
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #17, !dbg !3901
  %8 = xor i8 %7, 1, !dbg !3902
  %9 = zext i8 %8 to i32, !dbg !3902
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #15, !dbg !3903
  br label %11, !dbg !3904

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !3897
  ret i32 %12, !dbg !3905
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !3906 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3908, metadata !DIExpression()), !dbg !3910
  %2 = icmp ugt i32 %0, 60, !dbg !3911
  br i1 %2, label %10, label %3, !dbg !3913

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !3914
  call void @llvm.dbg.value(metadata i32 %4, metadata !3909, metadata !DIExpression()), !dbg !3910
  %5 = icmp slt i32 %4, 0, !dbg !3915
  br i1 %5, label %10, label %6, !dbg !3917

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #16, !dbg !3918
  call void @llvm.dbg.value(metadata i32 %7, metadata !3909, metadata !DIExpression()), !dbg !3910
  %8 = icmp slt i32 %7, 0, !dbg !3919
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3919
  br label %10, !dbg !3920

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3910
  ret i32 %11, !dbg !3921
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !3922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3924, metadata !DIExpression()), !dbg !3926
  %2 = icmp ugt i32 %0, 60, !dbg !3927
  br i1 %2, label %10, label %3, !dbg !3929

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !3930
  call void @llvm.dbg.value(metadata i32 %4, metadata !3925, metadata !DIExpression()), !dbg !3926
  %5 = icmp slt i32 %4, 0, !dbg !3931
  br i1 %5, label %10, label %6, !dbg !3933

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #16, !dbg !3934
  call void @llvm.dbg.value(metadata i32 %7, metadata !3925, metadata !DIExpression()), !dbg !3926
  %8 = icmp slt i32 %7, 0, !dbg !3935
  %9 = select i1 %8, i32 -3, i32 0, !dbg !3935
  br label %10, !dbg !3936

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !3926
  ret i32 %11, !dbg !3937
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !3938 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3940, metadata !DIExpression()), !dbg !3942
  %2 = icmp ugt i32 %0, 60, !dbg !3943
  br i1 %2, label %7, label %3, !dbg !3945

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !3946
  call void @llvm.dbg.value(metadata i32 %4, metadata !3941, metadata !DIExpression()), !dbg !3942
  %5 = icmp slt i32 %4, 0, !dbg !3947
  %6 = select i1 %5, i32 -3, i32 0, !dbg !3947
  br label %7, !dbg !3948

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !3942
  ret i32 %8, !dbg !3949
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !3950 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3954, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 %1, metadata !3955, metadata !DIExpression()), !dbg !3957
  %3 = icmp ugt i32 %0, 60, !dbg !3958
  br i1 %3, label %9, label %4, !dbg !3960

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !3961
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !3962
  call void @llvm.dbg.value(metadata i32 %6, metadata !3956, metadata !DIExpression()), !dbg !3957
  %7 = icmp slt i32 %6, 0, !dbg !3963
  %8 = select i1 %7, i32 -3, i32 0, !dbg !3963
  br label %9, !dbg !3964

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !3957
  ret i32 %10, !dbg !3965
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !3966 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3971, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata i32* %1, metadata !3972, metadata !DIExpression()), !dbg !3975
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #17, !dbg !3976
  %4 = icmp ugt i32 %0, 60, !dbg !3977
  br i1 %4, label %11, label %5, !dbg !3979

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3974, metadata !DIExpression(DW_OP_deref)), !dbg !3975
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #16, !dbg !3980
  call void @llvm.dbg.value(metadata i32 %6, metadata !3973, metadata !DIExpression()), !dbg !3975
  %7 = load i8, i8* %3, align 1, !dbg !3981
  call void @llvm.dbg.value(metadata i8 %7, metadata !3974, metadata !DIExpression()), !dbg !3975
  %8 = zext i8 %7 to i32, !dbg !3982
  store i32 %8, i32* %1, align 4, !dbg !3983
  %9 = icmp slt i32 %6, 0, !dbg !3984
  %10 = select i1 %9, i32 -3, i32 0, !dbg !3984
  br label %11, !dbg !3985

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !3975
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #17, !dbg !3986
  ret i32 %12, !dbg !3986
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !3987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3993, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !3994, metadata !DIExpression()), !dbg !3995
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #15, !dbg !3996
  br i1 %3, label %4, label %18, !dbg !3998

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !3999
  %6 = load i8, i8* %5, align 4, !dbg !3999, !range !2862
  %7 = icmp eq i8 %6, 0, !dbg !3999
  br i1 %7, label %8, label %18, !dbg !4001

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #16, !dbg !4002
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4003
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4004
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4005
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #16, !dbg !4006
  store i8 1, i8* %5, align 4, !dbg !4007
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4008, !range !4009
  tail call void @uart_reset_default_value(i32 noundef %14) #16, !dbg !4010
  tail call void @halUART_HWInit(i32 noundef %14) #16, !dbg !4011
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #15, !dbg !4012
  %16 = icmp eq i32 %15, 0, !dbg !4014
  %17 = select i1 %16, i32 0, i32 -4, !dbg !3995
  br label %18, !dbg !3995

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !3995
  ret i32 %19, !dbg !4015
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #4 !dbg !4016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4022, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4023, metadata !DIExpression()), !dbg !4024
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4025
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4027
  br i1 %5, label %6, label %22, !dbg !4027

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4028
  %8 = load i32, i32* %7, align 4, !dbg !4028
  %9 = icmp ugt i32 %8, 12, !dbg !4030
  br i1 %9, label %22, label %10, !dbg !4031

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4032
  %12 = load i32, i32* %11, align 4, !dbg !4032
  %13 = icmp ugt i32 %12, 2, !dbg !4033
  br i1 %13, label %22, label %14, !dbg !4034

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4035
  %16 = load i32, i32* %15, align 4, !dbg !4035
  %17 = icmp ugt i32 %16, 1, !dbg !4036
  br i1 %17, label %22, label %18, !dbg !4037

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4038
  %20 = load i32, i32* %19, align 4, !dbg !4038
  %21 = icmp ult i32 %20, 4, !dbg !4039
  br label %22, !dbg !4040

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4024
  ret i1 %23, !dbg !4041
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !4042 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4046, metadata !DIExpression()), !dbg !4047
  %2 = icmp ne i32 %0, 0, !dbg !4048
  %3 = zext i1 %2 to i32, !dbg !4049
  ret i32 %3, !dbg !4050
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4051 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4055, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4056, metadata !DIExpression()), !dbg !4057
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #15, !dbg !4058
  br i1 %3, label %4, label %22, !dbg !4060

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4061
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4062
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4063
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #16, !dbg !4064
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4065
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4066
  %11 = load i32, i32* %10, align 4, !dbg !4066
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #15, !dbg !4067
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4068
  %14 = load i32, i32* %13, align 4, !dbg !4068
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #15, !dbg !4069
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4070
  %17 = load i32, i32* %16, align 4, !dbg !4070
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #15, !dbg !4071
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4072
  %20 = load i32, i32* %19, align 4, !dbg !4072
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #15, !dbg !4073
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #16, !dbg !4074
  br label %22, !dbg !4075

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4057
  ret i32 %23, !dbg !4076
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !4077 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4081, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4082, metadata !DIExpression()), !dbg !4087
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4088
  %3 = load i32, i32* %2, align 4, !dbg !4088
  ret i32 %3, !dbg !4089
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !4090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4094, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4095, metadata !DIExpression()), !dbg !4098
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4099
  %3 = load i16, i16* %2, align 2, !dbg !4099
  ret i16 %3, !dbg !4100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !4101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4105, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4106, metadata !DIExpression()), !dbg !4109
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4110
  %3 = load i16, i16* %2, align 2, !dbg !4110
  ret i16 %3, !dbg !4111
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !4112 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4116, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4117, metadata !DIExpression()), !dbg !4120
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4121
  %3 = load i16, i16* %2, align 2, !dbg !4121
  ret i16 %3, !dbg !4122
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !4123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4127, metadata !DIExpression()), !dbg !4128
  %2 = icmp ult i32 %0, 2, !dbg !4129
  ret i1 %2, !dbg !4130
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4135, metadata !DIExpression()), !dbg !4136
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4137
  br i1 %2, label %3, label %10, !dbg !4139

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4140
  %5 = load i8, i8* %4, align 4, !dbg !4140, !range !2862
  %6 = icmp eq i8 %5, 0, !dbg !4142
  br i1 %6, label %10, label %7, !dbg !4143

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #16, !dbg !4144
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4145, !range !4009
  tail call void @uart_query_empty(i32 noundef %9) #16, !dbg !4146
  tail call void @uart_reset_default_value(i32 noundef %9) #16, !dbg !4147
  br label %10, !dbg !4148

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4136
  ret i32 %11, !dbg !4149
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4150 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4154, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i8 %1, metadata !4155, metadata !DIExpression()), !dbg !4157
  %3 = icmp eq i32 %0, 0, !dbg !4158
  %4 = icmp eq i32 %0, 1, !dbg !4158
  %5 = select i1 %4, i32 1, i32 2, !dbg !4158
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4158
  call void @llvm.dbg.value(metadata i32 %6, metadata !4156, metadata !DIExpression()), !dbg !4157
  %7 = icmp eq i32 %6, 2, !dbg !4159
  br i1 %7, label %9, label %8, !dbg !4161

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #16, !dbg !4162
  br label %9, !dbg !4164

9:                                                ; preds = %2, %8
  ret void, !dbg !4165
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4166 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4170, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i8* %1, metadata !4171, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i32 %2, metadata !4172, metadata !DIExpression()), !dbg !4175
  %4 = icmp eq i32 %0, 0, !dbg !4176
  %5 = icmp eq i32 %0, 1, !dbg !4176
  %6 = select i1 %5, i32 1, i32 2, !dbg !4176
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4176
  call void @llvm.dbg.value(metadata i32 %7, metadata !4173, metadata !DIExpression()), !dbg !4175
  %8 = icmp eq i8* %1, null, !dbg !4177
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4179
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4179
  call void @llvm.dbg.value(metadata i32 0, metadata !4174, metadata !DIExpression()), !dbg !4175
  br i1 %12, label %19, label %13, !dbg !4179

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4174, metadata !DIExpression()), !dbg !4175
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4180
  %16 = load i8, i8* %15, align 1, !dbg !4180
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #16, !dbg !4186
  %17 = add nuw i32 %14, 1, !dbg !4187
  call void @llvm.dbg.value(metadata i32 %17, metadata !4174, metadata !DIExpression()), !dbg !4175
  %18 = icmp eq i32 %17, %2, !dbg !4188
  br i1 %18, label %19, label %13, !dbg !4189, !llvm.loop !4190

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4175
  ret i32 %20, !dbg !4192
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4193 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4195, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i8* %1, metadata !4196, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.value(metadata i32 %2, metadata !4197, metadata !DIExpression()), !dbg !4202
  %5 = bitcast i32* %4 to i8*, !dbg !4203
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4203
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4204
  br i1 %6, label %7, label %24, !dbg !4206

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4207
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4209
  br i1 %10, label %24, label %11, !dbg !4209

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4210
  %13 = load i8, i8* %12, align 4, !dbg !4210, !range !2862
  %14 = icmp eq i8 %13, 0, !dbg !4210
  br i1 %14, label %24, label %15, !dbg !4212

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4213, !range !4009
  call void @llvm.dbg.value(metadata i32* %4, metadata !4198, metadata !DIExpression(DW_OP_deref)), !dbg !4202
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !4214
  %17 = load i32, i32* %4, align 4, !dbg !4215
  call void @llvm.dbg.value(metadata i32 %17, metadata !4198, metadata !DIExpression()), !dbg !4202
  %18 = icmp ult i32 %17, %2, !dbg !4217
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4199, metadata !DIExpression()), !dbg !4202
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #16, !dbg !4218
  %20 = load i32, i32* %4, align 4, !dbg !4219
  call void @llvm.dbg.value(metadata i32 %20, metadata !4198, metadata !DIExpression()), !dbg !4202
  %21 = icmp eq i32 %19, %20, !dbg !4221
  br i1 %21, label %22, label %24, !dbg !4222

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #15, !dbg !4223, !range !4225
  call void @llvm.dbg.value(metadata i32 %23, metadata !4200, metadata !DIExpression()), !dbg !4202
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #16, !dbg !4226
  br label %24, !dbg !4227

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4228
  ret i32 %25, !dbg !4228
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !4229 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4233, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i1 %1, metadata !4234, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4236
  %3 = icmp eq i32 %0, 0, !dbg !4237
  %4 = select i1 %1, i32 15, i32 14, !dbg !4239
  %5 = select i1 %1, i32 17, i32 16, !dbg !4239
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %6, metadata !4235, metadata !DIExpression()), !dbg !4236
  ret i32 %6, !dbg !4240
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4241 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4245, metadata !DIExpression()), !dbg !4247
  %2 = icmp eq i32 %0, 0, !dbg !4248
  %3 = icmp eq i32 %0, 1, !dbg !4248
  %4 = select i1 %3, i32 1, i32 2, !dbg !4248
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4248
  call void @llvm.dbg.value(metadata i32 %5, metadata !4246, metadata !DIExpression()), !dbg !4247
  %6 = icmp ult i32 %5, 2, !dbg !4249
  br i1 %6, label %7, label %9, !dbg !4251

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #16, !dbg !4252
  br label %9, !dbg !4254

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4255
  ret i8 %10, !dbg !4256
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4257 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4261, metadata !DIExpression()), !dbg !4263
  %2 = icmp eq i32 %0, 0, !dbg !4264
  %3 = icmp eq i32 %0, 1, !dbg !4264
  %4 = select i1 %3, i32 1, i32 2, !dbg !4264
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4264
  call void @llvm.dbg.value(metadata i32 %5, metadata !4262, metadata !DIExpression()), !dbg !4263
  %6 = icmp ult i32 %5, 2, !dbg !4265
  br i1 %6, label %7, label %9, !dbg !4267

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #16, !dbg !4268
  br label %9, !dbg !4270

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4271
  ret i32 %10, !dbg !4272
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4273 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4277, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i8* %1, metadata !4278, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.value(metadata i32 %2, metadata !4279, metadata !DIExpression()), !dbg !4282
  %4 = icmp eq i32 %0, 0, !dbg !4283
  %5 = icmp eq i32 %0, 1, !dbg !4283
  %6 = select i1 %5, i32 1, i32 2, !dbg !4283
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4283
  call void @llvm.dbg.value(metadata i32 %7, metadata !4280, metadata !DIExpression()), !dbg !4282
  %8 = icmp eq i8* %1, null, !dbg !4284
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4286
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4286
  call void @llvm.dbg.value(metadata i32 0, metadata !4281, metadata !DIExpression()), !dbg !4282
  br i1 %12, label %19, label %13, !dbg !4286

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4281, metadata !DIExpression()), !dbg !4282
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #16, !dbg !4287
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4293
  store i8 %15, i8* %16, align 1, !dbg !4294
  %17 = add nuw i32 %14, 1, !dbg !4295
  call void @llvm.dbg.value(metadata i32 %17, metadata !4281, metadata !DIExpression()), !dbg !4282
  %18 = icmp eq i32 %17, %2, !dbg !4296
  br i1 %18, label %19, label %13, !dbg !4297, !llvm.loop !4298

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4282
  ret i32 %20, !dbg !4300
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4301 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4303, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i8* %1, metadata !4304, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i32 %2, metadata !4305, metadata !DIExpression()), !dbg !4309
  %5 = bitcast i32* %4 to i8*, !dbg !4310
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4310
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4311
  br i1 %6, label %7, label %20, !dbg !4313

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4314
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4316
  br i1 %10, label %20, label %11, !dbg !4316

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4317, !range !4009
  call void @llvm.dbg.value(metadata i32* %4, metadata !4306, metadata !DIExpression(DW_OP_deref)), !dbg !4309
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #16, !dbg !4318
  %13 = load i32, i32* %4, align 4, !dbg !4319
  call void @llvm.dbg.value(metadata i32 %13, metadata !4306, metadata !DIExpression()), !dbg !4309
  %14 = icmp ult i32 %13, %2, !dbg !4321
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4307, metadata !DIExpression()), !dbg !4309
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #16, !dbg !4322
  %16 = load i32, i32* %4, align 4, !dbg !4323
  call void @llvm.dbg.value(metadata i32 %16, metadata !4306, metadata !DIExpression()), !dbg !4309
  %17 = icmp eq i32 %15, %16, !dbg !4325
  br i1 %17, label %18, label %20, !dbg !4326

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #15, !dbg !4327, !range !4225
  call void @llvm.dbg.value(metadata i32 %19, metadata !4308, metadata !DIExpression()), !dbg !4309
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #16, !dbg !4329
  br label %20, !dbg !4330

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4309
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4331
  ret i32 %21, !dbg !4331
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4332 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4334, metadata !DIExpression()), !dbg !4336
  %3 = bitcast i32* %2 to i8*, !dbg !4337
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17, !dbg !4337
  call void @llvm.dbg.value(metadata i32 0, metadata !4335, metadata !DIExpression()), !dbg !4336
  store i32 0, i32* %2, align 4, !dbg !4338
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4339
  br i1 %4, label %5, label %8, !dbg !4341

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4342, !range !4009
  call void @llvm.dbg.value(metadata i32* %2, metadata !4335, metadata !DIExpression(DW_OP_deref)), !dbg !4336
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #16, !dbg !4343
  %7 = load i32, i32* %2, align 4, !dbg !4344
  call void @llvm.dbg.value(metadata i32 %7, metadata !4335, metadata !DIExpression()), !dbg !4336
  br label %8, !dbg !4345

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4336
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17, !dbg !4346
  ret i32 %9, !dbg !4346
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4347 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4349, metadata !DIExpression()), !dbg !4351
  %3 = bitcast i32* %2 to i8*, !dbg !4352
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17, !dbg !4352
  call void @llvm.dbg.value(metadata i32 0, metadata !4350, metadata !DIExpression()), !dbg !4351
  store i32 0, i32* %2, align 4, !dbg !4353
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4354
  br i1 %4, label %5, label %8, !dbg !4356

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4357, !range !4009
  call void @llvm.dbg.value(metadata i32* %2, metadata !4350, metadata !DIExpression(DW_OP_deref)), !dbg !4351
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #16, !dbg !4358
  %7 = load i32, i32* %2, align 4, !dbg !4359
  call void @llvm.dbg.value(metadata i32 %7, metadata !4350, metadata !DIExpression()), !dbg !4351
  br label %8, !dbg !4360

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4351
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17, !dbg !4361
  ret i32 %9, !dbg !4361
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4362 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4366, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4367, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i8* %2, metadata !4368, metadata !DIExpression()), !dbg !4370
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4371
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4373
  br i1 %6, label %7, label %18, !dbg !4373

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4374
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4375
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4376
  store i8* %2, i8** %9, align 4, !dbg !4377
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4378
  store i8 1, i8* %10, align 4, !dbg !4379
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4380
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #15, !dbg !4381
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !4382
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !4383
  %13 = icmp eq i32 %11, 0, !dbg !4384
  br i1 %13, label %14, label %15, !dbg !4386

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #16, !dbg !4387
  br label %16, !dbg !4389

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #16, !dbg !4390
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #15, !dbg !4392, !range !4225
  call void @llvm.dbg.value(metadata i32 %17, metadata !4369, metadata !DIExpression()), !dbg !4370
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #16, !dbg !4393
  br label %18, !dbg !4394

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4370
  ret i32 %19, !dbg !4395
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !378, metadata !DIExpression()), !dbg !4396
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4397
  %3 = load void ()*, void ()** %2, align 4, !dbg !4397
  ret void ()* %3, !dbg !4398
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !4399 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4405, !range !2862
  %2 = icmp eq i8 %1, 0, !dbg !4405
  br i1 %2, label %8, label %3, !dbg !4406

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4407
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4409
  br i1 %5, label %8, label %6, !dbg !4410

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4411
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !4413
  br label %8, !dbg !4414

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #15, !dbg !4415, !range !4009
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #15, !dbg !4416
  ret void, !dbg !4417
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !4418 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4423, !range !2862
  %2 = icmp eq i8 %1, 0, !dbg !4423
  br i1 %2, label %8, label %3, !dbg !4424

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4425
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4427
  br i1 %5, label %8, label %6, !dbg !4428

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4429
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !4431
  br label %8, !dbg !4432

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #15, !dbg !4433, !range !4009
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #15, !dbg !4434
  ret void, !dbg !4435
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !4436 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4440, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i1 %1, metadata !4441, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4447
  %5 = bitcast i32* %3 to i8*, !dbg !4448
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4448
  %6 = bitcast i32* %4 to i8*, !dbg !4448
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4448
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4444, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4447
  br i1 %1, label %7, label %12, !dbg !4449

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4444, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4447
  call void @llvm.dbg.value(metadata i32* %3, metadata !4442, metadata !DIExpression(DW_OP_deref)), !dbg !4447
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #16, !dbg !4450
  %8 = load i32, i32* %3, align 4, !dbg !4453
  call void @llvm.dbg.value(metadata i32 %8, metadata !4442, metadata !DIExpression()), !dbg !4447
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4455
  %10 = load i32, i32* %9, align 4, !dbg !4455
  %11 = icmp ult i32 %8, %10, !dbg !4456
  br i1 %11, label %22, label %20, !dbg !4457

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4443, metadata !DIExpression(DW_OP_deref)), !dbg !4447
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !4458
  %13 = load i32, i32* %4, align 4, !dbg !4460
  call void @llvm.dbg.value(metadata i32 %13, metadata !4443, metadata !DIExpression()), !dbg !4447
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4462
  %15 = load i32, i32* %14, align 4, !dbg !4462
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4463
  %17 = load i32, i32* %16, align 4, !dbg !4463
  %18 = sub i32 %15, %17, !dbg !4464
  %19 = icmp ult i32 %13, %18, !dbg !4465
  br i1 %19, label %22, label %20, !dbg !4466

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #15, !dbg !4467, !range !4225
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #16, !dbg !4467
  br label %22, !dbg !4468

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4468
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4468
  ret void, !dbg !4468
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !4469 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4474, !range !2862
  %2 = icmp eq i8 %1, 0, !dbg !4474
  br i1 %2, label %11, label %3, !dbg !4475

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #15, !dbg !4476
  %5 = icmp eq i32 %4, 0, !dbg !4477
  br i1 %5, label %11, label %6, !dbg !4478

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4479
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4481
  br i1 %8, label %11, label %9, !dbg !4482

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4483
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !4485
  br label %11, !dbg !4486

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #15, !dbg !4487, !range !4009
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #15, !dbg !4488
  ret void, !dbg !4489
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !4490 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4495, !range !2862
  %2 = icmp eq i8 %1, 0, !dbg !4495
  br i1 %2, label %11, label %3, !dbg !4496

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #15, !dbg !4497
  %5 = icmp eq i32 %4, 0, !dbg !4498
  br i1 %5, label %11, label %6, !dbg !4499

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4500
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4502
  br i1 %8, label %11, label %9, !dbg !4503

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4504
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !4506
  br label %11, !dbg !4507

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #15, !dbg !4508, !range !4009
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #15, !dbg !4509
  ret void, !dbg !4510
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4511 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4515, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 %1, metadata !4516, metadata !DIExpression()), !dbg !4517
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4518
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4520
  br i1 %5, label %6, label %10, !dbg !4520

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4521
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4522
  store i32 %1, i32* %8, align 4, !dbg !4523
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #15, !dbg !4524
  br label %10, !dbg !4525

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4517
  ret i32 %11, !dbg !4526
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !4527 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4533, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4534, metadata !DIExpression()), !dbg !4535
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4536
  br i1 %3, label %4, label %28, !dbg !4538

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #15, !dbg !4539
  br i1 %5, label %6, label %28, !dbg !4541

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4542
  store i8 1, i8* %7, align 4, !dbg !4543
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4544
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4545
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4546
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #16, !dbg !4547
  tail call void @DMA_Init() #16, !dbg !4548
  tail call void @DMA_Vfifo_init() #16, !dbg !4549
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4550
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4551
  %14 = load i8*, i8** %13, align 4, !dbg !4551
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4552
  %16 = load i32, i32* %15, align 4, !dbg !4552
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4553
  %18 = load i32, i32* %17, align 4, !dbg !4553
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4554
  %20 = load i32, i32* %19, align 4, !dbg !4554
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #15, !dbg !4555
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #16, !dbg !4556
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4557
  %23 = load i8*, i8** %22, align 4, !dbg !4557
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4558
  %25 = load i32, i32* %24, align 4, !dbg !4558
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4559
  %27 = load i32, i32* %26, align 4, !dbg !4559
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #16, !dbg !4560
  br label %28, !dbg !4561

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4535
  ret i32 %29, !dbg !4562
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #4 !dbg !4563 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4567, metadata !DIExpression()), !dbg !4568
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4569
  br i1 %2, label %27, label %3, !dbg !4571

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4572
  %5 = load i8*, i8** %4, align 4, !dbg !4572
  %6 = icmp eq i8* %5, null, !dbg !4574
  br i1 %6, label %27, label %7, !dbg !4575

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4576
  %9 = load i32, i32* %8, align 4, !dbg !4576
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4578
  %11 = load i32, i32* %10, align 4, !dbg !4578
  %12 = icmp ult i32 %9, %11, !dbg !4579
  br i1 %12, label %27, label %13, !dbg !4580

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4581
  %15 = load i32, i32* %14, align 4, !dbg !4581
  %16 = icmp ult i32 %9, %15, !dbg !4583
  br i1 %16, label %27, label %17, !dbg !4584

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4585
  %19 = load i8*, i8** %18, align 4, !dbg !4585
  %20 = icmp eq i8* %19, null, !dbg !4587
  br i1 %20, label %27, label %21, !dbg !4588

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4589
  %23 = load i32, i32* %22, align 4, !dbg !4589
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4591
  %25 = load i32, i32* %24, align 4, !dbg !4591
  %26 = icmp uge i32 %23, %25, !dbg !4592
  br label %27, !dbg !4593

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4568
  ret i1 %28, !dbg !4594
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !4595 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4599, metadata !DIExpression()), !dbg !4601
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !4602
  %3 = udiv i32 %2, 1000000, !dbg !4603
  call void @llvm.dbg.value(metadata i32 %3, metadata !4600, metadata !DIExpression()), !dbg !4601
  %4 = mul i32 %3, %0, !dbg !4604
  ret i32 %4, !dbg !4605
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4606 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4608, metadata !DIExpression()), !dbg !4610
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4611
  br i1 %2, label %3, label %8, !dbg !4613

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4614
  %5 = icmp eq i32 %0, 1, !dbg !4614
  %6 = select i1 %5, i32 1, i32 2, !dbg !4614
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4614
  call void @llvm.dbg.value(metadata i32 %7, metadata !4609, metadata !DIExpression()), !dbg !4610
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #16, !dbg !4615
  br label %8, !dbg !4616

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4610
  ret i32 %9, !dbg !4617
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !4618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4622, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i8 %1, metadata !4623, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i8 %2, metadata !4624, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i8 %3, metadata !4625, metadata !DIExpression()), !dbg !4627
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4628
  br i1 %5, label %6, label %11, !dbg !4630

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4631
  %8 = icmp eq i32 %0, 1, !dbg !4631
  %9 = select i1 %8, i32 1, i32 2, !dbg !4631
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4631
  call void @llvm.dbg.value(metadata i32 %10, metadata !4626, metadata !DIExpression()), !dbg !4627
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #16, !dbg !4632
  br label %11, !dbg !4633

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4627
  ret i32 %12, !dbg !4634
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4635 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4637, metadata !DIExpression()), !dbg !4639
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4640
  br i1 %2, label %3, label %8, !dbg !4642

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4643
  %5 = icmp eq i32 %0, 1, !dbg !4643
  %6 = select i1 %5, i32 1, i32 2, !dbg !4643
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4643
  call void @llvm.dbg.value(metadata i32 %7, metadata !4638, metadata !DIExpression()), !dbg !4639
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #16, !dbg !4644
  br label %8, !dbg !4645

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4639
  ret i32 %9, !dbg !4646
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4651, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata i32 %1, metadata !4652, metadata !DIExpression()), !dbg !4653
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4654
  br i1 %3, label %4, label %8, !dbg !4656

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4657
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #15, !dbg !4659
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #16, !dbg !4659
  br label %8, !dbg !4660

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4653
  ret i32 %9, !dbg !4660
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !4661 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4665, metadata !DIExpression()), !dbg !4666
  %2 = trunc i32 %0 to i8, !dbg !4667
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #16, !dbg !4668
  ret i32 %0, !dbg !4669
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_uart_init() local_unnamed_addr #3 !dbg !4670 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4680
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #17, !dbg !4680
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !4672, metadata !DIExpression()), !dbg !4681
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #16, !dbg !4682
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #16, !dbg !4683
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #16, !dbg !4684
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #16, !dbg !4685
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4686
  store i32 9, i32* %7, align 4, !dbg !4687
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4688
  store i32 3, i32* %8, align 4, !dbg !4689
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4690
  store i32 0, i32* %9, align 4, !dbg !4691
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4692
  store i32 0, i32* %10, align 4, !dbg !4693
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #16, !dbg !4694
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #17, !dbg !4695
  ret void, !dbg !4695
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !4696 {
  tail call fastcc void @SystemClock_Config() #15, !dbg !4697
  tail call fastcc void @prvSetupHardware() #15, !dbg !4698
  tail call void asm sideeffect "cpsie i", "~{memory}"() #17, !dbg !4699, !srcloc !4702
  tail call void asm sideeffect "cpsie f", "~{memory}"() #17, !dbg !4703, !srcloc !4706
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #16, !dbg !4707
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.31, i32 0, i32 0)) #16, !dbg !4708
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #16, !dbg !4709
  tail call fastcc void @aes_encrypt_decrypt_data_example() #15, !dbg !4710
  br label %4, !dbg !4711

4:                                                ; preds = %4, %0
  br label %4, !dbg !4712, !llvm.loop !4715
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !4718 {
  tail call void @top_xtal_init() #16, !dbg !4719
  ret void, !dbg !4720
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !4721 {
  tail call void @log_uart_init() #15, !dbg !4722
  ret void, !dbg !4723
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc void @aes_encrypt_decrypt_data_example() unnamed_addr #3 !dbg !4724 {
  %1 = alloca [16 x i8], align 1
  %2 = alloca [16 x i8], align 1
  %3 = alloca [30 x i8], align 1
  %4 = alloca [32 x i8], align 1
  %5 = alloca [32 x i8], align 1
  %6 = alloca %struct.hal_aes_buffer_t, align 4
  %7 = alloca %struct.hal_aes_buffer_t, align 4
  %8 = alloca %struct.hal_aes_buffer_t, align 4
  %9 = alloca %struct.hal_aes_buffer_t, align 4
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i32 0, i32 0, !dbg !4744
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #17, !dbg !4744
  call void @llvm.dbg.declare(metadata [16 x i8]* %1, metadata !4726, metadata !DIExpression()), !dbg !4745
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %10, i8* noundef nonnull align 1 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.aes_encrypt_decrypt_data_example.hardware_id, i32 0, i32 0), i32 16, i1 false), !dbg !4745
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i32 0, i32 0, !dbg !4746
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #17, !dbg !4746
  call void @llvm.dbg.declare(metadata [16 x i8]* %2, metadata !4727, metadata !DIExpression()), !dbg !4747
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %11, i8* noundef nonnull align 1 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @__const.aes_encrypt_decrypt_data_example.aes_cbc_iv, i32 0, i32 0), i32 16, i1 false), !dbg !4747
  %12 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0, !dbg !4748
  call void @llvm.lifetime.start.p0i8(i64 30, i8* nonnull %12) #17, !dbg !4748
  call void @llvm.dbg.declare(metadata [30 x i8]* %3, metadata !4728, metadata !DIExpression()), !dbg !4749
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(30) %12, i8* noundef nonnull align 1 dereferenceable(30) getelementptr inbounds ([30 x i8], [30 x i8]* @__const.aes_encrypt_decrypt_data_example.plain, i32 0, i32 0), i32 30, i1 false), !dbg !4749
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i32 0, i32 0, !dbg !4750
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #17, !dbg !4750
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !4732, metadata !DIExpression()), !dbg !4751
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %13, i8 0, i32 32, i1 false), !dbg !4751
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !4752
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #17, !dbg !4752
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !4734, metadata !DIExpression()), !dbg !4753
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %14, i8 0, i32 32, i1 false), !dbg !4753
  %15 = bitcast %struct.hal_aes_buffer_t* %6 to i8*, !dbg !4754
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #17, !dbg !4754
  call void @llvm.dbg.declare(metadata %struct.hal_aes_buffer_t* %6, metadata !4735, metadata !DIExpression()), !dbg !4755
  %16 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %6, i32 0, i32 0, !dbg !4756
  store i8* %12, i8** %16, align 4, !dbg !4756
  %17 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %6, i32 0, i32 1, !dbg !4756
  store i32 30, i32* %17, align 4, !dbg !4756
  %18 = bitcast %struct.hal_aes_buffer_t* %7 to i8*, !dbg !4757
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #17, !dbg !4757
  call void @llvm.dbg.declare(metadata %struct.hal_aes_buffer_t* %7, metadata !4741, metadata !DIExpression()), !dbg !4758
  %19 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %7, i32 0, i32 0, !dbg !4759
  store i8* %10, i8** %19, align 4, !dbg !4759
  %20 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %7, i32 0, i32 1, !dbg !4759
  store i32 16, i32* %20, align 4, !dbg !4759
  %21 = bitcast %struct.hal_aes_buffer_t* %8 to i8*, !dbg !4760
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #17, !dbg !4760
  call void @llvm.dbg.declare(metadata %struct.hal_aes_buffer_t* %8, metadata !4742, metadata !DIExpression()), !dbg !4761
  %22 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %8, i32 0, i32 0, !dbg !4762
  store i8* %13, i8** %22, align 4, !dbg !4762
  %23 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %8, i32 0, i32 1, !dbg !4762
  store i32 32, i32* %23, align 4, !dbg !4762
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.32, i32 0, i32 0)) #16, !dbg !4763
  call fastcc void @aes_result_dump(i8* noundef nonnull %12, i8 noundef zeroext 30) #15, !dbg !4764
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.33, i32 0, i32 0)) #16, !dbg !4765
  call fastcc void @aes_result_dump(i8* noundef nonnull %11, i8 noundef zeroext 16) #15, !dbg !4766
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.34, i32 0, i32 0)) #16, !dbg !4767
  call fastcc void @aes_result_dump(i8* noundef nonnull %10, i8 noundef zeroext 16) #15, !dbg !4768
  %27 = call i32 @hal_aes_cbc_encrypt(%struct.hal_aes_buffer_t* noundef nonnull %8, %struct.hal_aes_buffer_t* noundef nonnull %6, %struct.hal_aes_buffer_t* noundef nonnull %7, i8* noundef nonnull %11) #16, !dbg !4769
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5.35, i32 0, i32 0)) #16, !dbg !4770
  %29 = load i8*, i8** %22, align 4, !dbg !4771
  %30 = load i32, i32* %23, align 4, !dbg !4772
  %31 = trunc i32 %30 to i8, !dbg !4773
  call fastcc void @aes_result_dump(i8* noundef %29, i8 noundef zeroext %31) #15, !dbg !4774
  %32 = bitcast %struct.hal_aes_buffer_t* %9 to i8*, !dbg !4775
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #17, !dbg !4775
  call void @llvm.dbg.declare(metadata %struct.hal_aes_buffer_t* %9, metadata !4743, metadata !DIExpression()), !dbg !4776
  %33 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %9, i32 0, i32 0, !dbg !4777
  store i8* %14, i8** %33, align 4, !dbg !4777
  %34 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %9, i32 0, i32 1, !dbg !4777
  store i32 32, i32* %34, align 4, !dbg !4777
  %35 = call i32 @hal_aes_cbc_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %9, %struct.hal_aes_buffer_t* noundef nonnull %8, %struct.hal_aes_buffer_t* noundef nonnull %7, i8* noundef nonnull %11) #16, !dbg !4778
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.36, i32 0, i32 0)) #16, !dbg !4779
  %37 = load i8*, i8** %33, align 4, !dbg !4780
  %38 = load i32, i32* %34, align 4, !dbg !4781
  %39 = trunc i32 %38 to i8, !dbg !4782
  call fastcc void @aes_result_dump(i8* noundef %37, i8 noundef zeroext %39) #15, !dbg !4783
  %40 = call i32 @hal_aes_ecb_encrypt(%struct.hal_aes_buffer_t* noundef nonnull %8, %struct.hal_aes_buffer_t* noundef nonnull %6, %struct.hal_aes_buffer_t* noundef nonnull %7) #16, !dbg !4784
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7.37, i32 0, i32 0)) #16, !dbg !4785
  %42 = load i8*, i8** %22, align 4, !dbg !4786
  %43 = load i32, i32* %23, align 4, !dbg !4787
  %44 = trunc i32 %43 to i8, !dbg !4788
  call fastcc void @aes_result_dump(i8* noundef %42, i8 noundef zeroext %44) #15, !dbg !4789
  %45 = call i32 @hal_aes_ecb_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %9, %struct.hal_aes_buffer_t* noundef nonnull %8, %struct.hal_aes_buffer_t* noundef nonnull %7) #16, !dbg !4790
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8.38, i32 0, i32 0)) #16, !dbg !4791
  %47 = load i8*, i8** %33, align 4, !dbg !4792
  %48 = load i32, i32* %34, align 4, !dbg !4793
  %49 = trunc i32 %48 to i8, !dbg !4794
  call fastcc void @aes_result_dump(i8* noundef %47, i8 noundef zeroext %49) #15, !dbg !4795
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #17, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #17, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #17, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #17, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #17, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #17, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 30, i8* nonnull %12) #17, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #17, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #17, !dbg !4796
  ret void, !dbg !4796
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: noinline nounwind optsize
define internal fastcc void @aes_result_dump(i8* nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !dbg !4797 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4801, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i8 %1, metadata !4802, metadata !DIExpression()), !dbg !4804
  call void @llvm.dbg.value(metadata i8 0, metadata !4803, metadata !DIExpression()), !dbg !4804
  %3 = icmp eq i8 %1, 0, !dbg !4805
  br i1 %3, label %19, label %4, !dbg !4808

4:                                                ; preds = %2
  %5 = zext i8 %1 to i32, !dbg !4805
  br label %6, !dbg !4808

6:                                                ; preds = %4, %12
  %7 = phi i32 [ 0, %4 ], [ %17, %12 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !4803, metadata !DIExpression()), !dbg !4804
  %8 = and i32 %7, 15, !dbg !4809
  %9 = icmp eq i32 %8, 0, !dbg !4812
  br i1 %9, label %10, label %12, !dbg !4813

10:                                               ; preds = %6
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.39, i32 0, i32 0)) #16, !dbg !4814
  br label %12, !dbg !4816

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !4817
  %14 = load i8, i8* %13, align 1, !dbg !4817
  %15 = zext i8 %14 to i32, !dbg !4817
  %16 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.40, i32 0, i32 0), i32 noundef %15) #16, !dbg !4818
  %17 = add nuw nsw i32 %7, 1, !dbg !4819
  call void @llvm.dbg.value(metadata i32 %17, metadata !4803, metadata !DIExpression()), !dbg !4804
  %18 = icmp eq i32 %17, %5, !dbg !4805
  br i1 %18, label %19, label %6, !dbg !4808, !llvm.loop !4820

19:                                               ; preds = %12, %2
  %20 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.39, i32 0, i32 0)) #16, !dbg !4822
  ret void, !dbg !4823
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !4824 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4826, metadata !DIExpression()), !dbg !4828
  %2 = add i32 %0, -1, !dbg !4829
  %3 = icmp ugt i32 %2, 16777215, !dbg !4831
  br i1 %3, label %8, label %4, !dbg !4832

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4833
  call void @llvm.dbg.value(metadata i32 %5, metadata !4827, metadata !DIExpression()), !dbg !4828
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4834
  %7 = and i32 %6, -4, !dbg !4834
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4834
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !4835
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !4836
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !4837
  br label %8, !dbg !4838

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !4828
  ret i32 %9, !dbg !4839
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !4840 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !4841
  ret void, !dbg !4842
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !4843 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !4844
  ret i32 %1, !dbg !4845
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !4846 {
  %1 = tail call i32 @top_mcu_freq_get() #16, !dbg !4847
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !4848
  ret void, !dbg !4849
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !4850 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4851
  %2 = or i32 %1, 15728640, !dbg !4851
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !4851
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !4852
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4853
  %4 = or i32 %3, 458752, !dbg !4853
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !4853
  ret void, !dbg !4854
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !4855 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4856
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4857
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !4858
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !4859
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !4860
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !4861
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !4862
  ret void, !dbg !4863
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !4864 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4866, metadata !DIExpression()), !dbg !4867
  ret i32 0, !dbg !4868
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !4869 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4919, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !4920, metadata !DIExpression()), !dbg !4921
  ret i32 0, !dbg !4922
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !4923 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4925, metadata !DIExpression()), !dbg !4926
  ret i32 1, !dbg !4927
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4928 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4932, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i32 %1, metadata !4933, metadata !DIExpression()), !dbg !4935
  call void @llvm.dbg.value(metadata i32 %2, metadata !4934, metadata !DIExpression()), !dbg !4935
  ret i32 0, !dbg !4936
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4937 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4941, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i32 %1, metadata !4942, metadata !DIExpression()), !dbg !4944
  call void @llvm.dbg.value(metadata i32 %2, metadata !4943, metadata !DIExpression()), !dbg !4944
  ret i32 -1, !dbg !4945
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !4946 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4950, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i8* %1, metadata !4951, metadata !DIExpression()), !dbg !4953
  call void @llvm.dbg.value(metadata i32 %2, metadata !4952, metadata !DIExpression()), !dbg !4953
  ret i32 0, !dbg !4954
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !4955 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4957, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i8* %1, metadata !4958, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i32 %2, metadata !4959, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i32 0, metadata !4960, metadata !DIExpression()), !dbg !4961
  %4 = icmp sgt i32 %2, 0, !dbg !4962
  br i1 %4, label %5, label %14, !dbg !4965

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !4960, metadata !DIExpression()), !dbg !4961
  call void @llvm.dbg.value(metadata i8* %7, metadata !4958, metadata !DIExpression()), !dbg !4961
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !4966
  call void @llvm.dbg.value(metadata i8* %8, metadata !4958, metadata !DIExpression()), !dbg !4961
  %9 = load i8, i8* %7, align 1, !dbg !4968
  %10 = zext i8 %9 to i32, !dbg !4968
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #16, !dbg !4969
  %12 = add nuw nsw i32 %6, 1, !dbg !4970
  call void @llvm.dbg.value(metadata i32 %12, metadata !4960, metadata !DIExpression()), !dbg !4961
  %13 = icmp eq i32 %12, %2, !dbg !4962
  br i1 %13, label %14, label %5, !dbg !4965, !llvm.loop !4971

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !4973
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !485 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !688, metadata !DIExpression()), !dbg !4974
  call void @llvm.dbg.value(metadata i32 %1, metadata !689, metadata !DIExpression()), !dbg !4974
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #17, !dbg !4975, !srcloc !4976
  call void @llvm.dbg.value(metadata i8* %3, metadata !691, metadata !DIExpression()), !dbg !4974
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !4977
  %5 = icmp eq i8* %4, null, !dbg !4979
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !4980
  call void @llvm.dbg.value(metadata i8* %6, metadata !690, metadata !DIExpression()), !dbg !4974
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !4981
  %8 = icmp ult i8* %3, %7, !dbg !4983
  %9 = xor i1 %8, true, !dbg !4984
  %10 = or i1 %5, %9, !dbg !4984
  br i1 %10, label %11, label %13, !dbg !4984

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !4985
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !4984
  br label %13, !dbg !4984

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !4985
  ret i8* %14, !dbg !4984
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !4986 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4988, metadata !DIExpression()), !dbg !4989
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0)) #16, !dbg !4990
  br label %3, !dbg !4991

3:                                                ; preds = %1, %3
  br label %3, !dbg !4991, !llvm.loop !4992
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4994 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4998, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i32 %1, metadata !4999, metadata !DIExpression()), !dbg !5000
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.48, i32 0, i32 0), i32 noundef %1) #16, !dbg !5001
  ret i32 -1, !dbg !5002
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5003 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.49, i32 0, i32 0)) #16, !dbg !5008
  ret i32 0, !dbg !5009
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
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { noreturn optsize "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #13 = { noinline noreturn nounwind optsize "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m4" "target-features"="+armv7e-m,+dsp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nobuiltin optsize "no-builtins" }
attributes #16 = { nobuiltin nounwind optsize "no-builtins" }
attributes #17 = { nounwind }
attributes #18 = { nobuiltin noreturn nounwind optsize "no-builtins" }

!llvm.dbg.cu = !{!708, !720, !801, !846, !2, !23, !880, !61, !127, !209, !882, !311, !953, !425, !683, !694}
!llvm.ident = !{!956, !956, !956, !956, !956, !956, !956, !956, !956, !956, !956, !956, !956, !956, !956, !956}
!llvm.module.flags = !{!957, !958, !959, !960, !961, !962, !963, !964, !965}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !2, file: !3, line: 43, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!4 = !{!5, !8, !10, !16}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !9, line: 62, baseType: !7)
!9 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
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
!24 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!25 = !{!26, !32}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 71, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "UART_PORT0", value: 0)
!30 = !DIEnumerator(name: "UART_PORT1", value: 1)
!31 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 129, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
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
!60 = distinct !DIGlobalVariable(name: "g_crypt_lock", scope: !61, file: !62, line: 48, type: !124, isLocal: false, isDefinition: true)
!61 = distinct !DICompileUnit(language: DW_LANG_C99, file: !62, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !63, retainedTypes: !115, globals: !120, splitDebugInlining: false, nameTableKind: None)
!62 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_aes.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!63 = !{!64, !70}
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 290, baseType: !66, size: 32, elements: !67)
!65 = !DIFile(filename: "../../../../../driver/chip/inc/hal_aes.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "HAL_AES_STATUS_ERROR", value: -1)
!69 = !DIEnumerator(name: "HAL_AES_STATUS_OK", value: 0)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !71, line: 47, baseType: !66, size: 32, elements: !72)
!71 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!73 = !DIEnumerator(name: "Reset_IRQn", value: -15)
!74 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!75 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!76 = !DIEnumerator(name: "MemoryManagement_IRQn", value: -12)
!77 = !DIEnumerator(name: "BusFault_IRQn", value: -11)
!78 = !DIEnumerator(name: "UsageFault_IRQn", value: -10)
!79 = !DIEnumerator(name: "SVC_IRQn", value: -5)
!80 = !DIEnumerator(name: "DebugMonitor_IRQn", value: -4)
!81 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!82 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!83 = !DIEnumerator(name: "CM4_UART1_IRQ", value: 0)
!84 = !DIEnumerator(name: "CM4_DMA_IRQ", value: 1)
!85 = !DIEnumerator(name: "CM4_HIF_IRQ", value: 2)
!86 = !DIEnumerator(name: "CM4_I2C1_IRQ", value: 3)
!87 = !DIEnumerator(name: "CM4_I2C2_IRQ", value: 4)
!88 = !DIEnumerator(name: "CM4_UART2_IRQ", value: 5)
!89 = !DIEnumerator(name: "CM4_MTK_CRYPTO_IRQ", value: 6)
!90 = !DIEnumerator(name: "CM4_SF_IRQ", value: 7)
!91 = !DIEnumerator(name: "CM4_EINT_IRQ", value: 8)
!92 = !DIEnumerator(name: "CM4_BTIF_IRQ", value: 9)
!93 = !DIEnumerator(name: "CM4_WDT_IRQ", value: 10)
!94 = !DIEnumerator(name: "CM4_AHB_MON_IRQ", value: 11)
!95 = !DIEnumerator(name: "CM4_SPI_SLAVE_IRQ", value: 12)
!96 = !DIEnumerator(name: "CM4_N9_WDT_IRQ", value: 13)
!97 = !DIEnumerator(name: "CM4_ADC_IRQ", value: 14)
!98 = !DIEnumerator(name: "CM4_IRDA_TX_IRQ", value: 15)
!99 = !DIEnumerator(name: "CM4_IRDA_RX_IRQ", value: 16)
!100 = !DIEnumerator(name: "CM4_USB_VBUS_ON_IRQ", value: 17)
!101 = !DIEnumerator(name: "CM4_USB_VBUS_OFF_IRQ", value: 18)
!102 = !DIEnumerator(name: "CM4_SPIS_CS_WAKEUP_IRQ", value: 19)
!103 = !DIEnumerator(name: "CM4_GPT3_IRQ", value: 20)
!104 = !DIEnumerator(name: "CM4_IRQ21_IRQ", value: 21)
!105 = !DIEnumerator(name: "CM4_AUDIO_IRQ", value: 22)
!106 = !DIEnumerator(name: "CM4_HIF_DMA_IRQ", value: 23)
!107 = !DIEnumerator(name: "CM4_GPT_IRQ", value: 24)
!108 = !DIEnumerator(name: "CM4_ADC_COMP_IRQ", value: 25)
!109 = !DIEnumerator(name: "CM4_AUDIO_WAKE_IRQ", value: 26)
!110 = !DIEnumerator(name: "CM4_SPIM_IRQ", value: 27)
!111 = !DIEnumerator(name: "CM4_USB_IRQ", value: 28)
!112 = !DIEnumerator(name: "CM4_UDMA_IRQ", value: 29)
!113 = !DIEnumerator(name: "CM4_TRNG_IRQ", value: 30)
!114 = !DIEnumerator(name: "IRQ_NUMBER_MAX", value: 96)
!115 = !{!116, !117, !118}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !71, line: 95, baseType: !70)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 43, baseType: !55)
!120 = !{!59, !121}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "g_aes_op_done", scope: !61, file: !62, line: 71, type: !123, isLocal: true, isDefinition: true)
!123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !124)
!124 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "g_cache_status", scope: !127, file: !128, line: 51, type: !123, isLocal: false, isDefinition: true)
!127 = distinct !DICompileUnit(language: DW_LANG_C99, file: !128, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !129, retainedTypes: !176, globals: !206, splitDebugInlining: false, nameTableKind: None)
!128 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!129 = !{!130, !141, !160, !167}
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 163, baseType: !66, size: 32, elements: !132)
!131 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140}
!133 = !DIEnumerator(name: "HAL_CACHE_STATUS_INVALID_PARAMETER", value: -7)
!134 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_BUSY", value: -6)
!135 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_CACHE_SIZE", value: -5)
!136 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION", value: -4)
!137 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_ADDRESS", value: -3)
!138 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR_REGION_SIZE", value: -2)
!139 = !DIEnumerator(name: "HAL_CACHE_STATUS_ERROR", value: -1)
!140 = !DIEnumerator(name: "HAL_CACHE_STATUS_OK", value: 0)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 186, baseType: !7, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!143 = !DIEnumerator(name: "HAL_CACHE_REGION_0", value: 0)
!144 = !DIEnumerator(name: "HAL_CACHE_REGION_1", value: 1)
!145 = !DIEnumerator(name: "HAL_CACHE_REGION_2", value: 2)
!146 = !DIEnumerator(name: "HAL_CACHE_REGION_3", value: 3)
!147 = !DIEnumerator(name: "HAL_CACHE_REGION_4", value: 4)
!148 = !DIEnumerator(name: "HAL_CACHE_REGION_5", value: 5)
!149 = !DIEnumerator(name: "HAL_CACHE_REGION_6", value: 6)
!150 = !DIEnumerator(name: "HAL_CACHE_REGION_7", value: 7)
!151 = !DIEnumerator(name: "HAL_CACHE_REGION_8", value: 8)
!152 = !DIEnumerator(name: "HAL_CACHE_REGION_9", value: 9)
!153 = !DIEnumerator(name: "HAL_CACHE_REGION_10", value: 10)
!154 = !DIEnumerator(name: "HAL_CACHE_REGION_11", value: 11)
!155 = !DIEnumerator(name: "HAL_CACHE_REGION_12", value: 12)
!156 = !DIEnumerator(name: "HAL_CACHE_REGION_13", value: 13)
!157 = !DIEnumerator(name: "HAL_CACHE_REGION_14", value: 14)
!158 = !DIEnumerator(name: "HAL_CACHE_REGION_15", value: 15)
!159 = !DIEnumerator(name: "HAL_CACHE_REGION_MAX", value: 16)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 176, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164, !165, !166}
!162 = !DIEnumerator(name: "HAL_CACHE_SIZE_0KB", value: 0)
!163 = !DIEnumerator(name: "HAL_CACHE_SIZE_8KB", value: 1)
!164 = !DIEnumerator(name: "HAL_CACHE_SIZE_16KB", value: 2)
!165 = !DIEnumerator(name: "HAL_CACHE_SIZE_32KB", value: 3)
!166 = !DIEnumerator(name: "HAL_CACHE_SIZE_MAX", value: 4)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 99, baseType: !7, size: 32, elements: !169)
!168 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!169 = !{!170, !171, !172, !173, !174, !175}
!170 = !DIEnumerator(name: "CACHE_INVALIDATE_ALL_LINES", value: 1)
!171 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_ADDRESS", value: 2)
!172 = !DIEnumerator(name: "CACHE_INVALIDATE_ONE_LINE_BY_SET_WAY", value: 4)
!173 = !DIEnumerator(name: "CACHE_FLUSH_ALL_LINES", value: 9)
!174 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_ADDRESS", value: 10)
!175 = !DIEnumerator(name: "CACHE_FLUSH_ONE_LINE_BY_SET_WAY", value: 12)
!176 = !{!177, !116}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !179, line: 72, baseType: !180)
!179 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 56, size: 525312, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !196, !197, !201, !205}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !180, file: !179, line: 57, baseType: !11, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !180, file: !179, line: 58, baseType: !11, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !180, file: !179, line: 59, baseType: !11, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !180, file: !179, line: 60, baseType: !11, size: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !180, file: !179, line: 61, baseType: !11, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !180, file: !179, line: 62, baseType: !11, size: 32, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !180, file: !179, line: 63, baseType: !11, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !180, file: !179, line: 64, baseType: !11, size: 32, offset: 224)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !180, file: !179, line: 65, baseType: !11, size: 32, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !180, file: !179, line: 66, baseType: !11, size: 32, offset: 288)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !180, file: !179, line: 67, baseType: !193, size: 32, offset: 320)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 1)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !180, file: !179, line: 68, baseType: !11, size: 32, offset: 352)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !180, file: !179, line: 69, baseType: !198, size: 523904, offset: 384)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 523904, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 16372)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !180, file: !179, line: 70, baseType: !202, size: 512, offset: 524288)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !180, file: !179, line: 71, baseType: !202, size: 512, offset: 524800)
!206 = !{!125}
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !209, file: !210, line: 53, type: !298, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !220, globals: !297, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!211 = !{!212, !70}
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !213, line: 152, baseType: !66, size: 32, elements: !214)
!213 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!214 = !{!215, !216, !217, !218, !219}
!215 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!216 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!217 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!218 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!219 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!220 = !{!221, !116, !12, !222, !224, !258}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !71, line: 97, baseType: !117)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 44, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !15, line: 77, baseType: !66)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !226, line: 378, baseType: !227)
!226 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 363, size: 28704, elements: !228)
!228 = !{!229, !233, !237, !238, !239, !240, !241, !242, !243, !244, !248, !253, !257}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !227, file: !226, line: 365, baseType: !230, size: 256)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !227, file: !226, line: 366, baseType: !234, size: 768, offset: 256)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 768, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 24)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !227, file: !226, line: 367, baseType: !230, size: 256, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !227, file: !226, line: 368, baseType: !234, size: 768, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !227, file: !226, line: 369, baseType: !230, size: 256, offset: 2048)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !227, file: !226, line: 370, baseType: !234, size: 768, offset: 2304)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !227, file: !226, line: 371, baseType: !230, size: 256, offset: 3072)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !227, file: !226, line: 372, baseType: !234, size: 768, offset: 3328)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !227, file: !226, line: 373, baseType: !230, size: 256, offset: 4096)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !227, file: !226, line: 374, baseType: !245, size: 1792, offset: 4352)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1792, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 56)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !227, file: !226, line: 375, baseType: !249, size: 1920, offset: 6144)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 1920, elements: !251)
!250 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!251 = !{!252}
!252 = !DISubrange(count: 240)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !227, file: !226, line: 376, baseType: !254, size: 20608, offset: 8064)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 20608, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 644)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !227, file: !226, line: 377, baseType: !11, size: 32, offset: 28672)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !226, line: 418, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 395, size: 1120, elements: !261)
!261 = !{!262, !264, !265, !266, !267, !268, !269, !273, !274, !275, !276, !277, !278, !279, !280, !284, !285, !286, !290, !294, !296}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !260, file: !226, line: 397, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !260, file: !226, line: 398, baseType: !11, size: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !260, file: !226, line: 399, baseType: !11, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !260, file: !226, line: 400, baseType: !11, size: 32, offset: 96)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !260, file: !226, line: 401, baseType: !11, size: 32, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !260, file: !226, line: 402, baseType: !11, size: 32, offset: 160)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !260, file: !226, line: 403, baseType: !270, size: 96, offset: 192)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 96, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 12)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !260, file: !226, line: 404, baseType: !11, size: 32, offset: 288)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !260, file: !226, line: 405, baseType: !11, size: 32, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !260, file: !226, line: 406, baseType: !11, size: 32, offset: 352)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !260, file: !226, line: 407, baseType: !11, size: 32, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !260, file: !226, line: 408, baseType: !11, size: 32, offset: 416)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !260, file: !226, line: 409, baseType: !11, size: 32, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !260, file: !226, line: 410, baseType: !11, size: 32, offset: 480)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !260, file: !226, line: 411, baseType: !281, size: 64, offset: 512)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 64, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 2)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !260, file: !226, line: 412, baseType: !263, size: 32, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !260, file: !226, line: 413, baseType: !263, size: 32, offset: 608)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !260, file: !226, line: 414, baseType: !287, size: 128, offset: 640)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 128, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 4)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !260, file: !226, line: 415, baseType: !291, size: 160, offset: 768)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 160, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 5)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !260, file: !226, line: 416, baseType: !295, size: 160, offset: 928)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !292)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !260, file: !226, line: 417, baseType: !11, size: 32, offset: 1088)
!297 = !{!207}
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 6144, elements: !307)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !210, line: 50, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 47, size: 64, elements: !301)
!301 = !{!302, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !300, file: !210, line: 48, baseType: !303, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 32)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !221}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !300, file: !210, line: 49, baseType: !12, size: 32, offset: 32)
!307 = !{!308}
!308 = !DISubrange(count: 96)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !311, file: !312, line: 77, type: !381, isLocal: true, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !364, globals: !366, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!313 = !{!314, !322, !328, !344, !350, !354, !26, !32, !359}
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 345, baseType: !66, size: 32, elements: !316)
!315 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!316 = !{!317, !318, !319, !320, !321}
!317 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!318 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!319 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!320 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!321 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!322 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !323, line: 109, baseType: !7, size: 32, elements: !324)
!323 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!324 = !{!325, !326, !327}
!325 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!326 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!327 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!328 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 302, baseType: !7, size: 32, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!330 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!331 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!332 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!333 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!334 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!335 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!336 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!337 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!338 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!339 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!340 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!341 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!342 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!343 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 321, baseType: !7, size: 32, elements: !345)
!345 = !{!346, !347, !348, !349}
!346 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!347 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!348 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!349 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!350 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 330, baseType: !7, size: 32, elements: !351)
!351 = !{!352, !353}
!352 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!353 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!354 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 337, baseType: !7, size: 32, elements: !355)
!355 = !{!356, !357, !358}
!356 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!357 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!358 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 355, baseType: !66, size: 32, elements: !360)
!360 = !{!361, !362, !363}
!361 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!362 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!363 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!364 = !{!7, !116, !55, !365, !118}
!365 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!366 = !{!309, !367}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(name: "func_tbl", scope: !369, file: !312, line: 536, type: !379, isLocal: true, isDefinition: true)
!369 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !312, file: !312, line: 534, type: !370, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !377)
!370 = !DISubroutineType(types: !371)
!371 = !{!372, !376}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !33, line: 197, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!374 = !DISubroutineType(types: !375)
!375 = !{null}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !323, line: 113, baseType: !322)
!377 = !{!378}
!378 = !DILocalVariable(name: "uart_port", arg: 1, scope: !369, file: !312, line: 534, type: !376)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 64, elements: !282)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 1024, elements: !282)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !312, line: 75, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 68, size: 512, elements: !384)
!384 = !{!385, !386, !398, !399, !410, !411}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !383, file: !312, line: 69, baseType: !124, size: 8)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !383, file: !312, line: 70, baseType: !387, size: 128, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !315, line: 378, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !315, line: 373, size: 128, elements: !389)
!389 = !{!390, !392, !394, !396}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !388, file: !315, line: 374, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !315, line: 317, baseType: !328)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !388, file: !315, line: 375, baseType: !393, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !315, line: 326, baseType: !344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !388, file: !315, line: 376, baseType: !395, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !315, line: 333, baseType: !350)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !388, file: !315, line: 377, baseType: !397, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !315, line: 341, baseType: !354)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !383, file: !312, line: 71, baseType: !124, size: 8, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !383, file: !312, line: 72, baseType: !400, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !312, line: 66, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 63, size: 64, elements: !402)
!402 = !{!403, !409}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !401, file: !312, line: 64, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !315, line: 410, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 32)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408, !116}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !315, line: 359, baseType: !359)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !401, file: !312, line: 65, baseType: !116, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !383, file: !312, line: 73, baseType: !124, size: 8, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !383, file: !312, line: 74, baseType: !412, size: 224, offset: 288)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !315, line: 390, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !315, line: 382, size: 224, elements: !414)
!414 = !{!415, !417, !418, !419, !420, !421, !422}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !413, file: !315, line: 383, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !413, file: !315, line: 384, baseType: !12, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !413, file: !315, line: 385, baseType: !12, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !413, file: !315, line: 386, baseType: !416, size: 32, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !413, file: !315, line: 387, baseType: !12, size: 32, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !413, file: !315, line: 388, baseType: !12, size: 32, offset: 160)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !413, file: !315, line: 389, baseType: !12, size: 32, offset: 192)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !425, file: !426, line: 59, type: !12, isLocal: false, isDefinition: true)
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !427, globals: !480, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!427 = !{!428, !436, !461}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !226, line: 656, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 650, size: 128, elements: !431)
!431 = !{!432, !433, !434, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !430, file: !226, line: 652, baseType: !11, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !430, file: !226, line: 653, baseType: !11, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !430, file: !226, line: 654, baseType: !11, size: 32, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !430, file: !226, line: 655, baseType: !263, size: 32, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !226, line: 418, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 395, size: 1120, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !438, file: !226, line: 397, baseType: !263, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !438, file: !226, line: 398, baseType: !11, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !438, file: !226, line: 399, baseType: !11, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !438, file: !226, line: 400, baseType: !11, size: 32, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !438, file: !226, line: 401, baseType: !11, size: 32, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !438, file: !226, line: 402, baseType: !11, size: 32, offset: 160)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !438, file: !226, line: 403, baseType: !270, size: 96, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !438, file: !226, line: 404, baseType: !11, size: 32, offset: 288)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !438, file: !226, line: 405, baseType: !11, size: 32, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !438, file: !226, line: 406, baseType: !11, size: 32, offset: 352)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !438, file: !226, line: 407, baseType: !11, size: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !438, file: !226, line: 408, baseType: !11, size: 32, offset: 416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !438, file: !226, line: 409, baseType: !11, size: 32, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !438, file: !226, line: 410, baseType: !11, size: 32, offset: 480)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !438, file: !226, line: 411, baseType: !281, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !438, file: !226, line: 412, baseType: !263, size: 32, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !438, file: !226, line: 413, baseType: !263, size: 32, offset: 608)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !438, file: !226, line: 414, baseType: !287, size: 128, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !438, file: !226, line: 415, baseType: !291, size: 160, offset: 768)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !438, file: !226, line: 416, baseType: !295, size: 160, offset: 928)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !438, file: !226, line: 417, baseType: !11, size: 32, offset: 1088)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !179, line: 72, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 56, size: 525312, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !463, file: !179, line: 57, baseType: !11, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !463, file: !179, line: 58, baseType: !11, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !463, file: !179, line: 59, baseType: !11, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !463, file: !179, line: 60, baseType: !11, size: 32, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !463, file: !179, line: 61, baseType: !11, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !463, file: !179, line: 62, baseType: !11, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !463, file: !179, line: 63, baseType: !11, size: 32, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !463, file: !179, line: 64, baseType: !11, size: 32, offset: 224)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !463, file: !179, line: 65, baseType: !11, size: 32, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !463, file: !179, line: 66, baseType: !11, size: 32, offset: 288)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !463, file: !179, line: 67, baseType: !193, size: 32, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !463, file: !179, line: 68, baseType: !11, size: 32, offset: 352)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !463, file: !179, line: 69, baseType: !198, size: 523904, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !463, file: !179, line: 70, baseType: !202, size: 512, offset: 524288)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !463, file: !179, line: 71, baseType: !202, size: 512, offset: 524800)
!480 = !{!423, !481}
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !425, file: !426, line: 61, type: !11, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "heap_end", scope: !485, file: !486, line: 66, type: !491, isLocal: true, isDefinition: true)
!485 = distinct !DISubprogram(name: "_sbrk_r", scope: !486, file: !486, line: 63, type: !487, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !687)
!486 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !492, !682}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !490, line: 123, baseType: !491)
!490 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 32)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !494, line: 377, size: 1920, elements: !495)
!494 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!495 = !{!496, !497, !571, !572, !573, !574, !575, !576, !577, !580, !601, !605, !606, !607, !608, !618, !631, !632, !637, !656, !657, !664, !665, !681}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !493, file: !494, line: 381, baseType: !66, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !493, file: !494, line: 386, baseType: !498, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !494, line: 292, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !494, line: 186, size: 832, elements: !501)
!501 = !{!502, !504, !505, !506, !508, !509, !514, !515, !516, !517, !521, !527, !534, !538, !539, !540, !541, !545, !547, !548, !549, !551, !557, !570}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !500, file: !494, line: 187, baseType: !503, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !500, file: !494, line: 188, baseType: !66, size: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !500, file: !494, line: 189, baseType: !66, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !500, file: !494, line: 190, baseType: !507, size: 16, offset: 96)
!507 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !500, file: !494, line: 191, baseType: !507, size: 16, offset: 112)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !500, file: !494, line: 192, baseType: !510, size: 64, offset: 128)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !494, line: 122, size: 64, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !510, file: !494, line: 123, baseType: !503, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !510, file: !494, line: 124, baseType: !66, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !500, file: !494, line: 193, baseType: !66, size: 32, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !500, file: !494, line: 196, baseType: !492, size: 32, offset: 224)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !500, file: !494, line: 200, baseType: !116, size: 32, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !500, file: !494, line: 202, baseType: !518, size: 32, offset: 288)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 32)
!519 = !DISubroutineType(types: !520)
!520 = !{!66, !492, !116, !491, !66}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !500, file: !494, line: 204, baseType: !522, size: 32, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 32)
!523 = !DISubroutineType(types: !524)
!524 = !{!66, !492, !116, !525, !66}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !500, file: !494, line: 207, baseType: !528, size: 32, offset: 352)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 32)
!529 = !DISubroutineType(types: !530)
!530 = !{!531, !492, !116, !531, !66}
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !532, line: 116, baseType: !533)
!532 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!533 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !500, file: !494, line: 208, baseType: !535, size: 32, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 32)
!536 = !DISubroutineType(types: !537)
!537 = !{!66, !492, !116}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !500, file: !494, line: 211, baseType: !510, size: 64, offset: 416)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !500, file: !494, line: 212, baseType: !503, size: 32, offset: 480)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !500, file: !494, line: 213, baseType: !66, size: 32, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !500, file: !494, line: 216, baseType: !542, size: 24, offset: 544)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 24, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 3)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !500, file: !494, line: 217, baseType: !546, size: 8, offset: 568)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !194)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !500, file: !494, line: 220, baseType: !510, size: 64, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !500, file: !494, line: 223, baseType: !66, size: 32, offset: 640)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !500, file: !494, line: 224, baseType: !550, size: 32, offset: 672)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !532, line: 46, baseType: !533)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !500, file: !494, line: 231, baseType: !552, size: 32, offset: 704)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !494, line: 35, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !554, line: 34, baseType: !555)
!554 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 32)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !554, line: 33, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !500, file: !494, line: 233, baseType: !558, size: 64, offset: 736)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !532, line: 170, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !532, line: 162, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !559, file: !532, line: 164, baseType: !66, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !559, file: !532, line: 169, baseType: !563, size: 32, offset: 32)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !532, line: 165, size: 32, elements: !564)
!564 = !{!565, !568}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !563, file: !532, line: 167, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !567, line: 116, baseType: !66)
!567 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !563, file: !532, line: 168, baseType: !569, size: 32)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !288)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !500, file: !494, line: 234, baseType: !66, size: 32, offset: 800)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !493, file: !494, line: 386, baseType: !498, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !493, file: !494, line: 386, baseType: !498, size: 32, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !493, file: !494, line: 388, baseType: !66, size: 32, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !493, file: !494, line: 390, baseType: !491, size: 32, offset: 160)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !493, file: !494, line: 392, baseType: !66, size: 32, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !493, file: !494, line: 394, baseType: !66, size: 32, offset: 224)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !493, file: !494, line: 395, baseType: !578, size: 32, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 32)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !494, line: 45, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !493, file: !494, line: 397, baseType: !581, size: 32, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 32)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !494, line: 349, size: 128, elements: !583)
!583 = !{!584, !597, !598, !599}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !582, file: !494, line: 352, baseType: !585, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 32)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !494, line: 52, size: 192, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !586, file: !494, line: 54, baseType: !585, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !586, file: !494, line: 55, baseType: !66, size: 32, offset: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !586, file: !494, line: 55, baseType: !66, size: 32, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !586, file: !494, line: 55, baseType: !66, size: 32, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !586, file: !494, line: 55, baseType: !66, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !586, file: !494, line: 56, baseType: !594, size: 32, offset: 160)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 32, elements: !194)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !494, line: 22, baseType: !596)
!596 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !582, file: !494, line: 353, baseType: !66, size: 32, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !582, file: !494, line: 354, baseType: !585, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !582, file: !494, line: 355, baseType: !600, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !493, file: !494, line: 399, baseType: !602, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 32)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !492}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !493, file: !494, line: 401, baseType: !66, size: 32, offset: 352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !493, file: !494, line: 404, baseType: !66, size: 32, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !493, file: !494, line: 405, baseType: !491, size: 32, offset: 416)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !493, file: !494, line: 407, baseType: !609, size: 32, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 32)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !494, line: 324, size: 192, elements: !611)
!611 = !{!612, !614, !615, !616}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !610, file: !494, line: 325, baseType: !613, size: 48)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !543)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !610, file: !494, line: 326, baseType: !613, size: 48, offset: 48)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !610, file: !494, line: 327, baseType: !53, size: 16, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !610, file: !494, line: 330, baseType: !617, size: 64, offset: 128)
!617 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !493, file: !494, line: 408, baseType: !619, size: 32, offset: 480)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 32)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !494, line: 60, size: 288, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !620, file: !494, line: 62, baseType: !66, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !620, file: !494, line: 63, baseType: !66, size: 32, offset: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !620, file: !494, line: 64, baseType: !66, size: 32, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !620, file: !494, line: 65, baseType: !66, size: 32, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !620, file: !494, line: 66, baseType: !66, size: 32, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !620, file: !494, line: 67, baseType: !66, size: 32, offset: 160)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !620, file: !494, line: 68, baseType: !66, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !620, file: !494, line: 69, baseType: !66, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !620, file: !494, line: 70, baseType: !66, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !493, file: !494, line: 409, baseType: !491, size: 32, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !493, file: !494, line: 412, baseType: !633, size: 32, offset: 544)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 32)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !66}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !493, file: !494, line: 416, baseType: !638, size: 32, offset: 576)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 32)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !494, line: 90, size: 1120, elements: !640)
!640 = !{!641, !642, !643, !647}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !639, file: !494, line: 91, baseType: !638, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !639, file: !494, line: 92, baseType: !66, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !639, file: !494, line: 93, baseType: !644, size: 1024, offset: 64)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 1024, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !639, file: !494, line: 94, baseType: !648, size: 32, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 32)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !494, line: 79, size: 2112, elements: !650)
!650 = !{!651, !653, !654, !655}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !649, file: !494, line: 80, baseType: !652, size: 1024)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 1024, elements: !645)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !649, file: !494, line: 81, baseType: !652, size: 1024, offset: 1024)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !649, file: !494, line: 83, baseType: !595, size: 32, offset: 2048)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !649, file: !494, line: 86, baseType: !595, size: 32, offset: 2080)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !493, file: !494, line: 417, baseType: !639, size: 1120, offset: 608)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !493, file: !494, line: 420, baseType: !658, size: 96, offset: 1728)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !494, line: 296, size: 96, elements: !659)
!659 = !{!660, !662, !663}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !658, file: !494, line: 298, baseType: !661, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !658, file: !494, line: 299, baseType: !66, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !658, file: !494, line: 300, baseType: !498, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !493, file: !494, line: 421, baseType: !498, size: 32, offset: 1824)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !493, file: !494, line: 422, baseType: !666, size: 32, offset: 1856)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 32)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !494, line: 359, size: 640, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !675, !676, !677, !678, !679, !680}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !667, file: !494, line: 362, baseType: !491, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !667, file: !494, line: 363, baseType: !558, size: 64, offset: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !667, file: !494, line: 364, baseType: !558, size: 64, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !667, file: !494, line: 365, baseType: !558, size: 64, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !667, file: !494, line: 366, baseType: !674, size: 64, offset: 224)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 64, elements: !231)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !667, file: !494, line: 367, baseType: !66, size: 32, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !667, file: !494, line: 368, baseType: !558, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !667, file: !494, line: 369, baseType: !558, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !667, file: !494, line: 370, baseType: !558, size: 64, offset: 448)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !667, file: !494, line: 371, baseType: !558, size: 64, offset: 512)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !667, file: !494, line: 372, baseType: !558, size: 64, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !493, file: !494, line: 423, baseType: !491, size: 32, offset: 1888)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !567, line: 46, baseType: !7)
!683 = distinct !DICompileUnit(language: DW_LANG_C99, file: !684, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !685, globals: !686, splitDebugInlining: false, nameTableKind: None)
!684 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!685 = !{!491, !489}
!686 = !{!483}
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "r", arg: 1, scope: !485, file: !486, line: 63, type: !492)
!689 = !DILocalVariable(name: "nbytes", arg: 2, scope: !485, file: !486, line: 63, type: !682)
!690 = !DILocalVariable(name: "prev_heap_end", scope: !485, file: !486, line: 67, type: !491)
!691 = !DILocalVariable(name: "stack", scope: !485, file: !486, line: 68, type: !491)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !694, file: !699, line: 4, type: !705, isLocal: false, isDefinition: true)
!694 = distinct !DICompileUnit(language: DW_LANG_C99, file: !695, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !696, splitDebugInlining: false, nameTableKind: None)
!695 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!696 = !{!692, !697, !703}
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !694, file: !699, line: 5, type: !700, isLocal: false, isDefinition: true)
!699 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 88, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 11)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !694, file: !699, line: 6, type: !700, isLocal: false, isDefinition: true)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 248, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 31)
!708 = distinct !DICompileUnit(language: DW_LANG_C99, file: !709, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !710, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!709 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!710 = !{!711}
!711 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !712, line: 1209, baseType: !7, size: 32, elements: !713)
!712 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!713 = !{!714, !715}
!714 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!715 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!716 = !{!717, !719}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !9, line: 116, baseType: !7)
!720 = distinct !DICompileUnit(language: DW_LANG_C99, file: !721, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !722, retainedTypes: !800, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!722 = !{!723}
!723 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !724, line: 150, baseType: !7, size: 32, elements: !725)
!724 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!726 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!727 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!728 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!729 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!730 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!731 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!732 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!733 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!734 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!735 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!736 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!737 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!738 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!739 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!740 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!741 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!742 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!743 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!744 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!745 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!746 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!747 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!748 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!749 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!750 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!751 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!752 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!753 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!754 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!755 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!756 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!757 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!758 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!759 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!760 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!761 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!762 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!763 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!764 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!765 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!766 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!767 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!768 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!769 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!770 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!771 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!772 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!773 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!774 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!775 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!776 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!777 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!778 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!779 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!780 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!781 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!782 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!783 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!784 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!785 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!786 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!787 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!788 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!789 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!790 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!791 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!792 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!793 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!794 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!795 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!796 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!797 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!798 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!799 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!800 = !{!717, !8}
!801 = distinct !DICompileUnit(language: DW_LANG_C99, file: !802, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !803, splitDebugInlining: false, nameTableKind: None)
!802 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!803 = !{!804, !829}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !226, line: 418, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 395, size: 1120, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !806, file: !226, line: 397, baseType: !263, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !806, file: !226, line: 398, baseType: !11, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !806, file: !226, line: 399, baseType: !11, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !806, file: !226, line: 400, baseType: !11, size: 32, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !806, file: !226, line: 401, baseType: !11, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !806, file: !226, line: 402, baseType: !11, size: 32, offset: 160)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !806, file: !226, line: 403, baseType: !270, size: 96, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !806, file: !226, line: 404, baseType: !11, size: 32, offset: 288)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !806, file: !226, line: 405, baseType: !11, size: 32, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !806, file: !226, line: 406, baseType: !11, size: 32, offset: 352)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !806, file: !226, line: 407, baseType: !11, size: 32, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !806, file: !226, line: 408, baseType: !11, size: 32, offset: 416)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !806, file: !226, line: 409, baseType: !11, size: 32, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !806, file: !226, line: 410, baseType: !11, size: 32, offset: 480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !806, file: !226, line: 411, baseType: !281, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !806, file: !226, line: 412, baseType: !263, size: 32, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !806, file: !226, line: 413, baseType: !263, size: 32, offset: 608)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !806, file: !226, line: 414, baseType: !287, size: 128, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !806, file: !226, line: 415, baseType: !291, size: 160, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !806, file: !226, line: 416, baseType: !295, size: 160, offset: 928)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !806, file: !226, line: 417, baseType: !11, size: 32, offset: 1088)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !226, line: 378, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 363, size: 28704, elements: !832)
!832 = !{!833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !831, file: !226, line: 365, baseType: !230, size: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !831, file: !226, line: 366, baseType: !234, size: 768, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !831, file: !226, line: 367, baseType: !230, size: 256, offset: 1024)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !831, file: !226, line: 368, baseType: !234, size: 768, offset: 1280)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !831, file: !226, line: 369, baseType: !230, size: 256, offset: 2048)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !831, file: !226, line: 370, baseType: !234, size: 768, offset: 2304)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !831, file: !226, line: 371, baseType: !230, size: 256, offset: 3072)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !831, file: !226, line: 372, baseType: !234, size: 768, offset: 3328)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !831, file: !226, line: 373, baseType: !230, size: 256, offset: 4096)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !831, file: !226, line: 374, baseType: !245, size: 1792, offset: 4352)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !831, file: !226, line: 375, baseType: !249, size: 1920, offset: 6144)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !831, file: !226, line: 376, baseType: !254, size: 20608, offset: 8064)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !831, file: !226, line: 377, baseType: !11, size: 32, offset: 28672)
!846 = distinct !DICompileUnit(language: DW_LANG_C99, file: !847, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !848, splitDebugInlining: false, nameTableKind: None)
!847 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!848 = !{!849, !723}
!849 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !850, line: 55, baseType: !7, size: 32, elements: !851)
!850 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879}
!852 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!853 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!854 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!855 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!856 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!857 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!858 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!859 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!860 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!861 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!862 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!863 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!864 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!865 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!866 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!867 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!868 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!869 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!870 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!871 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!872 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!873 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!874 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!875 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!876 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!877 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!878 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!879 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!880 = distinct !DICompileUnit(language: DW_LANG_C99, file: !881, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!881 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!882 = distinct !DICompileUnit(language: DW_LANG_C99, file: !883, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !884, retainedTypes: !948, splitDebugInlining: false, nameTableKind: None)
!883 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!884 = !{!885, !892, !849, !923, !929, !933, !937, !943}
!885 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !886, line: 233, baseType: !66, size: 32, elements: !887)
!886 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!887 = !{!888, !889, !890, !891}
!888 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!889 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!890 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!891 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!892 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !323, line: 249, baseType: !7, size: 32, elements: !893)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922}
!894 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!895 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!896 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!897 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!898 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!899 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!900 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!901 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!902 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!903 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!904 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!905 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!906 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!907 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!908 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!909 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!910 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!911 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!912 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!913 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!914 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!915 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!916 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!917 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!918 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!919 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!920 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!921 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!922 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!923 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !886, line: 224, baseType: !66, size: 32, elements: !924)
!924 = !{!925, !926, !927, !928}
!925 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!926 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!927 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!928 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!929 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !886, line: 217, baseType: !7, size: 32, elements: !930)
!930 = !{!931, !932}
!931 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!932 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!933 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !886, line: 210, baseType: !7, size: 32, elements: !934)
!934 = !{!935, !936}
!935 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!936 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!937 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !886, line: 242, baseType: !7, size: 32, elements: !938)
!938 = !{!939, !940, !941, !942}
!939 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!940 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!941 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!942 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!943 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !944, line: 57, baseType: !7, size: 32, elements: !945)
!944 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!945 = !{!946, !947}
!946 = !DIEnumerator(name: "eDirection_IN", value: 0)
!947 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!948 = !{!949, !116, !950, !118, !951, !952}
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !850, line: 87, baseType: !849)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !886, line: 220, baseType: !929)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !886, line: 247, baseType: !937)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !944, line: 60, baseType: !943)
!953 = distinct !DICompileUnit(language: DW_LANG_C99, file: !954, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !955, splitDebugInlining: false, nameTableKind: None)
!954 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!955 = !{!322, !328, !344, !350, !354, !892}
!956 = !{!"Ubuntu clang version 14.0.6"}
!957 = !{i32 7, !"Dwarf Version", i32 2}
!958 = !{i32 2, !"Debug Info Version", i32 3}
!959 = !{i32 1, !"wchar_size", i32 4}
!960 = !{i32 1, !"min_enum_size", i32 4}
!961 = !{i32 1, !"branch-target-enforcement", i32 0}
!962 = !{i32 1, !"sign-return-address", i32 0}
!963 = !{i32 1, !"sign-return-address-all", i32 0}
!964 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!965 = !{i32 7, !"frame-pointer", i32 2}
!966 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !709, file: !709, line: 54, type: !967, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !970)
!967 = !DISubroutineType(types: !968)
!968 = !{!969, !8, !54}
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !9, line: 56, baseType: !66)
!970 = !{!971, !972, !973, !975}
!971 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !966, file: !709, line: 54, type: !8)
!972 = !DILocalVariable(name: "outEnable", arg: 2, scope: !966, file: !709, line: 54, type: !54)
!973 = !DILocalVariable(name: "no", scope: !966, file: !709, line: 57, type: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !9, line: 60, baseType: !53)
!975 = !DILocalVariable(name: "remainder", scope: !966, file: !709, line: 58, type: !974)
!976 = !DILocation(line: 0, scope: !966)
!977 = !DILocation(line: 59, column: 19, scope: !966)
!978 = !DILocation(line: 60, column: 17, scope: !966)
!979 = !DILocation(line: 61, column: 5, scope: !966)
!980 = !DILocation(line: 65, column: 27, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !709, line: 65, column: 17)
!982 = distinct !DILexicalBlock(scope: !966, file: !709, line: 61, column: 17)
!983 = !DILocation(line: 0, scope: !981)
!984 = !DILocation(line: 65, column: 17, scope: !982)
!985 = !DILocation(line: 66, column: 21, scope: !986)
!986 = distinct !DILexicalBlock(scope: !981, file: !709, line: 65, column: 33)
!987 = !DILocation(line: 67, column: 73, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !709, line: 66, column: 38)
!989 = distinct !DILexicalBlock(scope: !986, file: !709, line: 66, column: 21)
!990 = !DILocation(line: 67, column: 69, scope: !988)
!991 = !DILocation(line: 67, column: 66, scope: !988)
!992 = !DILocation(line: 68, column: 17, scope: !988)
!993 = !DILocation(line: 68, column: 28, scope: !989)
!994 = !DILocation(line: 69, column: 77, scope: !995)
!995 = distinct !DILexicalBlock(scope: !996, file: !709, line: 68, column: 45)
!996 = distinct !DILexicalBlock(scope: !989, file: !709, line: 68, column: 28)
!997 = !DILocation(line: 70, column: 77, scope: !995)
!998 = !DILocation(line: 71, column: 17, scope: !995)
!999 = !DILocation(line: 72, column: 77, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !709, line: 71, column: 45)
!1001 = distinct !DILexicalBlock(scope: !996, file: !709, line: 71, column: 28)
!1002 = !DILocation(line: 73, column: 77, scope: !1000)
!1003 = !DILocation(line: 74, column: 17, scope: !1000)
!1004 = !DILocation(line: 75, column: 79, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !709, line: 74, column: 45)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !709, line: 74, column: 28)
!1007 = !DILocation(line: 76, column: 79, scope: !1005)
!1008 = !DILocation(line: 77, column: 17, scope: !1005)
!1009 = !DILocation(line: 78, column: 79, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !709, line: 77, column: 45)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !709, line: 77, column: 28)
!1012 = !DILocation(line: 79, column: 79, scope: !1010)
!1013 = !DILocation(line: 80, column: 17, scope: !1010)
!1014 = !DILocation(line: 81, column: 79, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !709, line: 80, column: 45)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !709, line: 80, column: 28)
!1017 = !DILocation(line: 82, column: 79, scope: !1015)
!1018 = !DILocation(line: 83, column: 17, scope: !1015)
!1019 = !DILocation(line: 85, column: 17, scope: !986)
!1020 = !DILocation(line: 86, column: 13, scope: !986)
!1021 = !DILocation(line: 88, column: 21, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !981, file: !709, line: 86, column: 20)
!1023 = !DILocation(line: 89, column: 72, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !709, line: 88, column: 38)
!1025 = distinct !DILexicalBlock(scope: !1022, file: !709, line: 88, column: 21)
!1026 = !DILocation(line: 89, column: 66, scope: !1024)
!1027 = !DILocation(line: 90, column: 17, scope: !1024)
!1028 = !DILocation(line: 90, column: 28, scope: !1025)
!1029 = !DILocation(line: 91, column: 77, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !709, line: 90, column: 45)
!1031 = distinct !DILexicalBlock(scope: !1025, file: !709, line: 90, column: 28)
!1032 = !DILocation(line: 92, column: 17, scope: !1030)
!1033 = !DILocation(line: 93, column: 77, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !709, line: 92, column: 45)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !709, line: 92, column: 28)
!1036 = !DILocation(line: 94, column: 17, scope: !1034)
!1037 = !DILocation(line: 95, column: 79, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !709, line: 94, column: 45)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !709, line: 94, column: 28)
!1040 = !DILocation(line: 96, column: 17, scope: !1038)
!1041 = !DILocation(line: 97, column: 79, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !709, line: 96, column: 45)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !709, line: 96, column: 28)
!1044 = !DILocation(line: 98, column: 17, scope: !1042)
!1045 = !DILocation(line: 99, column: 79, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !709, line: 98, column: 45)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !709, line: 98, column: 28)
!1048 = !DILocation(line: 100, column: 17, scope: !1046)
!1049 = !DILocation(line: 103, column: 17, scope: !1022)
!1050 = !DILocation(line: 109, column: 27, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !982, file: !709, line: 109, column: 17)
!1052 = !DILocation(line: 0, scope: !1051)
!1053 = !DILocation(line: 109, column: 17, scope: !982)
!1054 = !DILocation(line: 110, column: 21, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !709, line: 109, column: 33)
!1056 = !DILocation(line: 111, column: 73, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !709, line: 110, column: 36)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !709, line: 110, column: 21)
!1059 = !DILocation(line: 111, column: 69, scope: !1057)
!1060 = !DILocation(line: 111, column: 66, scope: !1057)
!1061 = !DILocation(line: 112, column: 17, scope: !1057)
!1062 = !DILocation(line: 113, column: 79, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !709, line: 112, column: 24)
!1064 = !DILocation(line: 114, column: 79, scope: !1063)
!1065 = !DILocation(line: 117, column: 17, scope: !1055)
!1066 = !DILocation(line: 118, column: 13, scope: !1055)
!1067 = !DILocation(line: 120, column: 21, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1051, file: !709, line: 118, column: 20)
!1069 = !DILocation(line: 121, column: 72, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !709, line: 120, column: 36)
!1071 = distinct !DILexicalBlock(scope: !1068, file: !709, line: 120, column: 21)
!1072 = !DILocation(line: 121, column: 66, scope: !1070)
!1073 = !DILocation(line: 122, column: 17, scope: !1070)
!1074 = !DILocation(line: 123, column: 79, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !709, line: 122, column: 24)
!1076 = !DILocation(line: 126, column: 17, scope: !1068)
!1077 = !DILocation(line: 133, column: 1, scope: !966)
!1078 = distinct !DISubprogram(name: "halGPO_Write", scope: !709, file: !709, line: 136, type: !967, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1079)
!1079 = !{!1080, !1081, !1082, !1083}
!1080 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1078, file: !709, line: 136, type: !8)
!1081 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1078, file: !709, line: 136, type: !54)
!1082 = !DILocalVariable(name: "no", scope: !1078, file: !709, line: 138, type: !974)
!1083 = !DILocalVariable(name: "remainder", scope: !1078, file: !709, line: 139, type: !974)
!1084 = !DILocation(line: 0, scope: !1078)
!1085 = !DILocation(line: 140, column: 19, scope: !1078)
!1086 = !DILocation(line: 141, column: 17, scope: !1078)
!1087 = !DILocation(line: 142, column: 5, scope: !1078)
!1088 = !DILocation(line: 145, column: 17, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !709, line: 145, column: 17)
!1090 = distinct !DILexicalBlock(scope: !1078, file: !709, line: 142, column: 17)
!1091 = !DILocation(line: 0, scope: !1089)
!1092 = !DILocation(line: 145, column: 17, scope: !1090)
!1093 = !DILocation(line: 146, column: 17, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1089, file: !709, line: 145, column: 29)
!1095 = !DILocation(line: 147, column: 13, scope: !1094)
!1096 = !DILocation(line: 148, column: 17, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1089, file: !709, line: 147, column: 20)
!1098 = !DILocation(line: 153, column: 17, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1090, file: !709, line: 153, column: 17)
!1100 = !DILocation(line: 0, scope: !1099)
!1101 = !DILocation(line: 153, column: 17, scope: !1090)
!1102 = !DILocation(line: 154, column: 17, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !709, line: 153, column: 29)
!1104 = !DILocation(line: 155, column: 13, scope: !1103)
!1105 = !DILocation(line: 156, column: 17, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1099, file: !709, line: 155, column: 20)
!1107 = !DILocation(line: 163, column: 1, scope: !1078)
!1108 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !709, file: !709, line: 169, type: !1109, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!54, !8}
!1111 = !{!1112, !1113, !1114, !1115}
!1112 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1108, file: !709, line: 169, type: !8)
!1113 = !DILocalVariable(name: "no", scope: !1108, file: !709, line: 171, type: !974)
!1114 = !DILocalVariable(name: "remainder", scope: !1108, file: !709, line: 172, type: !974)
!1115 = !DILocalVariable(name: "dout", scope: !1108, file: !709, line: 175, type: !54)
!1116 = !DILocation(line: 0, scope: !1108)
!1117 = !DILocation(line: 173, column: 19, scope: !1108)
!1118 = !DILocation(line: 174, column: 17, scope: !1108)
!1119 = !DILocation(line: 177, column: 5, scope: !1108)
!1120 = !DILocation(line: 183, column: 13, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1108, file: !709, line: 177, column: 17)
!1122 = !DILocation(line: 0, scope: !1121)
!1123 = !DILocation(line: 187, column: 5, scope: !1108)
!1124 = !DILocation(line: 188, column: 1, scope: !1108)
!1125 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !709, file: !709, line: 189, type: !1109, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1126)
!1126 = !{!1127, !1128, !1129, !1130}
!1127 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1125, file: !709, line: 189, type: !8)
!1128 = !DILocalVariable(name: "no", scope: !1125, file: !709, line: 191, type: !974)
!1129 = !DILocalVariable(name: "remainder", scope: !1125, file: !709, line: 192, type: !974)
!1130 = !DILocalVariable(name: "din", scope: !1125, file: !709, line: 195, type: !54)
!1131 = !DILocation(line: 0, scope: !1125)
!1132 = !DILocation(line: 193, column: 19, scope: !1125)
!1133 = !DILocation(line: 194, column: 17, scope: !1125)
!1134 = !DILocation(line: 196, column: 5, scope: !1125)
!1135 = !DILocation(line: 203, column: 13, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1125, file: !709, line: 196, column: 17)
!1137 = !DILocation(line: 0, scope: !1136)
!1138 = !DILocation(line: 208, column: 5, scope: !1125)
!1139 = !DILocation(line: 209, column: 1, scope: !1125)
!1140 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !709, file: !709, line: 210, type: !1109, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1141)
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1140, file: !709, line: 210, type: !8)
!1143 = !DILocalVariable(name: "no", scope: !1140, file: !709, line: 212, type: !974)
!1144 = !DILocalVariable(name: "remainder", scope: !1140, file: !709, line: 213, type: !974)
!1145 = !DILocalVariable(name: "outEnable", scope: !1140, file: !709, line: 216, type: !54)
!1146 = !DILocation(line: 0, scope: !1140)
!1147 = !DILocation(line: 214, column: 19, scope: !1140)
!1148 = !DILocation(line: 215, column: 17, scope: !1140)
!1149 = !DILocation(line: 218, column: 5, scope: !1140)
!1150 = !DILocation(line: 224, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1140, file: !709, line: 218, column: 17)
!1152 = !DILocation(line: 0, scope: !1151)
!1153 = !DILocation(line: 228, column: 5, scope: !1140)
!1154 = !DILocation(line: 229, column: 1, scope: !1140)
!1155 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !709, file: !709, line: 232, type: !1156, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!969, !8}
!1158 = !{!1159, !1160, !1161}
!1159 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1155, file: !709, line: 232, type: !8)
!1160 = !DILocalVariable(name: "no", scope: !1155, file: !709, line: 234, type: !974)
!1161 = !DILocalVariable(name: "remainder", scope: !1155, file: !709, line: 235, type: !974)
!1162 = !DILocation(line: 0, scope: !1155)
!1163 = !DILocation(line: 236, column: 19, scope: !1155)
!1164 = !DILocation(line: 237, column: 17, scope: !1155)
!1165 = !DILocation(line: 238, column: 5, scope: !1155)
!1166 = !DILocation(line: 239, column: 5, scope: !1155)
!1167 = !DILocation(line: 241, column: 27, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !709, line: 241, column: 17)
!1169 = distinct !DILexicalBlock(scope: !1155, file: !709, line: 239, column: 17)
!1170 = !DILocation(line: 241, column: 17, scope: !1169)
!1171 = !DILocation(line: 241, column: 17, scope: !1168)
!1172 = !DILocation(line: 242, column: 17, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !709, line: 241, column: 34)
!1174 = !DILocation(line: 243, column: 13, scope: !1173)
!1175 = !DILocation(line: 243, column: 24, scope: !1168)
!1176 = !DILocation(line: 244, column: 73, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !709, line: 243, column: 41)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !709, line: 243, column: 24)
!1179 = !DILocation(line: 245, column: 73, scope: !1177)
!1180 = !DILocation(line: 246, column: 13, scope: !1177)
!1181 = !DILocation(line: 247, column: 73, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !709, line: 246, column: 41)
!1183 = distinct !DILexicalBlock(scope: !1178, file: !709, line: 246, column: 24)
!1184 = !DILocation(line: 248, column: 73, scope: !1182)
!1185 = !DILocation(line: 249, column: 13, scope: !1182)
!1186 = !DILocation(line: 250, column: 75, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !709, line: 249, column: 41)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !709, line: 249, column: 24)
!1189 = !DILocation(line: 251, column: 75, scope: !1187)
!1190 = !DILocation(line: 252, column: 13, scope: !1187)
!1191 = !DILocation(line: 253, column: 75, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !709, line: 252, column: 41)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !709, line: 252, column: 24)
!1194 = !DILocation(line: 254, column: 75, scope: !1192)
!1195 = !DILocation(line: 255, column: 13, scope: !1192)
!1196 = !DILocation(line: 256, column: 75, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !709, line: 255, column: 41)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !709, line: 255, column: 24)
!1199 = !DILocation(line: 257, column: 75, scope: !1197)
!1200 = !DILocation(line: 258, column: 13, scope: !1197)
!1201 = !DILocation(line: 261, column: 18, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1169, file: !709, line: 261, column: 17)
!1203 = !DILocation(line: 261, column: 17, scope: !1169)
!1204 = !DILocation(line: 262, column: 75, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !709, line: 261, column: 29)
!1206 = !DILocation(line: 263, column: 75, scope: !1205)
!1207 = !DILocation(line: 264, column: 13, scope: !1205)
!1208 = !DILocation(line: 265, column: 17, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1202, file: !709, line: 264, column: 20)
!1210 = !DILocation(line: 272, column: 1, scope: !1155)
!1211 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !709, file: !709, line: 359, type: !1156, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1211, file: !709, line: 359, type: !8)
!1214 = !DILocalVariable(name: "no", scope: !1211, file: !709, line: 362, type: !974)
!1215 = !DILocalVariable(name: "remainder", scope: !1211, file: !709, line: 363, type: !974)
!1216 = !DILocation(line: 0, scope: !1211)
!1217 = !DILocation(line: 364, column: 19, scope: !1211)
!1218 = !DILocation(line: 365, column: 17, scope: !1211)
!1219 = !DILocation(line: 367, column: 5, scope: !1211)
!1220 = !DILocation(line: 369, column: 27, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !709, line: 369, column: 17)
!1222 = distinct !DILexicalBlock(scope: !1211, file: !709, line: 367, column: 17)
!1223 = !DILocation(line: 369, column: 17, scope: !1222)
!1224 = !DILocation(line: 369, column: 17, scope: !1221)
!1225 = !DILocation(line: 370, column: 17, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !709, line: 369, column: 34)
!1227 = !DILocation(line: 371, column: 13, scope: !1226)
!1228 = !DILocation(line: 371, column: 24, scope: !1221)
!1229 = !DILocation(line: 372, column: 73, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !709, line: 371, column: 41)
!1231 = distinct !DILexicalBlock(scope: !1221, file: !709, line: 371, column: 24)
!1232 = !DILocation(line: 373, column: 73, scope: !1230)
!1233 = !DILocation(line: 374, column: 13, scope: !1230)
!1234 = !DILocation(line: 375, column: 73, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !709, line: 374, column: 41)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !709, line: 374, column: 24)
!1237 = !DILocation(line: 376, column: 73, scope: !1235)
!1238 = !DILocation(line: 377, column: 13, scope: !1235)
!1239 = !DILocation(line: 378, column: 75, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !709, line: 377, column: 41)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !709, line: 377, column: 24)
!1242 = !DILocation(line: 379, column: 75, scope: !1240)
!1243 = !DILocation(line: 380, column: 13, scope: !1240)
!1244 = !DILocation(line: 381, column: 75, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !709, line: 380, column: 41)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !709, line: 380, column: 24)
!1247 = !DILocation(line: 382, column: 75, scope: !1245)
!1248 = !DILocation(line: 383, column: 13, scope: !1245)
!1249 = !DILocation(line: 384, column: 75, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !709, line: 383, column: 41)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !709, line: 383, column: 24)
!1252 = !DILocation(line: 385, column: 75, scope: !1250)
!1253 = !DILocation(line: 386, column: 13, scope: !1250)
!1254 = !DILocation(line: 389, column: 18, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1222, file: !709, line: 389, column: 17)
!1256 = !DILocation(line: 389, column: 17, scope: !1222)
!1257 = !DILocation(line: 390, column: 75, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !709, line: 389, column: 29)
!1259 = !DILocation(line: 391, column: 75, scope: !1258)
!1260 = !DILocation(line: 392, column: 13, scope: !1258)
!1261 = !DILocation(line: 393, column: 17, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1255, file: !709, line: 392, column: 20)
!1263 = !DILocation(line: 401, column: 1, scope: !1211)
!1264 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !709, file: !709, line: 274, type: !1156, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1264, file: !709, line: 274, type: !8)
!1267 = !DILocalVariable(name: "no", scope: !1264, file: !709, line: 276, type: !974)
!1268 = !DILocalVariable(name: "remainder", scope: !1264, file: !709, line: 277, type: !974)
!1269 = !DILocation(line: 0, scope: !1264)
!1270 = !DILocation(line: 278, column: 19, scope: !1264)
!1271 = !DILocation(line: 279, column: 17, scope: !1264)
!1272 = !DILocation(line: 281, column: 5, scope: !1264)
!1273 = !DILocation(line: 283, column: 27, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !709, line: 283, column: 17)
!1275 = distinct !DILexicalBlock(scope: !1264, file: !709, line: 281, column: 17)
!1276 = !DILocation(line: 283, column: 17, scope: !1275)
!1277 = !DILocation(line: 283, column: 17, scope: !1274)
!1278 = !DILocation(line: 284, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !709, line: 283, column: 34)
!1280 = !DILocation(line: 285, column: 13, scope: !1279)
!1281 = !DILocation(line: 285, column: 24, scope: !1274)
!1282 = !DILocation(line: 286, column: 73, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !709, line: 285, column: 41)
!1284 = distinct !DILexicalBlock(scope: !1274, file: !709, line: 285, column: 24)
!1285 = !DILocation(line: 287, column: 73, scope: !1283)
!1286 = !DILocation(line: 288, column: 13, scope: !1283)
!1287 = !DILocation(line: 289, column: 73, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !709, line: 288, column: 41)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !709, line: 288, column: 24)
!1290 = !DILocation(line: 290, column: 73, scope: !1288)
!1291 = !DILocation(line: 291, column: 13, scope: !1288)
!1292 = !DILocation(line: 292, column: 75, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !709, line: 291, column: 41)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !709, line: 291, column: 24)
!1295 = !DILocation(line: 293, column: 75, scope: !1293)
!1296 = !DILocation(line: 294, column: 13, scope: !1293)
!1297 = !DILocation(line: 295, column: 75, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !709, line: 294, column: 41)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !709, line: 294, column: 24)
!1300 = !DILocation(line: 296, column: 75, scope: !1298)
!1301 = !DILocation(line: 297, column: 13, scope: !1298)
!1302 = !DILocation(line: 298, column: 75, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !709, line: 297, column: 41)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !709, line: 297, column: 24)
!1305 = !DILocation(line: 299, column: 75, scope: !1303)
!1306 = !DILocation(line: 300, column: 13, scope: !1303)
!1307 = !DILocation(line: 303, column: 18, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1275, file: !709, line: 303, column: 17)
!1309 = !DILocation(line: 303, column: 17, scope: !1275)
!1310 = !DILocation(line: 304, column: 75, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !709, line: 303, column: 29)
!1312 = !DILocation(line: 305, column: 75, scope: !1311)
!1313 = !DILocation(line: 306, column: 13, scope: !1311)
!1314 = !DILocation(line: 307, column: 17, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !709, line: 306, column: 20)
!1316 = !DILocation(line: 314, column: 1, scope: !1264)
!1317 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !709, file: !709, line: 316, type: !1156, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1318)
!1318 = !{!1319, !1320, !1321}
!1319 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1317, file: !709, line: 316, type: !8)
!1320 = !DILocalVariable(name: "no", scope: !1317, file: !709, line: 318, type: !974)
!1321 = !DILocalVariable(name: "remainder", scope: !1317, file: !709, line: 319, type: !974)
!1322 = !DILocation(line: 0, scope: !1317)
!1323 = !DILocation(line: 320, column: 19, scope: !1317)
!1324 = !DILocation(line: 321, column: 17, scope: !1317)
!1325 = !DILocation(line: 322, column: 5, scope: !1317)
!1326 = !DILocation(line: 323, column: 5, scope: !1317)
!1327 = !DILocation(line: 325, column: 27, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !709, line: 325, column: 17)
!1329 = distinct !DILexicalBlock(scope: !1317, file: !709, line: 323, column: 17)
!1330 = !DILocation(line: 325, column: 17, scope: !1329)
!1331 = !DILocation(line: 325, column: 17, scope: !1328)
!1332 = !DILocation(line: 326, column: 17, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !709, line: 325, column: 34)
!1334 = !DILocation(line: 327, column: 13, scope: !1333)
!1335 = !DILocation(line: 327, column: 24, scope: !1328)
!1336 = !DILocation(line: 328, column: 73, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !709, line: 327, column: 41)
!1338 = distinct !DILexicalBlock(scope: !1328, file: !709, line: 327, column: 24)
!1339 = !DILocation(line: 329, column: 73, scope: !1337)
!1340 = !DILocation(line: 330, column: 13, scope: !1337)
!1341 = !DILocation(line: 331, column: 73, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !709, line: 330, column: 41)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !709, line: 330, column: 24)
!1344 = !DILocation(line: 332, column: 73, scope: !1342)
!1345 = !DILocation(line: 333, column: 13, scope: !1342)
!1346 = !DILocation(line: 334, column: 75, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !709, line: 333, column: 41)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !709, line: 333, column: 24)
!1349 = !DILocation(line: 335, column: 75, scope: !1347)
!1350 = !DILocation(line: 336, column: 13, scope: !1347)
!1351 = !DILocation(line: 337, column: 75, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !709, line: 336, column: 41)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !709, line: 336, column: 24)
!1354 = !DILocation(line: 338, column: 75, scope: !1352)
!1355 = !DILocation(line: 339, column: 13, scope: !1352)
!1356 = !DILocation(line: 340, column: 75, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !709, line: 339, column: 41)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !709, line: 339, column: 24)
!1359 = !DILocation(line: 341, column: 75, scope: !1357)
!1360 = !DILocation(line: 342, column: 13, scope: !1357)
!1361 = !DILocation(line: 345, column: 18, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1329, file: !709, line: 345, column: 17)
!1363 = !DILocation(line: 345, column: 17, scope: !1329)
!1364 = !DILocation(line: 346, column: 75, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !709, line: 345, column: 29)
!1366 = !DILocation(line: 347, column: 75, scope: !1365)
!1367 = !DILocation(line: 348, column: 13, scope: !1365)
!1368 = !DILocation(line: 349, column: 17, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1362, file: !709, line: 348, column: 20)
!1370 = !DILocation(line: 357, column: 1, scope: !1317)
!1371 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !709, file: !709, line: 404, type: !967, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1372)
!1372 = !{!1373, !1374, !1375, !1376}
!1373 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1371, file: !709, line: 404, type: !8)
!1374 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1371, file: !709, line: 404, type: !54)
!1375 = !DILocalVariable(name: "no", scope: !1371, file: !709, line: 406, type: !974)
!1376 = !DILocalVariable(name: "remainder", scope: !1371, file: !709, line: 407, type: !974)
!1377 = !DILocation(line: 0, scope: !1371)
!1378 = !DILocation(line: 408, column: 19, scope: !1371)
!1379 = !DILocation(line: 409, column: 17, scope: !1371)
!1380 = !DILocation(line: 411, column: 5, scope: !1371)
!1381 = !DILocation(line: 413, column: 84, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1371, file: !709, line: 411, column: 17)
!1383 = !DILocation(line: 413, column: 70, scope: !1382)
!1384 = !DILocation(line: 413, column: 64, scope: !1382)
!1385 = !DILocation(line: 413, column: 61, scope: !1382)
!1386 = !DILocation(line: 414, column: 79, scope: !1382)
!1387 = !DILocation(line: 414, column: 83, scope: !1382)
!1388 = !DILocation(line: 414, column: 88, scope: !1382)
!1389 = !DILocation(line: 414, column: 61, scope: !1382)
!1390 = !DILocation(line: 415, column: 13, scope: !1382)
!1391 = !DILocation(line: 417, column: 27, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1382, file: !709, line: 417, column: 17)
!1393 = !DILocation(line: 417, column: 17, scope: !1382)
!1394 = !DILocation(line: 418, column: 88, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !709, line: 417, column: 33)
!1396 = !DILocation(line: 418, column: 74, scope: !1395)
!1397 = !DILocation(line: 418, column: 68, scope: !1395)
!1398 = !DILocation(line: 418, column: 65, scope: !1395)
!1399 = !DILocation(line: 419, column: 83, scope: !1395)
!1400 = !DILocation(line: 419, column: 87, scope: !1395)
!1401 = !DILocation(line: 419, column: 92, scope: !1395)
!1402 = !DILocation(line: 419, column: 65, scope: !1395)
!1403 = !DILocation(line: 420, column: 13, scope: !1395)
!1404 = !DILocation(line: 420, column: 24, scope: !1392)
!1405 = !DILocation(line: 421, column: 73, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !709, line: 420, column: 41)
!1407 = distinct !DILexicalBlock(scope: !1392, file: !709, line: 420, column: 24)
!1408 = !DILocation(line: 422, column: 91, scope: !1406)
!1409 = !DILocation(line: 422, column: 100, scope: !1406)
!1410 = !DILocation(line: 422, column: 73, scope: !1406)
!1411 = !DILocation(line: 423, column: 73, scope: !1406)
!1412 = !DILocation(line: 424, column: 13, scope: !1406)
!1413 = !DILocation(line: 425, column: 73, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !709, line: 424, column: 41)
!1415 = distinct !DILexicalBlock(scope: !1407, file: !709, line: 424, column: 24)
!1416 = !DILocation(line: 426, column: 91, scope: !1414)
!1417 = !DILocation(line: 426, column: 100, scope: !1414)
!1418 = !DILocation(line: 426, column: 73, scope: !1414)
!1419 = !DILocation(line: 427, column: 73, scope: !1414)
!1420 = !DILocation(line: 428, column: 13, scope: !1414)
!1421 = !DILocation(line: 429, column: 75, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !709, line: 428, column: 41)
!1423 = distinct !DILexicalBlock(scope: !1415, file: !709, line: 428, column: 24)
!1424 = !DILocation(line: 430, column: 93, scope: !1422)
!1425 = !DILocation(line: 430, column: 102, scope: !1422)
!1426 = !DILocation(line: 430, column: 75, scope: !1422)
!1427 = !DILocation(line: 431, column: 75, scope: !1422)
!1428 = !DILocation(line: 432, column: 13, scope: !1422)
!1429 = !DILocation(line: 433, column: 75, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !709, line: 432, column: 41)
!1431 = distinct !DILexicalBlock(scope: !1423, file: !709, line: 432, column: 24)
!1432 = !DILocation(line: 434, column: 93, scope: !1430)
!1433 = !DILocation(line: 434, column: 102, scope: !1430)
!1434 = !DILocation(line: 434, column: 75, scope: !1430)
!1435 = !DILocation(line: 435, column: 75, scope: !1430)
!1436 = !DILocation(line: 436, column: 13, scope: !1430)
!1437 = !DILocation(line: 437, column: 75, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !709, line: 436, column: 41)
!1439 = distinct !DILexicalBlock(scope: !1431, file: !709, line: 436, column: 24)
!1440 = !DILocation(line: 438, column: 93, scope: !1438)
!1441 = !DILocation(line: 438, column: 102, scope: !1438)
!1442 = !DILocation(line: 438, column: 75, scope: !1438)
!1443 = !DILocation(line: 439, column: 75, scope: !1438)
!1444 = !DILocation(line: 440, column: 13, scope: !1438)
!1445 = !DILocation(line: 443, column: 18, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1382, file: !709, line: 443, column: 17)
!1447 = !DILocation(line: 443, column: 17, scope: !1382)
!1448 = !DILocation(line: 444, column: 75, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !709, line: 443, column: 29)
!1450 = !DILocation(line: 445, column: 93, scope: !1449)
!1451 = !DILocation(line: 445, column: 102, scope: !1449)
!1452 = !DILocation(line: 445, column: 75, scope: !1449)
!1453 = !DILocation(line: 446, column: 75, scope: !1449)
!1454 = !DILocation(line: 447, column: 13, scope: !1449)
!1455 = !DILocation(line: 448, column: 88, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1446, file: !709, line: 447, column: 20)
!1457 = !DILocation(line: 448, column: 74, scope: !1456)
!1458 = !DILocation(line: 448, column: 68, scope: !1456)
!1459 = !DILocation(line: 448, column: 65, scope: !1456)
!1460 = !DILocation(line: 449, column: 83, scope: !1456)
!1461 = !DILocation(line: 449, column: 87, scope: !1456)
!1462 = !DILocation(line: 449, column: 92, scope: !1456)
!1463 = !DILocation(line: 449, column: 65, scope: !1456)
!1464 = !DILocation(line: 453, column: 84, scope: !1382)
!1465 = !DILocation(line: 453, column: 70, scope: !1382)
!1466 = !DILocation(line: 453, column: 64, scope: !1382)
!1467 = !DILocation(line: 453, column: 61, scope: !1382)
!1468 = !DILocation(line: 454, column: 79, scope: !1382)
!1469 = !DILocation(line: 454, column: 83, scope: !1382)
!1470 = !DILocation(line: 454, column: 88, scope: !1382)
!1471 = !DILocation(line: 454, column: 61, scope: !1382)
!1472 = !DILocation(line: 455, column: 13, scope: !1382)
!1473 = !DILocation(line: 460, column: 1, scope: !1371)
!1474 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !709, file: !709, line: 463, type: !1475, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1478)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!969, !8, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!1478 = !{!1479, !1480, !1481, !1482, !1483}
!1479 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1474, file: !709, line: 463, type: !8)
!1480 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1474, file: !709, line: 463, type: !1477)
!1481 = !DILocalVariable(name: "no", scope: !1474, file: !709, line: 465, type: !974)
!1482 = !DILocalVariable(name: "remainder", scope: !1474, file: !709, line: 466, type: !974)
!1483 = !DILocalVariable(name: "temp", scope: !1474, file: !709, line: 467, type: !8)
!1484 = !DILocation(line: 0, scope: !1474)
!1485 = !DILocation(line: 468, column: 19, scope: !1474)
!1486 = !DILocation(line: 469, column: 17, scope: !1474)
!1487 = !DILocation(line: 471, column: 5, scope: !1474)
!1488 = !DILocation(line: 473, column: 20, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1474, file: !709, line: 471, column: 17)
!1490 = !DILocation(line: 474, column: 40, scope: !1489)
!1491 = !DILocation(line: 474, column: 26, scope: !1489)
!1492 = !DILocation(line: 474, column: 18, scope: !1489)
!1493 = !DILocation(line: 475, column: 40, scope: !1489)
!1494 = !DILocation(line: 475, column: 29, scope: !1489)
!1495 = !DILocation(line: 476, column: 13, scope: !1489)
!1496 = !DILocation(line: 478, column: 27, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1489, file: !709, line: 478, column: 17)
!1498 = !DILocation(line: 478, column: 17, scope: !1489)
!1499 = !DILocation(line: 479, column: 24, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !709, line: 478, column: 33)
!1501 = !DILocation(line: 480, column: 44, scope: !1500)
!1502 = !DILocation(line: 480, column: 30, scope: !1500)
!1503 = !DILocation(line: 480, column: 22, scope: !1500)
!1504 = !DILocation(line: 481, column: 44, scope: !1500)
!1505 = !DILocation(line: 481, column: 33, scope: !1500)
!1506 = !DILocation(line: 482, column: 13, scope: !1500)
!1507 = !DILocation(line: 482, column: 24, scope: !1497)
!1508 = !DILocation(line: 483, column: 24, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !709, line: 482, column: 41)
!1510 = distinct !DILexicalBlock(scope: !1497, file: !709, line: 482, column: 24)
!1511 = !DILocation(line: 485, column: 53, scope: !1509)
!1512 = !DILocation(line: 485, column: 33, scope: !1509)
!1513 = !DILocation(line: 486, column: 13, scope: !1509)
!1514 = !DILocation(line: 487, column: 24, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !709, line: 486, column: 41)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !709, line: 486, column: 24)
!1517 = !DILocation(line: 489, column: 53, scope: !1515)
!1518 = !DILocation(line: 489, column: 33, scope: !1515)
!1519 = !DILocation(line: 490, column: 13, scope: !1515)
!1520 = !DILocation(line: 491, column: 24, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !709, line: 490, column: 41)
!1522 = distinct !DILexicalBlock(scope: !1516, file: !709, line: 490, column: 24)
!1523 = !DILocation(line: 493, column: 53, scope: !1521)
!1524 = !DILocation(line: 493, column: 33, scope: !1521)
!1525 = !DILocation(line: 494, column: 13, scope: !1521)
!1526 = !DILocation(line: 495, column: 24, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !709, line: 494, column: 41)
!1528 = distinct !DILexicalBlock(scope: !1522, file: !709, line: 494, column: 24)
!1529 = !DILocation(line: 497, column: 53, scope: !1527)
!1530 = !DILocation(line: 497, column: 33, scope: !1527)
!1531 = !DILocation(line: 498, column: 13, scope: !1527)
!1532 = !DILocation(line: 499, column: 24, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !709, line: 498, column: 41)
!1534 = distinct !DILexicalBlock(scope: !1528, file: !709, line: 498, column: 24)
!1535 = !DILocation(line: 501, column: 53, scope: !1533)
!1536 = !DILocation(line: 501, column: 33, scope: !1533)
!1537 = !DILocation(line: 502, column: 13, scope: !1533)
!1538 = !DILocation(line: 505, column: 18, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1489, file: !709, line: 505, column: 17)
!1540 = !DILocation(line: 505, column: 17, scope: !1489)
!1541 = !DILocation(line: 506, column: 24, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !709, line: 505, column: 29)
!1543 = !DILocation(line: 508, column: 53, scope: !1542)
!1544 = !DILocation(line: 508, column: 33, scope: !1542)
!1545 = !DILocation(line: 509, column: 13, scope: !1542)
!1546 = !DILocation(line: 510, column: 24, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !709, line: 509, column: 20)
!1548 = !DILocation(line: 511, column: 44, scope: !1547)
!1549 = !DILocation(line: 511, column: 30, scope: !1547)
!1550 = !DILocation(line: 511, column: 22, scope: !1547)
!1551 = !DILocation(line: 512, column: 44, scope: !1547)
!1552 = !DILocation(line: 512, column: 33, scope: !1547)
!1553 = !DILocation(line: 516, column: 20, scope: !1489)
!1554 = !DILocation(line: 517, column: 40, scope: !1489)
!1555 = !DILocation(line: 517, column: 26, scope: !1489)
!1556 = !DILocation(line: 517, column: 18, scope: !1489)
!1557 = !DILocation(line: 518, column: 40, scope: !1489)
!1558 = !DILocation(line: 518, column: 29, scope: !1489)
!1559 = !DILocation(line: 519, column: 13, scope: !1489)
!1560 = !DILocation(line: 0, scope: !1489)
!1561 = !DILocation(line: 524, column: 1, scope: !1474)
!1562 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !709, file: !709, line: 526, type: !1563, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !1566)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !8, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !712, line: 1212, baseType: !711)
!1566 = !{!1567, !1568, !1569, !1570}
!1567 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1562, file: !709, line: 526, type: !8)
!1568 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1562, file: !709, line: 526, type: !1565)
!1569 = !DILocalVariable(name: "no", scope: !1562, file: !709, line: 529, type: !974)
!1570 = !DILocalVariable(name: "remainder", scope: !1562, file: !709, line: 530, type: !974)
!1571 = !DILocation(line: 0, scope: !1562)
!1572 = !DILocation(line: 531, column: 19, scope: !1562)
!1573 = !DILocation(line: 532, column: 17, scope: !1562)
!1574 = !DILocation(line: 534, column: 9, scope: !1562)
!1575 = !DILocation(line: 536, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !709, line: 534, column: 45)
!1577 = distinct !DILexicalBlock(scope: !1562, file: !709, line: 534, column: 9)
!1578 = !DILocation(line: 538, column: 56, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !709, line: 536, column: 21)
!1580 = !DILocation(line: 538, column: 53, scope: !1579)
!1581 = !DILocation(line: 538, column: 47, scope: !1579)
!1582 = !DILocation(line: 539, column: 17, scope: !1579)
!1583 = !DILocation(line: 541, column: 56, scope: !1579)
!1584 = !DILocation(line: 541, column: 53, scope: !1579)
!1585 = !DILocation(line: 541, column: 47, scope: !1579)
!1586 = !DILocation(line: 542, column: 17, scope: !1579)
!1587 = !DILocation(line: 548, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !709, line: 547, column: 51)
!1589 = distinct !DILexicalBlock(scope: !1577, file: !709, line: 547, column: 16)
!1590 = !DILocation(line: 550, column: 57, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !709, line: 548, column: 21)
!1592 = !DILocation(line: 550, column: 54, scope: !1591)
!1593 = !DILocation(line: 550, column: 50, scope: !1591)
!1594 = !DILocation(line: 550, column: 47, scope: !1591)
!1595 = !DILocation(line: 551, column: 17, scope: !1591)
!1596 = !DILocation(line: 553, column: 57, scope: !1591)
!1597 = !DILocation(line: 553, column: 54, scope: !1591)
!1598 = !DILocation(line: 553, column: 50, scope: !1591)
!1599 = !DILocation(line: 553, column: 47, scope: !1591)
!1600 = !DILocation(line: 554, column: 17, scope: !1591)
!1601 = !DILocation(line: 560, column: 1, scope: !1562)
!1602 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !721, file: !721, line: 85, type: !1603, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1607)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!1605, !1606, !54}
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !9, line: 79, baseType: null)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !724, line: 225, baseType: !723)
!1607 = !{!1608, !1609, !1610}
!1608 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1602, file: !721, line: 85, type: !1606)
!1609 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1602, file: !721, line: 85, type: !54)
!1610 = !DILocalVariable(name: "temp", scope: !1602, file: !721, line: 87, type: !12)
!1611 = !DILocation(line: 0, scope: !1602)
!1612 = !DILocation(line: 88, column: 5, scope: !1602)
!1613 = !DILocation(line: 91, column: 20, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1602, file: !721, line: 88, column: 24)
!1615 = !DILocation(line: 92, column: 18, scope: !1614)
!1616 = !DILocation(line: 93, column: 66, scope: !1614)
!1617 = !DILocation(line: 93, column: 63, scope: !1614)
!1618 = !DILocation(line: 93, column: 56, scope: !1614)
!1619 = !DILocation(line: 94, column: 13, scope: !1614)
!1620 = !DILocation(line: 97, column: 20, scope: !1614)
!1621 = !DILocation(line: 98, column: 18, scope: !1614)
!1622 = !DILocation(line: 99, column: 67, scope: !1614)
!1623 = !DILocation(line: 99, column: 74, scope: !1614)
!1624 = !DILocation(line: 99, column: 64, scope: !1614)
!1625 = !DILocation(line: 99, column: 56, scope: !1614)
!1626 = !DILocation(line: 100, column: 13, scope: !1614)
!1627 = !DILocation(line: 103, column: 20, scope: !1614)
!1628 = !DILocation(line: 104, column: 18, scope: !1614)
!1629 = !DILocation(line: 105, column: 67, scope: !1614)
!1630 = !DILocation(line: 105, column: 74, scope: !1614)
!1631 = !DILocation(line: 105, column: 64, scope: !1614)
!1632 = !DILocation(line: 105, column: 56, scope: !1614)
!1633 = !DILocation(line: 106, column: 13, scope: !1614)
!1634 = !DILocation(line: 109, column: 20, scope: !1614)
!1635 = !DILocation(line: 110, column: 18, scope: !1614)
!1636 = !DILocation(line: 111, column: 67, scope: !1614)
!1637 = !DILocation(line: 111, column: 74, scope: !1614)
!1638 = !DILocation(line: 111, column: 64, scope: !1614)
!1639 = !DILocation(line: 111, column: 56, scope: !1614)
!1640 = !DILocation(line: 112, column: 13, scope: !1614)
!1641 = !DILocation(line: 115, column: 20, scope: !1614)
!1642 = !DILocation(line: 116, column: 18, scope: !1614)
!1643 = !DILocation(line: 117, column: 67, scope: !1614)
!1644 = !DILocation(line: 117, column: 74, scope: !1614)
!1645 = !DILocation(line: 117, column: 64, scope: !1614)
!1646 = !DILocation(line: 117, column: 56, scope: !1614)
!1647 = !DILocation(line: 118, column: 13, scope: !1614)
!1648 = !DILocation(line: 121, column: 20, scope: !1614)
!1649 = !DILocation(line: 122, column: 18, scope: !1614)
!1650 = !DILocation(line: 123, column: 67, scope: !1614)
!1651 = !DILocation(line: 123, column: 74, scope: !1614)
!1652 = !DILocation(line: 123, column: 64, scope: !1614)
!1653 = !DILocation(line: 123, column: 56, scope: !1614)
!1654 = !DILocation(line: 124, column: 13, scope: !1614)
!1655 = !DILocation(line: 127, column: 20, scope: !1614)
!1656 = !DILocation(line: 128, column: 18, scope: !1614)
!1657 = !DILocation(line: 129, column: 67, scope: !1614)
!1658 = !DILocation(line: 129, column: 74, scope: !1614)
!1659 = !DILocation(line: 129, column: 64, scope: !1614)
!1660 = !DILocation(line: 129, column: 56, scope: !1614)
!1661 = !DILocation(line: 130, column: 13, scope: !1614)
!1662 = !DILocation(line: 133, column: 20, scope: !1614)
!1663 = !DILocation(line: 134, column: 18, scope: !1614)
!1664 = !DILocation(line: 135, column: 67, scope: !1614)
!1665 = !DILocation(line: 135, column: 74, scope: !1614)
!1666 = !DILocation(line: 135, column: 64, scope: !1614)
!1667 = !DILocation(line: 135, column: 56, scope: !1614)
!1668 = !DILocation(line: 136, column: 13, scope: !1614)
!1669 = !DILocation(line: 139, column: 20, scope: !1614)
!1670 = !DILocation(line: 140, column: 18, scope: !1614)
!1671 = !DILocation(line: 141, column: 67, scope: !1614)
!1672 = !DILocation(line: 141, column: 64, scope: !1614)
!1673 = !DILocation(line: 141, column: 56, scope: !1614)
!1674 = !DILocation(line: 142, column: 13, scope: !1614)
!1675 = !DILocation(line: 145, column: 20, scope: !1614)
!1676 = !DILocation(line: 146, column: 18, scope: !1614)
!1677 = !DILocation(line: 147, column: 67, scope: !1614)
!1678 = !DILocation(line: 147, column: 74, scope: !1614)
!1679 = !DILocation(line: 147, column: 64, scope: !1614)
!1680 = !DILocation(line: 147, column: 56, scope: !1614)
!1681 = !DILocation(line: 148, column: 13, scope: !1614)
!1682 = !DILocation(line: 151, column: 20, scope: !1614)
!1683 = !DILocation(line: 152, column: 18, scope: !1614)
!1684 = !DILocation(line: 153, column: 67, scope: !1614)
!1685 = !DILocation(line: 153, column: 74, scope: !1614)
!1686 = !DILocation(line: 153, column: 64, scope: !1614)
!1687 = !DILocation(line: 153, column: 56, scope: !1614)
!1688 = !DILocation(line: 154, column: 13, scope: !1614)
!1689 = !DILocation(line: 157, column: 20, scope: !1614)
!1690 = !DILocation(line: 158, column: 18, scope: !1614)
!1691 = !DILocation(line: 159, column: 67, scope: !1614)
!1692 = !DILocation(line: 159, column: 74, scope: !1614)
!1693 = !DILocation(line: 159, column: 64, scope: !1614)
!1694 = !DILocation(line: 159, column: 56, scope: !1614)
!1695 = !DILocation(line: 160, column: 29, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1614, file: !721, line: 160, column: 17)
!1697 = !DILocation(line: 161, column: 17, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1696, file: !721, line: 160, column: 60)
!1699 = !DILocation(line: 162, column: 13, scope: !1698)
!1700 = !DILocation(line: 166, column: 20, scope: !1614)
!1701 = !DILocation(line: 167, column: 18, scope: !1614)
!1702 = !DILocation(line: 168, column: 67, scope: !1614)
!1703 = !DILocation(line: 168, column: 74, scope: !1614)
!1704 = !DILocation(line: 168, column: 64, scope: !1614)
!1705 = !DILocation(line: 168, column: 56, scope: !1614)
!1706 = !DILocation(line: 169, column: 29, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1614, file: !721, line: 169, column: 17)
!1708 = !DILocation(line: 170, column: 17, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1707, file: !721, line: 169, column: 45)
!1710 = !DILocation(line: 171, column: 13, scope: !1709)
!1711 = !DILocation(line: 175, column: 20, scope: !1614)
!1712 = !DILocation(line: 176, column: 18, scope: !1614)
!1713 = !DILocation(line: 177, column: 67, scope: !1614)
!1714 = !DILocation(line: 177, column: 74, scope: !1614)
!1715 = !DILocation(line: 177, column: 64, scope: !1614)
!1716 = !DILocation(line: 177, column: 56, scope: !1614)
!1717 = !DILocation(line: 178, column: 19, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1614, file: !721, line: 178, column: 17)
!1719 = !DILocation(line: 178, column: 17, scope: !1614)
!1720 = !DILocation(line: 179, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !721, line: 178, column: 30)
!1722 = !DILocation(line: 180, column: 13, scope: !1721)
!1723 = !DILocation(line: 184, column: 20, scope: !1614)
!1724 = !DILocation(line: 185, column: 18, scope: !1614)
!1725 = !DILocation(line: 186, column: 67, scope: !1614)
!1726 = !DILocation(line: 186, column: 74, scope: !1614)
!1727 = !DILocation(line: 186, column: 64, scope: !1614)
!1728 = !DILocation(line: 186, column: 56, scope: !1614)
!1729 = !DILocation(line: 187, column: 29, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1614, file: !721, line: 187, column: 17)
!1731 = !DILocation(line: 188, column: 17, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1730, file: !721, line: 187, column: 45)
!1733 = !DILocation(line: 189, column: 13, scope: !1732)
!1734 = !DILocation(line: 193, column: 20, scope: !1614)
!1735 = !DILocation(line: 194, column: 18, scope: !1614)
!1736 = !DILocation(line: 195, column: 67, scope: !1614)
!1737 = !DILocation(line: 195, column: 74, scope: !1614)
!1738 = !DILocation(line: 195, column: 64, scope: !1614)
!1739 = !DILocation(line: 195, column: 56, scope: !1614)
!1740 = !DILocation(line: 196, column: 29, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1614, file: !721, line: 196, column: 17)
!1742 = !DILocation(line: 197, column: 17, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1741, file: !721, line: 196, column: 45)
!1744 = !DILocation(line: 198, column: 13, scope: !1743)
!1745 = !DILocation(line: 202, column: 20, scope: !1614)
!1746 = !DILocation(line: 203, column: 18, scope: !1614)
!1747 = !DILocation(line: 204, column: 67, scope: !1614)
!1748 = !DILocation(line: 204, column: 64, scope: !1614)
!1749 = !DILocation(line: 204, column: 56, scope: !1614)
!1750 = !DILocation(line: 205, column: 29, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1614, file: !721, line: 205, column: 17)
!1752 = !DILocation(line: 206, column: 17, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1751, file: !721, line: 205, column: 45)
!1754 = !DILocation(line: 207, column: 13, scope: !1753)
!1755 = !DILocation(line: 211, column: 20, scope: !1614)
!1756 = !DILocation(line: 212, column: 18, scope: !1614)
!1757 = !DILocation(line: 213, column: 67, scope: !1614)
!1758 = !DILocation(line: 213, column: 74, scope: !1614)
!1759 = !DILocation(line: 213, column: 64, scope: !1614)
!1760 = !DILocation(line: 213, column: 56, scope: !1614)
!1761 = !DILocation(line: 214, column: 13, scope: !1614)
!1762 = !DILocation(line: 217, column: 20, scope: !1614)
!1763 = !DILocation(line: 218, column: 18, scope: !1614)
!1764 = !DILocation(line: 219, column: 67, scope: !1614)
!1765 = !DILocation(line: 219, column: 74, scope: !1614)
!1766 = !DILocation(line: 219, column: 64, scope: !1614)
!1767 = !DILocation(line: 219, column: 56, scope: !1614)
!1768 = !DILocation(line: 220, column: 13, scope: !1614)
!1769 = !DILocation(line: 223, column: 20, scope: !1614)
!1770 = !DILocation(line: 224, column: 18, scope: !1614)
!1771 = !DILocation(line: 225, column: 67, scope: !1614)
!1772 = !DILocation(line: 225, column: 74, scope: !1614)
!1773 = !DILocation(line: 225, column: 64, scope: !1614)
!1774 = !DILocation(line: 225, column: 56, scope: !1614)
!1775 = !DILocation(line: 226, column: 13, scope: !1614)
!1776 = !DILocation(line: 229, column: 20, scope: !1614)
!1777 = !DILocation(line: 230, column: 18, scope: !1614)
!1778 = !DILocation(line: 231, column: 67, scope: !1614)
!1779 = !DILocation(line: 231, column: 74, scope: !1614)
!1780 = !DILocation(line: 231, column: 64, scope: !1614)
!1781 = !DILocation(line: 231, column: 56, scope: !1614)
!1782 = !DILocation(line: 232, column: 13, scope: !1614)
!1783 = !DILocation(line: 235, column: 20, scope: !1614)
!1784 = !DILocation(line: 236, column: 18, scope: !1614)
!1785 = !DILocation(line: 237, column: 66, scope: !1614)
!1786 = !DILocation(line: 237, column: 73, scope: !1614)
!1787 = !DILocation(line: 237, column: 63, scope: !1614)
!1788 = !DILocation(line: 237, column: 56, scope: !1614)
!1789 = !DILocation(line: 238, column: 13, scope: !1614)
!1790 = !DILocation(line: 241, column: 20, scope: !1614)
!1791 = !DILocation(line: 242, column: 18, scope: !1614)
!1792 = !DILocation(line: 243, column: 67, scope: !1614)
!1793 = !DILocation(line: 243, column: 74, scope: !1614)
!1794 = !DILocation(line: 243, column: 64, scope: !1614)
!1795 = !DILocation(line: 243, column: 56, scope: !1614)
!1796 = !DILocation(line: 244, column: 13, scope: !1614)
!1797 = !DILocation(line: 247, column: 20, scope: !1614)
!1798 = !DILocation(line: 248, column: 18, scope: !1614)
!1799 = !DILocation(line: 249, column: 67, scope: !1614)
!1800 = !DILocation(line: 249, column: 74, scope: !1614)
!1801 = !DILocation(line: 249, column: 64, scope: !1614)
!1802 = !DILocation(line: 249, column: 56, scope: !1614)
!1803 = !DILocation(line: 250, column: 13, scope: !1614)
!1804 = !DILocation(line: 253, column: 20, scope: !1614)
!1805 = !DILocation(line: 254, column: 18, scope: !1614)
!1806 = !DILocation(line: 255, column: 67, scope: !1614)
!1807 = !DILocation(line: 255, column: 74, scope: !1614)
!1808 = !DILocation(line: 255, column: 64, scope: !1614)
!1809 = !DILocation(line: 255, column: 56, scope: !1614)
!1810 = !DILocation(line: 256, column: 13, scope: !1614)
!1811 = !DILocation(line: 259, column: 20, scope: !1614)
!1812 = !DILocation(line: 260, column: 18, scope: !1614)
!1813 = !DILocation(line: 261, column: 67, scope: !1614)
!1814 = !DILocation(line: 261, column: 74, scope: !1614)
!1815 = !DILocation(line: 261, column: 64, scope: !1614)
!1816 = !DILocation(line: 261, column: 56, scope: !1614)
!1817 = !DILocation(line: 262, column: 13, scope: !1614)
!1818 = !DILocation(line: 265, column: 20, scope: !1614)
!1819 = !DILocation(line: 266, column: 18, scope: !1614)
!1820 = !DILocation(line: 267, column: 67, scope: !1614)
!1821 = !DILocation(line: 267, column: 74, scope: !1614)
!1822 = !DILocation(line: 267, column: 64, scope: !1614)
!1823 = !DILocation(line: 267, column: 56, scope: !1614)
!1824 = !DILocation(line: 268, column: 13, scope: !1614)
!1825 = !DILocation(line: 271, column: 20, scope: !1614)
!1826 = !DILocation(line: 272, column: 18, scope: !1614)
!1827 = !DILocation(line: 273, column: 67, scope: !1614)
!1828 = !DILocation(line: 273, column: 74, scope: !1614)
!1829 = !DILocation(line: 273, column: 64, scope: !1614)
!1830 = !DILocation(line: 273, column: 56, scope: !1614)
!1831 = !DILocation(line: 274, column: 13, scope: !1614)
!1832 = !DILocation(line: 278, column: 1, scope: !1602)
!1833 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !802, file: !802, line: 47, type: !1834, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !12}
!1836 = !{!1837}
!1837 = !DILocalVariable(name: "addr", arg: 1, scope: !1833, file: !802, line: 47, type: !12)
!1838 = !DILocation(line: 0, scope: !1833)
!1839 = !DILocation(line: 49, column: 15, scope: !1833)
!1840 = !DILocation(line: 51, column: 5, scope: !1833)
!1841 = !{i64 2624}
!1842 = !DILocation(line: 52, column: 5, scope: !1833)
!1843 = !{i64 2651}
!1844 = !DILocation(line: 53, column: 1, scope: !1833)
!1845 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !802, file: !802, line: 56, type: !1846, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !7}
!1848 = !{!1849}
!1849 = !DILocalVariable(name: "source", arg: 1, scope: !1845, file: !802, line: 56, type: !7)
!1850 = !DILocation(line: 0, scope: !1845)
!1851 = !DILocation(line: 58, column: 16, scope: !1845)
!1852 = !DILocation(line: 59, column: 1, scope: !1845)
!1853 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !802, file: !802, line: 61, type: !1854, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !1856)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!12}
!1856 = !{!1857}
!1857 = !DILocalVariable(name: "mask", scope: !1853, file: !802, line: 63, type: !12)
!1858 = !DILocation(line: 470, column: 3, scope: !1859, inlinedAt: !1863)
!1859 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1860, file: !1860, line: 466, type: !1854, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !1861)
!1860 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!1861 = !{!1862}
!1862 = !DILocalVariable(name: "result", scope: !1859, file: !1860, line: 468, type: !12)
!1863 = distinct !DILocation(line: 64, column: 5, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1853, file: !802, line: 64, column: 5)
!1865 = !{i64 302174}
!1866 = !DILocation(line: 0, scope: !1859, inlinedAt: !1863)
!1867 = !DILocation(line: 0, scope: !1853)
!1868 = !DILocation(line: 330, column: 3, scope: !1869, inlinedAt: !1871)
!1869 = distinct !DISubprogram(name: "__disable_irq", scope: !1860, file: !1860, line: 328, type: !374, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !1870)
!1870 = !{}
!1871 = distinct !DILocation(line: 64, column: 5, scope: !1864)
!1872 = !{i64 298838}
!1873 = !DILocation(line: 65, column: 5, scope: !1853)
!1874 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !802, file: !802, line: 68, type: !1834, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !1875)
!1875 = !{!1876}
!1876 = !DILocalVariable(name: "mask", arg: 1, scope: !1874, file: !802, line: 68, type: !12)
!1877 = !DILocation(line: 0, scope: !1874)
!1878 = !DILocalVariable(name: "priMask", arg: 1, scope: !1879, file: !1860, line: 481, type: !12)
!1879 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1860, file: !1860, line: 481, type: !1834, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !801, retainedNodes: !1880)
!1880 = !{!1878}
!1881 = !DILocation(line: 0, scope: !1879, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 70, column: 5, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1874, file: !802, line: 70, column: 5)
!1884 = !DILocation(line: 483, column: 3, scope: !1879, inlinedAt: !1882)
!1885 = !{i64 302492}
!1886 = !DILocation(line: 71, column: 1, scope: !1874)
!1887 = distinct !DISubprogram(name: "pinmux_config", scope: !847, file: !847, line: 54, type: !1888, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !846, retainedNodes: !1890)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!222, !949, !12}
!1890 = !{!1891, !1892, !1893}
!1891 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !1887, file: !847, line: 54, type: !949)
!1892 = !DILocalVariable(name: "function", arg: 2, scope: !1887, file: !847, line: 54, type: !12)
!1893 = !DILocalVariable(name: "ePadIndex", scope: !1887, file: !847, line: 56, type: !1606)
!1894 = !DILocation(line: 0, scope: !1887)
!1895 = !DILocation(line: 60, column: 5, scope: !1887)
!1896 = !DILocation(line: 205, column: 38, scope: !1887)
!1897 = !DILocation(line: 205, column: 5, scope: !1887)
!1898 = !DILocation(line: 207, column: 5, scope: !1887)
!1899 = !DILocation(line: 208, column: 1, scope: !1887)
!1900 = distinct !DISubprogram(name: "top_xtal_init", scope: !3, file: !3, line: 52, type: !374, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1901 = !{!1902, !1903}
!1902 = !DILocalVariable(name: "u4RegVal", scope: !1900, file: !3, line: 54, type: !12)
!1903 = !DILocalVariable(name: "reg", scope: !1900, file: !3, line: 55, type: !596)
!1904 = !DILocation(line: 0, scope: !1900)
!1905 = !DILocation(line: 55, column: 25, scope: !1900)
!1906 = !DILocation(line: 56, column: 16, scope: !1900)
!1907 = !DILocation(line: 56, column: 23, scope: !1900)
!1908 = !DILocation(line: 58, column: 16, scope: !1900)
!1909 = !DILocation(line: 61, column: 5, scope: !1900)
!1910 = !DILocation(line: 59, column: 14, scope: !1900)
!1911 = !DILocation(line: 0, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 61, column: 18)
!1913 = !DILocation(line: 87, column: 38, scope: !1900)
!1914 = !DILocation(line: 88, column: 21, scope: !1900)
!1915 = !DILocation(line: 88, column: 19, scope: !1900)
!1916 = !DILocation(line: 89, column: 5, scope: !1900)
!1917 = !DILocation(line: 90, column: 17, scope: !1900)
!1918 = !DILocation(line: 90, column: 33, scope: !1900)
!1919 = !DILocation(line: 90, column: 5, scope: !1900)
!1920 = !DILocation(line: 91, column: 1, scope: !1900)
!1921 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !3, file: !3, line: 98, type: !1854, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1922 = !DILocation(line: 100, column: 12, scope: !1921)
!1923 = !DILocation(line: 100, column: 5, scope: !1921)
!1924 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !3, file: !3, line: 108, type: !1854, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1925 = !DILocation(line: 110, column: 12, scope: !1924)
!1926 = !DILocation(line: 110, column: 5, scope: !1924)
!1927 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !3, file: !3, line: 118, type: !374, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1928)
!1928 = !{!1929, !1930}
!1929 = !DILocalVariable(name: "reg", scope: !1927, file: !3, line: 120, type: !11)
!1930 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1927, file: !3, line: 121, type: !10)
!1931 = !DILocation(line: 120, column: 5, scope: !1927)
!1932 = !DILocation(line: 120, column: 23, scope: !1927)
!1933 = !DILocation(line: 0, scope: !1927)
!1934 = !DILocation(line: 123, column: 11, scope: !1927)
!1935 = !DILocation(line: 123, column: 9, scope: !1927)
!1936 = !DILocation(line: 124, column: 12, scope: !1927)
!1937 = !DILocation(line: 124, column: 16, scope: !1927)
!1938 = !DILocation(line: 124, column: 39, scope: !1927)
!1939 = !DILocation(line: 124, column: 9, scope: !1927)
!1940 = !DILocation(line: 126, column: 9, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 126, column: 9)
!1942 = !DILocation(line: 126, column: 13, scope: !1941)
!1943 = !DILocation(line: 126, column: 9, scope: !1927)
!1944 = !DILocation(line: 127, column: 15, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 126, column: 47)
!1946 = !DILocation(line: 127, column: 13, scope: !1945)
!1947 = !DILocation(line: 128, column: 15, scope: !1945)
!1948 = !DILocation(line: 128, column: 19, scope: !1945)
!1949 = !DILocation(line: 128, column: 13, scope: !1945)
!1950 = !DILocation(line: 129, column: 15, scope: !1945)
!1951 = !DILocation(line: 129, column: 19, scope: !1945)
!1952 = !DILocation(line: 129, column: 13, scope: !1945)
!1953 = !DILocation(line: 130, column: 46, scope: !1945)
!1954 = !DILocation(line: 130, column: 9, scope: !1945)
!1955 = !DILocation(line: 132, column: 9, scope: !1945)
!1956 = !DILocation(line: 133, column: 19, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 132, column: 12)
!1958 = !DILocation(line: 133, column: 17, scope: !1957)
!1959 = !DILocation(line: 134, column: 19, scope: !1957)
!1960 = !DILocation(line: 134, column: 23, scope: !1957)
!1961 = !DILocation(line: 134, column: 17, scope: !1957)
!1962 = !DILocation(line: 135, column: 19, scope: !1945)
!1963 = !DILocation(line: 135, column: 18, scope: !1945)
!1964 = !DILocation(line: 135, column: 9, scope: !1957)
!1965 = distinct !{!1965, !1955, !1966}
!1966 = !DILocation(line: 135, column: 22, scope: !1945)
!1967 = !DILocation(line: 138, column: 1, scope: !1927)
!1968 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !1969, file: !1969, line: 176, type: !1970, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1974)
!1969 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!12, !1972}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1974 = !{!1975}
!1975 = !DILocalVariable(name: "Register", arg: 1, scope: !1968, file: !1969, line: 176, type: !1972)
!1976 = !DILocation(line: 0, scope: !1968)
!1977 = !DILocation(line: 178, column: 13, scope: !1968)
!1978 = !DILocation(line: 178, column: 12, scope: !1968)
!1979 = !DILocation(line: 178, column: 5, scope: !1968)
!1980 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !1969, file: !1969, line: 171, type: !1981, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !1972, !12}
!1983 = !{!1984, !1985}
!1984 = !DILocalVariable(name: "Register", arg: 1, scope: !1980, file: !1969, line: 171, type: !1972)
!1985 = !DILocalVariable(name: "Value", arg: 2, scope: !1980, file: !1969, line: 171, type: !12)
!1986 = !DILocation(line: 0, scope: !1980)
!1987 = !DILocation(line: 173, column: 6, scope: !1980)
!1988 = !DILocation(line: 173, column: 36, scope: !1980)
!1989 = !DILocation(line: 174, column: 1, scope: !1980)
!1990 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !3, file: !3, line: 145, type: !1991, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !118}
!1993 = !{!1994, !1995, !1996}
!1994 = !DILocalVariable(name: "fg960M", arg: 1, scope: !1990, file: !3, line: 145, type: !118)
!1995 = !DILocalVariable(name: "reg", scope: !1990, file: !3, line: 147, type: !11)
!1996 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1990, file: !3, line: 148, type: !10)
!1997 = !DILocation(line: 0, scope: !1990)
!1998 = !DILocation(line: 147, column: 5, scope: !1990)
!1999 = !DILocation(line: 147, column: 23, scope: !1990)
!2000 = !DILocation(line: 150, column: 11, scope: !1990)
!2001 = !DILocation(line: 150, column: 9, scope: !1990)
!2002 = !DILocation(line: 151, column: 12, scope: !1990)
!2003 = !DILocation(line: 151, column: 16, scope: !1990)
!2004 = !DILocation(line: 151, column: 39, scope: !1990)
!2005 = !DILocation(line: 151, column: 9, scope: !1990)
!2006 = !DILocation(line: 153, column: 9, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 153, column: 9)
!2008 = !DILocation(line: 153, column: 13, scope: !2007)
!2009 = !DILocation(line: 153, column: 9, scope: !1990)
!2010 = !DILocation(line: 154, column: 15, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 153, column: 45)
!2012 = !DILocation(line: 154, column: 13, scope: !2011)
!2013 = !DILocation(line: 155, column: 15, scope: !2011)
!2014 = !DILocation(line: 155, column: 19, scope: !2011)
!2015 = !DILocation(line: 155, column: 13, scope: !2011)
!2016 = !DILocation(line: 156, column: 15, scope: !2011)
!2017 = !DILocation(line: 156, column: 19, scope: !2011)
!2018 = !DILocation(line: 156, column: 13, scope: !2011)
!2019 = !DILocation(line: 157, column: 15, scope: !2011)
!2020 = !DILocation(line: 157, column: 13, scope: !2011)
!2021 = !DILocation(line: 158, column: 46, scope: !2011)
!2022 = !DILocation(line: 158, column: 9, scope: !2011)
!2023 = !DILocation(line: 160, column: 15, scope: !2011)
!2024 = !DILocation(line: 160, column: 13, scope: !2011)
!2025 = !DILocation(line: 161, column: 15, scope: !2011)
!2026 = !DILocation(line: 161, column: 19, scope: !2011)
!2027 = !DILocation(line: 161, column: 13, scope: !2011)
!2028 = !DILocation(line: 162, column: 15, scope: !2011)
!2029 = !DILocation(line: 162, column: 19, scope: !2011)
!2030 = !DILocation(line: 162, column: 13, scope: !2011)
!2031 = !DILocation(line: 163, column: 15, scope: !2011)
!2032 = !DILocation(line: 163, column: 19, scope: !2011)
!2033 = !DILocation(line: 163, column: 13, scope: !2011)
!2034 = !DILocation(line: 164, column: 46, scope: !2011)
!2035 = !DILocation(line: 164, column: 9, scope: !2011)
!2036 = !DILocation(line: 166, column: 9, scope: !2011)
!2037 = !DILocation(line: 167, column: 19, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 166, column: 12)
!2039 = !DILocation(line: 167, column: 17, scope: !2038)
!2040 = !DILocation(line: 168, column: 19, scope: !2038)
!2041 = !DILocation(line: 168, column: 23, scope: !2038)
!2042 = !DILocation(line: 168, column: 17, scope: !2038)
!2043 = !DILocation(line: 169, column: 19, scope: !2011)
!2044 = !DILocation(line: 169, column: 18, scope: !2011)
!2045 = !DILocation(line: 169, column: 9, scope: !2038)
!2046 = distinct !{!2046, !2036, !2047}
!2047 = !DILocation(line: 169, column: 22, scope: !2011)
!2048 = !DILocation(line: 171, column: 15, scope: !2011)
!2049 = !DILocation(line: 171, column: 13, scope: !2011)
!2050 = !DILocation(line: 172, column: 15, scope: !2011)
!2051 = !DILocation(line: 172, column: 19, scope: !2011)
!2052 = !DILocation(line: 172, column: 13, scope: !2011)
!2053 = !DILocation(line: 173, column: 15, scope: !2011)
!2054 = !DILocation(line: 173, column: 19, scope: !2011)
!2055 = !DILocation(line: 173, column: 13, scope: !2011)
!2056 = !DILocation(line: 174, column: 5, scope: !2011)
!2057 = !DILocation(line: 176, column: 11, scope: !1990)
!2058 = !DILocation(line: 176, column: 9, scope: !1990)
!2059 = !DILocation(line: 177, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 177, column: 9)
!2061 = !DILocation(line: 0, scope: !2060)
!2062 = !DILocation(line: 177, column: 9, scope: !1990)
!2063 = !DILocation(line: 178, column: 19, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 177, column: 17)
!2065 = !DILocation(line: 178, column: 13, scope: !2064)
!2066 = !DILocation(line: 179, column: 5, scope: !2064)
!2067 = !DILocation(line: 180, column: 13, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 179, column: 12)
!2069 = !DILocation(line: 182, column: 42, scope: !1990)
!2070 = !DILocation(line: 182, column: 5, scope: !1990)
!2071 = !DILocation(line: 184, column: 1, scope: !1990)
!2072 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !3, file: !3, line: 191, type: !374, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2073 = !{!2074, !2075}
!2074 = !DILocalVariable(name: "reg", scope: !2072, file: !3, line: 193, type: !11)
!2075 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2072, file: !3, line: 194, type: !10)
!2076 = !DILocation(line: 193, column: 5, scope: !2072)
!2077 = !DILocation(line: 193, column: 23, scope: !2072)
!2078 = !DILocation(line: 0, scope: !2072)
!2079 = !DILocation(line: 196, column: 11, scope: !2072)
!2080 = !DILocation(line: 196, column: 9, scope: !2072)
!2081 = !DILocation(line: 197, column: 11, scope: !2072)
!2082 = !DILocation(line: 197, column: 15, scope: !2072)
!2083 = !DILocation(line: 197, column: 9, scope: !2072)
!2084 = !DILocation(line: 198, column: 11, scope: !2072)
!2085 = !DILocation(line: 198, column: 15, scope: !2072)
!2086 = !DILocation(line: 198, column: 9, scope: !2072)
!2087 = !DILocation(line: 199, column: 11, scope: !2072)
!2088 = !DILocation(line: 199, column: 9, scope: !2072)
!2089 = !DILocation(line: 200, column: 42, scope: !2072)
!2090 = !DILocation(line: 200, column: 5, scope: !2072)
!2091 = !DILocation(line: 202, column: 11, scope: !2072)
!2092 = !DILocation(line: 202, column: 9, scope: !2072)
!2093 = !DILocation(line: 203, column: 11, scope: !2072)
!2094 = !DILocation(line: 203, column: 15, scope: !2072)
!2095 = !DILocation(line: 203, column: 9, scope: !2072)
!2096 = !DILocation(line: 204, column: 11, scope: !2072)
!2097 = !DILocation(line: 204, column: 15, scope: !2072)
!2098 = !DILocation(line: 204, column: 9, scope: !2072)
!2099 = !DILocation(line: 205, column: 11, scope: !2072)
!2100 = !DILocation(line: 205, column: 9, scope: !2072)
!2101 = !DILocation(line: 206, column: 42, scope: !2072)
!2102 = !DILocation(line: 206, column: 5, scope: !2072)
!2103 = !DILocation(line: 209, column: 1, scope: !2072)
!2104 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !3, file: !3, line: 216, type: !374, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2105 = !{!2106, !2107}
!2106 = !DILocalVariable(name: "reg", scope: !2104, file: !3, line: 218, type: !11)
!2107 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2104, file: !3, line: 219, type: !10)
!2108 = !DILocation(line: 218, column: 5, scope: !2104)
!2109 = !DILocation(line: 218, column: 23, scope: !2104)
!2110 = !DILocation(line: 0, scope: !2104)
!2111 = !DILocation(line: 222, column: 11, scope: !2104)
!2112 = !DILocation(line: 222, column: 9, scope: !2104)
!2113 = !DILocation(line: 223, column: 11, scope: !2104)
!2114 = !DILocation(line: 223, column: 15, scope: !2104)
!2115 = !DILocation(line: 223, column: 9, scope: !2104)
!2116 = !DILocation(line: 224, column: 11, scope: !2104)
!2117 = !DILocation(line: 224, column: 9, scope: !2104)
!2118 = !DILocation(line: 225, column: 39, scope: !2104)
!2119 = !DILocation(line: 225, column: 5, scope: !2104)
!2120 = !DILocation(line: 228, column: 11, scope: !2104)
!2121 = !DILocation(line: 228, column: 9, scope: !2104)
!2122 = !DILocation(line: 229, column: 11, scope: !2104)
!2123 = !DILocation(line: 229, column: 15, scope: !2104)
!2124 = !DILocation(line: 229, column: 9, scope: !2104)
!2125 = !DILocation(line: 230, column: 11, scope: !2104)
!2126 = !DILocation(line: 230, column: 9, scope: !2104)
!2127 = !DILocation(line: 231, column: 39, scope: !2104)
!2128 = !DILocation(line: 231, column: 5, scope: !2104)
!2129 = !DILocation(line: 233, column: 5, scope: !2104)
!2130 = !DILocation(line: 233, column: 12, scope: !2104)
!2131 = !DILocation(line: 233, column: 19, scope: !2104)
!2132 = !DILocation(line: 233, column: 16, scope: !2104)
!2133 = distinct !{!2133, !2129, !2134}
!2134 = !DILocation(line: 233, column: 52, scope: !2104)
!2135 = !DILocation(line: 235, column: 21, scope: !2104)
!2136 = !DILocation(line: 235, column: 19, scope: !2104)
!2137 = !DILocation(line: 236, column: 5, scope: !2104)
!2138 = !DILocation(line: 237, column: 17, scope: !2104)
!2139 = !DILocation(line: 237, column: 33, scope: !2104)
!2140 = !DILocation(line: 237, column: 5, scope: !2104)
!2141 = !DILocation(line: 239, column: 1, scope: !2104)
!2142 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !3, file: !3, line: 246, type: !374, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2143 = !{!2144, !2145}
!2144 = !DILocalVariable(name: "reg", scope: !2142, file: !3, line: 248, type: !11)
!2145 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2142, file: !3, line: 249, type: !10)
!2146 = !DILocation(line: 248, column: 5, scope: !2142)
!2147 = !DILocation(line: 248, column: 23, scope: !2142)
!2148 = !DILocation(line: 0, scope: !2142)
!2149 = !DILocation(line: 252, column: 5, scope: !2142)
!2150 = !DILocation(line: 255, column: 11, scope: !2142)
!2151 = !DILocation(line: 255, column: 9, scope: !2142)
!2152 = !DILocation(line: 256, column: 11, scope: !2142)
!2153 = !DILocation(line: 256, column: 15, scope: !2142)
!2154 = !DILocation(line: 256, column: 9, scope: !2142)
!2155 = !DILocation(line: 257, column: 11, scope: !2142)
!2156 = !DILocation(line: 257, column: 15, scope: !2142)
!2157 = !DILocation(line: 257, column: 9, scope: !2142)
!2158 = !DILocation(line: 258, column: 39, scope: !2142)
!2159 = !DILocation(line: 258, column: 5, scope: !2142)
!2160 = !DILocation(line: 260, column: 5, scope: !2142)
!2161 = !DILocation(line: 260, column: 12, scope: !2142)
!2162 = !DILocation(line: 260, column: 19, scope: !2142)
!2163 = !DILocation(line: 260, column: 16, scope: !2142)
!2164 = distinct !{!2164, !2160, !2165}
!2165 = !DILocation(line: 260, column: 52, scope: !2142)
!2166 = !DILocation(line: 263, column: 11, scope: !2142)
!2167 = !DILocation(line: 263, column: 9, scope: !2142)
!2168 = !DILocation(line: 264, column: 11, scope: !2142)
!2169 = !DILocation(line: 264, column: 15, scope: !2142)
!2170 = !DILocation(line: 264, column: 9, scope: !2142)
!2171 = !DILocation(line: 265, column: 11, scope: !2142)
!2172 = !DILocation(line: 265, column: 15, scope: !2142)
!2173 = !DILocation(line: 265, column: 9, scope: !2142)
!2174 = !DILocation(line: 266, column: 39, scope: !2142)
!2175 = !DILocation(line: 266, column: 5, scope: !2142)
!2176 = !DILocation(line: 269, column: 11, scope: !2142)
!2177 = !DILocation(line: 269, column: 9, scope: !2142)
!2178 = !DILocation(line: 270, column: 11, scope: !2142)
!2179 = !DILocation(line: 270, column: 15, scope: !2142)
!2180 = !DILocation(line: 270, column: 9, scope: !2142)
!2181 = !DILocation(line: 271, column: 11, scope: !2142)
!2182 = !DILocation(line: 271, column: 15, scope: !2142)
!2183 = !DILocation(line: 271, column: 9, scope: !2142)
!2184 = !DILocation(line: 272, column: 39, scope: !2142)
!2185 = !DILocation(line: 272, column: 5, scope: !2142)
!2186 = !DILocation(line: 273, column: 19, scope: !2142)
!2187 = !DILocation(line: 274, column: 5, scope: !2142)
!2188 = !DILocation(line: 275, column: 17, scope: !2142)
!2189 = !DILocation(line: 275, column: 33, scope: !2142)
!2190 = !DILocation(line: 275, column: 5, scope: !2142)
!2191 = !DILocation(line: 277, column: 1, scope: !2142)
!2192 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !3, file: !3, line: 284, type: !374, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2193)
!2193 = !{!2194, !2195}
!2194 = !DILocalVariable(name: "reg", scope: !2192, file: !3, line: 286, type: !11)
!2195 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2192, file: !3, line: 287, type: !10)
!2196 = !DILocation(line: 286, column: 5, scope: !2192)
!2197 = !DILocation(line: 286, column: 23, scope: !2192)
!2198 = !DILocation(line: 0, scope: !2192)
!2199 = !DILocation(line: 290, column: 5, scope: !2192)
!2200 = !DILocation(line: 293, column: 11, scope: !2192)
!2201 = !DILocation(line: 293, column: 9, scope: !2192)
!2202 = !DILocation(line: 294, column: 11, scope: !2192)
!2203 = !DILocation(line: 294, column: 15, scope: !2192)
!2204 = !DILocation(line: 294, column: 9, scope: !2192)
!2205 = !DILocation(line: 295, column: 11, scope: !2192)
!2206 = !DILocation(line: 295, column: 15, scope: !2192)
!2207 = !DILocation(line: 295, column: 9, scope: !2192)
!2208 = !DILocation(line: 296, column: 39, scope: !2192)
!2209 = !DILocation(line: 296, column: 5, scope: !2192)
!2210 = !DILocation(line: 298, column: 5, scope: !2192)
!2211 = !DILocation(line: 298, column: 12, scope: !2192)
!2212 = !DILocation(line: 298, column: 19, scope: !2192)
!2213 = !DILocation(line: 298, column: 16, scope: !2192)
!2214 = distinct !{!2214, !2210, !2215}
!2215 = !DILocation(line: 298, column: 52, scope: !2192)
!2216 = !DILocation(line: 301, column: 11, scope: !2192)
!2217 = !DILocation(line: 301, column: 9, scope: !2192)
!2218 = !DILocation(line: 302, column: 11, scope: !2192)
!2219 = !DILocation(line: 302, column: 15, scope: !2192)
!2220 = !DILocation(line: 302, column: 9, scope: !2192)
!2221 = !DILocation(line: 303, column: 11, scope: !2192)
!2222 = !DILocation(line: 303, column: 15, scope: !2192)
!2223 = !DILocation(line: 303, column: 9, scope: !2192)
!2224 = !DILocation(line: 304, column: 39, scope: !2192)
!2225 = !DILocation(line: 304, column: 5, scope: !2192)
!2226 = !DILocation(line: 307, column: 11, scope: !2192)
!2227 = !DILocation(line: 307, column: 9, scope: !2192)
!2228 = !DILocation(line: 308, column: 11, scope: !2192)
!2229 = !DILocation(line: 308, column: 15, scope: !2192)
!2230 = !DILocation(line: 308, column: 9, scope: !2192)
!2231 = !DILocation(line: 309, column: 11, scope: !2192)
!2232 = !DILocation(line: 309, column: 15, scope: !2192)
!2233 = !DILocation(line: 309, column: 9, scope: !2192)
!2234 = !DILocation(line: 310, column: 39, scope: !2192)
!2235 = !DILocation(line: 310, column: 5, scope: !2192)
!2236 = !DILocation(line: 311, column: 19, scope: !2192)
!2237 = !DILocation(line: 312, column: 5, scope: !2192)
!2238 = !DILocation(line: 313, column: 17, scope: !2192)
!2239 = !DILocation(line: 313, column: 33, scope: !2192)
!2240 = !DILocation(line: 313, column: 5, scope: !2192)
!2241 = !DILocation(line: 315, column: 1, scope: !2192)
!2242 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !3, file: !3, line: 323, type: !374, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2243)
!2243 = !{!2244, !2245}
!2244 = !DILocalVariable(name: "reg", scope: !2242, file: !3, line: 325, type: !11)
!2245 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2242, file: !3, line: 326, type: !10)
!2246 = !DILocation(line: 325, column: 5, scope: !2242)
!2247 = !DILocation(line: 325, column: 23, scope: !2242)
!2248 = !DILocation(line: 0, scope: !2242)
!2249 = !DILocation(line: 329, column: 5, scope: !2242)
!2250 = !DILocation(line: 332, column: 11, scope: !2242)
!2251 = !DILocation(line: 332, column: 9, scope: !2242)
!2252 = !DILocation(line: 333, column: 11, scope: !2242)
!2253 = !DILocation(line: 333, column: 15, scope: !2242)
!2254 = !DILocation(line: 333, column: 9, scope: !2242)
!2255 = !DILocation(line: 334, column: 11, scope: !2242)
!2256 = !DILocation(line: 334, column: 9, scope: !2242)
!2257 = !DILocation(line: 335, column: 39, scope: !2242)
!2258 = !DILocation(line: 335, column: 5, scope: !2242)
!2259 = !DILocation(line: 337, column: 5, scope: !2242)
!2260 = !DILocation(line: 337, column: 12, scope: !2242)
!2261 = !DILocation(line: 337, column: 19, scope: !2242)
!2262 = !DILocation(line: 337, column: 16, scope: !2242)
!2263 = distinct !{!2263, !2259, !2264}
!2264 = !DILocation(line: 337, column: 52, scope: !2242)
!2265 = !DILocation(line: 340, column: 11, scope: !2242)
!2266 = !DILocation(line: 340, column: 9, scope: !2242)
!2267 = !DILocation(line: 341, column: 11, scope: !2242)
!2268 = !DILocation(line: 341, column: 15, scope: !2242)
!2269 = !DILocation(line: 341, column: 9, scope: !2242)
!2270 = !DILocation(line: 342, column: 11, scope: !2242)
!2271 = !DILocation(line: 342, column: 15, scope: !2242)
!2272 = !DILocation(line: 342, column: 9, scope: !2242)
!2273 = !DILocation(line: 343, column: 39, scope: !2242)
!2274 = !DILocation(line: 343, column: 5, scope: !2242)
!2275 = !DILocation(line: 344, column: 19, scope: !2242)
!2276 = !DILocation(line: 345, column: 5, scope: !2242)
!2277 = !DILocation(line: 346, column: 17, scope: !2242)
!2278 = !DILocation(line: 346, column: 33, scope: !2242)
!2279 = !DILocation(line: 346, column: 5, scope: !2242)
!2280 = !DILocation(line: 348, column: 1, scope: !2242)
!2281 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !3, file: !3, line: 353, type: !374, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2282)
!2282 = !{!2283, !2284}
!2283 = !DILocalVariable(name: "reg", scope: !2281, file: !3, line: 355, type: !17)
!2284 = !DILocalVariable(name: "pTopCfgHclk", scope: !2281, file: !3, line: 356, type: !16)
!2285 = !DILocation(line: 355, column: 5, scope: !2281)
!2286 = !DILocation(line: 355, column: 21, scope: !2281)
!2287 = !DILocation(line: 0, scope: !2281)
!2288 = !DILocation(line: 358, column: 11, scope: !2281)
!2289 = !DILocation(line: 358, column: 9, scope: !2281)
!2290 = !DILocation(line: 359, column: 11, scope: !2281)
!2291 = !DILocation(line: 359, column: 15, scope: !2281)
!2292 = !DILocation(line: 359, column: 9, scope: !2281)
!2293 = !DILocation(line: 360, column: 11, scope: !2281)
!2294 = !DILocation(line: 360, column: 9, scope: !2281)
!2295 = !DILocation(line: 361, column: 37, scope: !2281)
!2296 = !DILocation(line: 361, column: 5, scope: !2281)
!2297 = !DILocation(line: 362, column: 1, scope: !2281)
!2298 = distinct !DISubprogram(name: "getc", scope: !24, file: !24, line: 68, type: !2299, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!66}
!2301 = !{!2302}
!2302 = !DILocalVariable(name: "rc", scope: !2298, file: !24, line: 71, type: !66)
!2303 = !DILocation(line: 71, column: 14, scope: !2298)
!2304 = !DILocation(line: 0, scope: !2298)
!2305 = !DILocation(line: 72, column: 5, scope: !2298)
!2306 = distinct !DISubprogram(name: "getc_nowait", scope: !24, file: !24, line: 80, type: !2299, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2307)
!2307 = !{!2308}
!2308 = !DILocalVariable(name: "c", scope: !2306, file: !24, line: 82, type: !365)
!2309 = !DILocation(line: 84, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !24, line: 84, column: 9)
!2311 = !DILocation(line: 84, column: 40, scope: !2310)
!2312 = !DILocation(line: 84, column: 9, scope: !2306)
!2313 = !DILocation(line: 85, column: 13, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !24, line: 84, column: 47)
!2315 = !DILocation(line: 86, column: 16, scope: !2314)
!2316 = !DILocation(line: 0, scope: !2306)
!2317 = !DILocation(line: 86, column: 9, scope: !2314)
!2318 = !DILocation(line: 0, scope: !2310)
!2319 = !DILocation(line: 90, column: 1, scope: !2306)
!2320 = distinct !DISubprogram(name: "uart_output_char", scope: !24, file: !24, line: 93, type: !2321, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2324)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2323, !55}
!2323 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !27, line: 75, baseType: !26)
!2324 = !{!2325, !2326, !2327}
!2325 = !DILocalVariable(name: "port_no", arg: 1, scope: !2320, file: !24, line: 93, type: !2323)
!2326 = !DILocalVariable(name: "c", arg: 2, scope: !2320, file: !24, line: 93, type: !55)
!2327 = !DILocalVariable(name: "base", scope: !2320, file: !24, line: 95, type: !7)
!2328 = !DILocation(line: 0, scope: !2320)
!2329 = !DILocation(line: 95, column: 25, scope: !2320)
!2330 = !DILocation(line: 97, column: 5, scope: !2320)
!2331 = !DILocation(line: 97, column: 14, scope: !2320)
!2332 = !DILocation(line: 97, column: 42, scope: !2320)
!2333 = !DILocation(line: 97, column: 12, scope: !2320)
!2334 = distinct !{!2334, !2330, !2335}
!2335 = !DILocation(line: 98, column: 9, scope: !2320)
!2336 = !DILocation(line: 99, column: 35, scope: !2320)
!2337 = !DILocation(line: 99, column: 5, scope: !2320)
!2338 = !DILocation(line: 99, column: 33, scope: !2320)
!2339 = !DILocation(line: 102, column: 1, scope: !2320)
!2340 = distinct !DISubprogram(name: "uart_input_char", scope: !24, file: !24, line: 106, type: !2341, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!118, !2323}
!2343 = !{!2344, !2345, !2346}
!2344 = !DILocalVariable(name: "port_no", arg: 1, scope: !2340, file: !24, line: 106, type: !2323)
!2345 = !DILocalVariable(name: "base", scope: !2340, file: !24, line: 108, type: !7)
!2346 = !DILocalVariable(name: "c", scope: !2340, file: !24, line: 109, type: !365)
!2347 = !DILocation(line: 0, scope: !2340)
!2348 = !DILocation(line: 108, column: 25, scope: !2340)
!2349 = !DILocation(line: 111, column: 5, scope: !2340)
!2350 = !DILocation(line: 111, column: 14, scope: !2340)
!2351 = !DILocation(line: 111, column: 42, scope: !2340)
!2352 = !DILocation(line: 111, column: 12, scope: !2340)
!2353 = distinct !{!2353, !2349, !2354}
!2354 = !DILocation(line: 112, column: 9, scope: !2340)
!2355 = !DILocation(line: 114, column: 9, scope: !2340)
!2356 = !DILocation(line: 116, column: 5, scope: !2340)
!2357 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !24, file: !24, line: 120, type: !2358, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!12, !2323}
!2360 = !{!2361, !2362, !2363}
!2361 = !DILocalVariable(name: "port_no", arg: 1, scope: !2357, file: !24, line: 120, type: !2323)
!2362 = !DILocalVariable(name: "base", scope: !2357, file: !24, line: 122, type: !7)
!2363 = !DILocalVariable(name: "c", scope: !2357, file: !24, line: 123, type: !365)
!2364 = !DILocation(line: 0, scope: !2357)
!2365 = !DILocation(line: 122, column: 25, scope: !2357)
!2366 = !DILocation(line: 125, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2357, file: !24, line: 125, column: 9)
!2368 = !DILocation(line: 125, column: 37, scope: !2367)
!2369 = !DILocation(line: 125, column: 9, scope: !2357)
!2370 = !DILocation(line: 126, column: 13, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !24, line: 125, column: 44)
!2372 = !DILocation(line: 127, column: 16, scope: !2371)
!2373 = !DILocation(line: 127, column: 9, scope: !2371)
!2374 = !DILocation(line: 0, scope: !2367)
!2375 = !DILocation(line: 131, column: 1, scope: !2357)
!2376 = distinct !DISubprogram(name: "halUART_HWInit", scope: !24, file: !24, line: 136, type: !2377, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !2323}
!2379 = !{!2380}
!2380 = !DILocalVariable(name: "u_port", arg: 1, scope: !2376, file: !24, line: 136, type: !2323)
!2381 = !DILocation(line: 0, scope: !2376)
!2382 = !DILocation(line: 139, column: 5, scope: !2376)
!2383 = !DILocation(line: 140, column: 9, scope: !2376)
!2384 = !DILocation(line: 153, column: 5, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !24, line: 147, column: 38)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !24, line: 147, column: 16)
!2387 = distinct !DILexicalBlock(scope: !2376, file: !24, line: 140, column: 9)
!2388 = !DILocation(line: 0, scope: !2387)
!2389 = !DILocation(line: 155, column: 1, scope: !2376)
!2390 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !24, file: !24, line: 158, type: !2391, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2395)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !2323, !12, !2393, !2393, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 36, baseType: !2394)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !53)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2411, !2412}
!2396 = !DILocalVariable(name: "u_port", arg: 1, scope: !2390, file: !24, line: 158, type: !2323)
!2397 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2390, file: !24, line: 158, type: !12)
!2398 = !DILocalVariable(name: "databit", arg: 3, scope: !2390, file: !24, line: 158, type: !2393)
!2399 = !DILocalVariable(name: "parity", arg: 4, scope: !2390, file: !24, line: 158, type: !2393)
!2400 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2390, file: !24, line: 158, type: !2393)
!2401 = !DILocalVariable(name: "control_word", scope: !2390, file: !24, line: 160, type: !2393)
!2402 = !DILocalVariable(name: "UART_BASE", scope: !2390, file: !24, line: 161, type: !12)
!2403 = !DILocalVariable(name: "data", scope: !2390, file: !24, line: 162, type: !12)
!2404 = !DILocalVariable(name: "uart_lcr", scope: !2390, file: !24, line: 162, type: !12)
!2405 = !DILocalVariable(name: "high_speed_div", scope: !2390, file: !24, line: 162, type: !12)
!2406 = !DILocalVariable(name: "sample_count", scope: !2390, file: !24, line: 162, type: !12)
!2407 = !DILocalVariable(name: "sample_point", scope: !2390, file: !24, line: 162, type: !12)
!2408 = !DILocalVariable(name: "fraction", scope: !2390, file: !24, line: 162, type: !12)
!2409 = !DILocalVariable(name: "fraction_L_mapping", scope: !2390, file: !24, line: 163, type: !2410)
!2410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, size: 176, elements: !701)
!2411 = !DILocalVariable(name: "fraction_M_mapping", scope: !2390, file: !24, line: 164, type: !2410)
!2412 = !DILocalVariable(name: "status", scope: !2390, file: !24, line: 165, type: !222)
!2413 = !DILocation(line: 0, scope: !2390)
!2414 = !DILocation(line: 163, column: 15, scope: !2390)
!2415 = !DILocation(line: 164, column: 15, scope: !2390)
!2416 = !DILocation(line: 166, column: 20, scope: !2390)
!2417 = !DILocation(line: 166, column: 18, scope: !2390)
!2418 = !DILocation(line: 168, column: 9, scope: !2390)
!2419 = !DILocation(line: 176, column: 5, scope: !2390)
!2420 = !DILocation(line: 176, column: 44, scope: !2390)
!2421 = !DILocation(line: 177, column: 16, scope: !2390)
!2422 = !DILocation(line: 178, column: 50, scope: !2390)
!2423 = !DILocation(line: 178, column: 38, scope: !2390)
!2424 = !DILocation(line: 179, column: 12, scope: !2390)
!2425 = !DILocation(line: 179, column: 25, scope: !2390)
!2426 = !DILocation(line: 180, column: 28, scope: !2390)
!2427 = !DILocation(line: 180, column: 34, scope: !2390)
!2428 = !DILocation(line: 182, column: 29, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2390, file: !24, line: 181, column: 5)
!2430 = !DILocation(line: 182, column: 46, scope: !2429)
!2431 = !DILocation(line: 183, column: 26, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2429, file: !24, line: 183, column: 13)
!2433 = !DILocation(line: 183, column: 13, scope: !2429)
!2434 = !DILocation(line: 192, column: 30, scope: !2390)
!2435 = !DILocation(line: 192, column: 35, scope: !2390)
!2436 = !DILocation(line: 192, column: 46, scope: !2390)
!2437 = !DILocation(line: 192, column: 74, scope: !2390)
!2438 = !DILocation(line: 192, column: 53, scope: !2390)
!2439 = !DILocation(line: 192, column: 80, scope: !2390)
!2440 = !DILocation(line: 193, column: 56, scope: !2390)
!2441 = !DILocation(line: 193, column: 5, scope: !2390)
!2442 = !DILocation(line: 193, column: 38, scope: !2390)
!2443 = !DILocation(line: 194, column: 57, scope: !2390)
!2444 = !DILocation(line: 194, column: 63, scope: !2390)
!2445 = !DILocation(line: 194, column: 5, scope: !2390)
!2446 = !DILocation(line: 194, column: 38, scope: !2390)
!2447 = !DILocation(line: 195, column: 5, scope: !2390)
!2448 = !DILocation(line: 195, column: 45, scope: !2390)
!2449 = !DILocation(line: 196, column: 5, scope: !2390)
!2450 = !DILocation(line: 196, column: 47, scope: !2390)
!2451 = !DILocation(line: 197, column: 46, scope: !2390)
!2452 = !DILocation(line: 197, column: 5, scope: !2390)
!2453 = !DILocation(line: 197, column: 44, scope: !2390)
!2454 = !DILocation(line: 198, column: 46, scope: !2390)
!2455 = !DILocation(line: 198, column: 5, scope: !2390)
!2456 = !DILocation(line: 198, column: 44, scope: !2390)
!2457 = !DILocation(line: 199, column: 38, scope: !2390)
!2458 = !DILocation(line: 200, column: 5, scope: !2390)
!2459 = !DILocation(line: 200, column: 38, scope: !2390)
!2460 = !DILocation(line: 202, column: 20, scope: !2390)
!2461 = !DILocation(line: 203, column: 18, scope: !2390)
!2462 = !DILocation(line: 205, column: 18, scope: !2390)
!2463 = !DILocation(line: 207, column: 18, scope: !2390)
!2464 = !DILocation(line: 208, column: 18, scope: !2390)
!2465 = !DILocation(line: 209, column: 5, scope: !2390)
!2466 = !DILocation(line: 213, column: 1, scope: !2390)
!2467 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !24, file: !24, line: 215, type: !2468, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2471)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !2323, !222, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!2471 = !{!2472, !2473, !2474}
!2472 = !DILocalVariable(name: "u_port", arg: 1, scope: !2467, file: !24, line: 215, type: !2323)
!2473 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2467, file: !24, line: 215, type: !222)
!2474 = !DILocalVariable(name: "length", arg: 3, scope: !2467, file: !24, line: 215, type: !2470)
!2475 = !DILocation(line: 0, scope: !2467)
!2476 = !DILocation(line: 217, column: 16, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2467, file: !24, line: 217, column: 9)
!2478 = !DILocation(line: 0, scope: !2477)
!2479 = !DILocation(line: 217, column: 9, scope: !2467)
!2480 = !DILocation(line: 218, column: 13, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !24, line: 217, column: 31)
!2482 = !DILocation(line: 219, column: 23, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !24, line: 218, column: 20)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !24, line: 218, column: 13)
!2485 = !DILocation(line: 220, column: 9, scope: !2483)
!2486 = !DILocation(line: 221, column: 23, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2484, file: !24, line: 220, column: 16)
!2488 = !DILocation(line: 221, column: 21, scope: !2487)
!2489 = !DILocation(line: 222, column: 24, scope: !2487)
!2490 = !DILocation(line: 222, column: 21, scope: !2487)
!2491 = !DILocation(line: 225, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2477, file: !24, line: 224, column: 12)
!2493 = !DILocation(line: 226, column: 23, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !24, line: 225, column: 20)
!2495 = distinct !DILexicalBlock(scope: !2492, file: !24, line: 225, column: 13)
!2496 = !DILocation(line: 227, column: 9, scope: !2494)
!2497 = !DILocation(line: 228, column: 23, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2495, file: !24, line: 227, column: 16)
!2499 = !DILocation(line: 228, column: 21, scope: !2498)
!2500 = !DILocation(line: 229, column: 24, scope: !2498)
!2501 = !DILocation(line: 229, column: 21, scope: !2498)
!2502 = !DILocation(line: 233, column: 5, scope: !2467)
!2503 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !24, file: !24, line: 236, type: !2504, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !2323, !416, !12}
!2506 = !{!2507, !2508, !2509, !2510}
!2507 = !DILocalVariable(name: "u_port", arg: 1, scope: !2503, file: !24, line: 236, type: !2323)
!2508 = !DILocalVariable(name: "data", arg: 2, scope: !2503, file: !24, line: 236, type: !416)
!2509 = !DILocalVariable(name: "length", arg: 3, scope: !2503, file: !24, line: 236, type: !12)
!2510 = !DILocalVariable(name: "idx", scope: !2503, file: !24, line: 238, type: !8)
!2511 = !DILocation(line: 0, scope: !2503)
!2512 = !DILocation(line: 239, column: 23, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !24, line: 239, column: 5)
!2514 = distinct !DILexicalBlock(scope: !2503, file: !24, line: 239, column: 5)
!2515 = !DILocation(line: 239, column: 5, scope: !2514)
!2516 = !DILocation(line: 240, column: 13, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2513, file: !24, line: 239, column: 40)
!2518 = !DILocation(line: 244, column: 9, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !24, line: 242, column: 42)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !24, line: 242, column: 20)
!2521 = distinct !DILexicalBlock(scope: !2517, file: !24, line: 240, column: 13)
!2522 = !DILocation(line: 0, scope: !2521)
!2523 = !DILocation(line: 239, column: 36, scope: !2513)
!2524 = distinct !{!2524, !2515, !2525}
!2525 = !DILocation(line: 246, column: 5, scope: !2514)
!2526 = !DILocation(line: 249, column: 1, scope: !2503)
!2527 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !24, file: !24, line: 251, type: !2528, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2532)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !2323, !2530, !12}
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!2532 = !{!2533, !2534, !2535, !2536}
!2533 = !DILocalVariable(name: "u_port", arg: 1, scope: !2527, file: !24, line: 251, type: !2323)
!2534 = !DILocalVariable(name: "data", arg: 2, scope: !2527, file: !24, line: 251, type: !2530)
!2535 = !DILocalVariable(name: "length", arg: 3, scope: !2527, file: !24, line: 251, type: !12)
!2536 = !DILocalVariable(name: "idx", scope: !2527, file: !24, line: 253, type: !8)
!2537 = !DILocation(line: 0, scope: !2527)
!2538 = !DILocation(line: 254, column: 23, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !24, line: 254, column: 5)
!2540 = distinct !DILexicalBlock(scope: !2527, file: !24, line: 254, column: 5)
!2541 = !DILocation(line: 254, column: 5, scope: !2540)
!2542 = !DILocation(line: 255, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !24, line: 254, column: 40)
!2544 = !DILocation(line: 256, column: 61, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !24, line: 255, column: 35)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !24, line: 255, column: 13)
!2547 = !DILocation(line: 256, column: 59, scope: !2545)
!2548 = !DILocation(line: 257, column: 9, scope: !2545)
!2549 = !DILocation(line: 258, column: 61, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !24, line: 257, column: 42)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !24, line: 257, column: 20)
!2552 = !DILocation(line: 258, column: 59, scope: !2550)
!2553 = !DILocation(line: 259, column: 9, scope: !2550)
!2554 = !DILocation(line: 254, column: 36, scope: !2539)
!2555 = distinct !{!2555, !2541, !2556}
!2556 = !DILocation(line: 261, column: 5, scope: !2540)
!2557 = !DILocation(line: 264, column: 1, scope: !2527)
!2558 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !24, file: !24, line: 266, type: !2559, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !2323, !416, !12, !12}
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DILocalVariable(name: "u_port", arg: 1, scope: !2558, file: !24, line: 266, type: !2323)
!2563 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2558, file: !24, line: 266, type: !416)
!2564 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2558, file: !24, line: 266, type: !12)
!2565 = !DILocalVariable(name: "threshold", arg: 4, scope: !2558, file: !24, line: 266, type: !12)
!2566 = !DILocation(line: 0, scope: !2558)
!2567 = !DILocation(line: 268, column: 9, scope: !2558)
!2568 = !DILocation(line: 274, column: 5, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !24, line: 271, column: 38)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !24, line: 271, column: 16)
!2571 = distinct !DILexicalBlock(scope: !2558, file: !24, line: 268, column: 9)
!2572 = !DILocation(line: 0, scope: !2571)
!2573 = !DILocation(line: 276, column: 1, scope: !2558)
!2574 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !24, file: !24, line: 278, type: !2575, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !2323, !416, !12, !12, !12, !12}
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583}
!2578 = !DILocalVariable(name: "u_port", arg: 1, scope: !2574, file: !24, line: 278, type: !2323)
!2579 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2574, file: !24, line: 278, type: !416)
!2580 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2574, file: !24, line: 278, type: !12)
!2581 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2574, file: !24, line: 278, type: !12)
!2582 = !DILocalVariable(name: "threshold", arg: 5, scope: !2574, file: !24, line: 278, type: !12)
!2583 = !DILocalVariable(name: "timeout", arg: 6, scope: !2574, file: !24, line: 278, type: !12)
!2584 = !DILocation(line: 0, scope: !2574)
!2585 = !DILocation(line: 280, column: 9, scope: !2574)
!2586 = !DILocation(line: 286, column: 5, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !24, line: 283, column: 38)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !24, line: 283, column: 16)
!2589 = distinct !DILexicalBlock(scope: !2574, file: !24, line: 280, column: 9)
!2590 = !DILocation(line: 0, scope: !2589)
!2591 = !DILocation(line: 288, column: 1, scope: !2574)
!2592 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !24, file: !24, line: 290, type: !2593, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !2323, !372}
!2595 = !{!2596, !2597}
!2596 = !DILocalVariable(name: "u_port", arg: 1, scope: !2592, file: !24, line: 290, type: !2323)
!2597 = !DILocalVariable(name: "func", arg: 2, scope: !2592, file: !24, line: 290, type: !372)
!2598 = !DILocation(line: 0, scope: !2592)
!2599 = !DILocation(line: 292, column: 9, scope: !2592)
!2600 = !DILocation(line: 296, column: 5, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !24, line: 294, column: 38)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !24, line: 294, column: 16)
!2603 = distinct !DILexicalBlock(scope: !2592, file: !24, line: 292, column: 9)
!2604 = !DILocation(line: 0, scope: !2603)
!2605 = !DILocation(line: 298, column: 1, scope: !2592)
!2606 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !24, file: !24, line: 300, type: !2593, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2607)
!2607 = !{!2608, !2609}
!2608 = !DILocalVariable(name: "u_port", arg: 1, scope: !2606, file: !24, line: 300, type: !2323)
!2609 = !DILocalVariable(name: "func", arg: 2, scope: !2606, file: !24, line: 300, type: !372)
!2610 = !DILocation(line: 0, scope: !2606)
!2611 = !DILocation(line: 302, column: 9, scope: !2606)
!2612 = !DILocation(line: 306, column: 5, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !24, line: 304, column: 38)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !24, line: 304, column: 16)
!2615 = distinct !DILexicalBlock(scope: !2606, file: !24, line: 302, column: 9)
!2616 = !DILocation(line: 0, scope: !2615)
!2617 = !DILocation(line: 308, column: 1, scope: !2606)
!2618 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !24, file: !24, line: 310, type: !2377, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2619)
!2619 = !{!2620, !2621, !2622, !2623}
!2620 = !DILocalVariable(name: "u_port", arg: 1, scope: !2618, file: !24, line: 310, type: !2323)
!2621 = !DILocalVariable(name: "base", scope: !2618, file: !24, line: 312, type: !7)
!2622 = !DILocalVariable(name: "EFR", scope: !2618, file: !24, line: 313, type: !2393)
!2623 = !DILocalVariable(name: "LCR", scope: !2618, file: !24, line: 313, type: !2393)
!2624 = !DILocation(line: 0, scope: !2618)
!2625 = !DILocation(line: 312, column: 25, scope: !2618)
!2626 = !DILocation(line: 315, column: 11, scope: !2618)
!2627 = !DILocation(line: 317, column: 33, scope: !2618)
!2628 = !DILocation(line: 318, column: 11, scope: !2618)
!2629 = !DILocation(line: 320, column: 35, scope: !2618)
!2630 = !DILocation(line: 320, column: 33, scope: !2618)
!2631 = !DILocation(line: 322, column: 5, scope: !2618)
!2632 = !DILocation(line: 322, column: 39, scope: !2618)
!2633 = !DILocation(line: 324, column: 33, scope: !2618)
!2634 = !DILocation(line: 325, column: 5, scope: !2618)
!2635 = !DILocation(line: 325, column: 33, scope: !2618)
!2636 = !DILocation(line: 327, column: 35, scope: !2618)
!2637 = !DILocation(line: 327, column: 33, scope: !2618)
!2638 = !DILocation(line: 328, column: 1, scope: !2618)
!2639 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !24, file: !24, line: 330, type: !2640, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !2323, !118, !118, !118}
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649}
!2643 = !DILocalVariable(name: "u_port", arg: 1, scope: !2639, file: !24, line: 330, type: !2323)
!2644 = !DILocalVariable(name: "xon", arg: 2, scope: !2639, file: !24, line: 330, type: !118)
!2645 = !DILocalVariable(name: "xoff", arg: 3, scope: !2639, file: !24, line: 330, type: !118)
!2646 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2639, file: !24, line: 330, type: !118)
!2647 = !DILocalVariable(name: "base", scope: !2639, file: !24, line: 332, type: !7)
!2648 = !DILocalVariable(name: "EFR", scope: !2639, file: !24, line: 333, type: !2393)
!2649 = !DILocalVariable(name: "LCR", scope: !2639, file: !24, line: 333, type: !2393)
!2650 = !DILocation(line: 0, scope: !2639)
!2651 = !DILocation(line: 332, column: 25, scope: !2639)
!2652 = !DILocation(line: 335, column: 11, scope: !2639)
!2653 = !DILocation(line: 337, column: 33, scope: !2639)
!2654 = !DILocation(line: 338, column: 36, scope: !2639)
!2655 = !DILocation(line: 338, column: 5, scope: !2639)
!2656 = !DILocation(line: 338, column: 34, scope: !2639)
!2657 = !DILocation(line: 339, column: 5, scope: !2639)
!2658 = !DILocation(line: 339, column: 34, scope: !2639)
!2659 = !DILocation(line: 340, column: 37, scope: !2639)
!2660 = !DILocation(line: 340, column: 5, scope: !2639)
!2661 = !DILocation(line: 340, column: 35, scope: !2639)
!2662 = !DILocation(line: 341, column: 5, scope: !2639)
!2663 = !DILocation(line: 341, column: 35, scope: !2639)
!2664 = !DILocation(line: 343, column: 11, scope: !2639)
!2665 = !DILocation(line: 345, column: 35, scope: !2639)
!2666 = !DILocation(line: 345, column: 33, scope: !2639)
!2667 = !DILocation(line: 347, column: 35, scope: !2639)
!2668 = !DILocation(line: 347, column: 33, scope: !2639)
!2669 = !DILocation(line: 349, column: 43, scope: !2639)
!2670 = !DILocation(line: 349, column: 5, scope: !2639)
!2671 = !DILocation(line: 349, column: 41, scope: !2639)
!2672 = !DILocation(line: 350, column: 5, scope: !2639)
!2673 = !DILocation(line: 350, column: 39, scope: !2639)
!2674 = !DILocation(line: 351, column: 1, scope: !2639)
!2675 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !24, file: !24, line: 353, type: !2377, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2676)
!2676 = !{!2677, !2678, !2679}
!2677 = !DILocalVariable(name: "u_port", arg: 1, scope: !2675, file: !24, line: 353, type: !2323)
!2678 = !DILocalVariable(name: "base", scope: !2675, file: !24, line: 355, type: !7)
!2679 = !DILocalVariable(name: "LCR", scope: !2675, file: !24, line: 356, type: !2393)
!2680 = !DILocation(line: 0, scope: !2675)
!2681 = !DILocation(line: 355, column: 25, scope: !2675)
!2682 = !DILocation(line: 358, column: 11, scope: !2675)
!2683 = !DILocation(line: 360, column: 33, scope: !2675)
!2684 = !DILocation(line: 362, column: 5, scope: !2675)
!2685 = !DILocation(line: 362, column: 33, scope: !2675)
!2686 = !DILocation(line: 364, column: 33, scope: !2675)
!2687 = !DILocation(line: 366, column: 35, scope: !2675)
!2688 = !DILocation(line: 366, column: 33, scope: !2675)
!2689 = !DILocation(line: 367, column: 1, scope: !2675)
!2690 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !24, file: !24, line: 436, type: !2377, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2691)
!2691 = !{!2692, !2693}
!2692 = !DILocalVariable(name: "u_port", arg: 1, scope: !2690, file: !24, line: 436, type: !2323)
!2693 = !DILocalVariable(name: "base", scope: !2690, file: !24, line: 438, type: !7)
!2694 = !DILocation(line: 0, scope: !2690)
!2695 = !DILocation(line: 438, column: 25, scope: !2690)
!2696 = !DILocation(line: 440, column: 5, scope: !2690)
!2697 = !DILocation(line: 440, column: 33, scope: !2690)
!2698 = !DILocation(line: 441, column: 5, scope: !2690)
!2699 = !DILocation(line: 441, column: 33, scope: !2690)
!2700 = !DILocation(line: 442, column: 5, scope: !2690)
!2701 = !DILocation(line: 442, column: 34, scope: !2690)
!2702 = !DILocation(line: 443, column: 5, scope: !2690)
!2703 = !DILocation(line: 443, column: 35, scope: !2690)
!2704 = !DILocation(line: 445, column: 33, scope: !2690)
!2705 = !DILocation(line: 446, column: 5, scope: !2690)
!2706 = !DILocation(line: 446, column: 33, scope: !2690)
!2707 = !DILocation(line: 447, column: 5, scope: !2690)
!2708 = !DILocation(line: 447, column: 33, scope: !2690)
!2709 = !DILocation(line: 449, column: 33, scope: !2690)
!2710 = !DILocation(line: 450, column: 33, scope: !2690)
!2711 = !DILocation(line: 451, column: 33, scope: !2690)
!2712 = !DILocation(line: 453, column: 33, scope: !2690)
!2713 = !DILocation(line: 454, column: 33, scope: !2690)
!2714 = !DILocation(line: 455, column: 33, scope: !2690)
!2715 = !DILocation(line: 457, column: 33, scope: !2690)
!2716 = !DILocation(line: 458, column: 5, scope: !2690)
!2717 = !DILocation(line: 458, column: 33, scope: !2690)
!2718 = !DILocation(line: 459, column: 5, scope: !2690)
!2719 = !DILocation(line: 459, column: 39, scope: !2690)
!2720 = !DILocation(line: 460, column: 5, scope: !2690)
!2721 = !DILocation(line: 460, column: 40, scope: !2690)
!2722 = !DILocation(line: 461, column: 5, scope: !2690)
!2723 = !DILocation(line: 461, column: 42, scope: !2690)
!2724 = !DILocation(line: 462, column: 5, scope: !2690)
!2725 = !DILocation(line: 462, column: 42, scope: !2690)
!2726 = !DILocation(line: 463, column: 5, scope: !2690)
!2727 = !DILocation(line: 463, column: 35, scope: !2690)
!2728 = !DILocation(line: 464, column: 5, scope: !2690)
!2729 = !DILocation(line: 464, column: 41, scope: !2690)
!2730 = !DILocation(line: 465, column: 5, scope: !2690)
!2731 = !DILocation(line: 465, column: 39, scope: !2690)
!2732 = !DILocation(line: 466, column: 5, scope: !2690)
!2733 = !DILocation(line: 466, column: 38, scope: !2690)
!2734 = !DILocation(line: 467, column: 5, scope: !2690)
!2735 = !DILocation(line: 467, column: 42, scope: !2690)
!2736 = !DILocation(line: 468, column: 5, scope: !2690)
!2737 = !DILocation(line: 468, column: 45, scope: !2690)
!2738 = !DILocation(line: 469, column: 5, scope: !2690)
!2739 = !DILocation(line: 469, column: 39, scope: !2690)
!2740 = !DILocation(line: 470, column: 5, scope: !2690)
!2741 = !DILocation(line: 470, column: 39, scope: !2690)
!2742 = !DILocation(line: 471, column: 5, scope: !2690)
!2743 = !DILocation(line: 471, column: 42, scope: !2690)
!2744 = !DILocation(line: 472, column: 1, scope: !2690)
!2745 = distinct !DISubprogram(name: "uart_query_empty", scope: !24, file: !24, line: 474, type: !2377, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2746)
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "u_port", arg: 1, scope: !2745, file: !24, line: 474, type: !2323)
!2748 = !DILocalVariable(name: "base", scope: !2745, file: !24, line: 476, type: !7)
!2749 = !DILocation(line: 0, scope: !2745)
!2750 = !DILocation(line: 476, column: 25, scope: !2745)
!2751 = !DILocation(line: 478, column: 5, scope: !2745)
!2752 = !DILocation(line: 478, column: 14, scope: !2745)
!2753 = !DILocation(line: 478, column: 42, scope: !2745)
!2754 = !DILocation(line: 478, column: 12, scope: !2745)
!2755 = distinct !{!2755, !2751, !2756}
!2756 = !DILocation(line: 478, column: 50, scope: !2745)
!2757 = !DILocation(line: 479, column: 1, scope: !2745)
!2758 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !881, file: !881, line: 64, type: !2759, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{null, !525, !66, !525, null}
!2761 = !{!2762, !2763, !2764, !2765, !2774}
!2762 = !DILocalVariable(name: "func", arg: 1, scope: !2758, file: !881, line: 64, type: !525)
!2763 = !DILocalVariable(name: "line", arg: 2, scope: !2758, file: !881, line: 64, type: !66)
!2764 = !DILocalVariable(name: "message", arg: 3, scope: !2758, file: !881, line: 64, type: !525)
!2765 = !DILocalVariable(name: "ap", scope: !2758, file: !881, line: 66, type: !2766)
!2766 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2767, line: 46, baseType: !2768)
!2767 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2769, line: 32, baseType: !2770)
!2769 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !881, baseType: !2771)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !2772)
!2772 = !{!2773}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2771, file: !881, line: 66, baseType: !116, size: 32)
!2774 = !DILocalVariable(name: "mask", scope: !2758, file: !881, line: 68, type: !12)
!2775 = !DILocation(line: 0, scope: !2758)
!2776 = !DILocation(line: 66, column: 5, scope: !2758)
!2777 = !DILocation(line: 66, column: 13, scope: !2758)
!2778 = !DILocation(line: 68, column: 5, scope: !2758)
!2779 = !DILocation(line: 69, column: 5, scope: !2758)
!2780 = !DILocation(line: 71, column: 5, scope: !2758)
!2781 = !DILocation(line: 72, column: 5, scope: !2758)
!2782 = !DILocation(line: 73, column: 5, scope: !2758)
!2783 = !DILocation(line: 75, column: 37, scope: !2758)
!2784 = !DILocation(line: 75, column: 5, scope: !2758)
!2785 = !DILocation(line: 77, column: 1, scope: !2758)
!2786 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !881, file: !881, line: 78, type: !2759, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2792}
!2788 = !DILocalVariable(name: "func", arg: 1, scope: !2786, file: !881, line: 78, type: !525)
!2789 = !DILocalVariable(name: "line", arg: 2, scope: !2786, file: !881, line: 78, type: !66)
!2790 = !DILocalVariable(name: "message", arg: 3, scope: !2786, file: !881, line: 78, type: !525)
!2791 = !DILocalVariable(name: "ap", scope: !2786, file: !881, line: 80, type: !2766)
!2792 = !DILocalVariable(name: "mask", scope: !2786, file: !881, line: 82, type: !12)
!2793 = !DILocation(line: 0, scope: !2786)
!2794 = !DILocation(line: 80, column: 5, scope: !2786)
!2795 = !DILocation(line: 80, column: 13, scope: !2786)
!2796 = !DILocation(line: 82, column: 5, scope: !2786)
!2797 = !DILocation(line: 83, column: 5, scope: !2786)
!2798 = !DILocation(line: 85, column: 5, scope: !2786)
!2799 = !DILocation(line: 86, column: 5, scope: !2786)
!2800 = !DILocation(line: 87, column: 5, scope: !2786)
!2801 = !DILocation(line: 89, column: 37, scope: !2786)
!2802 = !DILocation(line: 89, column: 5, scope: !2786)
!2803 = !DILocation(line: 91, column: 1, scope: !2786)
!2804 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !881, file: !881, line: 92, type: !2759, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !2805)
!2805 = !{!2806, !2807, !2808, !2809, !2810}
!2806 = !DILocalVariable(name: "func", arg: 1, scope: !2804, file: !881, line: 92, type: !525)
!2807 = !DILocalVariable(name: "line", arg: 2, scope: !2804, file: !881, line: 92, type: !66)
!2808 = !DILocalVariable(name: "message", arg: 3, scope: !2804, file: !881, line: 92, type: !525)
!2809 = !DILocalVariable(name: "ap", scope: !2804, file: !881, line: 94, type: !2766)
!2810 = !DILocalVariable(name: "mask", scope: !2804, file: !881, line: 96, type: !12)
!2811 = !DILocation(line: 0, scope: !2804)
!2812 = !DILocation(line: 94, column: 5, scope: !2804)
!2813 = !DILocation(line: 94, column: 13, scope: !2804)
!2814 = !DILocation(line: 96, column: 5, scope: !2804)
!2815 = !DILocation(line: 97, column: 5, scope: !2804)
!2816 = !DILocation(line: 99, column: 5, scope: !2804)
!2817 = !DILocation(line: 100, column: 5, scope: !2804)
!2818 = !DILocation(line: 101, column: 5, scope: !2804)
!2819 = !DILocation(line: 103, column: 37, scope: !2804)
!2820 = !DILocation(line: 103, column: 5, scope: !2804)
!2821 = !DILocation(line: 105, column: 1, scope: !2804)
!2822 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !881, file: !881, line: 106, type: !2759, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !2823)
!2823 = !{!2824, !2825, !2826, !2827, !2828}
!2824 = !DILocalVariable(name: "func", arg: 1, scope: !2822, file: !881, line: 106, type: !525)
!2825 = !DILocalVariable(name: "line", arg: 2, scope: !2822, file: !881, line: 106, type: !66)
!2826 = !DILocalVariable(name: "message", arg: 3, scope: !2822, file: !881, line: 106, type: !525)
!2827 = !DILocalVariable(name: "ap", scope: !2822, file: !881, line: 108, type: !2766)
!2828 = !DILocalVariable(name: "mask", scope: !2822, file: !881, line: 110, type: !12)
!2829 = !DILocation(line: 0, scope: !2822)
!2830 = !DILocation(line: 108, column: 5, scope: !2822)
!2831 = !DILocation(line: 108, column: 13, scope: !2822)
!2832 = !DILocation(line: 110, column: 5, scope: !2822)
!2833 = !DILocation(line: 111, column: 5, scope: !2822)
!2834 = !DILocation(line: 113, column: 5, scope: !2822)
!2835 = !DILocation(line: 114, column: 5, scope: !2822)
!2836 = !DILocation(line: 115, column: 5, scope: !2822)
!2837 = !DILocation(line: 117, column: 37, scope: !2822)
!2838 = !DILocation(line: 117, column: 5, scope: !2822)
!2839 = !DILocation(line: 119, column: 1, scope: !2822)
!2840 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !881, file: !881, line: 121, type: !2841, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !880, retainedNodes: !2845)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !525, !66, !525, !2843, !66, null}
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2845 = !{!2846, !2847, !2848, !2849, !2850}
!2846 = !DILocalVariable(name: "func", arg: 1, scope: !2840, file: !881, line: 121, type: !525)
!2847 = !DILocalVariable(name: "line", arg: 2, scope: !2840, file: !881, line: 121, type: !66)
!2848 = !DILocalVariable(name: "message", arg: 3, scope: !2840, file: !881, line: 121, type: !525)
!2849 = !DILocalVariable(name: "data", arg: 4, scope: !2840, file: !881, line: 121, type: !2843)
!2850 = !DILocalVariable(name: "length", arg: 5, scope: !2840, file: !881, line: 121, type: !66)
!2851 = !DILocation(line: 0, scope: !2840)
!2852 = !DILocation(line: 123, column: 1, scope: !2840)
!2853 = distinct !DISubprogram(name: "hal_crypt_lock_take", scope: !62, file: !62, line: 51, type: !2854, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!222}
!2856 = !{!2857}
!2857 = !DILocalVariable(name: "irq_status", scope: !2853, file: !62, line: 53, type: !12)
!2858 = !DILocation(line: 54, column: 18, scope: !2853)
!2859 = !DILocation(line: 0, scope: !2853)
!2860 = !DILocation(line: 55, column: 9, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2853, file: !62, line: 55, column: 9)
!2862 = !{i8 0, i8 2}
!2863 = !DILocation(line: 55, column: 9, scope: !2853)
!2864 = !DILocation(line: 59, column: 18, scope: !2853)
!2865 = !DILocation(line: 61, column: 5, scope: !2853)
!2866 = !DILocation(line: 62, column: 1, scope: !2853)
!2867 = distinct !DISubprogram(name: "hal_crypt_lock_give", scope: !62, file: !62, line: 66, type: !374, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1870)
!2868 = !DILocation(line: 68, column: 18, scope: !2867)
!2869 = !DILocation(line: 69, column: 1, scope: !2867)
!2870 = distinct !DISubprogram(name: "hal_aes_encrypt_with_padding", scope: !62, file: !62, line: 144, type: !2871, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2880)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!2873, !2874, !2874, !2874, !416, !118}
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_status_t", file: !65, line: 293, baseType: !64)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_buffer_t", file: !65, line: 307, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 304, size: 64, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2876, file: !65, line: 305, baseType: !416, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2876, file: !65, line: 306, baseType: !12, size: 32, offset: 32)
!2880 = !{!2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2893, !2895, !2896}
!2881 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !2870, file: !62, line: 144, type: !2874)
!2882 = !DILocalVariable(name: "plain_text", arg: 2, scope: !2870, file: !62, line: 145, type: !2874)
!2883 = !DILocalVariable(name: "key", arg: 3, scope: !2870, file: !62, line: 146, type: !2874)
!2884 = !DILocalVariable(name: "init_vector", arg: 4, scope: !2870, file: !62, line: 147, type: !416)
!2885 = !DILocalVariable(name: "mode", arg: 5, scope: !2870, file: !62, line: 148, type: !118)
!2886 = !DILocalVariable(name: "last_block_size", scope: !2870, file: !62, line: 157, type: !12)
!2887 = !DILocalVariable(name: "block_num", scope: !2870, file: !62, line: 158, type: !12)
!2888 = !DILocalVariable(name: "padding_size", scope: !2870, file: !62, line: 159, type: !118)
!2889 = !DILocalVariable(name: "iv", scope: !2870, file: !62, line: 160, type: !416)
!2890 = !DILocalVariable(name: "first_encypt_size", scope: !2891, file: !62, line: 182, type: !12)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !62, line: 181, column: 24)
!2892 = distinct !DILexicalBlock(scope: !2870, file: !62, line: 181, column: 9)
!2893 = !DILocalVariable(name: "data_block", scope: !2891, file: !62, line: 193, type: !2894)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !203)
!2895 = !DILocalVariable(name: "init_vector2", scope: !2891, file: !62, line: 197, type: !416)
!2896 = !DILocalVariable(name: "data_block", scope: !2897, file: !62, line: 215, type: !2894)
!2897 = distinct !DILexicalBlock(scope: !2892, file: !62, line: 214, column: 12)
!2898 = !DILocation(line: 0, scope: !2870)
!2899 = !DILocation(line: 150, column: 15, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2870, file: !62, line: 150, column: 9)
!2901 = !DILocation(line: 151, column: 13, scope: !2900)
!2902 = !DILocation(line: 154, column: 9, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2900, file: !62, line: 153, column: 39)
!2904 = !DILocation(line: 155, column: 9, scope: !2903)
!2905 = !DILocation(line: 157, column: 44, scope: !2870)
!2906 = !DILocation(line: 157, column: 51, scope: !2870)
!2907 = !DILocation(line: 182, column: 48, scope: !2891)
!2908 = !DILocation(line: 159, column: 28, scope: !2870)
!2909 = !DILocation(line: 162, column: 25, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2870, file: !62, line: 162, column: 9)
!2911 = !DILocation(line: 162, column: 54, scope: !2910)
!2912 = !DILocation(line: 162, column: 32, scope: !2910)
!2913 = !DILocation(line: 162, column: 9, scope: !2870)
!2914 = !DILocation(line: 163, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !62, line: 162, column: 71)
!2916 = !DILocation(line: 164, column: 9, scope: !2915)
!2917 = !DILocation(line: 167, column: 5, scope: !2870)
!2918 = !DILocation(line: 169, column: 5, scope: !2870)
!2919 = !DILocation(line: 170, column: 5, scope: !2870)
!2920 = !DILocation(line: 171, column: 5, scope: !2870)
!2921 = !DILocation(line: 173, column: 31, scope: !2870)
!2922 = !DILocation(line: 173, column: 17, scope: !2870)
!2923 = !DILocation(line: 173, column: 44, scope: !2870)
!2924 = !DILocation(line: 173, column: 5, scope: !2870)
!2925 = !DILocation(line: 175, column: 22, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2870, file: !62, line: 175, column: 9)
!2927 = !DILocation(line: 0, scope: !2926)
!2928 = !DILocation(line: 181, column: 19, scope: !2892)
!2929 = !DILocation(line: 181, column: 9, scope: !2870)
!2930 = !DILocation(line: 0, scope: !2891)
!2931 = !DILocation(line: 183, column: 65, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2891, file: !62, line: 183, column: 13)
!2933 = !DILocation(line: 184, column: 65, scope: !2932)
!2934 = !DILocation(line: 185, column: 61, scope: !2932)
!2935 = !DILocation(line: 183, column: 34, scope: !2932)
!2936 = !DILocation(line: 183, column: 31, scope: !2932)
!2937 = !DILocation(line: 183, column: 13, scope: !2891)
!2938 = !DILocation(line: 188, column: 13, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2932, file: !62, line: 187, column: 63)
!2940 = !DILocation(line: 189, column: 13, scope: !2939)
!2941 = !DILocation(line: 193, column: 9, scope: !2891)
!2942 = !DILocation(line: 193, column: 17, scope: !2891)
!2943 = !DILocation(line: 194, column: 40, scope: !2891)
!2944 = !DILocation(line: 194, column: 47, scope: !2891)
!2945 = !DILocation(line: 194, column: 9, scope: !2891)
!2946 = !DILocation(line: 195, column: 27, scope: !2891)
!2947 = !DILocation(line: 195, column: 9, scope: !2891)
!2948 = !DILocation(line: 198, column: 13, scope: !2891)
!2949 = !DILocation(line: 205, column: 72, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2891, file: !62, line: 205, column: 13)
!2951 = !DILocation(line: 206, column: 65, scope: !2950)
!2952 = !DILocation(line: 205, column: 34, scope: !2950)
!2953 = !DILocation(line: 205, column: 31, scope: !2950)
!2954 = !DILocation(line: 205, column: 13, scope: !2891)
!2955 = !DILocation(line: 214, column: 5, scope: !2892)
!2956 = !DILocation(line: 210, column: 13, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2950, file: !62, line: 209, column: 54)
!2958 = !DILocation(line: 211, column: 13, scope: !2957)
!2959 = !DILocation(line: 215, column: 9, scope: !2897)
!2960 = !DILocation(line: 215, column: 17, scope: !2897)
!2961 = !DILocation(line: 216, column: 40, scope: !2897)
!2962 = !DILocation(line: 216, column: 60, scope: !2897)
!2963 = !DILocation(line: 216, column: 9, scope: !2897)
!2964 = !DILocation(line: 217, column: 27, scope: !2897)
!2965 = !DILocation(line: 217, column: 9, scope: !2897)
!2966 = !DILocation(line: 218, column: 65, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2897, file: !62, line: 218, column: 13)
!2968 = !DILocation(line: 219, column: 65, scope: !2967)
!2969 = !DILocation(line: 218, column: 34, scope: !2967)
!2970 = !DILocation(line: 218, column: 31, scope: !2967)
!2971 = !DILocation(line: 218, column: 13, scope: !2897)
!2972 = !DILocation(line: 223, column: 13, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2967, file: !62, line: 222, column: 63)
!2974 = !DILocation(line: 224, column: 13, scope: !2973)
!2975 = !DILocation(line: 227, column: 5, scope: !2892)
!2976 = !DILocation(line: 229, column: 46, scope: !2870)
!2977 = !DILocation(line: 229, column: 28, scope: !2870)
!2978 = !DILocation(line: 231, column: 5, scope: !2870)
!2979 = !DILocation(line: 232, column: 5, scope: !2870)
!2980 = !DILocation(line: 233, column: 1, scope: !2870)
!2981 = distinct !DISubprogram(name: "aes_operation_done", scope: !62, file: !62, line: 76, type: !304, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2982)
!2982 = !{!2983}
!2983 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2981, file: !62, line: 76, type: !221)
!2984 = !DILocation(line: 0, scope: !2981)
!2985 = !DILocation(line: 78, column: 5, scope: !2981)
!2986 = !DILocation(line: 79, column: 5, scope: !2981)
!2987 = !DILocation(line: 81, column: 19, scope: !2981)
!2988 = !DILocation(line: 83, column: 5, scope: !2981)
!2989 = !DILocation(line: 84, column: 1, scope: !2981)
!2990 = distinct !DISubprogram(name: "do_aes_encrypt", scope: !62, file: !62, line: 86, type: !2991, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!2873, !416, !12, !416, !12, !416}
!2993 = !{!2994, !2995, !2996, !2997, !2998, !2999, !3000}
!2994 = !DILocalVariable(name: "encrypt_buffer", arg: 1, scope: !2990, file: !62, line: 86, type: !416)
!2995 = !DILocalVariable(name: "encrypt_buffer_length", arg: 2, scope: !2990, file: !62, line: 87, type: !12)
!2996 = !DILocalVariable(name: "plain_buffer", arg: 3, scope: !2990, file: !62, line: 88, type: !416)
!2997 = !DILocalVariable(name: "plain_buffer_length", arg: 4, scope: !2990, file: !62, line: 89, type: !12)
!2998 = !DILocalVariable(name: "init_vector", arg: 5, scope: !2990, file: !62, line: 90, type: !416)
!2999 = !DILocalVariable(name: "ret_val", scope: !2990, file: !62, line: 93, type: !222)
!3000 = !DILocalVariable(name: "wait_count", scope: !2990, file: !62, line: 103, type: !12)
!3001 = !DILocation(line: 0, scope: !2990)
!3002 = !DILocation(line: 92, column: 19, scope: !2990)
!3003 = !DILocation(line: 94, column: 35, scope: !2990)
!3004 = !DILocation(line: 96, column: 35, scope: !2990)
!3005 = !DILocation(line: 93, column: 23, scope: !2990)
!3006 = !DILocation(line: 99, column: 17, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2990, file: !62, line: 99, column: 9)
!3008 = !DILocation(line: 99, column: 9, scope: !2990)
!3009 = !DILocation(line: 100, column: 9, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3007, file: !62, line: 99, column: 22)
!3011 = !DILocation(line: 101, column: 9, scope: !3010)
!3012 = !DILocation(line: 104, column: 13, scope: !2990)
!3013 = !DILocation(line: 104, column: 5, scope: !2990)
!3014 = !DILocation(line: 106, column: 19, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2990, file: !62, line: 104, column: 28)
!3016 = !DILocation(line: 107, column: 24, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3015, file: !62, line: 107, column: 13)
!3018 = !DILocation(line: 107, column: 13, scope: !3015)
!3019 = distinct !{!3019, !3013, !3020}
!3020 = !DILocation(line: 111, column: 5, scope: !2990)
!3021 = !DILocation(line: 108, column: 13, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !62, line: 107, column: 50)
!3023 = !DILocation(line: 109, column: 13, scope: !3022)
!3024 = !DILocation(line: 113, column: 1, scope: !2990)
!3025 = distinct !DISubprogram(name: "hal_aes_decrypt", scope: !62, file: !62, line: 235, type: !2871, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032}
!3027 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3025, file: !62, line: 235, type: !2874)
!3028 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3025, file: !62, line: 236, type: !2874)
!3029 = !DILocalVariable(name: "key", arg: 3, scope: !3025, file: !62, line: 237, type: !2874)
!3030 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3025, file: !62, line: 238, type: !416)
!3031 = !DILocalVariable(name: "mode", arg: 5, scope: !3025, file: !62, line: 239, type: !118)
!3032 = !DILocalVariable(name: "padding_size", scope: !3025, file: !62, line: 285, type: !118)
!3033 = !DILocation(line: 0, scope: !3025)
!3034 = !DILocation(line: 241, column: 15, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3025, file: !62, line: 241, column: 9)
!3036 = !DILocation(line: 242, column: 13, scope: !3035)
!3037 = !DILocation(line: 245, column: 9, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !62, line: 244, column: 39)
!3039 = !DILocation(line: 246, column: 9, scope: !3038)
!3040 = !DILocation(line: 249, column: 26, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3025, file: !62, line: 249, column: 9)
!3042 = !DILocation(line: 249, column: 33, scope: !3041)
!3043 = !DILocation(line: 249, column: 56, scope: !3041)
!3044 = !DILocation(line: 249, column: 9, scope: !3025)
!3045 = !DILocation(line: 250, column: 9, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3041, file: !62, line: 249, column: 62)
!3047 = !DILocation(line: 251, column: 9, scope: !3046)
!3048 = !DILocation(line: 253, column: 21, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3025, file: !62, line: 253, column: 9)
!3050 = !DILocation(line: 253, column: 54, scope: !3049)
!3051 = !DILocation(line: 253, column: 28, scope: !3049)
!3052 = !DILocation(line: 253, column: 9, scope: !3025)
!3053 = !DILocation(line: 254, column: 9, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3049, file: !62, line: 253, column: 78)
!3055 = !DILocation(line: 256, column: 9, scope: !3054)
!3056 = !DILocation(line: 258, column: 15, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3025, file: !62, line: 258, column: 9)
!3058 = !DILocation(line: 259, column: 13, scope: !3057)
!3059 = !DILocation(line: 261, column: 9, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3057, file: !62, line: 260, column: 57)
!3061 = !DILocation(line: 262, column: 9, scope: !3060)
!3062 = !DILocation(line: 265, column: 5, scope: !3025)
!3063 = !DILocation(line: 267, column: 5, scope: !3025)
!3064 = !DILocation(line: 268, column: 5, scope: !3025)
!3065 = !DILocation(line: 269, column: 5, scope: !3025)
!3066 = !DILocation(line: 271, column: 22, scope: !3025)
!3067 = !DILocation(line: 271, column: 17, scope: !3025)
!3068 = !DILocation(line: 271, column: 35, scope: !3025)
!3069 = !DILocation(line: 271, column: 5, scope: !3025)
!3070 = !DILocation(line: 272, column: 22, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3025, file: !62, line: 272, column: 9)
!3072 = !DILocation(line: 0, scope: !3071)
!3073 = !DILocation(line: 279, column: 30, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3025, file: !62, line: 279, column: 9)
!3075 = !DILocation(line: 279, column: 27, scope: !3074)
!3076 = !DILocation(line: 279, column: 9, scope: !3025)
!3077 = !DILocation(line: 280, column: 9, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !62, line: 279, column: 87)
!3079 = !DILocation(line: 281, column: 9, scope: !3078)
!3080 = !DILocation(line: 282, column: 9, scope: !3078)
!3081 = !DILocation(line: 285, column: 40, scope: !3025)
!3082 = !DILocation(line: 285, column: 63, scope: !3025)
!3083 = !DILocation(line: 285, column: 70, scope: !3025)
!3084 = !DILocation(line: 285, column: 28, scope: !3025)
!3085 = !DILocation(line: 286, column: 5, scope: !3025)
!3086 = !DILocation(line: 287, column: 42, scope: !3025)
!3087 = !DILocation(line: 287, column: 51, scope: !3025)
!3088 = !DILocation(line: 287, column: 49, scope: !3025)
!3089 = !DILocation(line: 287, column: 24, scope: !3025)
!3090 = !DILocation(line: 289, column: 5, scope: !3025)
!3091 = !DILocation(line: 291, column: 1, scope: !3025)
!3092 = distinct !DISubprogram(name: "do_aes_decrypt", scope: !62, file: !62, line: 115, type: !3093, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!2873, !2874, !2874, !416}
!3095 = !{!3096, !3097, !3098, !3099, !3100}
!3096 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3092, file: !62, line: 115, type: !2874)
!3097 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3092, file: !62, line: 116, type: !2874)
!3098 = !DILocalVariable(name: "init_vector", arg: 3, scope: !3092, file: !62, line: 117, type: !416)
!3099 = !DILocalVariable(name: "ret_val", scope: !3092, file: !62, line: 121, type: !222)
!3100 = !DILocalVariable(name: "wait_count", scope: !3092, file: !62, line: 131, type: !12)
!3101 = !DILocation(line: 0, scope: !3092)
!3102 = !DILocation(line: 119, column: 19, scope: !3092)
!3103 = !DILocation(line: 121, column: 51, scope: !3092)
!3104 = !DILocation(line: 122, column: 51, scope: !3092)
!3105 = !DILocation(line: 122, column: 35, scope: !3092)
!3106 = !DILocation(line: 123, column: 47, scope: !3092)
!3107 = !DILocation(line: 124, column: 47, scope: !3092)
!3108 = !DILocation(line: 124, column: 35, scope: !3092)
!3109 = !DILocation(line: 121, column: 23, scope: !3092)
!3110 = !DILocation(line: 127, column: 17, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3092, file: !62, line: 127, column: 9)
!3112 = !DILocation(line: 127, column: 9, scope: !3092)
!3113 = !DILocation(line: 128, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3111, file: !62, line: 127, column: 22)
!3115 = !DILocation(line: 129, column: 9, scope: !3114)
!3116 = !DILocation(line: 132, column: 13, scope: !3092)
!3117 = !DILocation(line: 132, column: 5, scope: !3092)
!3118 = !DILocation(line: 134, column: 19, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3092, file: !62, line: 132, column: 28)
!3120 = !DILocation(line: 135, column: 24, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3119, file: !62, line: 135, column: 13)
!3122 = !DILocation(line: 135, column: 13, scope: !3119)
!3123 = distinct !{!3123, !3117, !3124}
!3124 = !DILocation(line: 139, column: 5, scope: !3092)
!3125 = !DILocation(line: 136, column: 13, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3121, file: !62, line: 135, column: 50)
!3127 = !DILocation(line: 137, column: 13, scope: !3126)
!3128 = !DILocation(line: 141, column: 1, scope: !3092)
!3129 = distinct !DISubprogram(name: "hal_aes_cbc_encrypt", scope: !62, file: !62, line: 293, type: !3130, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!2873, !2874, !2874, !2874, !416}
!3132 = !{!3133, !3134, !3135, !3136}
!3133 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3129, file: !62, line: 293, type: !2874)
!3134 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3129, file: !62, line: 294, type: !2874)
!3135 = !DILocalVariable(name: "key", arg: 3, scope: !3129, file: !62, line: 295, type: !2874)
!3136 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3129, file: !62, line: 296, type: !416)
!3137 = !DILocation(line: 0, scope: !3129)
!3138 = !DILocation(line: 298, column: 12, scope: !3129)
!3139 = !DILocation(line: 298, column: 5, scope: !3129)
!3140 = distinct !DISubprogram(name: "hal_aes_cbc_decrypt", scope: !62, file: !62, line: 301, type: !3130, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3141)
!3141 = !{!3142, !3143, !3144, !3145}
!3142 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3140, file: !62, line: 301, type: !2874)
!3143 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3140, file: !62, line: 302, type: !2874)
!3144 = !DILocalVariable(name: "key", arg: 3, scope: !3140, file: !62, line: 303, type: !2874)
!3145 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3140, file: !62, line: 304, type: !416)
!3146 = !DILocation(line: 0, scope: !3140)
!3147 = !DILocation(line: 306, column: 12, scope: !3140)
!3148 = !DILocation(line: 306, column: 5, scope: !3140)
!3149 = distinct !DISubprogram(name: "hal_aes_ecb_encrypt", scope: !62, file: !62, line: 309, type: !3150, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!2873, !2874, !2874, !2874}
!3152 = !{!3153, !3154, !3155, !3156}
!3153 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3149, file: !62, line: 309, type: !2874)
!3154 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3149, file: !62, line: 310, type: !2874)
!3155 = !DILocalVariable(name: "key", arg: 3, scope: !3149, file: !62, line: 311, type: !2874)
!3156 = !DILocalVariable(name: "init_vector", scope: !3149, file: !62, line: 313, type: !2894)
!3157 = !DILocation(line: 0, scope: !3149)
!3158 = !DILocation(line: 313, column: 5, scope: !3149)
!3159 = !DILocation(line: 313, column: 13, scope: !3149)
!3160 = !DILocation(line: 315, column: 12, scope: !3149)
!3161 = !DILocation(line: 316, column: 1, scope: !3149)
!3162 = !DILocation(line: 315, column: 5, scope: !3149)
!3163 = distinct !DISubprogram(name: "hal_aes_ecb_decrypt", scope: !62, file: !62, line: 318, type: !3150, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3164)
!3164 = !{!3165, !3166, !3167, !3168}
!3165 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3163, file: !62, line: 318, type: !2874)
!3166 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3163, file: !62, line: 319, type: !2874)
!3167 = !DILocalVariable(name: "key", arg: 3, scope: !3163, file: !62, line: 320, type: !2874)
!3168 = !DILocalVariable(name: "init_vector", scope: !3163, file: !62, line: 322, type: !2894)
!3169 = !DILocation(line: 0, scope: !3163)
!3170 = !DILocation(line: 322, column: 5, scope: !3163)
!3171 = !DILocation(line: 322, column: 13, scope: !3163)
!3172 = !DILocation(line: 324, column: 12, scope: !3163)
!3173 = !DILocation(line: 325, column: 1, scope: !3163)
!3174 = !DILocation(line: 324, column: 5, scope: !3163)
!3175 = distinct !DISubprogram(name: "hal_cache_init", scope: !128, file: !128, line: 53, type: !3176, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3179)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!3178}
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !131, line: 172, baseType: !130)
!3179 = !{!3180, !3182}
!3180 = !DILocalVariable(name: "region", scope: !3175, file: !128, line: 55, type: !3181)
!3181 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !131, line: 204, baseType: !141)
!3182 = !DILocalVariable(name: "irq_flag", scope: !3175, file: !128, line: 56, type: !12)
!3183 = !DILocation(line: 59, column: 16, scope: !3175)
!3184 = !DILocation(line: 0, scope: !3175)
!3185 = !DILocation(line: 62, column: 9, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3175, file: !128, line: 62, column: 9)
!3187 = !DILocation(line: 62, column: 9, scope: !3175)
!3188 = !DILocation(line: 64, column: 9, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3186, file: !128, line: 62, column: 39)
!3190 = !DILocation(line: 66, column: 9, scope: !3189)
!3191 = !DILocation(line: 69, column: 24, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3186, file: !128, line: 67, column: 12)
!3193 = !DILocation(line: 72, column: 9, scope: !3192)
!3194 = !DILocation(line: 77, column: 5, scope: !3175)
!3195 = !DILocation(line: 80, column: 22, scope: !3175)
!3196 = !DILocation(line: 81, column: 28, scope: !3175)
!3197 = !DILocation(line: 84, column: 19, scope: !3175)
!3198 = !DILocation(line: 85, column: 23, scope: !3175)
!3199 = !DILocation(line: 88, column: 5, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3175, file: !128, line: 88, column: 5)
!3201 = !DILocation(line: 90, column: 9, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !128, line: 88, column: 81)
!3203 = distinct !DILexicalBlock(scope: !3200, file: !128, line: 88, column: 5)
!3204 = !DILocation(line: 90, column: 38, scope: !3202)
!3205 = !DILocation(line: 91, column: 9, scope: !3202)
!3206 = !DILocation(line: 91, column: 42, scope: !3202)
!3207 = !DILocation(line: 94, column: 45, scope: !3202)
!3208 = !DILocation(line: 94, column: 47, scope: !3202)
!3209 = !DILocation(line: 95, column: 49, scope: !3202)
!3210 = !DILocation(line: 95, column: 51, scope: !3202)
!3211 = !DILocation(line: 88, column: 77, scope: !3203)
!3212 = !DILocation(line: 88, column: 46, scope: !3203)
!3213 = distinct !{!3213, !3199, !3214}
!3214 = !DILocation(line: 96, column: 5, scope: !3200)
!3215 = !DILocation(line: 99, column: 1, scope: !3175)
!3216 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !128, file: !128, line: 327, type: !3176, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3217)
!3217 = !{!3218}
!3218 = !DILocalVariable(name: "irq_flag", scope: !3216, file: !128, line: 329, type: !12)
!3219 = !DILocation(line: 332, column: 16, scope: !3216)
!3220 = !DILocation(line: 0, scope: !3216)
!3221 = !DILocation(line: 335, column: 21, scope: !3216)
!3222 = !DILocation(line: 336, column: 21, scope: !3216)
!3223 = !DILocation(line: 339, column: 21, scope: !3216)
!3224 = !DILocation(line: 340, column: 21, scope: !3216)
!3225 = !DILocation(line: 434, column: 3, scope: !3226, inlinedAt: !3228)
!3226 = distinct !DISubprogram(name: "__ISB", scope: !3227, file: !3227, line: 432, type: !374, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1870)
!3227 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/aes_encrypt_decrypt_data/GCC")
!3228 = distinct !DILocation(line: 343, column: 5, scope: !3216)
!3229 = !{i64 296587}
!3230 = !DILocation(line: 346, column: 5, scope: !3216)
!3231 = !DILocation(line: 348, column: 5, scope: !3216)
!3232 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !128, file: !128, line: 101, type: !3176, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3233)
!3233 = !{!3234}
!3234 = !DILocalVariable(name: "region", scope: !3232, file: !128, line: 103, type: !3181)
!3235 = !DILocation(line: 107, column: 5, scope: !3232)
!3236 = !DILocation(line: 110, column: 22, scope: !3232)
!3237 = !DILocation(line: 111, column: 28, scope: !3232)
!3238 = !DILocation(line: 114, column: 19, scope: !3232)
!3239 = !DILocation(line: 115, column: 23, scope: !3232)
!3240 = !DILocation(line: 0, scope: !3232)
!3241 = !DILocation(line: 118, column: 5, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3232, file: !128, line: 118, column: 5)
!3243 = !DILocation(line: 120, column: 9, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !128, line: 118, column: 81)
!3245 = distinct !DILexicalBlock(scope: !3242, file: !128, line: 118, column: 5)
!3246 = !DILocation(line: 120, column: 38, scope: !3244)
!3247 = !DILocation(line: 121, column: 9, scope: !3244)
!3248 = !DILocation(line: 121, column: 42, scope: !3244)
!3249 = !DILocation(line: 124, column: 45, scope: !3244)
!3250 = !DILocation(line: 124, column: 47, scope: !3244)
!3251 = !DILocation(line: 125, column: 49, scope: !3244)
!3252 = !DILocation(line: 125, column: 51, scope: !3244)
!3253 = !DILocation(line: 118, column: 77, scope: !3245)
!3254 = !DILocation(line: 118, column: 46, scope: !3245)
!3255 = distinct !{!3255, !3241, !3256}
!3256 = !DILocation(line: 126, column: 5, scope: !3242)
!3257 = !DILocation(line: 129, column: 20, scope: !3232)
!3258 = !DILocation(line: 131, column: 5, scope: !3232)
!3259 = distinct !DISubprogram(name: "hal_cache_enable", scope: !128, file: !128, line: 134, type: !3176, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1870)
!3260 = !DILocation(line: 137, column: 45, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3259, file: !128, line: 137, column: 9)
!3262 = !DILocation(line: 137, column: 28, scope: !3261)
!3263 = !DILocation(line: 137, column: 9, scope: !3259)
!3264 = !DILocation(line: 142, column: 22, scope: !3259)
!3265 = !DILocation(line: 145, column: 28, scope: !3259)
!3266 = !DILocation(line: 145, column: 19, scope: !3259)
!3267 = !DILocation(line: 147, column: 5, scope: !3259)
!3268 = !DILocation(line: 0, scope: !3259)
!3269 = !DILocation(line: 148, column: 1, scope: !3259)
!3270 = distinct !DISubprogram(name: "hal_cache_disable", scope: !128, file: !128, line: 150, type: !3176, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3271)
!3271 = !{!3272}
!3272 = !DILocalVariable(name: "irq_flag", scope: !3270, file: !128, line: 152, type: !12)
!3273 = !DILocation(line: 155, column: 16, scope: !3270)
!3274 = !DILocation(line: 0, scope: !3270)
!3275 = !DILocation(line: 158, column: 16, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3270, file: !128, line: 158, column: 9)
!3277 = !DILocation(line: 158, column: 26, scope: !3276)
!3278 = !DILocation(line: 158, column: 9, scope: !3270)
!3279 = !DILocation(line: 160, column: 9, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3276, file: !128, line: 158, column: 49)
!3281 = !DILocation(line: 161, column: 5, scope: !3280)
!3282 = !DILocation(line: 164, column: 22, scope: !3270)
!3283 = !DILocation(line: 167, column: 28, scope: !3270)
!3284 = !DILocation(line: 167, column: 19, scope: !3270)
!3285 = !DILocation(line: 170, column: 5, scope: !3270)
!3286 = !DILocation(line: 172, column: 5, scope: !3270)
!3287 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !128, file: !128, line: 175, type: !3288, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!3178, !3181}
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "region", arg: 1, scope: !3287, file: !128, line: 175, type: !3181)
!3292 = !DILocation(line: 0, scope: !3287)
!3293 = !DILocation(line: 178, column: 16, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3287, file: !128, line: 178, column: 9)
!3295 = !DILocation(line: 178, column: 9, scope: !3287)
!3296 = !DILocation(line: 183, column: 9, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3287, file: !128, line: 183, column: 9)
!3298 = !DILocation(line: 183, column: 38, scope: !3297)
!3299 = !DILocation(line: 183, column: 9, scope: !3287)
!3300 = !DILocation(line: 184, column: 38, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !128, line: 183, column: 62)
!3302 = !DILocation(line: 184, column: 32, scope: !3301)
!3303 = !DILocation(line: 190, column: 32, scope: !3287)
!3304 = !DILocation(line: 190, column: 23, scope: !3287)
!3305 = !DILocation(line: 192, column: 5, scope: !3287)
!3306 = !DILocation(line: 193, column: 1, scope: !3287)
!3307 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !128, file: !128, line: 195, type: !3288, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3308)
!3308 = !{!3309}
!3309 = !DILocalVariable(name: "region", arg: 1, scope: !3307, file: !128, line: 195, type: !3181)
!3310 = !DILocation(line: 0, scope: !3307)
!3311 = !DILocation(line: 198, column: 16, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3307, file: !128, line: 198, column: 9)
!3313 = !DILocation(line: 198, column: 9, scope: !3307)
!3314 = !DILocation(line: 203, column: 35, scope: !3307)
!3315 = !DILocation(line: 203, column: 31, scope: !3307)
!3316 = !DILocation(line: 203, column: 28, scope: !3307)
!3317 = !DILocation(line: 206, column: 32, scope: !3307)
!3318 = !DILocation(line: 206, column: 23, scope: !3307)
!3319 = !DILocation(line: 209, column: 41, scope: !3307)
!3320 = !DILocation(line: 209, column: 43, scope: !3307)
!3321 = !DILocation(line: 210, column: 45, scope: !3307)
!3322 = !DILocation(line: 210, column: 47, scope: !3307)
!3323 = !DILocation(line: 212, column: 5, scope: !3307)
!3324 = !DILocation(line: 213, column: 1, scope: !3307)
!3325 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !128, file: !128, line: 215, type: !3326, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3329)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!3178, !3328}
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !131, line: 182, baseType: !160)
!3329 = !{!3330}
!3330 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3325, file: !128, line: 215, type: !3328)
!3331 = !DILocation(line: 0, scope: !3325)
!3332 = !DILocation(line: 218, column: 20, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3325, file: !128, line: 218, column: 9)
!3334 = !DILocation(line: 218, column: 9, scope: !3325)
!3335 = !DILocation(line: 223, column: 22, scope: !3325)
!3336 = !DILocation(line: 224, column: 37, scope: !3325)
!3337 = !DILocation(line: 224, column: 22, scope: !3325)
!3338 = !DILocation(line: 227, column: 20, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3325, file: !128, line: 227, column: 9)
!3340 = !DILocation(line: 227, column: 9, scope: !3325)
!3341 = !DILocation(line: 228, column: 26, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3339, file: !128, line: 227, column: 43)
!3343 = !DILocation(line: 229, column: 5, scope: !3342)
!3344 = !DILocation(line: 232, column: 28, scope: !3325)
!3345 = !DILocation(line: 232, column: 19, scope: !3325)
!3346 = !DILocation(line: 234, column: 5, scope: !3325)
!3347 = !DILocation(line: 235, column: 1, scope: !3325)
!3348 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !128, file: !128, line: 237, type: !3349, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3358)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!3178, !3181, !3351}
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 32)
!3352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3353)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !131, line: 222, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 219, size: 64, elements: !3355)
!3355 = !{!3356, !3357}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3354, file: !131, line: 220, baseType: !12, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3354, file: !131, line: 221, baseType: !12, size: 32, offset: 32)
!3358 = !{!3359, !3360}
!3359 = !DILocalVariable(name: "region", arg: 1, scope: !3348, file: !128, line: 237, type: !3181)
!3360 = !DILocalVariable(name: "region_config", arg: 2, scope: !3348, file: !128, line: 237, type: !3351)
!3361 = !DILocation(line: 0, scope: !3348)
!3362 = !DILocation(line: 240, column: 16, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3348, file: !128, line: 240, column: 9)
!3364 = !DILocation(line: 240, column: 9, scope: !3348)
!3365 = !DILocation(line: 245, column: 23, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3348, file: !128, line: 245, column: 9)
!3367 = !DILocation(line: 245, column: 9, scope: !3348)
!3368 = !DILocation(line: 250, column: 24, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3348, file: !128, line: 250, column: 9)
!3370 = !DILocation(line: 250, column: 45, scope: !3369)
!3371 = !DILocation(line: 250, column: 9, scope: !3348)
!3372 = !DILocation(line: 251, column: 9, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3369, file: !128, line: 250, column: 81)
!3374 = !DILocation(line: 256, column: 24, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3348, file: !128, line: 256, column: 9)
!3376 = !DILocation(line: 256, column: 42, scope: !3375)
!3377 = !DILocation(line: 256, column: 9, scope: !3348)
!3378 = !DILocation(line: 257, column: 9, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !128, line: 256, column: 78)
!3380 = !DILocation(line: 262, column: 5, scope: !3348)
!3381 = !DILocation(line: 262, column: 34, scope: !3348)
!3382 = !DILocation(line: 263, column: 55, scope: !3348)
!3383 = !DILocation(line: 263, column: 93, scope: !3348)
!3384 = !DILocation(line: 263, column: 76, scope: !3348)
!3385 = !DILocation(line: 263, column: 5, scope: !3348)
!3386 = !DILocation(line: 263, column: 38, scope: !3348)
!3387 = !DILocation(line: 266, column: 34, scope: !3348)
!3388 = !DILocation(line: 269, column: 45, scope: !3348)
!3389 = !DILocation(line: 269, column: 41, scope: !3348)
!3390 = !DILocation(line: 269, column: 43, scope: !3348)
!3391 = !DILocation(line: 270, column: 49, scope: !3348)
!3392 = !DILocation(line: 270, column: 45, scope: !3348)
!3393 = !DILocation(line: 270, column: 47, scope: !3348)
!3394 = !DILocation(line: 272, column: 5, scope: !3348)
!3395 = !DILocation(line: 273, column: 1, scope: !3348)
!3396 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !128, file: !128, line: 275, type: !3397, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!3178, !12}
!3399 = !{!3400, !3401}
!3400 = !DILocalVariable(name: "address", arg: 1, scope: !3396, file: !128, line: 275, type: !12)
!3401 = !DILocalVariable(name: "irq_flag", scope: !3396, file: !128, line: 277, type: !12)
!3402 = !DILocation(line: 0, scope: !3396)
!3403 = !DILocation(line: 280, column: 17, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3396, file: !128, line: 280, column: 9)
!3405 = !DILocation(line: 280, column: 9, scope: !3396)
!3406 = !DILocation(line: 284, column: 16, scope: !3396)
!3407 = !DILocation(line: 287, column: 32, scope: !3396)
!3408 = !DILocation(line: 287, column: 21, scope: !3396)
!3409 = !DILocation(line: 288, column: 21, scope: !3396)
!3410 = !DILocation(line: 434, column: 3, scope: !3226, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 291, column: 5, scope: !3396)
!3412 = !DILocation(line: 294, column: 5, scope: !3396)
!3413 = !DILocation(line: 296, column: 5, scope: !3396)
!3414 = !DILocation(line: 297, column: 1, scope: !3396)
!3415 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !128, file: !128, line: 299, type: !3416, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!3178, !12, !12}
!3418 = !{!3419, !3420, !3421, !3422}
!3419 = !DILocalVariable(name: "address", arg: 1, scope: !3415, file: !128, line: 299, type: !12)
!3420 = !DILocalVariable(name: "length", arg: 2, scope: !3415, file: !128, line: 299, type: !12)
!3421 = !DILocalVariable(name: "irq_flag", scope: !3415, file: !128, line: 301, type: !12)
!3422 = !DILocalVariable(name: "end_address", scope: !3415, file: !128, line: 302, type: !12)
!3423 = !DILocation(line: 0, scope: !3415)
!3424 = !DILocation(line: 302, column: 36, scope: !3415)
!3425 = !DILocation(line: 305, column: 47, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3415, file: !128, line: 305, column: 9)
!3427 = !DILocation(line: 310, column: 16, scope: !3415)
!3428 = !DILocation(line: 313, column: 20, scope: !3415)
!3429 = !DILocation(line: 313, column: 5, scope: !3415)
!3430 = !DILocation(line: 314, column: 9, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3415, file: !128, line: 313, column: 35)
!3432 = !DILocation(line: 315, column: 17, scope: !3431)
!3433 = distinct !{!3433, !3429, !3434}
!3434 = !DILocation(line: 316, column: 5, scope: !3415)
!3435 = !DILocation(line: 434, column: 3, scope: !3226, inlinedAt: !3436)
!3436 = distinct !DILocation(line: 319, column: 5, scope: !3415)
!3437 = !DILocation(line: 322, column: 5, scope: !3415)
!3438 = !DILocation(line: 324, column: 5, scope: !3415)
!3439 = !DILocation(line: 325, column: 1, scope: !3415)
!3440 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !128, file: !128, line: 351, type: !3397, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3441)
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "address", arg: 1, scope: !3440, file: !128, line: 351, type: !12)
!3443 = !DILocalVariable(name: "irq_flag", scope: !3440, file: !128, line: 353, type: !12)
!3444 = !DILocation(line: 0, scope: !3440)
!3445 = !DILocation(line: 356, column: 17, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3440, file: !128, line: 356, column: 9)
!3447 = !DILocation(line: 356, column: 9, scope: !3440)
!3448 = !DILocation(line: 361, column: 16, scope: !3440)
!3449 = !DILocation(line: 364, column: 32, scope: !3440)
!3450 = !DILocation(line: 364, column: 21, scope: !3440)
!3451 = !DILocation(line: 365, column: 21, scope: !3440)
!3452 = !DILocation(line: 434, column: 3, scope: !3226, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 368, column: 5, scope: !3440)
!3454 = !DILocation(line: 371, column: 5, scope: !3440)
!3455 = !DILocation(line: 373, column: 5, scope: !3440)
!3456 = !DILocation(line: 374, column: 1, scope: !3440)
!3457 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !128, file: !128, line: 376, type: !3416, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3458)
!3458 = !{!3459, !3460, !3461, !3462}
!3459 = !DILocalVariable(name: "address", arg: 1, scope: !3457, file: !128, line: 376, type: !12)
!3460 = !DILocalVariable(name: "length", arg: 2, scope: !3457, file: !128, line: 376, type: !12)
!3461 = !DILocalVariable(name: "irq_flag", scope: !3457, file: !128, line: 378, type: !12)
!3462 = !DILocalVariable(name: "end_address", scope: !3457, file: !128, line: 379, type: !12)
!3463 = !DILocation(line: 0, scope: !3457)
!3464 = !DILocation(line: 379, column: 36, scope: !3457)
!3465 = !DILocation(line: 382, column: 47, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3457, file: !128, line: 382, column: 9)
!3467 = !DILocation(line: 387, column: 16, scope: !3457)
!3468 = !DILocation(line: 390, column: 20, scope: !3457)
!3469 = !DILocation(line: 390, column: 5, scope: !3457)
!3470 = !DILocation(line: 391, column: 9, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3457, file: !128, line: 390, column: 35)
!3472 = !DILocation(line: 392, column: 17, scope: !3471)
!3473 = distinct !{!3473, !3469, !3474}
!3474 = !DILocation(line: 393, column: 5, scope: !3457)
!3475 = !DILocation(line: 434, column: 3, scope: !3226, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 396, column: 5, scope: !3457)
!3477 = !DILocation(line: 399, column: 5, scope: !3457)
!3478 = !DILocation(line: 401, column: 5, scope: !3457)
!3479 = !DILocation(line: 402, column: 1, scope: !3457)
!3480 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !128, file: !128, line: 404, type: !3176, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3481)
!3481 = !{!3482}
!3482 = !DILocalVariable(name: "irq_flag", scope: !3480, file: !128, line: 406, type: !12)
!3483 = !DILocation(line: 409, column: 16, scope: !3480)
!3484 = !DILocation(line: 0, scope: !3480)
!3485 = !DILocation(line: 412, column: 21, scope: !3480)
!3486 = !DILocation(line: 413, column: 21, scope: !3480)
!3487 = !DILocation(line: 434, column: 3, scope: !3226, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 416, column: 5, scope: !3480)
!3489 = !DILocation(line: 419, column: 5, scope: !3480)
!3490 = !DILocation(line: 421, column: 5, scope: !3480)
!3491 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !128, file: !128, line: 424, type: !3492, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3494)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!124, !12}
!3494 = !{!3495, !3496}
!3495 = !DILocalVariable(name: "address", arg: 1, scope: !3491, file: !128, line: 424, type: !12)
!3496 = !DILocalVariable(name: "region", scope: !3491, file: !128, line: 426, type: !3181)
!3497 = !DILocation(line: 0, scope: !3491)
!3498 = !DILocation(line: 429, column: 18, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3491, file: !128, line: 429, column: 9)
!3500 = !DILocation(line: 429, column: 28, scope: !3499)
!3501 = !DILocation(line: 429, column: 9, scope: !3491)
!3502 = !DILocation(line: 435, column: 20, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !128, line: 435, column: 13)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !128, line: 433, column: 81)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !128, line: 433, column: 5)
!3506 = distinct !DILexicalBlock(scope: !3491, file: !128, line: 433, column: 5)
!3507 = !DILocation(line: 435, column: 41, scope: !3503)
!3508 = !DILocation(line: 435, column: 36, scope: !3503)
!3509 = !DILocation(line: 435, column: 13, scope: !3504)
!3510 = !DILocation(line: 436, column: 30, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3512, file: !128, line: 436, column: 17)
!3512 = distinct !DILexicalBlock(scope: !3503, file: !128, line: 435, column: 53)
!3513 = !DILocation(line: 436, column: 59, scope: !3511)
!3514 = !DILocation(line: 436, column: 26, scope: !3511)
!3515 = !DILocation(line: 436, column: 85, scope: !3511)
!3516 = !DILocation(line: 436, column: 99, scope: !3511)
!3517 = !DILocation(line: 436, column: 97, scope: !3511)
!3518 = !DILocation(line: 436, column: 17, scope: !3512)
!3519 = !DILocation(line: 433, column: 77, scope: !3505)
!3520 = !DILocation(line: 433, column: 46, scope: !3505)
!3521 = !DILocation(line: 433, column: 5, scope: !3506)
!3522 = distinct !{!3522, !3521, !3523}
!3523 = !DILocation(line: 440, column: 5, scope: !3506)
!3524 = !DILocation(line: 442, column: 1, scope: !3491)
!3525 = distinct !DISubprogram(name: "hal_nvic_init", scope: !210, file: !210, line: 60, type: !3526, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1870)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!3528}
!3528 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !213, line: 158, baseType: !212)
!3529 = !DILocation(line: 62, column: 5, scope: !3525)
!3530 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !210, file: !210, line: 65, type: !3531, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3533)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!3528, !221}
!3533 = !{!3534, !3535}
!3534 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3530, file: !210, line: 65, type: !221)
!3535 = !DILocalVariable(name: "status", scope: !3530, file: !210, line: 67, type: !3528)
!3536 = !DILocation(line: 0, scope: !3530)
!3537 = !DILocation(line: 69, column: 40, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3530, file: !210, line: 69, column: 9)
!3539 = !DILocation(line: 73, column: 9, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3538, file: !210, line: 72, column: 12)
!3541 = !DILocation(line: 77, column: 5, scope: !3530)
!3542 = !DILocation(line: 78, column: 1, scope: !3530)
!3543 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !226, file: !226, line: 1494, type: !3544, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !117}
!3546 = !{!3547}
!3547 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3543, file: !226, line: 1494, type: !117)
!3548 = !DILocation(line: 0, scope: !3543)
!3549 = !DILocation(line: 1497, column: 91, scope: !3543)
!3550 = !DILocation(line: 1497, column: 61, scope: !3543)
!3551 = !DILocation(line: 1497, column: 40, scope: !3543)
!3552 = !DILocation(line: 1497, column: 3, scope: !3543)
!3553 = !DILocation(line: 1497, column: 46, scope: !3543)
!3554 = !DILocation(line: 1498, column: 1, scope: !3543)
!3555 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !210, file: !210, line: 80, type: !3531, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3556)
!3556 = !{!3557, !3558}
!3557 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3555, file: !210, line: 80, type: !221)
!3558 = !DILocalVariable(name: "status", scope: !3555, file: !210, line: 82, type: !3528)
!3559 = !DILocation(line: 0, scope: !3555)
!3560 = !DILocation(line: 84, column: 40, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !210, line: 84, column: 9)
!3562 = !DILocation(line: 88, column: 9, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3561, file: !210, line: 87, column: 12)
!3564 = !DILocation(line: 92, column: 5, scope: !3555)
!3565 = !DILocation(line: 93, column: 1, scope: !3555)
!3566 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !226, file: !226, line: 1507, type: !3544, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3567)
!3567 = !{!3568}
!3568 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3566, file: !226, line: 1507, type: !117)
!3569 = !DILocation(line: 0, scope: !3566)
!3570 = !DILocation(line: 1509, column: 65, scope: !3566)
!3571 = !DILocation(line: 1509, column: 44, scope: !3566)
!3572 = !DILocation(line: 1509, column: 32, scope: !3566)
!3573 = !DILocation(line: 1509, column: 3, scope: !3566)
!3574 = !DILocation(line: 1509, column: 39, scope: !3566)
!3575 = !DILocation(line: 1510, column: 1, scope: !3566)
!3576 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !210, file: !210, line: 95, type: !3577, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3579)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!12, !221}
!3579 = !{!3580, !3581}
!3580 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3576, file: !210, line: 95, type: !221)
!3581 = !DILocalVariable(name: "ret", scope: !3576, file: !210, line: 97, type: !12)
!3582 = !DILocation(line: 0, scope: !3576)
!3583 = !DILocation(line: 99, column: 40, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3576, file: !210, line: 99, column: 9)
!3585 = !DILocation(line: 102, column: 15, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3584, file: !210, line: 101, column: 12)
!3587 = !DILocation(line: 105, column: 5, scope: !3576)
!3588 = !DILocation(line: 106, column: 1, scope: !3576)
!3589 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !226, file: !226, line: 1523, type: !3590, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!12, !117}
!3592 = !{!3593}
!3593 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3589, file: !226, line: 1523, type: !117)
!3594 = !DILocation(line: 0, scope: !3589)
!3595 = !DILocation(line: 1525, column: 51, scope: !3589)
!3596 = !DILocation(line: 1525, column: 23, scope: !3589)
!3597 = !DILocation(line: 1525, column: 83, scope: !3589)
!3598 = !DILocation(line: 1525, column: 22, scope: !3589)
!3599 = !DILocation(line: 1525, column: 3, scope: !3589)
!3600 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !210, file: !210, line: 108, type: !3531, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3601)
!3601 = !{!3602, !3603}
!3602 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3600, file: !210, line: 108, type: !221)
!3603 = !DILocalVariable(name: "status", scope: !3600, file: !210, line: 110, type: !3528)
!3604 = !DILocation(line: 0, scope: !3600)
!3605 = !DILocation(line: 112, column: 40, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3600, file: !210, line: 112, column: 9)
!3607 = !DILocation(line: 116, column: 9, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3606, file: !210, line: 115, column: 12)
!3609 = !DILocation(line: 120, column: 5, scope: !3600)
!3610 = !DILocation(line: 121, column: 1, scope: !3600)
!3611 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !226, file: !226, line: 1535, type: !3544, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3612)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3611, file: !226, line: 1535, type: !117)
!3614 = !DILocation(line: 0, scope: !3611)
!3615 = !DILocation(line: 1537, column: 65, scope: !3611)
!3616 = !DILocation(line: 1537, column: 44, scope: !3611)
!3617 = !DILocation(line: 1537, column: 32, scope: !3611)
!3618 = !DILocation(line: 1537, column: 3, scope: !3611)
!3619 = !DILocation(line: 1537, column: 39, scope: !3611)
!3620 = !DILocation(line: 1538, column: 1, scope: !3611)
!3621 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !210, file: !210, line: 123, type: !3531, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3622)
!3622 = !{!3623, !3624}
!3623 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3621, file: !210, line: 123, type: !221)
!3624 = !DILocalVariable(name: "status", scope: !3621, file: !210, line: 125, type: !3528)
!3625 = !DILocation(line: 0, scope: !3621)
!3626 = !DILocation(line: 127, column: 40, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3621, file: !210, line: 127, column: 9)
!3628 = !DILocation(line: 131, column: 9, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3627, file: !210, line: 130, column: 12)
!3630 = !DILocation(line: 135, column: 5, scope: !3621)
!3631 = !DILocation(line: 136, column: 1, scope: !3621)
!3632 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !226, file: !226, line: 1547, type: !3544, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3633)
!3633 = !{!3634}
!3634 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3632, file: !226, line: 1547, type: !117)
!3635 = !DILocation(line: 0, scope: !3632)
!3636 = !DILocation(line: 1549, column: 65, scope: !3632)
!3637 = !DILocation(line: 1549, column: 44, scope: !3632)
!3638 = !DILocation(line: 1549, column: 32, scope: !3632)
!3639 = !DILocation(line: 1549, column: 3, scope: !3632)
!3640 = !DILocation(line: 1549, column: 39, scope: !3632)
!3641 = !DILocation(line: 1550, column: 1, scope: !3632)
!3642 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !210, file: !210, line: 138, type: !3643, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!3528, !221, !12}
!3645 = !{!3646, !3647, !3648}
!3646 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3642, file: !210, line: 138, type: !221)
!3647 = !DILocalVariable(name: "priority", arg: 2, scope: !3642, file: !210, line: 138, type: !12)
!3648 = !DILocalVariable(name: "status", scope: !3642, file: !210, line: 140, type: !3528)
!3649 = !DILocation(line: 0, scope: !3642)
!3650 = !DILocation(line: 142, column: 40, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3642, file: !210, line: 142, column: 9)
!3652 = !DILocation(line: 146, column: 9, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3651, file: !210, line: 145, column: 12)
!3654 = !DILocation(line: 150, column: 5, scope: !3642)
!3655 = !DILocation(line: 151, column: 1, scope: !3642)
!3656 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !226, file: !226, line: 1577, type: !3657, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !117, !12}
!3659 = !{!3660, !3661}
!3660 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3656, file: !226, line: 1577, type: !117)
!3661 = !DILocalVariable(name: "priority", arg: 2, scope: !3656, file: !226, line: 1577, type: !12)
!3662 = !DILocation(line: 0, scope: !3656)
!3663 = !DILocation(line: 1582, column: 34, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !226, line: 1581, column: 8)
!3665 = distinct !DILexicalBlock(scope: !3656, file: !226, line: 1579, column: 6)
!3666 = !DILocation(line: 1582, column: 5, scope: !3664)
!3667 = !DILocation(line: 1582, column: 32, scope: !3664)
!3668 = !DILocation(line: 1583, column: 1, scope: !3656)
!3669 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !210, file: !210, line: 153, type: !3577, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3670)
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3669, file: !210, line: 153, type: !221)
!3672 = !DILocalVariable(name: "ret", scope: !3669, file: !210, line: 155, type: !12)
!3673 = !DILocation(line: 0, scope: !3669)
!3674 = !DILocation(line: 157, column: 40, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3669, file: !210, line: 157, column: 9)
!3676 = !DILocation(line: 160, column: 15, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3675, file: !210, line: 159, column: 12)
!3678 = !DILocation(line: 163, column: 5, scope: !3669)
!3679 = !DILocation(line: 164, column: 1, scope: !3669)
!3680 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !226, file: !226, line: 1597, type: !3590, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3681)
!3681 = !{!3682}
!3682 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3680, file: !226, line: 1597, type: !117)
!3683 = !DILocation(line: 0, scope: !3680)
!3684 = !DILocation(line: 1603, column: 23, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !226, line: 1602, column: 8)
!3686 = distinct !DILexicalBlock(scope: !3680, file: !226, line: 1600, column: 6)
!3687 = !DILocation(line: 1603, column: 60, scope: !3685)
!3688 = !DILocation(line: 1604, column: 1, scope: !3680)
!3689 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !210, file: !210, line: 173, type: !374, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1870)
!3690 = !DILocation(line: 175, column: 1, scope: !3689)
!3691 = distinct !DISubprogram(name: "isrC_main", scope: !210, file: !210, line: 178, type: !3526, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3692)
!3692 = !{!3693, !3694}
!3693 = !DILocalVariable(name: "status", scope: !3691, file: !210, line: 180, type: !3528)
!3694 = !DILocalVariable(name: "irq_number", scope: !3691, file: !210, line: 181, type: !221)
!3695 = !DILocation(line: 0, scope: !3691)
!3696 = !DILocation(line: 188, column: 34, scope: !3691)
!3697 = !DILocation(line: 189, column: 24, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3691, file: !210, line: 189, column: 9)
!3699 = !DILocation(line: 192, column: 48, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3698, file: !210, line: 192, column: 16)
!3701 = !DILocation(line: 192, column: 62, scope: !3700)
!3702 = !DILocation(line: 192, column: 16, scope: !3698)
!3703 = !DILocation(line: 194, column: 9, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3700, file: !210, line: 192, column: 71)
!3705 = !DILocation(line: 195, column: 9, scope: !3704)
!3706 = !DILocation(line: 197, column: 55, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3700, file: !210, line: 196, column: 12)
!3708 = !DILocation(line: 197, column: 41, scope: !3707)
!3709 = !DILocation(line: 197, column: 53, scope: !3707)
!3710 = !DILocation(line: 198, column: 41, scope: !3707)
!3711 = !DILocation(line: 198, column: 9, scope: !3707)
!3712 = !DILocation(line: 202, column: 5, scope: !3691)
!3713 = !DILocation(line: 203, column: 1, scope: !3691)
!3714 = distinct !DISubprogram(name: "get_current_irq", scope: !210, file: !210, line: 166, type: !1854, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3715)
!3715 = !{!3716}
!3716 = !DILocalVariable(name: "irq_num", scope: !3714, file: !210, line: 168, type: !12)
!3717 = !DILocation(line: 168, column: 31, scope: !3714)
!3718 = !DILocation(line: 168, column: 36, scope: !3714)
!3719 = !DILocation(line: 0, scope: !3714)
!3720 = !DILocation(line: 169, column: 21, scope: !3714)
!3721 = !DILocation(line: 169, column: 5, scope: !3714)
!3722 = distinct !DISubprogram(name: "get_pending_irq", scope: !210, file: !210, line: 55, type: !1854, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !1870)
!3723 = !DILocation(line: 57, column: 19, scope: !3722)
!3724 = !DILocation(line: 57, column: 51, scope: !3722)
!3725 = !DILocation(line: 57, column: 5, scope: !3722)
!3726 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !210, file: !210, line: 205, type: !3727, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3730)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!3528, !221, !3729}
!3729 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !213, line: 175, baseType: !303)
!3730 = !{!3731, !3732, !3733}
!3731 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3726, file: !210, line: 205, type: !221)
!3732 = !DILocalVariable(name: "callback", arg: 2, scope: !3726, file: !210, line: 205, type: !3729)
!3733 = !DILocalVariable(name: "mask", scope: !3726, file: !210, line: 207, type: !12)
!3734 = !DILocation(line: 0, scope: !3726)
!3735 = !DILocation(line: 209, column: 24, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3726, file: !210, line: 209, column: 9)
!3737 = !DILocation(line: 213, column: 12, scope: !3726)
!3738 = !DILocation(line: 214, column: 5, scope: !3726)
!3739 = !DILocation(line: 215, column: 37, scope: !3726)
!3740 = !DILocation(line: 215, column: 51, scope: !3726)
!3741 = !DILocation(line: 216, column: 37, scope: !3726)
!3742 = !DILocation(line: 216, column: 49, scope: !3726)
!3743 = !DILocation(line: 217, column: 5, scope: !3726)
!3744 = !DILocation(line: 219, column: 5, scope: !3726)
!3745 = !DILocation(line: 220, column: 1, scope: !3726)
!3746 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !210, file: !210, line: 222, type: !3747, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!3528, !2470}
!3749 = !{!3750}
!3750 = !DILocalVariable(name: "mask", arg: 1, scope: !3746, file: !210, line: 222, type: !2470)
!3751 = !DILocation(line: 0, scope: !3746)
!3752 = !DILocation(line: 224, column: 13, scope: !3746)
!3753 = !DILocation(line: 224, column: 11, scope: !3746)
!3754 = !DILocation(line: 225, column: 5, scope: !3746)
!3755 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !210, file: !210, line: 228, type: !3756, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!3528, !12}
!3758 = !{!3759}
!3759 = !DILocalVariable(name: "mask", arg: 1, scope: !3755, file: !210, line: 228, type: !12)
!3760 = !DILocation(line: 0, scope: !3755)
!3761 = !DILocation(line: 230, column: 5, scope: !3755)
!3762 = !DILocation(line: 231, column: 5, scope: !3755)
!3763 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !883, file: !883, line: 50, type: !3764, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3768)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!3766, !3767, !118}
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !886, line: 238, baseType: !885)
!3767 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !323, line: 281, baseType: !892)
!3768 = !{!3769, !3770, !3771}
!3769 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3763, file: !883, line: 50, type: !3767)
!3770 = !DILocalVariable(name: "function_index", arg: 2, scope: !3763, file: !883, line: 50, type: !118)
!3771 = !DILocalVariable(name: "ret_value", scope: !3763, file: !883, line: 52, type: !222)
!3772 = !DILocation(line: 0, scope: !3763)
!3773 = !DILocation(line: 53, column: 18, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3763, file: !883, line: 53, column: 9)
!3775 = !DILocation(line: 53, column: 9, scope: !3763)
!3776 = !DILocation(line: 57, column: 24, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3763, file: !883, line: 57, column: 9)
!3778 = !DILocation(line: 57, column: 9, scope: !3763)
!3779 = !DILocation(line: 57, column: 9, scope: !3777)
!3780 = !DILocation(line: 60, column: 17, scope: !3763)
!3781 = !DILocation(line: 61, column: 12, scope: !3763)
!3782 = !DILocation(line: 61, column: 5, scope: !3763)
!3783 = !DILocation(line: 62, column: 1, scope: !3763)
!3784 = distinct !DISubprogram(name: "hal_gpio_init", scope: !883, file: !883, line: 64, type: !3785, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3788)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!3787, !3767}
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !886, line: 229, baseType: !923)
!3788 = !{!3789}
!3789 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3784, file: !883, line: 64, type: !3767)
!3790 = !DILocation(line: 0, scope: !3784)
!3791 = !DILocation(line: 66, column: 5, scope: !3784)
!3792 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !883, file: !883, line: 69, type: !3785, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3793)
!3793 = !{!3794}
!3794 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3792, file: !883, line: 69, type: !3767)
!3795 = !DILocation(line: 0, scope: !3792)
!3796 = !DILocation(line: 71, column: 5, scope: !3792)
!3797 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !883, file: !883, line: 74, type: !3798, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3801)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!3787, !3767, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 32)
!3801 = !{!3802, !3803, !3804}
!3802 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3797, file: !883, line: 74, type: !3767)
!3803 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3797, file: !883, line: 74, type: !3800)
!3804 = !DILocalVariable(name: "status", scope: !3797, file: !883, line: 76, type: !3805)
!3805 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !944, line: 67, baseType: !3806)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !944, line: 62, size: 64, elements: !3807)
!3807 = !{!3808, !3809, !3810, !3811}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !3806, file: !944, line: 63, baseType: !12, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !3806, file: !944, line: 64, baseType: !118, size: 8, offset: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !3806, file: !944, line: 65, baseType: !118, size: 8, offset: 40)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !3806, file: !944, line: 66, baseType: !118, size: 8, offset: 48)
!3812 = !DILocation(line: 0, scope: !3797)
!3813 = !DILocation(line: 77, column: 14, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3797, file: !883, line: 77, column: 9)
!3815 = !DILocation(line: 77, column: 9, scope: !3797)
!3816 = !DILocation(line: 81, column: 18, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3797, file: !883, line: 81, column: 9)
!3818 = !DILocation(line: 81, column: 9, scope: !3797)
!3819 = !DILocation(line: 85, column: 14, scope: !3797)
!3820 = !DILocation(line: 86, column: 18, scope: !3797)
!3821 = !DILocation(line: 86, column: 16, scope: !3797)
!3822 = !DILocation(line: 87, column: 5, scope: !3797)
!3823 = !DILocation(line: 88, column: 1, scope: !3797)
!3824 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !883, file: !883, line: 90, type: !3825, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3787, !3767, !950}
!3827 = !{!3828, !3829, !3830}
!3828 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3824, file: !883, line: 90, type: !3767)
!3829 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3824, file: !883, line: 90, type: !950)
!3830 = !DILocalVariable(name: "ret_value", scope: !3824, file: !883, line: 92, type: !222)
!3831 = !DILocation(line: 0, scope: !3824)
!3832 = !DILocation(line: 93, column: 18, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3824, file: !883, line: 93, column: 9)
!3834 = !DILocation(line: 93, column: 9, scope: !3824)
!3835 = !DILocation(line: 97, column: 60, scope: !3824)
!3836 = !DILocation(line: 97, column: 17, scope: !3824)
!3837 = !DILocation(line: 98, column: 12, scope: !3824)
!3838 = !DILocation(line: 98, column: 5, scope: !3824)
!3839 = !DILocation(line: 99, column: 1, scope: !3824)
!3840 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !883, file: !883, line: 101, type: !3798, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3841)
!3841 = !{!3842, !3843, !3844}
!3842 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3840, file: !883, line: 101, type: !3767)
!3843 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !3840, file: !883, line: 101, type: !3800)
!3844 = !DILocalVariable(name: "status", scope: !3840, file: !883, line: 103, type: !3805)
!3845 = !DILocation(line: 0, scope: !3840)
!3846 = !DILocation(line: 104, column: 18, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3840, file: !883, line: 104, column: 9)
!3848 = !DILocation(line: 104, column: 9, scope: !3840)
!3849 = !DILocation(line: 108, column: 14, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3840, file: !883, line: 108, column: 9)
!3851 = !DILocation(line: 108, column: 9, scope: !3840)
!3852 = !DILocation(line: 112, column: 14, scope: !3840)
!3853 = !DILocation(line: 113, column: 18, scope: !3840)
!3854 = !DILocation(line: 113, column: 16, scope: !3840)
!3855 = !DILocation(line: 114, column: 5, scope: !3840)
!3856 = !DILocation(line: 115, column: 1, scope: !3840)
!3857 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !883, file: !883, line: 117, type: !3858, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3861)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!3787, !3767, !3860}
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !886, line: 213, baseType: !933)
!3861 = !{!3862, !3863, !3864}
!3862 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3857, file: !883, line: 117, type: !3767)
!3863 = !DILocalVariable(name: "direction", arg: 2, scope: !3857, file: !883, line: 117, type: !3860)
!3864 = !DILocalVariable(name: "ret_value", scope: !3857, file: !883, line: 119, type: !222)
!3865 = !DILocation(line: 0, scope: !3857)
!3866 = !DILocation(line: 120, column: 18, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3857, file: !883, line: 120, column: 9)
!3868 = !DILocation(line: 120, column: 9, scope: !3857)
!3869 = !DILocation(line: 123, column: 17, scope: !3857)
!3870 = !DILocation(line: 125, column: 12, scope: !3857)
!3871 = !DILocation(line: 125, column: 5, scope: !3857)
!3872 = !DILocation(line: 126, column: 1, scope: !3857)
!3873 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !883, file: !883, line: 128, type: !3874, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3877)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!3787, !3767, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 32)
!3877 = !{!3878, !3879, !3880}
!3878 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3873, file: !883, line: 128, type: !3767)
!3879 = !DILocalVariable(name: "direction", arg: 2, scope: !3873, file: !883, line: 128, type: !3876)
!3880 = !DILocalVariable(name: "status", scope: !3873, file: !883, line: 131, type: !3805)
!3881 = !DILocation(line: 0, scope: !3873)
!3882 = !DILocation(line: 132, column: 18, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3873, file: !883, line: 132, column: 9)
!3884 = !DILocation(line: 132, column: 9, scope: !3873)
!3885 = !DILocation(line: 136, column: 14, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3873, file: !883, line: 136, column: 9)
!3887 = !DILocation(line: 136, column: 9, scope: !3873)
!3888 = !DILocation(line: 140, column: 14, scope: !3873)
!3889 = !DILocation(line: 141, column: 18, scope: !3873)
!3890 = !DILocation(line: 141, column: 16, scope: !3873)
!3891 = !DILocation(line: 142, column: 5, scope: !3873)
!3892 = !DILocation(line: 143, column: 1, scope: !3873)
!3893 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !883, file: !883, line: 146, type: !3785, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3894)
!3894 = !{!3895, !3896}
!3895 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3893, file: !883, line: 146, type: !3767)
!3896 = !DILocalVariable(name: "status", scope: !3893, file: !883, line: 148, type: !3805)
!3897 = !DILocation(line: 0, scope: !3893)
!3898 = !DILocation(line: 149, column: 18, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3893, file: !883, line: 149, column: 9)
!3900 = !DILocation(line: 149, column: 9, scope: !3893)
!3901 = !DILocation(line: 153, column: 14, scope: !3893)
!3902 = !DILocation(line: 154, column: 76, scope: !3893)
!3903 = !DILocation(line: 154, column: 12, scope: !3893)
!3904 = !DILocation(line: 154, column: 5, scope: !3893)
!3905 = !DILocation(line: 155, column: 1, scope: !3893)
!3906 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !883, file: !883, line: 157, type: !3785, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3907)
!3907 = !{!3908, !3909}
!3908 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3906, file: !883, line: 157, type: !3767)
!3909 = !DILocalVariable(name: "ret_value", scope: !3906, file: !883, line: 159, type: !222)
!3910 = !DILocation(line: 0, scope: !3906)
!3911 = !DILocation(line: 160, column: 18, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3906, file: !883, line: 160, column: 9)
!3913 = !DILocation(line: 160, column: 9, scope: !3906)
!3914 = !DILocation(line: 164, column: 17, scope: !3906)
!3915 = !DILocation(line: 165, column: 19, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3906, file: !883, line: 165, column: 9)
!3917 = !DILocation(line: 165, column: 9, scope: !3906)
!3918 = !DILocation(line: 168, column: 17, scope: !3906)
!3919 = !DILocation(line: 169, column: 12, scope: !3906)
!3920 = !DILocation(line: 169, column: 5, scope: !3906)
!3921 = !DILocation(line: 170, column: 1, scope: !3906)
!3922 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !883, file: !883, line: 172, type: !3785, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3923)
!3923 = !{!3924, !3925}
!3924 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3922, file: !883, line: 172, type: !3767)
!3925 = !DILocalVariable(name: "ret_value", scope: !3922, file: !883, line: 174, type: !222)
!3926 = !DILocation(line: 0, scope: !3922)
!3927 = !DILocation(line: 175, column: 18, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3922, file: !883, line: 175, column: 9)
!3929 = !DILocation(line: 175, column: 9, scope: !3922)
!3930 = !DILocation(line: 179, column: 17, scope: !3922)
!3931 = !DILocation(line: 180, column: 19, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3922, file: !883, line: 180, column: 9)
!3933 = !DILocation(line: 180, column: 9, scope: !3922)
!3934 = !DILocation(line: 183, column: 17, scope: !3922)
!3935 = !DILocation(line: 184, column: 12, scope: !3922)
!3936 = !DILocation(line: 184, column: 5, scope: !3922)
!3937 = !DILocation(line: 185, column: 1, scope: !3922)
!3938 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !883, file: !883, line: 187, type: !3785, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3939)
!3939 = !{!3940, !3941}
!3940 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3938, file: !883, line: 187, type: !3767)
!3941 = !DILocalVariable(name: "ret_value", scope: !3938, file: !883, line: 189, type: !222)
!3942 = !DILocation(line: 0, scope: !3938)
!3943 = !DILocation(line: 191, column: 18, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3938, file: !883, line: 191, column: 9)
!3945 = !DILocation(line: 191, column: 9, scope: !3938)
!3946 = !DILocation(line: 195, column: 17, scope: !3938)
!3947 = !DILocation(line: 196, column: 12, scope: !3938)
!3948 = !DILocation(line: 196, column: 5, scope: !3938)
!3949 = !DILocation(line: 197, column: 1, scope: !3938)
!3950 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !883, file: !883, line: 200, type: !3951, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!3787, !3767, !951}
!3953 = !{!3954, !3955, !3956}
!3954 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3950, file: !883, line: 200, type: !3767)
!3955 = !DILocalVariable(name: "driving", arg: 2, scope: !3950, file: !883, line: 200, type: !951)
!3956 = !DILocalVariable(name: "ret_value", scope: !3950, file: !883, line: 202, type: !222)
!3957 = !DILocation(line: 0, scope: !3950)
!3958 = !DILocation(line: 204, column: 18, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !3950, file: !883, line: 204, column: 9)
!3960 = !DILocation(line: 204, column: 9, scope: !3950)
!3961 = !DILocation(line: 208, column: 64, scope: !3950)
!3962 = !DILocation(line: 208, column: 17, scope: !3950)
!3963 = !DILocation(line: 210, column: 12, scope: !3950)
!3964 = !DILocation(line: 210, column: 5, scope: !3950)
!3965 = !DILocation(line: 211, column: 1, scope: !3950)
!3966 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !883, file: !883, line: 214, type: !3967, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !882, retainedNodes: !3970)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!3787, !3767, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 32)
!3970 = !{!3971, !3972, !3973, !3974}
!3971 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !3966, file: !883, line: 214, type: !3767)
!3972 = !DILocalVariable(name: "driving", arg: 2, scope: !3966, file: !883, line: 214, type: !3969)
!3973 = !DILocalVariable(name: "ret_value", scope: !3966, file: !883, line: 216, type: !222)
!3974 = !DILocalVariable(name: "value", scope: !3966, file: !883, line: 217, type: !118)
!3975 = !DILocation(line: 0, scope: !3966)
!3976 = !DILocation(line: 217, column: 5, scope: !3966)
!3977 = !DILocation(line: 219, column: 18, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3966, file: !883, line: 219, column: 9)
!3979 = !DILocation(line: 219, column: 9, scope: !3966)
!3980 = !DILocation(line: 223, column: 17, scope: !3966)
!3981 = !DILocation(line: 225, column: 44, scope: !3966)
!3982 = !DILocation(line: 225, column: 16, scope: !3966)
!3983 = !DILocation(line: 225, column: 14, scope: !3966)
!3984 = !DILocation(line: 227, column: 12, scope: !3966)
!3985 = !DILocation(line: 227, column: 5, scope: !3966)
!3986 = !DILocation(line: 228, column: 1, scope: !3966)
!3987 = distinct !DISubprogram(name: "hal_uart_init", scope: !312, file: !312, line: 234, type: !3988, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !3992)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!3990, !376, !3991}
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !315, line: 351, baseType: !314)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!3992 = !{!3993, !3994}
!3993 = !DILocalVariable(name: "uart_port", arg: 1, scope: !3987, file: !312, line: 234, type: !376)
!3994 = !DILocalVariable(name: "uart_config", arg: 2, scope: !3987, file: !312, line: 234, type: !3991)
!3995 = !DILocation(line: 0, scope: !3987)
!3996 = !DILocation(line: 236, column: 10, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3987, file: !312, line: 236, column: 9)
!3998 = !DILocation(line: 236, column: 9, scope: !3987)
!3999 = !DILocation(line: 239, column: 41, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3987, file: !312, line: 239, column: 9)
!4001 = !DILocation(line: 239, column: 9, scope: !3987)
!4002 = !DILocation(line: 242, column: 5, scope: !3987)
!4003 = !DILocation(line: 243, column: 45, scope: !3987)
!4004 = !DILocation(line: 243, column: 12, scope: !3987)
!4005 = !DILocation(line: 244, column: 12, scope: !3987)
!4006 = !DILocation(line: 243, column: 5, scope: !3987)
!4007 = !DILocation(line: 245, column: 58, scope: !3987)
!4008 = !DILocation(line: 246, column: 30, scope: !3987)
!4009 = !{i32 0, i32 2}
!4010 = !DILocation(line: 246, column: 5, scope: !3987)
!4011 = !DILocation(line: 247, column: 5, scope: !3987)
!4012 = !DILocation(line: 249, column: 31, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !3987, file: !312, line: 249, column: 9)
!4014 = !DILocation(line: 249, column: 28, scope: !4013)
!4015 = !DILocation(line: 261, column: 1, scope: !3987)
!4016 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !312, file: !312, line: 93, type: !4017, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4021)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!124, !376, !4019}
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!4021 = !{!4022, !4023}
!4022 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4016, file: !312, line: 93, type: !376)
!4023 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4016, file: !312, line: 93, type: !4019)
!4024 = !DILocation(line: 0, scope: !4016)
!4025 = !DILocation(line: 95, column: 10, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4016, file: !312, line: 95, column: 9)
!4027 = !DILocation(line: 95, column: 9, scope: !4016)
!4028 = !DILocation(line: 101, column: 23, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4016, file: !312, line: 101, column: 9)
!4030 = !DILocation(line: 101, column: 32, scope: !4029)
!4031 = !DILocation(line: 101, column: 60, scope: !4029)
!4032 = !DILocation(line: 102, column: 27, scope: !4029)
!4033 = !DILocation(line: 102, column: 34, scope: !4029)
!4034 = !DILocation(line: 102, column: 58, scope: !4029)
!4035 = !DILocation(line: 103, column: 27, scope: !4029)
!4036 = !DILocation(line: 103, column: 36, scope: !4029)
!4037 = !DILocation(line: 103, column: 59, scope: !4029)
!4038 = !DILocation(line: 104, column: 27, scope: !4029)
!4039 = !DILocation(line: 104, column: 39, scope: !4029)
!4040 = !DILocation(line: 101, column: 9, scope: !4016)
!4041 = !DILocation(line: 109, column: 1, scope: !4016)
!4042 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !312, file: !312, line: 139, type: !4043, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4045)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!2323, !376}
!4045 = !{!4046}
!4046 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4042, file: !312, line: 139, type: !376)
!4047 = !DILocation(line: 0, scope: !4042)
!4048 = !DILocation(line: 141, column: 24, scope: !4042)
!4049 = !DILocation(line: 141, column: 12, scope: !4042)
!4050 = !DILocation(line: 141, column: 5, scope: !4042)
!4051 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !312, file: !312, line: 593, type: !4052, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4054)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!3990, !376, !4019}
!4054 = !{!4055, !4056}
!4055 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4051, file: !312, line: 593, type: !376)
!4056 = !DILocalVariable(name: "config", arg: 2, scope: !4051, file: !312, line: 593, type: !4019)
!4057 = !DILocation(line: 0, scope: !4051)
!4058 = !DILocation(line: 595, column: 10, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4051, file: !312, line: 595, column: 9)
!4060 = !DILocation(line: 595, column: 9, scope: !4051)
!4061 = !DILocation(line: 598, column: 45, scope: !4051)
!4062 = !DILocation(line: 598, column: 12, scope: !4051)
!4063 = !DILocation(line: 598, column: 59, scope: !4051)
!4064 = !DILocation(line: 598, column: 5, scope: !4051)
!4065 = !DILocation(line: 599, column: 23, scope: !4051)
!4066 = !DILocation(line: 600, column: 59, scope: !4051)
!4067 = !DILocation(line: 600, column: 23, scope: !4051)
!4068 = !DILocation(line: 601, column: 62, scope: !4051)
!4069 = !DILocation(line: 601, column: 23, scope: !4051)
!4070 = !DILocation(line: 602, column: 57, scope: !4051)
!4071 = !DILocation(line: 602, column: 23, scope: !4051)
!4072 = !DILocation(line: 603, column: 58, scope: !4051)
!4073 = !DILocation(line: 603, column: 23, scope: !4051)
!4074 = !DILocation(line: 599, column: 5, scope: !4051)
!4075 = !DILocation(line: 604, column: 5, scope: !4051)
!4076 = !DILocation(line: 605, column: 1, scope: !4051)
!4077 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !312, file: !312, line: 145, type: !4078, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!12, !391}
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4077, file: !312, line: 145, type: !391)
!4082 = !DILocalVariable(name: "baudrate_tbl", scope: !4077, file: !312, line: 147, type: !4083)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 416, elements: !4084)
!4084 = !{!4085}
!4085 = !DISubrange(count: 13)
!4086 = !DILocation(line: 0, scope: !4077)
!4087 = !DILocation(line: 147, column: 14, scope: !4077)
!4088 = !DILocation(line: 151, column: 12, scope: !4077)
!4089 = !DILocation(line: 151, column: 5, scope: !4077)
!4090 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !312, file: !312, line: 155, type: !4091, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!2393, !393}
!4093 = !{!4094, !4095}
!4094 = !DILocalVariable(name: "word_length", arg: 1, scope: !4090, file: !312, line: 155, type: !393)
!4095 = !DILocalVariable(name: "databit_tbl", scope: !4090, file: !312, line: 157, type: !4096)
!4096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, size: 64, elements: !288)
!4097 = !DILocation(line: 0, scope: !4090)
!4098 = !DILocation(line: 157, column: 14, scope: !4090)
!4099 = !DILocation(line: 160, column: 12, scope: !4090)
!4100 = !DILocation(line: 160, column: 5, scope: !4090)
!4101 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !312, file: !312, line: 164, type: !4102, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!2393, !397}
!4104 = !{!4105, !4106}
!4105 = !DILocalVariable(name: "parity", arg: 1, scope: !4101, file: !312, line: 164, type: !397)
!4106 = !DILocalVariable(name: "parity_tbl", scope: !4101, file: !312, line: 166, type: !4107)
!4107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, size: 80, elements: !292)
!4108 = !DILocation(line: 0, scope: !4101)
!4109 = !DILocation(line: 166, column: 14, scope: !4101)
!4110 = !DILocation(line: 169, column: 12, scope: !4101)
!4111 = !DILocation(line: 169, column: 5, scope: !4101)
!4112 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !312, file: !312, line: 173, type: !4113, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4115)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!2393, !395}
!4115 = !{!4116, !4117}
!4116 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4112, file: !312, line: 173, type: !395)
!4117 = !DILocalVariable(name: "stopbit_tbl", scope: !4112, file: !312, line: 175, type: !4118)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, size: 48, elements: !543)
!4119 = !DILocation(line: 0, scope: !4112)
!4120 = !DILocation(line: 175, column: 14, scope: !4112)
!4121 = !DILocation(line: 178, column: 12, scope: !4112)
!4122 = !DILocation(line: 178, column: 5, scope: !4112)
!4123 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !312, file: !312, line: 87, type: !4124, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!124, !376}
!4126 = !{!4127}
!4127 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4123, file: !312, line: 87, type: !376)
!4128 = !DILocation(line: 0, scope: !4123)
!4129 = !DILocation(line: 89, column: 23, scope: !4123)
!4130 = !DILocation(line: 89, column: 5, scope: !4123)
!4131 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !312, file: !312, line: 264, type: !4132, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4134)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!3990, !376}
!4134 = !{!4135}
!4135 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4131, file: !312, line: 264, type: !376)
!4136 = !DILocation(line: 0, scope: !4131)
!4137 = !DILocation(line: 266, column: 10, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4131, file: !312, line: 266, column: 9)
!4139 = !DILocation(line: 266, column: 9, scope: !4131)
!4140 = !DILocation(line: 269, column: 41, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4131, file: !312, line: 269, column: 9)
!4142 = !DILocation(line: 269, column: 62, scope: !4141)
!4143 = !DILocation(line: 269, column: 9, scope: !4131)
!4144 = !DILocation(line: 272, column: 5, scope: !4131)
!4145 = !DILocation(line: 275, column: 22, scope: !4131)
!4146 = !DILocation(line: 275, column: 5, scope: !4131)
!4147 = !DILocation(line: 284, column: 5, scope: !4131)
!4148 = !DILocation(line: 286, column: 5, scope: !4131)
!4149 = !DILocation(line: 287, column: 1, scope: !4131)
!4150 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !312, file: !312, line: 290, type: !4151, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !376, !365}
!4153 = !{!4154, !4155, !4156}
!4154 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4150, file: !312, line: 290, type: !376)
!4155 = !DILocalVariable(name: "byte", arg: 2, scope: !4150, file: !312, line: 290, type: !365)
!4156 = !DILocalVariable(name: "int_no", scope: !4150, file: !312, line: 292, type: !2323)
!4157 = !DILocation(line: 0, scope: !4150)
!4158 = !DILocation(line: 292, column: 26, scope: !4150)
!4159 = !DILocation(line: 294, column: 16, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4150, file: !312, line: 294, column: 9)
!4161 = !DILocation(line: 294, column: 9, scope: !4150)
!4162 = !DILocation(line: 295, column: 9, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4160, file: !312, line: 294, column: 34)
!4164 = !DILocation(line: 296, column: 5, scope: !4163)
!4165 = !DILocation(line: 299, column: 1, scope: !4150)
!4166 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !312, file: !312, line: 302, type: !4167, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!12, !376, !2530, !12}
!4169 = !{!4170, !4171, !4172, !4173, !4174}
!4170 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4166, file: !312, line: 302, type: !376)
!4171 = !DILocalVariable(name: "data", arg: 2, scope: !4166, file: !312, line: 302, type: !2530)
!4172 = !DILocalVariable(name: "size", arg: 3, scope: !4166, file: !312, line: 302, type: !12)
!4173 = !DILocalVariable(name: "int_no", scope: !4166, file: !312, line: 304, type: !2323)
!4174 = !DILocalVariable(name: "index", scope: !4166, file: !312, line: 305, type: !12)
!4175 = !DILocation(line: 0, scope: !4166)
!4176 = !DILocation(line: 304, column: 26, scope: !4166)
!4177 = !DILocation(line: 307, column: 14, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4166, file: !312, line: 307, column: 9)
!4179 = !DILocation(line: 307, column: 9, scope: !4166)
!4180 = !DILocation(line: 313, column: 53, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !312, line: 312, column: 48)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !312, line: 312, column: 9)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !312, line: 312, column: 9)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !312, line: 311, column: 33)
!4185 = distinct !DILexicalBlock(scope: !4166, file: !312, line: 311, column: 9)
!4186 = !DILocation(line: 313, column: 13, scope: !4181)
!4187 = !DILocation(line: 312, column: 44, scope: !4182)
!4188 = !DILocation(line: 312, column: 31, scope: !4182)
!4189 = !DILocation(line: 312, column: 9, scope: !4183)
!4190 = distinct !{!4190, !4189, !4191}
!4191 = !DILocation(line: 314, column: 9, scope: !4183)
!4192 = !DILocation(line: 318, column: 1, scope: !4166)
!4193 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !312, file: !312, line: 320, type: !4167, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4194)
!4194 = !{!4195, !4196, !4197, !4198, !4199, !4200}
!4195 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4193, file: !312, line: 320, type: !376)
!4196 = !DILocalVariable(name: "data", arg: 2, scope: !4193, file: !312, line: 320, type: !2530)
!4197 = !DILocalVariable(name: "size", arg: 3, scope: !4193, file: !312, line: 320, type: !12)
!4198 = !DILocalVariable(name: "actual_space", scope: !4193, file: !312, line: 322, type: !12)
!4199 = !DILocalVariable(name: "send_size", scope: !4193, file: !312, line: 322, type: !12)
!4200 = !DILocalVariable(name: "ch", scope: !4193, file: !312, line: 323, type: !4201)
!4201 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !33, line: 144, baseType: !32)
!4202 = !DILocation(line: 0, scope: !4193)
!4203 = !DILocation(line: 322, column: 5, scope: !4193)
!4204 = !DILocation(line: 328, column: 10, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4193, file: !312, line: 328, column: 9)
!4206 = !DILocation(line: 328, column: 9, scope: !4193)
!4207 = !DILocation(line: 332, column: 15, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4193, file: !312, line: 332, column: 9)
!4209 = !DILocation(line: 332, column: 24, scope: !4208)
!4210 = !DILocation(line: 335, column: 42, scope: !4211)
!4211 = distinct !DILexicalBlock(scope: !4193, file: !312, line: 335, column: 9)
!4212 = !DILocation(line: 335, column: 9, scope: !4193)
!4213 = !DILocation(line: 349, column: 30, scope: !4193)
!4214 = !DILocation(line: 349, column: 5, scope: !4193)
!4215 = !DILocation(line: 350, column: 9, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4193, file: !312, line: 350, column: 9)
!4217 = !DILocation(line: 350, column: 22, scope: !4216)
!4218 = !DILocation(line: 355, column: 5, scope: !4193)
!4219 = !DILocation(line: 357, column: 22, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4193, file: !312, line: 357, column: 9)
!4221 = !DILocation(line: 357, column: 19, scope: !4220)
!4222 = !DILocation(line: 357, column: 9, scope: !4193)
!4223 = !DILocation(line: 358, column: 14, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4220, file: !312, line: 357, column: 36)
!4225 = !{i32 14, i32 18}
!4226 = !DILocation(line: 359, column: 9, scope: !4224)
!4227 = !DILocation(line: 360, column: 5, scope: !4224)
!4228 = !DILocation(line: 362, column: 1, scope: !4193)
!4229 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !312, file: !312, line: 191, type: !4230, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4232)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!4201, !2323, !124}
!4232 = !{!4233, !4234, !4235}
!4233 = !DILocalVariable(name: "port", arg: 1, scope: !4229, file: !312, line: 191, type: !2323)
!4234 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4229, file: !312, line: 191, type: !124)
!4235 = !DILocalVariable(name: "ch", scope: !4229, file: !312, line: 193, type: !4201)
!4236 = !DILocation(line: 0, scope: !4229)
!4237 = !DILocation(line: 195, column: 14, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4229, file: !312, line: 195, column: 9)
!4239 = !DILocation(line: 195, column: 9, scope: !4229)
!4240 = !DILocation(line: 209, column: 5, scope: !4229)
!4241 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !312, file: !312, line: 365, type: !4242, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4244)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!365, !376}
!4244 = !{!4245, !4246}
!4245 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4241, file: !312, line: 365, type: !376)
!4246 = !DILocalVariable(name: "int_no", scope: !4241, file: !312, line: 367, type: !2323)
!4247 = !DILocation(line: 0, scope: !4241)
!4248 = !DILocation(line: 367, column: 26, scope: !4241)
!4249 = !DILocation(line: 369, column: 16, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4241, file: !312, line: 369, column: 9)
!4251 = !DILocation(line: 369, column: 9, scope: !4241)
!4252 = !DILocation(line: 370, column: 22, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4250, file: !312, line: 369, column: 33)
!4254 = !DILocation(line: 370, column: 9, scope: !4253)
!4255 = !DILocation(line: 0, scope: !4250)
!4256 = !DILocation(line: 375, column: 1, scope: !4241)
!4257 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !312, file: !312, line: 377, type: !4258, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4260)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!12, !376}
!4260 = !{!4261, !4262}
!4261 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4257, file: !312, line: 377, type: !376)
!4262 = !DILocalVariable(name: "int_no", scope: !4257, file: !312, line: 379, type: !2323)
!4263 = !DILocation(line: 0, scope: !4257)
!4264 = !DILocation(line: 379, column: 26, scope: !4257)
!4265 = !DILocation(line: 381, column: 16, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4257, file: !312, line: 381, column: 9)
!4267 = !DILocation(line: 381, column: 9, scope: !4257)
!4268 = !DILocation(line: 382, column: 16, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4266, file: !312, line: 381, column: 33)
!4270 = !DILocation(line: 382, column: 9, scope: !4269)
!4271 = !DILocation(line: 0, scope: !4266)
!4272 = !DILocation(line: 387, column: 1, scope: !4257)
!4273 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !312, file: !312, line: 390, type: !4274, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4276)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!12, !376, !416, !12}
!4276 = !{!4277, !4278, !4279, !4280, !4281}
!4277 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4273, file: !312, line: 390, type: !376)
!4278 = !DILocalVariable(name: "buffer", arg: 2, scope: !4273, file: !312, line: 390, type: !416)
!4279 = !DILocalVariable(name: "size", arg: 3, scope: !4273, file: !312, line: 390, type: !12)
!4280 = !DILocalVariable(name: "int_no", scope: !4273, file: !312, line: 392, type: !2323)
!4281 = !DILocalVariable(name: "index", scope: !4273, file: !312, line: 393, type: !12)
!4282 = !DILocation(line: 0, scope: !4273)
!4283 = !DILocation(line: 392, column: 26, scope: !4273)
!4284 = !DILocation(line: 395, column: 16, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4273, file: !312, line: 395, column: 9)
!4286 = !DILocation(line: 395, column: 9, scope: !4273)
!4287 = !DILocation(line: 401, column: 38, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4289, file: !312, line: 400, column: 48)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !312, line: 400, column: 9)
!4290 = distinct !DILexicalBlock(scope: !4291, file: !312, line: 400, column: 9)
!4291 = distinct !DILexicalBlock(scope: !4292, file: !312, line: 399, column: 33)
!4292 = distinct !DILexicalBlock(scope: !4273, file: !312, line: 399, column: 9)
!4293 = !DILocation(line: 401, column: 13, scope: !4288)
!4294 = !DILocation(line: 401, column: 27, scope: !4288)
!4295 = !DILocation(line: 400, column: 44, scope: !4289)
!4296 = !DILocation(line: 400, column: 31, scope: !4289)
!4297 = !DILocation(line: 400, column: 9, scope: !4290)
!4298 = distinct !{!4298, !4297, !4299}
!4299 = !DILocation(line: 402, column: 9, scope: !4290)
!4300 = !DILocation(line: 406, column: 1, scope: !4273)
!4301 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !312, file: !312, line: 408, type: !4274, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4302)
!4302 = !{!4303, !4304, !4305, !4306, !4307, !4308}
!4303 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4301, file: !312, line: 408, type: !376)
!4304 = !DILocalVariable(name: "buffer", arg: 2, scope: !4301, file: !312, line: 408, type: !416)
!4305 = !DILocalVariable(name: "size", arg: 3, scope: !4301, file: !312, line: 408, type: !12)
!4306 = !DILocalVariable(name: "actual_size", scope: !4301, file: !312, line: 410, type: !12)
!4307 = !DILocalVariable(name: "receive_size", scope: !4301, file: !312, line: 410, type: !12)
!4308 = !DILocalVariable(name: "ch", scope: !4301, file: !312, line: 411, type: !4201)
!4309 = !DILocation(line: 0, scope: !4301)
!4310 = !DILocation(line: 410, column: 5, scope: !4301)
!4311 = !DILocation(line: 413, column: 10, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4301, file: !312, line: 413, column: 9)
!4313 = !DILocation(line: 413, column: 9, scope: !4301)
!4314 = !DILocation(line: 417, column: 17, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4301, file: !312, line: 417, column: 9)
!4316 = !DILocation(line: 417, column: 26, scope: !4315)
!4317 = !DILocation(line: 421, column: 30, scope: !4301)
!4318 = !DILocation(line: 421, column: 5, scope: !4301)
!4319 = !DILocation(line: 422, column: 9, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4301, file: !312, line: 422, column: 9)
!4321 = !DILocation(line: 422, column: 21, scope: !4320)
!4322 = !DILocation(line: 427, column: 5, scope: !4301)
!4323 = !DILocation(line: 429, column: 25, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4301, file: !312, line: 429, column: 9)
!4325 = !DILocation(line: 429, column: 22, scope: !4324)
!4326 = !DILocation(line: 429, column: 9, scope: !4301)
!4327 = !DILocation(line: 430, column: 14, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4324, file: !312, line: 429, column: 38)
!4329 = !DILocation(line: 431, column: 9, scope: !4328)
!4330 = !DILocation(line: 432, column: 5, scope: !4328)
!4331 = !DILocation(line: 435, column: 1, scope: !4301)
!4332 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !312, file: !312, line: 438, type: !4258, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4333)
!4333 = !{!4334, !4335}
!4334 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4332, file: !312, line: 438, type: !376)
!4335 = !DILocalVariable(name: "length", scope: !4332, file: !312, line: 440, type: !12)
!4336 = !DILocation(line: 0, scope: !4332)
!4337 = !DILocation(line: 440, column: 5, scope: !4332)
!4338 = !DILocation(line: 440, column: 14, scope: !4332)
!4339 = !DILocation(line: 442, column: 10, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4332, file: !312, line: 442, column: 9)
!4341 = !DILocation(line: 442, column: 9, scope: !4332)
!4342 = !DILocation(line: 446, column: 30, scope: !4332)
!4343 = !DILocation(line: 446, column: 5, scope: !4332)
!4344 = !DILocation(line: 447, column: 12, scope: !4332)
!4345 = !DILocation(line: 447, column: 5, scope: !4332)
!4346 = !DILocation(line: 448, column: 1, scope: !4332)
!4347 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !312, file: !312, line: 451, type: !4258, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4348)
!4348 = !{!4349, !4350}
!4349 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4347, file: !312, line: 451, type: !376)
!4350 = !DILocalVariable(name: "length", scope: !4347, file: !312, line: 453, type: !12)
!4351 = !DILocation(line: 0, scope: !4347)
!4352 = !DILocation(line: 453, column: 5, scope: !4347)
!4353 = !DILocation(line: 453, column: 14, scope: !4347)
!4354 = !DILocation(line: 455, column: 10, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4347, file: !312, line: 455, column: 9)
!4356 = !DILocation(line: 455, column: 9, scope: !4347)
!4357 = !DILocation(line: 459, column: 30, scope: !4347)
!4358 = !DILocation(line: 459, column: 5, scope: !4347)
!4359 = !DILocation(line: 461, column: 12, scope: !4347)
!4360 = !DILocation(line: 461, column: 5, scope: !4347)
!4361 = !DILocation(line: 462, column: 1, scope: !4347)
!4362 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !312, file: !312, line: 543, type: !4363, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4365)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!3990, !376, !404, !116}
!4365 = !{!4366, !4367, !4368, !4369}
!4366 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4362, file: !312, line: 543, type: !376)
!4367 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4362, file: !312, line: 544, type: !404)
!4368 = !DILocalVariable(name: "user_data", arg: 3, scope: !4362, file: !312, line: 545, type: !116)
!4369 = !DILocalVariable(name: "ch", scope: !4362, file: !312, line: 547, type: !4201)
!4370 = !DILocation(line: 0, scope: !4362)
!4371 = !DILocation(line: 549, column: 10, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4362, file: !312, line: 549, column: 9)
!4373 = !DILocation(line: 549, column: 9, scope: !4362)
!4374 = !DILocation(line: 556, column: 53, scope: !4362)
!4375 = !DILocation(line: 556, column: 62, scope: !4362)
!4376 = !DILocation(line: 557, column: 53, scope: !4362)
!4377 = !DILocation(line: 557, column: 63, scope: !4362)
!4378 = !DILocation(line: 558, column: 37, scope: !4362)
!4379 = !DILocation(line: 558, column: 54, scope: !4362)
!4380 = !DILocation(line: 560, column: 39, scope: !4362)
!4381 = !DILocation(line: 561, column: 39, scope: !4362)
!4382 = !DILocation(line: 560, column: 5, scope: !4362)
!4383 = !DILocation(line: 562, column: 5, scope: !4362)
!4384 = !DILocation(line: 564, column: 44, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4362, file: !312, line: 564, column: 9)
!4386 = !DILocation(line: 564, column: 9, scope: !4362)
!4387 = !DILocation(line: 565, column: 9, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4385, file: !312, line: 564, column: 59)
!4389 = !DILocation(line: 566, column: 5, scope: !4388)
!4390 = !DILocation(line: 567, column: 9, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4385, file: !312, line: 566, column: 12)
!4392 = !DILocation(line: 569, column: 10, scope: !4362)
!4393 = !DILocation(line: 570, column: 5, scope: !4362)
!4394 = !DILocation(line: 578, column: 5, scope: !4362)
!4395 = !DILocation(line: 579, column: 1, scope: !4362)
!4396 = !DILocation(line: 0, scope: !369)
!4397 = !DILocation(line: 539, column: 12, scope: !369)
!4398 = !DILocation(line: 539, column: 5, scope: !369)
!4399 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !312, file: !312, line: 511, type: !374, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4400)
!4400 = !{!4401}
!4401 = !DILocalVariable(name: "callback_context", scope: !4402, file: !312, line: 514, type: !4404)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !312, line: 513, column: 60)
!4403 = distinct !DILexicalBlock(scope: !4399, file: !312, line: 513, column: 9)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 32)
!4405 = !DILocation(line: 513, column: 42, scope: !4403)
!4406 = !DILocation(line: 513, column: 9, scope: !4399)
!4407 = !DILocation(line: 515, column: 39, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4402, file: !312, line: 515, column: 13)
!4409 = !DILocation(line: 515, column: 18, scope: !4408)
!4410 = !DILocation(line: 515, column: 13, scope: !4402)
!4411 = !DILocation(line: 516, column: 89, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4408, file: !312, line: 515, column: 49)
!4413 = !DILocation(line: 516, column: 13, scope: !4412)
!4414 = !DILocation(line: 517, column: 9, scope: !4412)
!4415 = !DILocation(line: 519, column: 32, scope: !4399)
!4416 = !DILocation(line: 519, column: 5, scope: !4399)
!4417 = !DILocation(line: 520, column: 1, scope: !4399)
!4418 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !312, file: !312, line: 523, type: !374, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4419)
!4419 = !{!4420}
!4420 = !DILocalVariable(name: "callback_context", scope: !4421, file: !312, line: 526, type: !4404)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !312, line: 525, column: 60)
!4422 = distinct !DILexicalBlock(scope: !4418, file: !312, line: 525, column: 9)
!4423 = !DILocation(line: 525, column: 42, scope: !4422)
!4424 = !DILocation(line: 525, column: 9, scope: !4418)
!4425 = !DILocation(line: 527, column: 39, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4421, file: !312, line: 527, column: 13)
!4427 = !DILocation(line: 527, column: 18, scope: !4426)
!4428 = !DILocation(line: 527, column: 13, scope: !4421)
!4429 = !DILocation(line: 528, column: 89, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4426, file: !312, line: 527, column: 49)
!4431 = !DILocation(line: 528, column: 13, scope: !4430)
!4432 = !DILocation(line: 529, column: 9, scope: !4430)
!4433 = !DILocation(line: 531, column: 32, scope: !4418)
!4434 = !DILocation(line: 531, column: 5, scope: !4418)
!4435 = !DILocation(line: 532, column: 1, scope: !4418)
!4436 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !312, file: !312, line: 464, type: !4437, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{null, !2323, !124}
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4446}
!4440 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4436, file: !312, line: 464, type: !2323)
!4441 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4436, file: !312, line: 464, type: !124)
!4442 = !DILocalVariable(name: "avail_size", scope: !4436, file: !312, line: 466, type: !12)
!4443 = !DILocalVariable(name: "avail_space", scope: !4436, file: !312, line: 466, type: !12)
!4444 = !DILocalVariable(name: "dma_config", scope: !4436, file: !312, line: 467, type: !4445)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 32)
!4446 = !DILocalVariable(name: "ch", scope: !4436, file: !312, line: 468, type: !4201)
!4447 = !DILocation(line: 0, scope: !4436)
!4448 = !DILocation(line: 466, column: 5, scope: !4436)
!4449 = !DILocation(line: 471, column: 9, scope: !4436)
!4450 = !DILocation(line: 472, column: 9, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !312, line: 471, column: 16)
!4452 = distinct !DILexicalBlock(scope: !4436, file: !312, line: 471, column: 9)
!4453 = !DILocation(line: 473, column: 13, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4451, file: !312, line: 473, column: 13)
!4455 = !DILocation(line: 473, column: 39, scope: !4454)
!4456 = !DILocation(line: 473, column: 24, scope: !4454)
!4457 = !DILocation(line: 473, column: 13, scope: !4451)
!4458 = !DILocation(line: 478, column: 9, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4452, file: !312, line: 477, column: 12)
!4460 = !DILocation(line: 479, column: 13, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4459, file: !312, line: 479, column: 13)
!4462 = !DILocation(line: 479, column: 40, scope: !4461)
!4463 = !DILocation(line: 479, column: 77, scope: !4461)
!4464 = !DILocation(line: 479, column: 63, scope: !4461)
!4465 = !DILocation(line: 479, column: 25, scope: !4461)
!4466 = !DILocation(line: 479, column: 13, scope: !4459)
!4467 = !DILocation(line: 0, scope: !4452)
!4468 = !DILocation(line: 484, column: 1, scope: !4436)
!4469 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !312, file: !312, line: 486, type: !374, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4470)
!4470 = !{!4471}
!4471 = !DILocalVariable(name: "callback_context", scope: !4472, file: !312, line: 490, type: !4404)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !312, line: 489, column: 70)
!4473 = distinct !DILexicalBlock(scope: !4469, file: !312, line: 488, column: 9)
!4474 = !DILocation(line: 488, column: 43, scope: !4473)
!4475 = !DILocation(line: 488, column: 61, scope: !4473)
!4476 = !DILocation(line: 489, column: 14, scope: !4473)
!4477 = !DILocation(line: 489, column: 63, scope: !4473)
!4478 = !DILocation(line: 488, column: 9, scope: !4469)
!4479 = !DILocation(line: 491, column: 39, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4472, file: !312, line: 491, column: 13)
!4481 = !DILocation(line: 491, column: 18, scope: !4480)
!4482 = !DILocation(line: 491, column: 13, scope: !4472)
!4483 = !DILocation(line: 492, column: 88, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4480, file: !312, line: 491, column: 49)
!4485 = !DILocation(line: 492, column: 13, scope: !4484)
!4486 = !DILocation(line: 493, column: 9, scope: !4484)
!4487 = !DILocation(line: 495, column: 32, scope: !4469)
!4488 = !DILocation(line: 495, column: 5, scope: !4469)
!4489 = !DILocation(line: 496, column: 1, scope: !4469)
!4490 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !312, file: !312, line: 499, type: !374, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4491)
!4491 = !{!4492}
!4492 = !DILocalVariable(name: "callback_context", scope: !4493, file: !312, line: 503, type: !4404)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !312, line: 502, column: 70)
!4494 = distinct !DILexicalBlock(scope: !4490, file: !312, line: 501, column: 9)
!4495 = !DILocation(line: 501, column: 43, scope: !4494)
!4496 = !DILocation(line: 501, column: 61, scope: !4494)
!4497 = !DILocation(line: 502, column: 14, scope: !4494)
!4498 = !DILocation(line: 502, column: 63, scope: !4494)
!4499 = !DILocation(line: 501, column: 9, scope: !4490)
!4500 = !DILocation(line: 504, column: 39, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4493, file: !312, line: 504, column: 13)
!4502 = !DILocation(line: 504, column: 18, scope: !4501)
!4503 = !DILocation(line: 504, column: 13, scope: !4493)
!4504 = !DILocation(line: 505, column: 88, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4501, file: !312, line: 504, column: 49)
!4506 = !DILocation(line: 505, column: 13, scope: !4505)
!4507 = !DILocation(line: 506, column: 9, scope: !4505)
!4508 = !DILocation(line: 508, column: 32, scope: !4490)
!4509 = !DILocation(line: 508, column: 5, scope: !4490)
!4510 = !DILocation(line: 509, column: 1, scope: !4490)
!4511 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !312, file: !312, line: 582, type: !4512, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4514)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!3990, !376, !391}
!4514 = !{!4515, !4516}
!4515 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4511, file: !312, line: 582, type: !376)
!4516 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4511, file: !312, line: 582, type: !391)
!4517 = !DILocation(line: 0, scope: !4511)
!4518 = !DILocation(line: 584, column: 11, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4511, file: !312, line: 584, column: 9)
!4520 = !DILocation(line: 584, column: 46, scope: !4519)
!4521 = !DILocation(line: 588, column: 37, scope: !4511)
!4522 = !DILocation(line: 588, column: 50, scope: !4511)
!4523 = !DILocation(line: 588, column: 59, scope: !4511)
!4524 = !DILocation(line: 589, column: 12, scope: !4511)
!4525 = !DILocation(line: 589, column: 5, scope: !4511)
!4526 = !DILocation(line: 590, column: 1, scope: !4511)
!4527 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !312, file: !312, line: 608, type: !4528, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4532)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!3990, !376, !4530}
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 32)
!4531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!4532 = !{!4533, !4534}
!4533 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4527, file: !312, line: 608, type: !376)
!4534 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4527, file: !312, line: 608, type: !4530)
!4535 = !DILocation(line: 0, scope: !4527)
!4536 = !DILocation(line: 610, column: 10, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4527, file: !312, line: 610, column: 9)
!4538 = !DILocation(line: 610, column: 9, scope: !4527)
!4539 = !DILocation(line: 614, column: 10, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4527, file: !312, line: 614, column: 9)
!4541 = !DILocation(line: 614, column: 9, scope: !4527)
!4542 = !DILocation(line: 618, column: 37, scope: !4527)
!4543 = !DILocation(line: 618, column: 56, scope: !4527)
!4544 = !DILocation(line: 619, column: 45, scope: !4527)
!4545 = !DILocation(line: 619, column: 12, scope: !4527)
!4546 = !DILocation(line: 620, column: 12, scope: !4527)
!4547 = !DILocation(line: 619, column: 5, scope: !4527)
!4548 = !DILocation(line: 621, column: 5, scope: !4527)
!4549 = !DILocation(line: 622, column: 5, scope: !4527)
!4550 = !DILocation(line: 623, column: 33, scope: !4527)
!4551 = !DILocation(line: 624, column: 50, scope: !4527)
!4552 = !DILocation(line: 625, column: 50, scope: !4527)
!4553 = !DILocation(line: 626, column: 50, scope: !4527)
!4554 = !DILocation(line: 627, column: 50, scope: !4527)
!4555 = !DILocation(line: 628, column: 33, scope: !4527)
!4556 = !DILocation(line: 623, column: 5, scope: !4527)
!4557 = !DILocation(line: 630, column: 50, scope: !4527)
!4558 = !DILocation(line: 631, column: 50, scope: !4527)
!4559 = !DILocation(line: 632, column: 50, scope: !4527)
!4560 = !DILocation(line: 629, column: 5, scope: !4527)
!4561 = !DILocation(line: 634, column: 5, scope: !4527)
!4562 = !DILocation(line: 635, column: 1, scope: !4527)
!4563 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !312, file: !312, line: 112, type: !4564, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4566)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!124, !4530}
!4566 = !{!4567}
!4567 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4563, file: !312, line: 112, type: !4530)
!4568 = !DILocation(line: 0, scope: !4563)
!4569 = !DILocation(line: 114, column: 14, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4563, file: !312, line: 114, column: 9)
!4571 = !DILocation(line: 114, column: 9, scope: !4563)
!4572 = !DILocation(line: 117, column: 29, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4563, file: !312, line: 117, column: 9)
!4574 = !DILocation(line: 117, column: 14, scope: !4573)
!4575 = !DILocation(line: 117, column: 9, scope: !4563)
!4576 = !DILocation(line: 120, column: 21, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4563, file: !312, line: 120, column: 9)
!4578 = !DILocation(line: 120, column: 61, scope: !4577)
!4579 = !DILocation(line: 120, column: 47, scope: !4577)
!4580 = !DILocation(line: 120, column: 9, scope: !4563)
!4581 = !DILocation(line: 123, column: 61, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4563, file: !312, line: 123, column: 9)
!4583 = !DILocation(line: 123, column: 47, scope: !4582)
!4584 = !DILocation(line: 123, column: 9, scope: !4563)
!4585 = !DILocation(line: 126, column: 29, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4563, file: !312, line: 126, column: 9)
!4587 = !DILocation(line: 126, column: 14, scope: !4586)
!4588 = !DILocation(line: 126, column: 9, scope: !4563)
!4589 = !DILocation(line: 129, column: 21, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4563, file: !312, line: 129, column: 9)
!4591 = !DILocation(line: 129, column: 58, scope: !4590)
!4592 = !DILocation(line: 129, column: 44, scope: !4590)
!4593 = !DILocation(line: 129, column: 9, scope: !4563)
!4594 = !DILocation(line: 136, column: 1, scope: !4563)
!4595 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !312, file: !312, line: 182, type: !4596, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4598)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!12, !12}
!4598 = !{!4599, !4600}
!4599 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4595, file: !312, line: 182, type: !12)
!4600 = !DILocalVariable(name: "ticks_per_us", scope: !4595, file: !312, line: 184, type: !12)
!4601 = !DILocation(line: 0, scope: !4595)
!4602 = !DILocation(line: 186, column: 20, scope: !4595)
!4603 = !DILocation(line: 186, column: 39, scope: !4595)
!4604 = !DILocation(line: 188, column: 25, scope: !4595)
!4605 = !DILocation(line: 188, column: 5, scope: !4595)
!4606 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !312, file: !312, line: 637, type: !4132, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4607)
!4607 = !{!4608, !4609}
!4608 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4606, file: !312, line: 637, type: !376)
!4609 = !DILocalVariable(name: "int_no", scope: !4606, file: !312, line: 639, type: !2323)
!4610 = !DILocation(line: 0, scope: !4606)
!4611 = !DILocation(line: 641, column: 10, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4606, file: !312, line: 641, column: 9)
!4613 = !DILocation(line: 641, column: 9, scope: !4606)
!4614 = !DILocation(line: 645, column: 14, scope: !4606)
!4615 = !DILocation(line: 646, column: 5, scope: !4606)
!4616 = !DILocation(line: 648, column: 5, scope: !4606)
!4617 = !DILocation(line: 649, column: 1, scope: !4606)
!4618 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !312, file: !312, line: 651, type: !4619, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4621)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!3990, !376, !118, !118, !118}
!4621 = !{!4622, !4623, !4624, !4625, !4626}
!4622 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4618, file: !312, line: 651, type: !376)
!4623 = !DILocalVariable(name: "xon", arg: 2, scope: !4618, file: !312, line: 652, type: !118)
!4624 = !DILocalVariable(name: "xoff", arg: 3, scope: !4618, file: !312, line: 653, type: !118)
!4625 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4618, file: !312, line: 654, type: !118)
!4626 = !DILocalVariable(name: "int_no", scope: !4618, file: !312, line: 656, type: !2323)
!4627 = !DILocation(line: 0, scope: !4618)
!4628 = !DILocation(line: 658, column: 10, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4618, file: !312, line: 658, column: 9)
!4630 = !DILocation(line: 658, column: 9, scope: !4618)
!4631 = !DILocation(line: 662, column: 14, scope: !4618)
!4632 = !DILocation(line: 663, column: 5, scope: !4618)
!4633 = !DILocation(line: 665, column: 5, scope: !4618)
!4634 = !DILocation(line: 666, column: 1, scope: !4618)
!4635 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !312, file: !312, line: 668, type: !4132, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4636)
!4636 = !{!4637, !4638}
!4637 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4635, file: !312, line: 668, type: !376)
!4638 = !DILocalVariable(name: "int_no", scope: !4635, file: !312, line: 670, type: !2323)
!4639 = !DILocation(line: 0, scope: !4635)
!4640 = !DILocation(line: 672, column: 10, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4635, file: !312, line: 672, column: 9)
!4642 = !DILocation(line: 672, column: 9, scope: !4635)
!4643 = !DILocation(line: 676, column: 14, scope: !4635)
!4644 = !DILocation(line: 677, column: 5, scope: !4635)
!4645 = !DILocation(line: 679, column: 5, scope: !4635)
!4646 = !DILocation(line: 680, column: 1, scope: !4635)
!4647 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !312, file: !312, line: 683, type: !4648, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !4650)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!3990, !376, !12}
!4650 = !{!4651, !4652}
!4651 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4647, file: !312, line: 683, type: !376)
!4652 = !DILocalVariable(name: "timeout", arg: 2, scope: !4647, file: !312, line: 683, type: !12)
!4653 = !DILocation(line: 0, scope: !4647)
!4654 = !DILocation(line: 685, column: 10, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4647, file: !312, line: 685, column: 9)
!4656 = !DILocation(line: 685, column: 9, scope: !4647)
!4657 = !DILocation(line: 689, column: 19, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4647, file: !312, line: 689, column: 9)
!4659 = !DILocation(line: 0, scope: !4658)
!4660 = !DILocation(line: 696, column: 1, scope: !4647)
!4661 = distinct !DISubprogram(name: "__io_putchar", scope: !954, file: !954, line: 54, type: !4662, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !4664)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!66, !66}
!4664 = !{!4665}
!4665 = !DILocalVariable(name: "ch", arg: 1, scope: !4661, file: !954, line: 54, type: !66)
!4666 = !DILocation(line: 0, scope: !4661)
!4667 = !DILocation(line: 61, column: 35, scope: !4661)
!4668 = !DILocation(line: 61, column: 5, scope: !4661)
!4669 = !DILocation(line: 62, column: 5, scope: !4661)
!4670 = distinct !DISubprogram(name: "log_uart_init", scope: !954, file: !954, line: 70, type: !374, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !4671)
!4671 = !{!4672}
!4672 = !DILocalVariable(name: "uart_config", scope: !4670, file: !954, line: 72, type: !4673)
!4673 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !315, line: 378, baseType: !4674)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !315, line: 373, size: 128, elements: !4675)
!4675 = !{!4676, !4677, !4678, !4679}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !4674, file: !315, line: 374, baseType: !391, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !4674, file: !315, line: 375, baseType: !393, size: 32, offset: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !4674, file: !315, line: 376, baseType: !395, size: 32, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !4674, file: !315, line: 377, baseType: !397, size: 32, offset: 96)
!4680 = !DILocation(line: 72, column: 5, scope: !4670)
!4681 = !DILocation(line: 72, column: 23, scope: !4670)
!4682 = !DILocation(line: 74, column: 5, scope: !4670)
!4683 = !DILocation(line: 75, column: 5, scope: !4670)
!4684 = !DILocation(line: 76, column: 5, scope: !4670)
!4685 = !DILocation(line: 77, column: 5, scope: !4670)
!4686 = !DILocation(line: 80, column: 17, scope: !4670)
!4687 = !DILocation(line: 80, column: 26, scope: !4670)
!4688 = !DILocation(line: 81, column: 17, scope: !4670)
!4689 = !DILocation(line: 81, column: 29, scope: !4670)
!4690 = !DILocation(line: 82, column: 17, scope: !4670)
!4691 = !DILocation(line: 82, column: 26, scope: !4670)
!4692 = !DILocation(line: 83, column: 17, scope: !4670)
!4693 = !DILocation(line: 83, column: 24, scope: !4670)
!4694 = !DILocation(line: 84, column: 5, scope: !4670)
!4695 = !DILocation(line: 86, column: 1, scope: !4670)
!4696 = distinct !DISubprogram(name: "main", scope: !954, file: !954, line: 198, type: !2299, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !1870)
!4697 = !DILocation(line: 201, column: 5, scope: !4696)
!4698 = !DILocation(line: 204, column: 5, scope: !4696)
!4699 = !DILocation(line: 319, column: 3, scope: !4700, inlinedAt: !4701)
!4700 = distinct !DISubprogram(name: "__enable_irq", scope: !1860, file: !1860, line: 317, type: !374, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !1870)
!4701 = distinct !DILocation(line: 207, column: 5, scope: !4696)
!4702 = !{i64 508922}
!4703 = !DILocation(line: 496, column: 3, scope: !4704, inlinedAt: !4705)
!4704 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1860, file: !1860, line: 494, type: !374, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !1870)
!4705 = distinct !DILocation(line: 208, column: 5, scope: !4696)
!4706 = !{i64 513197}
!4707 = !DILocation(line: 211, column: 5, scope: !4696)
!4708 = !DILocation(line: 212, column: 5, scope: !4696)
!4709 = !DILocation(line: 213, column: 5, scope: !4696)
!4710 = !DILocation(line: 215, column: 5, scope: !4696)
!4711 = !DILocation(line: 217, column: 5, scope: !4696)
!4712 = !DILocation(line: 217, column: 5, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !954, line: 217, column: 5)
!4714 = distinct !DILexicalBlock(scope: !4696, file: !954, line: 217, column: 5)
!4715 = distinct !{!4715, !4716, !4717}
!4716 = !DILocation(line: 217, column: 5, scope: !4714)
!4717 = !DILocation(line: 217, column: 13, scope: !4714)
!4718 = distinct !DISubprogram(name: "SystemClock_Config", scope: !954, file: !954, line: 92, type: !374, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !1870)
!4719 = !DILocation(line: 94, column: 5, scope: !4718)
!4720 = !DILocation(line: 95, column: 1, scope: !4718)
!4721 = distinct !DISubprogram(name: "prvSetupHardware", scope: !954, file: !954, line: 102, type: !374, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !1870)
!4722 = !DILocation(line: 105, column: 5, scope: !4721)
!4723 = !DILocation(line: 107, column: 1, scope: !4721)
!4724 = distinct !DISubprogram(name: "aes_encrypt_decrypt_data_example", scope: !954, file: !954, line: 135, type: !374, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !4725)
!4725 = !{!4726, !4727, !4728, !4732, !4734, !4735, !4741, !4742, !4743}
!4726 = !DILocalVariable(name: "hardware_id", scope: !4724, file: !954, line: 138, type: !2894)
!4727 = !DILocalVariable(name: "aes_cbc_iv", scope: !4724, file: !954, line: 142, type: !2894)
!4728 = !DILocalVariable(name: "plain", scope: !4724, file: !954, line: 146, type: !4729)
!4729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 240, elements: !4730)
!4730 = !{!4731}
!4731 = !DISubrange(count: 30)
!4732 = !DILocalVariable(name: "encrypted_buffer", scope: !4724, file: !954, line: 151, type: !4733)
!4733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !645)
!4734 = !DILocalVariable(name: "decrypted_buffer", scope: !4724, file: !954, line: 152, type: !4733)
!4735 = !DILocalVariable(name: "plain_text", scope: !4724, file: !954, line: 154, type: !4736)
!4736 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_buffer_t", file: !65, line: 307, baseType: !4737)
!4737 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 304, size: 64, elements: !4738)
!4738 = !{!4739, !4740}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4737, file: !65, line: 305, baseType: !416, size: 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4737, file: !65, line: 306, baseType: !12, size: 32, offset: 32)
!4741 = !DILocalVariable(name: "key", scope: !4724, file: !954, line: 158, type: !4736)
!4742 = !DILocalVariable(name: "encrypted_text", scope: !4724, file: !954, line: 163, type: !4736)
!4743 = !DILocalVariable(name: "decrypted_text", scope: !4724, file: !954, line: 180, type: !4736)
!4744 = !DILocation(line: 138, column: 5, scope: !4724)
!4745 = !DILocation(line: 138, column: 13, scope: !4724)
!4746 = !DILocation(line: 142, column: 5, scope: !4724)
!4747 = !DILocation(line: 142, column: 13, scope: !4724)
!4748 = !DILocation(line: 146, column: 5, scope: !4724)
!4749 = !DILocation(line: 146, column: 13, scope: !4724)
!4750 = !DILocation(line: 151, column: 5, scope: !4724)
!4751 = !DILocation(line: 151, column: 13, scope: !4724)
!4752 = !DILocation(line: 152, column: 5, scope: !4724)
!4753 = !DILocation(line: 152, column: 13, scope: !4724)
!4754 = !DILocation(line: 154, column: 5, scope: !4724)
!4755 = !DILocation(line: 154, column: 22, scope: !4724)
!4756 = !DILocation(line: 154, column: 35, scope: !4724)
!4757 = !DILocation(line: 158, column: 5, scope: !4724)
!4758 = !DILocation(line: 158, column: 22, scope: !4724)
!4759 = !DILocation(line: 158, column: 28, scope: !4724)
!4760 = !DILocation(line: 163, column: 5, scope: !4724)
!4761 = !DILocation(line: 163, column: 22, scope: !4724)
!4762 = !DILocation(line: 163, column: 39, scope: !4724)
!4763 = !DILocation(line: 168, column: 5, scope: !4724)
!4764 = !DILocation(line: 169, column: 5, scope: !4724)
!4765 = !DILocation(line: 170, column: 5, scope: !4724)
!4766 = !DILocation(line: 171, column: 5, scope: !4724)
!4767 = !DILocation(line: 172, column: 5, scope: !4724)
!4768 = !DILocation(line: 173, column: 5, scope: !4724)
!4769 = !DILocation(line: 175, column: 5, scope: !4724)
!4770 = !DILocation(line: 177, column: 5, scope: !4724)
!4771 = !DILocation(line: 178, column: 36, scope: !4724)
!4772 = !DILocation(line: 178, column: 59, scope: !4724)
!4773 = !DILocation(line: 178, column: 44, scope: !4724)
!4774 = !DILocation(line: 178, column: 5, scope: !4724)
!4775 = !DILocation(line: 180, column: 5, scope: !4724)
!4776 = !DILocation(line: 180, column: 22, scope: !4724)
!4777 = !DILocation(line: 180, column: 39, scope: !4724)
!4778 = !DILocation(line: 184, column: 5, scope: !4724)
!4779 = !DILocation(line: 185, column: 5, scope: !4724)
!4780 = !DILocation(line: 186, column: 36, scope: !4724)
!4781 = !DILocation(line: 186, column: 59, scope: !4724)
!4782 = !DILocation(line: 186, column: 44, scope: !4724)
!4783 = !DILocation(line: 186, column: 5, scope: !4724)
!4784 = !DILocation(line: 188, column: 5, scope: !4724)
!4785 = !DILocation(line: 189, column: 5, scope: !4724)
!4786 = !DILocation(line: 190, column: 36, scope: !4724)
!4787 = !DILocation(line: 190, column: 59, scope: !4724)
!4788 = !DILocation(line: 190, column: 44, scope: !4724)
!4789 = !DILocation(line: 190, column: 5, scope: !4724)
!4790 = !DILocation(line: 192, column: 5, scope: !4724)
!4791 = !DILocation(line: 193, column: 5, scope: !4724)
!4792 = !DILocation(line: 194, column: 36, scope: !4724)
!4793 = !DILocation(line: 194, column: 59, scope: !4724)
!4794 = !DILocation(line: 194, column: 44, scope: !4724)
!4795 = !DILocation(line: 194, column: 5, scope: !4724)
!4796 = !DILocation(line: 195, column: 1, scope: !4724)
!4797 = distinct !DISubprogram(name: "aes_result_dump", scope: !954, file: !954, line: 115, type: !4798, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !953, retainedNodes: !4800)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{null, !416, !118}
!4800 = !{!4801, !4802, !4803}
!4801 = !DILocalVariable(name: "result", arg: 1, scope: !4797, file: !954, line: 115, type: !416)
!4802 = !DILocalVariable(name: "length", arg: 2, scope: !4797, file: !954, line: 115, type: !118)
!4803 = !DILocalVariable(name: "i", scope: !4797, file: !954, line: 117, type: !118)
!4804 = !DILocation(line: 0, scope: !4797)
!4805 = !DILocation(line: 119, column: 19, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4807, file: !954, line: 119, column: 5)
!4807 = distinct !DILexicalBlock(scope: !4797, file: !954, line: 119, column: 5)
!4808 = !DILocation(line: 119, column: 5, scope: !4807)
!4809 = !DILocation(line: 120, column: 15, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4811, file: !954, line: 120, column: 13)
!4811 = distinct !DILexicalBlock(scope: !4806, file: !954, line: 119, column: 34)
!4812 = !DILocation(line: 120, column: 20, scope: !4810)
!4813 = !DILocation(line: 120, column: 13, scope: !4811)
!4814 = !DILocation(line: 121, column: 13, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4810, file: !954, line: 120, column: 26)
!4816 = !DILocation(line: 122, column: 9, scope: !4815)
!4817 = !DILocation(line: 124, column: 26, scope: !4811)
!4818 = !DILocation(line: 124, column: 9, scope: !4811)
!4819 = !DILocation(line: 119, column: 30, scope: !4806)
!4820 = distinct !{!4820, !4808, !4821}
!4821 = !DILocation(line: 125, column: 5, scope: !4807)
!4822 = !DILocation(line: 126, column: 5, scope: !4797)
!4823 = !DILocation(line: 128, column: 1, scope: !4797)
!4824 = distinct !DISubprogram(name: "SysTick_Set", scope: !426, file: !426, line: 70, type: !4596, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !4825)
!4825 = !{!4826, !4827}
!4826 = !DILocalVariable(name: "ticks", arg: 1, scope: !4824, file: !426, line: 70, type: !12)
!4827 = !DILocalVariable(name: "val", scope: !4824, file: !426, line: 72, type: !12)
!4828 = !DILocation(line: 0, scope: !4824)
!4829 = !DILocation(line: 74, column: 16, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4824, file: !426, line: 74, column: 9)
!4831 = !DILocation(line: 74, column: 21, scope: !4830)
!4832 = !DILocation(line: 74, column: 9, scope: !4824)
!4833 = !DILocation(line: 78, column: 20, scope: !4824)
!4834 = !DILocation(line: 80, column: 19, scope: !4824)
!4835 = !DILocation(line: 83, column: 20, scope: !4824)
!4836 = !DILocation(line: 84, column: 20, scope: !4824)
!4837 = !DILocation(line: 86, column: 19, scope: !4824)
!4838 = !DILocation(line: 88, column: 5, scope: !4824)
!4839 = !DILocation(line: 89, column: 1, scope: !4824)
!4840 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !426, file: !426, line: 98, type: !374, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1870)
!4841 = !DILocation(line: 100, column: 28, scope: !4840)
!4842 = !DILocation(line: 101, column: 1, scope: !4840)
!4843 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !426, file: !426, line: 110, type: !1854, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1870)
!4844 = !DILocation(line: 112, column: 12, scope: !4843)
!4845 = !DILocation(line: 112, column: 5, scope: !4843)
!4846 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !426, file: !426, line: 122, type: !374, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1870)
!4847 = !DILocation(line: 124, column: 23, scope: !4846)
!4848 = !DILocation(line: 124, column: 21, scope: !4846)
!4849 = !DILocation(line: 125, column: 1, scope: !4846)
!4850 = distinct !DISubprogram(name: "SystemInit", scope: !426, file: !426, line: 136, type: !374, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1870)
!4851 = !DILocation(line: 140, column: 16, scope: !4850)
!4852 = !DILocation(line: 144, column: 16, scope: !4850)
!4853 = !DILocation(line: 147, column: 16, scope: !4850)
!4854 = !DILocation(line: 150, column: 1, scope: !4850)
!4855 = distinct !DISubprogram(name: "CachePreInit", scope: !426, file: !426, line: 158, type: !374, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !1870)
!4856 = !DILocation(line: 161, column: 22, scope: !4855)
!4857 = !DILocation(line: 164, column: 21, scope: !4855)
!4858 = !DILocation(line: 167, column: 21, scope: !4855)
!4859 = !DILocation(line: 170, column: 29, scope: !4855)
!4860 = !DILocation(line: 171, column: 33, scope: !4855)
!4861 = !DILocation(line: 173, column: 28, scope: !4855)
!4862 = !DILocation(line: 178, column: 30, scope: !4855)
!4863 = !DILocation(line: 192, column: 1, scope: !4855)
!4864 = distinct !DISubprogram(name: "_close", scope: !486, file: !486, line: 11, type: !4662, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4865)
!4865 = !{!4866}
!4866 = !DILocalVariable(name: "file", arg: 1, scope: !4864, file: !486, line: 11, type: !66)
!4867 = !DILocation(line: 0, scope: !4864)
!4868 = !DILocation(line: 13, column: 5, scope: !4864)
!4869 = distinct !DISubprogram(name: "_fstat", scope: !486, file: !486, line: 16, type: !4870, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4918)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!66, !66, !4872}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 32)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !4874, line: 27, size: 704, elements: !4875)
!4874 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!4875 = !{!4876, !4879, !4882, !4885, !4888, !4891, !4894, !4895, !4898, !4908, !4909, !4910, !4913, !4916}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4873, file: !4874, line: 29, baseType: !4877, size: 16)
!4877 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !490, line: 161, baseType: !4878)
!4878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !532, line: 56, baseType: !507)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4873, file: !4874, line: 30, baseType: !4880, size: 16, offset: 16)
!4880 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !490, line: 139, baseType: !4881)
!4881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !532, line: 75, baseType: !53)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4873, file: !4874, line: 31, baseType: !4883, size: 32, offset: 32)
!4883 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !490, line: 189, baseType: !4884)
!4884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !532, line: 90, baseType: !14)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4873, file: !4874, line: 32, baseType: !4886, size: 16, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !490, line: 194, baseType: !4887)
!4887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !532, line: 209, baseType: !53)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4873, file: !4874, line: 33, baseType: !4889, size: 16, offset: 80)
!4889 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !490, line: 165, baseType: !4890)
!4890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !532, line: 60, baseType: !53)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4873, file: !4874, line: 34, baseType: !4892, size: 16, offset: 96)
!4892 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !490, line: 169, baseType: !4893)
!4893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !532, line: 63, baseType: !53)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4873, file: !4874, line: 35, baseType: !4877, size: 16, offset: 112)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4873, file: !4874, line: 36, baseType: !4896, size: 32, offset: 128)
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !490, line: 157, baseType: !4897)
!4897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !532, line: 102, baseType: !550)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4873, file: !4874, line: 42, baseType: !4899, size: 128, offset: 192)
!4899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4900, line: 47, size: 128, elements: !4901)
!4900 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!4901 = !{!4902, !4907}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4899, file: !4900, line: 48, baseType: !4903, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !4904, line: 42, baseType: !4905)
!4904 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!4905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !15, line: 200, baseType: !4906)
!4906 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4899, file: !4900, line: 49, baseType: !533, size: 32, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4873, file: !4874, line: 43, baseType: !4899, size: 128, offset: 320)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4873, file: !4874, line: 44, baseType: !4899, size: 128, offset: 448)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4873, file: !4874, line: 45, baseType: !4911, size: 32, offset: 576)
!4911 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !490, line: 102, baseType: !4912)
!4912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !532, line: 34, baseType: !533)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4873, file: !4874, line: 46, baseType: !4914, size: 32, offset: 608)
!4914 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !490, line: 97, baseType: !4915)
!4915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !532, line: 30, baseType: !533)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !4873, file: !4874, line: 48, baseType: !4917, size: 64, offset: 640)
!4917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 64, elements: !282)
!4918 = !{!4919, !4920}
!4919 = !DILocalVariable(name: "file", arg: 1, scope: !4869, file: !486, line: 16, type: !66)
!4920 = !DILocalVariable(name: "st", arg: 2, scope: !4869, file: !486, line: 16, type: !4872)
!4921 = !DILocation(line: 0, scope: !4869)
!4922 = !DILocation(line: 18, column: 5, scope: !4869)
!4923 = distinct !DISubprogram(name: "_isatty", scope: !486, file: !486, line: 22, type: !4662, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4924)
!4924 = !{!4925}
!4925 = !DILocalVariable(name: "file", arg: 1, scope: !4923, file: !486, line: 22, type: !66)
!4926 = !DILocation(line: 0, scope: !4923)
!4927 = !DILocation(line: 24, column: 5, scope: !4923)
!4928 = distinct !DISubprogram(name: "_lseek", scope: !486, file: !486, line: 27, type: !4929, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4931)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!66, !66, !66, !66}
!4931 = !{!4932, !4933, !4934}
!4932 = !DILocalVariable(name: "file", arg: 1, scope: !4928, file: !486, line: 27, type: !66)
!4933 = !DILocalVariable(name: "ptr", arg: 2, scope: !4928, file: !486, line: 27, type: !66)
!4934 = !DILocalVariable(name: "dir", arg: 3, scope: !4928, file: !486, line: 27, type: !66)
!4935 = !DILocation(line: 0, scope: !4928)
!4936 = !DILocation(line: 29, column: 5, scope: !4928)
!4937 = distinct !DISubprogram(name: "_open", scope: !486, file: !486, line: 32, type: !4938, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4940)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!66, !525, !66, !66}
!4940 = !{!4941, !4942, !4943}
!4941 = !DILocalVariable(name: "name", arg: 1, scope: !4937, file: !486, line: 32, type: !525)
!4942 = !DILocalVariable(name: "flags", arg: 2, scope: !4937, file: !486, line: 32, type: !66)
!4943 = !DILocalVariable(name: "mode", arg: 3, scope: !4937, file: !486, line: 32, type: !66)
!4944 = !DILocation(line: 0, scope: !4937)
!4945 = !DILocation(line: 34, column: 5, scope: !4937)
!4946 = distinct !DISubprogram(name: "_read", scope: !486, file: !486, line: 37, type: !4947, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4949)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!66, !66, !491, !66}
!4949 = !{!4950, !4951, !4952}
!4950 = !DILocalVariable(name: "file", arg: 1, scope: !4946, file: !486, line: 37, type: !66)
!4951 = !DILocalVariable(name: "ptr", arg: 2, scope: !4946, file: !486, line: 37, type: !491)
!4952 = !DILocalVariable(name: "len", arg: 3, scope: !4946, file: !486, line: 37, type: !66)
!4953 = !DILocation(line: 0, scope: !4946)
!4954 = !DILocation(line: 39, column: 5, scope: !4946)
!4955 = distinct !DISubprogram(name: "_write", scope: !486, file: !486, line: 52, type: !4947, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4956)
!4956 = !{!4957, !4958, !4959, !4960}
!4957 = !DILocalVariable(name: "file", arg: 1, scope: !4955, file: !486, line: 52, type: !66)
!4958 = !DILocalVariable(name: "ptr", arg: 2, scope: !4955, file: !486, line: 52, type: !491)
!4959 = !DILocalVariable(name: "len", arg: 3, scope: !4955, file: !486, line: 52, type: !66)
!4960 = !DILocalVariable(name: "i", scope: !4955, file: !486, line: 54, type: !66)
!4961 = !DILocation(line: 0, scope: !4955)
!4962 = !DILocation(line: 56, column: 19, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !486, line: 56, column: 5)
!4964 = distinct !DILexicalBlock(scope: !4955, file: !486, line: 56, column: 5)
!4965 = !DILocation(line: 56, column: 5, scope: !4964)
!4966 = !DILocation(line: 57, column: 26, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4963, file: !486, line: 56, column: 31)
!4968 = !DILocation(line: 57, column: 22, scope: !4967)
!4969 = !DILocation(line: 57, column: 9, scope: !4967)
!4970 = !DILocation(line: 56, column: 27, scope: !4963)
!4971 = distinct !{!4971, !4965, !4972}
!4972 = !DILocation(line: 58, column: 5, scope: !4964)
!4973 = !DILocation(line: 60, column: 5, scope: !4955)
!4974 = !DILocation(line: 0, scope: !485)
!4975 = !DILocation(line: 70, column: 5, scope: !485)
!4976 = !{i64 1109}
!4977 = !DILocation(line: 72, column: 14, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !485, file: !486, line: 72, column: 9)
!4979 = !DILocation(line: 72, column: 11, scope: !4978)
!4980 = !DILocation(line: 72, column: 9, scope: !485)
!4981 = !DILocation(line: 78, column: 32, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !485, file: !486, line: 78, column: 9)
!4983 = !DILocation(line: 78, column: 15, scope: !4982)
!4984 = !DILocation(line: 89, column: 1, scope: !485)
!4985 = !DILocation(line: 78, column: 9, scope: !485)
!4986 = distinct !DISubprogram(name: "_exit", scope: !486, file: !486, line: 91, type: !635, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4987)
!4987 = !{!4988}
!4988 = !DILocalVariable(name: "__status", arg: 1, scope: !4986, file: !486, line: 91, type: !66)
!4989 = !DILocation(line: 0, scope: !4986)
!4990 = !DILocation(line: 93, column: 5, scope: !4986)
!4991 = !DILocation(line: 94, column: 5, scope: !4986)
!4992 = distinct !{!4992, !4991, !4993}
!4993 = !DILocation(line: 96, column: 5, scope: !4986)
!4994 = distinct !DISubprogram(name: "_kill", scope: !486, file: !486, line: 100, type: !4995, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !4997)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!66, !66, !66}
!4997 = !{!4998, !4999}
!4998 = !DILocalVariable(name: "pid", arg: 1, scope: !4994, file: !486, line: 100, type: !66)
!4999 = !DILocalVariable(name: "sig", arg: 2, scope: !4994, file: !486, line: 100, type: !66)
!5000 = !DILocation(line: 0, scope: !4994)
!5001 = !DILocation(line: 102, column: 5, scope: !4994)
!5002 = !DILocation(line: 103, column: 5, scope: !4994)
!5003 = distinct !DISubprogram(name: "_getpid", scope: !486, file: !486, line: 107, type: !5004, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !1870)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!5006}
!5006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !490, line: 174, baseType: !5007)
!5007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !532, line: 52, baseType: !66)
!5008 = !DILocation(line: 109, column: 5, scope: !5003)
!5009 = !DILocation(line: 110, column: 5, scope: !5003)
