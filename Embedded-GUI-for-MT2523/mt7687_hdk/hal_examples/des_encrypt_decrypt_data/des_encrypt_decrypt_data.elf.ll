; ModuleID = './build/des_encrypt_decrypt_data.elf.bc'
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
@__FUNCTION__.hal_des_encrypt_with_padding = private unnamed_addr constant [29 x i8] c"hal_des_encrypt_with_padding\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"NULL input.\00", align 1
@.str.1.16 = private unnamed_addr constant [29 x i8] c"Inadequate encrypted buffer.\00", align 1
@.str.2.17 = private unnamed_addr constant [21 x i8] c"do_des_encrypt fail.\00", align 1
@__FUNCTION__.hal_des_decrypt = private unnamed_addr constant [16 x i8] c"hal_des_decrypt\00", align 1
@.str.3.20 = private unnamed_addr constant [36 x i8] c"Invalid encrypted text length: %lu.\00", align 1
@.str.4.21 = private unnamed_addr constant [69 x i8] c"Plain text buffer lengthL %lu is too small, encrypted length is: %lu\00", align 1
@.str.5.22 = private unnamed_addr constant [24 x i8] c"Invalid key length: %lu\00", align 1
@.str.6.23 = private unnamed_addr constant [21 x i8] c"do_des_decrypt fail.\00", align 1
@g_des_op_done = internal global i32 0, align 4, !dbg !207
@__FUNCTION__.do_des_encrypt = private unnamed_addr constant [15 x i8] c"do_des_encrypt\00", align 1
@.str.7.18 = private unnamed_addr constant [18 x i8] c"des_operate fail.\00", align 1
@.str.8.19 = private unnamed_addr constant [26 x i8] c"wait for encrypt timeout.\00", align 1
@__FUNCTION__.do_des_decrypt = private unnamed_addr constant [15 x i8] c"do_des_decrypt\00", align 1
@.str.9.24 = private unnamed_addr constant [26 x i8] c"wait for decrypt timeout.\00", align 1
@nvic_function_table = dso_local local_unnamed_addr global [96 x %struct.nvic_function_t] zeroinitializer, align 4, !dbg !219
@__FUNCTION__.isrC_main = private unnamed_addr constant [10 x i8] c"isrC_main\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"ERROR: no IRQ handler! \0A\00", align 1
@g_uart_context_table = internal global [2 x %struct.uart_context_t] zeroinitializer, align 4, !dbg !321
@hal_uart_map_receive_callback.func_tbl = internal unnamed_addr constant [2 x void ()*] [void ()* @hal_uart_receive_callback0, void ()* @hal_uart_receive_callback1], align 4, !dbg !379
@__const.hal_uart_translate_baudrate.baudrate_tbl = private unnamed_addr constant [13 x i32] [i32 110, i32 300, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600], align 4
@__const.hal_uart_translate_word_length.databit_tbl = private unnamed_addr constant [4 x i16] [i16 0, i16 1, i16 2, i16 3], align 2
@__const.hal_uart_translate_parity.parity_tbl = private unnamed_addr constant [5 x i16] [i16 0, i16 8, i16 24, i16 0, i16 0], align 2
@__const.hal_uart_translate_stopbit.stopbit_tbl = private unnamed_addr constant [3 x i16] [i16 0, i16 4, i16 4], align 2
@.str.40 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.1.41 = private unnamed_addr constant [20 x i8] c"welcome to main()\0D\0A\00", align 1
@__const.des_encrypt_decrypt_data_example.plain = private unnamed_addr constant [30 x i8] c"\00\0B\16!,7BMXc\00\0B\16!,7BMXc\00\0B\16!,7BMXc", align 1
@.str.2.42 = private unnamed_addr constant [8 x i8] c"Origin:\00", align 1
@.str.3.43 = private unnamed_addr constant [5 x i8] c"Key:\00", align 1
@.str.4.44 = private unnamed_addr constant [4 x i8] c"IV:\00", align 1
@.str.5.45 = private unnamed_addr constant [20 x i8] c"Encrypted(DES CBC):\00", align 1
@.str.6.46 = private unnamed_addr constant [20 x i8] c"Decrypted(DES CBC):\00", align 1
@.str.7.47 = private unnamed_addr constant [20 x i8] c"Encrypted(DES ECB):\00", align 1
@.str.8.48 = private unnamed_addr constant [20 x i8] c"Decrypted(DES ECB):\00", align 1
@.str.9.49 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.10.50 = private unnamed_addr constant [7 x i8] c" %02x \00", align 1
@SystemCoreClock = dso_local local_unnamed_addr global i32 40000000, align 4, !dbg !435
@System_Initialize_Done = internal global i32 0, align 4, !dbg !493
@_sbrk_r.heap_end = internal unnamed_addr global i8* null, align 4, !dbg !495
@end = external dso_local global i8, align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"_exit\0A\00", align 1
@.str.1.58 = private unnamed_addr constant [10 x i8] c"_kill %d\0A\00", align 1
@.str.2.59 = private unnamed_addr constant [9 x i8] c"_getpid\0A\00", align 1
@build_date_time_str = dso_local local_unnamed_addr global [31 x i8] c"2022/12/13 07:55:15 GMT +00:00\00", align 1, !dbg !704
@sw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"SDK_V4.6.1\00", align 1, !dbg !709
@hw_verno_str = dso_local local_unnamed_addr global [11 x i8] c"mt7687_hdk\00", align 1, !dbg !715

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_ConfDirection(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !978 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !983, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.value(metadata i8 %1, metadata !984, metadata !DIExpression()), !dbg !988
  %3 = lshr i32 %0, 5, !dbg !989
  call void @llvm.dbg.value(metadata i32 %3, metadata !985, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !988
  %4 = trunc i32 %0 to i16, !dbg !990
  %5 = and i16 %4, 31, !dbg !990
  call void @llvm.dbg.value(metadata i16 %4, metadata !987, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !988
  %6 = trunc i32 %3 to i16, !dbg !991
  switch i16 %6, label %97 [
    i16 0, label %7
    i16 1, label %70
  ], !dbg !991

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1, !dbg !992
  %9 = zext i16 %5 to i32, !dbg !995
  %10 = icmp ult i16 %5, 27, !dbg !995
  br i1 %8, label %11, label %46, !dbg !996

11:                                               ; preds = %7
  br i1 %10, label %12, label %17, !dbg !997

12:                                               ; preds = %11
  %13 = shl nuw i32 1, %9, !dbg !999
  %14 = xor i32 %13, -1, !dbg !1002
  %15 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1003
  %16 = and i32 %15, %14, !dbg !1003
  store volatile i32 %16, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1003
  br label %44, !dbg !1004

17:                                               ; preds = %11
  %18 = trunc i32 %0 to i5, !dbg !1005
  switch i5 %18, label %39 [
    i5 -5, label %19
    i5 -4, label %24
    i5 -3, label %29
    i5 -2, label %34
  ], !dbg !1005

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1006
  %21 = and i32 %20, -3, !dbg !1006
  store volatile i32 %21, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1006
  %22 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1009
  %23 = or i32 %22, 2048, !dbg !1009
  store volatile i32 %23, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1009
  br label %44, !dbg !1010

24:                                               ; preds = %17
  %25 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1011
  %26 = and i32 %25, -3, !dbg !1011
  store volatile i32 %26, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1011
  %27 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1014
  %28 = or i32 %27, 2048, !dbg !1014
  store volatile i32 %28, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1014
  br label %44, !dbg !1015

29:                                               ; preds = %17
  %30 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1016
  %31 = and i32 %30, -3, !dbg !1016
  store volatile i32 %31, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1016
  %32 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1019
  %33 = or i32 %32, 2048, !dbg !1019
  store volatile i32 %33, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1019
  br label %44, !dbg !1020

34:                                               ; preds = %17
  %35 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1021
  %36 = and i32 %35, -3, !dbg !1021
  store volatile i32 %36, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1021
  %37 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1024
  %38 = or i32 %37, 2048, !dbg !1024
  store volatile i32 %38, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1024
  br label %44, !dbg !1025

39:                                               ; preds = %17
  %40 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1026
  %41 = and i32 %40, -3, !dbg !1026
  store volatile i32 %41, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1026
  %42 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1029
  %43 = or i32 %42, 2048, !dbg !1029
  store volatile i32 %43, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1029
  br label %44, !dbg !1030

44:                                               ; preds = %19, %29, %39, %34, %24, %12
  %45 = shl nuw i32 1, %9, !dbg !1031
  store volatile i32 %45, i32* inttoptr (i32 -2097106796 to i32*), align 4, !dbg !1031
  br label %97, !dbg !1032

46:                                               ; preds = %7
  br i1 %10, label %47, label %51, !dbg !1033

47:                                               ; preds = %46
  %48 = shl nuw i32 1, %9, !dbg !1035
  %49 = load volatile i32, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1038
  %50 = or i32 %49, %48, !dbg !1038
  store volatile i32 %50, i32* inttoptr (i32 -2097106688 to i32*), align 256, !dbg !1038
  br label %68, !dbg !1039

51:                                               ; preds = %46
  %52 = trunc i32 %0 to i5, !dbg !1040
  switch i5 %52, label %65 [
    i5 -5, label %53
    i5 -4, label %56
    i5 -3, label %59
    i5 -2, label %62
  ], !dbg !1040

53:                                               ; preds = %51
  %54 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1041
  %55 = or i32 %54, 2050, !dbg !1041
  store volatile i32 %55, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1041
  br label %68, !dbg !1044

56:                                               ; preds = %51
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1045
  %58 = or i32 %57, 2050, !dbg !1045
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1045
  br label %68, !dbg !1048

59:                                               ; preds = %51
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1049
  %61 = or i32 %60, 2050, !dbg !1049
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1049
  br label %68, !dbg !1052

62:                                               ; preds = %51
  %63 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1053
  %64 = or i32 %63, 2050, !dbg !1053
  store volatile i32 %64, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1053
  br label %68, !dbg !1056

65:                                               ; preds = %51
  %66 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1057
  %67 = or i32 %66, 2050, !dbg !1057
  store volatile i32 %67, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1057
  br label %68, !dbg !1060

68:                                               ; preds = %53, %59, %65, %62, %56, %47
  %69 = shl nuw i32 1, %9, !dbg !1061
  store volatile i32 %69, i32* inttoptr (i32 -2097106792 to i32*), align 8, !dbg !1061
  br label %97

70:                                               ; preds = %2
  %71 = icmp eq i8 %1, 1, !dbg !1062
  %72 = zext i16 %5 to i32, !dbg !1064
  %73 = icmp eq i16 %5, 0, !dbg !1064
  br i1 %71, label %74, label %87, !dbg !1065

74:                                               ; preds = %70
  br i1 %73, label %80, label %75, !dbg !1066

75:                                               ; preds = %74
  %76 = shl nuw i32 1, %72, !dbg !1068
  %77 = xor i32 %76, -1, !dbg !1071
  %78 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1072
  %79 = and i32 %78, %77, !dbg !1072
  store volatile i32 %79, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1072
  br label %85, !dbg !1073

80:                                               ; preds = %74
  %81 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1074
  %82 = and i32 %81, -3, !dbg !1074
  store volatile i32 %82, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1074
  %83 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1076
  %84 = or i32 %83, 2048, !dbg !1076
  store volatile i32 %84, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1076
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ 1, %80 ], [ %76, %75 ], !dbg !1077
  store volatile i32 %86, i32* inttoptr (i32 -2097106780 to i32*), align 4, !dbg !1077
  br label %97, !dbg !1078

87:                                               ; preds = %70
  br i1 %73, label %92, label %88, !dbg !1079

88:                                               ; preds = %87
  %89 = shl nuw i32 1, %72, !dbg !1081
  %90 = load volatile i32, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1084
  %91 = or i32 %90, %89, !dbg !1084
  store volatile i32 %91, i32* inttoptr (i32 -2097106684 to i32*), align 4, !dbg !1084
  br label %95, !dbg !1085

92:                                               ; preds = %87
  %93 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1086
  %94 = or i32 %93, 2050, !dbg !1086
  store volatile i32 %94, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1086
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i32 [ 1, %92 ], [ %89, %88 ], !dbg !1088
  store volatile i32 %96, i32* inttoptr (i32 -2097106776 to i32*), align 8, !dbg !1088
  br label %97

97:                                               ; preds = %68, %44, %95, %85, %2
  %98 = phi i32 [ -1, %2 ], [ 0, %85 ], [ 0, %95 ], [ 0, %44 ], [ 0, %68 ], !dbg !988
  ret i32 %98, !dbg !1089
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPO_Write(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1090 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1092, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %1, metadata !1093, metadata !DIExpression()), !dbg !1096
  %3 = lshr i32 %0, 5, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %3, metadata !1094, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %4 = trunc i32 %0 to i16, !dbg !1098
  %5 = and i16 %4, 31, !dbg !1098
  call void @llvm.dbg.value(metadata i16 %5, metadata !1095, metadata !DIExpression()), !dbg !1096
  %6 = trunc i32 %3 to i16, !dbg !1099
  switch i16 %6, label %19 [
    i16 0, label %7
    i16 1, label %13
  ], !dbg !1099

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0, !dbg !1100
  %9 = zext i16 %5 to i32, !dbg !1103
  %10 = shl nuw i32 1, %9, !dbg !1103
  br i1 %8, label %12, label %11, !dbg !1104

11:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106844 to i32*), align 4, !dbg !1105
  br label %19, !dbg !1107

12:                                               ; preds = %7
  store volatile i32 %10, i32* inttoptr (i32 -2097106840 to i32*), align 8, !dbg !1108
  br label %19

13:                                               ; preds = %2
  %14 = icmp eq i8 %1, 0, !dbg !1110
  %15 = zext i16 %5 to i32, !dbg !1112
  %16 = shl nuw i32 1, %15, !dbg !1112
  br i1 %14, label %18, label %17, !dbg !1113

17:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106828 to i32*), align 4, !dbg !1114
  br label %19, !dbg !1116

18:                                               ; preds = %13
  store volatile i32 %16, i32* inttoptr (i32 -2097106824 to i32*), align 8, !dbg !1117
  br label %19

19:                                               ; preds = %12, %11, %18, %17, %2
  %20 = phi i32 [ -1, %2 ], [ 0, %17 ], [ 0, %18 ], [ 0, %11 ], [ 0, %12 ], !dbg !1096
  ret i32 %20, !dbg !1119
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DOUT(i32 noundef %0) local_unnamed_addr #2 !dbg !1120 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1124, metadata !DIExpression()), !dbg !1128
  %2 = lshr i32 %0, 5, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %2, metadata !1125, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1128
  %3 = and i32 %0, 31, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %0, metadata !1126, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1128
  call void @llvm.dbg.value(metadata i8 0, metadata !1127, metadata !DIExpression()), !dbg !1128
  %4 = trunc i32 %2 to i16, !dbg !1131
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1131

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1127, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1128
  br label %6, !dbg !1132

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106832 to i32*), %5 ], [ inttoptr (i32 -2097106848 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1134
  %9 = lshr i32 %8, %3, !dbg !1134
  %10 = trunc i32 %9 to i8, !dbg !1134
  %11 = and i8 %10, 1, !dbg !1134
  call void @llvm.dbg.value(metadata i8 %11, metadata !1127, metadata !DIExpression()), !dbg !1128
  br label %12, !dbg !1135

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1128
  ret i8 %13, !dbg !1136
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_DIN(i32 noundef %0) local_unnamed_addr #2 !dbg !1137 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1139, metadata !DIExpression()), !dbg !1143
  %2 = lshr i32 %0, 5, !dbg !1144
  call void @llvm.dbg.value(metadata i32 %2, metadata !1140, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1143
  %3 = and i32 %0, 31, !dbg !1145
  call void @llvm.dbg.value(metadata i32 %0, metadata !1141, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1143
  call void @llvm.dbg.value(metadata i8 0, metadata !1142, metadata !DIExpression()), !dbg !1143
  %4 = trunc i32 %2 to i16, !dbg !1146
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1146

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1142, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1143
  br label %6, !dbg !1147

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106748 to i32*), %5 ], [ inttoptr (i32 -2097106752 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 4, !dbg !1149
  %9 = lshr i32 %8, %3, !dbg !1149
  %10 = trunc i32 %9 to i8, !dbg !1149
  %11 = and i8 %10, 1, !dbg !1149
  call void @llvm.dbg.value(metadata i8 %11, metadata !1142, metadata !DIExpression()), !dbg !1143
  br label %12, !dbg !1150

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1143
  ret i8 %13, !dbg !1151
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local zeroext i8 @halgetGPIO_OutEnable(i32 noundef %0) local_unnamed_addr #2 !dbg !1152 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1154, metadata !DIExpression()), !dbg !1158
  %2 = lshr i32 %0, 5, !dbg !1159
  call void @llvm.dbg.value(metadata i32 %2, metadata !1155, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1158
  %3 = and i32 %0, 31, !dbg !1160
  call void @llvm.dbg.value(metadata i32 %0, metadata !1156, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1158
  call void @llvm.dbg.value(metadata i8 0, metadata !1157, metadata !DIExpression()), !dbg !1158
  %4 = trunc i32 %2 to i16, !dbg !1161
  switch i16 %4, label %12 [
    i16 0, label %6
    i16 1, label %5
  ], !dbg !1161

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i32 %9, metadata !1157, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1158
  br label %6, !dbg !1162

6:                                                ; preds = %1, %5
  %7 = phi i32* [ inttoptr (i32 -2097106784 to i32*), %5 ], [ inttoptr (i32 -2097106800 to i32*), %1 ]
  %8 = load volatile i32, i32* %7, align 16, !dbg !1164
  %9 = lshr i32 %8, %3, !dbg !1164
  %10 = trunc i32 %9 to i8, !dbg !1164
  %11 = and i8 %10, 1, !dbg !1164
  call void @llvm.dbg.value(metadata i8 %11, metadata !1157, metadata !DIExpression()), !dbg !1158
  br label %12, !dbg !1165

12:                                               ; preds = %1, %6
  %13 = phi i8 [ %11, %6 ], [ 0, %1 ], !dbg !1158
  ret i8 %13, !dbg !1166
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1167 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1171, metadata !DIExpression()), !dbg !1174
  %2 = lshr i32 %0, 5, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %2, metadata !1172, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1174
  %3 = trunc i32 %0 to i16, !dbg !1176
  %4 = and i16 %3, 31, !dbg !1176
  call void @llvm.dbg.value(metadata i16 %3, metadata !1173, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1174
  %5 = tail call i32 @halGPIO_PullDown_RESET(i32 noundef %0) #15, !dbg !1177
  %6 = trunc i32 %2 to i16, !dbg !1178
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1178

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1179
  br i1 %8, label %9, label %12, !dbg !1182

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1183
  %11 = shl nuw nsw i32 1, %10, !dbg !1184
  store volatile i32 %11, i32* inttoptr (i32 -2097106940 to i32*), align 4, !dbg !1184
  br label %49, !dbg !1186

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1187
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1187

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1188
  %16 = and i32 %15, -29, !dbg !1188
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1188
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1191
  %18 = or i32 %17, 2052, !dbg !1191
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1191
  br label %49, !dbg !1192

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1193
  %21 = and i32 %20, -29, !dbg !1193
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1193
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1196
  %23 = or i32 %22, 2052, !dbg !1196
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1196
  br label %49, !dbg !1197

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1198
  %26 = and i32 %25, -29, !dbg !1198
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1198
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1201
  %28 = or i32 %27, 2052, !dbg !1201
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1201
  br label %49, !dbg !1202

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1203
  %31 = and i32 %30, -29, !dbg !1203
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1203
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1206
  %33 = or i32 %32, 2052, !dbg !1206
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1206
  br label %49, !dbg !1207

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1208
  %36 = and i32 %35, -29, !dbg !1208
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1208
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1211
  %38 = or i32 %37, 2052, !dbg !1211
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1211
  br label %49, !dbg !1212

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1213
  br i1 %40, label %41, label %46, !dbg !1215

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1216
  %43 = and i32 %42, -29, !dbg !1216
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1216
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1218
  %45 = or i32 %44, 2052, !dbg !1218
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1218
  br label %49, !dbg !1219

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1220
  %48 = shl nuw i32 1, %47, !dbg !1220
  store volatile i32 %48, i32* inttoptr (i32 -2097106924 to i32*), align 4, !dbg !1220
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1174
  ret i32 %50, !dbg !1222
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1223 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1225, metadata !DIExpression()), !dbg !1228
  %2 = lshr i32 %0, 5, !dbg !1229
  call void @llvm.dbg.value(metadata i32 %2, metadata !1226, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1228
  %3 = trunc i32 %0 to i16, !dbg !1230
  %4 = and i16 %3, 31, !dbg !1230
  call void @llvm.dbg.value(metadata i16 %3, metadata !1227, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1228
  %5 = trunc i32 %2 to i16, !dbg !1231
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1231

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1232
  br i1 %7, label %8, label %11, !dbg !1235

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1236
  %10 = shl nuw nsw i32 1, %9, !dbg !1237
  store volatile i32 %10, i32* inttoptr (i32 -2097106888 to i32*), align 8, !dbg !1237
  br label %48, !dbg !1239

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1240
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1240

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1241
  %15 = and i32 %14, -29, !dbg !1241
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1241
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1244
  %17 = or i32 %16, 2048, !dbg !1244
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1244
  br label %48, !dbg !1245

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1246
  %20 = and i32 %19, -29, !dbg !1246
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1246
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1249
  %22 = or i32 %21, 2048, !dbg !1249
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1249
  br label %48, !dbg !1250

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1251
  %25 = and i32 %24, -29, !dbg !1251
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1251
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1254
  %27 = or i32 %26, 2048, !dbg !1254
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1254
  br label %48, !dbg !1255

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1256
  %30 = and i32 %29, -29, !dbg !1256
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1256
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1259
  %32 = or i32 %31, 2048, !dbg !1259
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1259
  br label %48, !dbg !1260

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1261
  %35 = and i32 %34, -29, !dbg !1261
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1261
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1264
  %37 = or i32 %36, 2048, !dbg !1264
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1264
  br label %48, !dbg !1265

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1266
  br i1 %39, label %40, label %45, !dbg !1268

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1269
  %42 = and i32 %41, -29, !dbg !1269
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1269
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1271
  %44 = or i32 %43, 2048, !dbg !1271
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1271
  br label %48, !dbg !1272

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1273
  %47 = shl nuw i32 1, %46, !dbg !1273
  store volatile i32 %47, i32* inttoptr (i32 -2097106872 to i32*), align 8, !dbg !1273
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1228
  ret i32 %49, !dbg !1275
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullUp_RESET(i32 noundef %0) local_unnamed_addr #0 !dbg !1276 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1278, metadata !DIExpression()), !dbg !1281
  %2 = lshr i32 %0, 5, !dbg !1282
  call void @llvm.dbg.value(metadata i32 %2, metadata !1279, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1281
  %3 = trunc i32 %0 to i16, !dbg !1283
  %4 = and i16 %3, 31, !dbg !1283
  call void @llvm.dbg.value(metadata i16 %3, metadata !1280, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1281
  %5 = trunc i32 %2 to i16, !dbg !1284
  switch i16 %5, label %48 [
    i16 0, label %6
    i16 1, label %38
  ], !dbg !1284

6:                                                ; preds = %1
  %7 = icmp ult i16 %4, 27, !dbg !1285
  br i1 %7, label %8, label %11, !dbg !1288

8:                                                ; preds = %6
  %9 = zext i16 %4 to i32, !dbg !1289
  %10 = shl nuw nsw i32 1, %9, !dbg !1290
  store volatile i32 %10, i32* inttoptr (i32 -2097106936 to i32*), align 8, !dbg !1290
  br label %48, !dbg !1292

11:                                               ; preds = %6
  %12 = trunc i32 %0 to i5, !dbg !1293
  switch i5 %12, label %33 [
    i5 -5, label %13
    i5 -4, label %18
    i5 -3, label %23
    i5 -2, label %28
  ], !dbg !1293

13:                                               ; preds = %11
  %14 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1294
  %15 = and i32 %14, -29, !dbg !1294
  store volatile i32 %15, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1294
  %16 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1297
  %17 = or i32 %16, 2048, !dbg !1297
  store volatile i32 %17, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1297
  br label %48, !dbg !1298

18:                                               ; preds = %11
  %19 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1299
  %20 = and i32 %19, -29, !dbg !1299
  store volatile i32 %20, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1299
  %21 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1302
  %22 = or i32 %21, 2048, !dbg !1302
  store volatile i32 %22, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1302
  br label %48, !dbg !1303

23:                                               ; preds = %11
  %24 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1304
  %25 = and i32 %24, -29, !dbg !1304
  store volatile i32 %25, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1304
  %26 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1307
  %27 = or i32 %26, 2048, !dbg !1307
  store volatile i32 %27, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1307
  br label %48, !dbg !1308

28:                                               ; preds = %11
  %29 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1309
  %30 = and i32 %29, -29, !dbg !1309
  store volatile i32 %30, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1309
  %31 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1312
  %32 = or i32 %31, 2048, !dbg !1312
  store volatile i32 %32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1312
  br label %48, !dbg !1313

33:                                               ; preds = %11
  %34 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1314
  %35 = and i32 %34, -29, !dbg !1314
  store volatile i32 %35, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1314
  %36 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1317
  %37 = or i32 %36, 2048, !dbg !1317
  store volatile i32 %37, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1317
  br label %48, !dbg !1318

38:                                               ; preds = %1
  %39 = icmp eq i16 %4, 0, !dbg !1319
  br i1 %39, label %40, label %45, !dbg !1321

40:                                               ; preds = %38
  %41 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1322
  %42 = and i32 %41, -29, !dbg !1322
  store volatile i32 %42, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1322
  %43 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1324
  %44 = or i32 %43, 2048, !dbg !1324
  store volatile i32 %44, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1324
  br label %48, !dbg !1325

45:                                               ; preds = %38
  %46 = zext i16 %4 to i32, !dbg !1326
  %47 = shl nuw i32 1, %46, !dbg !1326
  store volatile i32 %47, i32* inttoptr (i32 -2097106920 to i32*), align 8, !dbg !1326
  br label %48

48:                                               ; preds = %13, %23, %33, %28, %18, %8, %45, %40, %1
  %49 = phi i32 [ -1, %1 ], [ 0, %40 ], [ 0, %45 ], [ 0, %8 ], [ 0, %18 ], [ 0, %28 ], [ 0, %33 ], [ 0, %23 ], [ 0, %13 ], !dbg !1281
  ret i32 %49, !dbg !1328
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_PullDown_SET(i32 noundef %0) local_unnamed_addr #0 !dbg !1329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1331, metadata !DIExpression()), !dbg !1334
  %2 = lshr i32 %0, 5, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %2, metadata !1332, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1334
  %3 = trunc i32 %0 to i16, !dbg !1336
  %4 = and i16 %3, 31, !dbg !1336
  call void @llvm.dbg.value(metadata i16 %3, metadata !1333, metadata !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_stack_value)), !dbg !1334
  %5 = tail call i32 @halGPIO_PullUp_RESET(i32 noundef %0) #15, !dbg !1337
  %6 = trunc i32 %2 to i16, !dbg !1338
  switch i16 %6, label %49 [
    i16 0, label %7
    i16 1, label %39
  ], !dbg !1338

7:                                                ; preds = %1
  %8 = icmp ult i16 %4, 27, !dbg !1339
  br i1 %8, label %9, label %12, !dbg !1342

9:                                                ; preds = %7
  %10 = zext i16 %4 to i32, !dbg !1343
  %11 = shl nuw nsw i32 1, %10, !dbg !1344
  store volatile i32 %11, i32* inttoptr (i32 -2097106892 to i32*), align 4, !dbg !1344
  br label %49, !dbg !1346

12:                                               ; preds = %7
  %13 = trunc i32 %0 to i5, !dbg !1347
  switch i5 %13, label %34 [
    i5 -5, label %14
    i5 -4, label %19
    i5 -3, label %24
    i5 -2, label %29
  ], !dbg !1347

14:                                               ; preds = %12
  %15 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1348
  %16 = and i32 %15, -29, !dbg !1348
  store volatile i32 %16, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1348
  %17 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1351
  %18 = or i32 %17, 2068, !dbg !1351
  store volatile i32 %18, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1351
  br label %49, !dbg !1352

19:                                               ; preds = %12
  %20 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1353
  %21 = and i32 %20, -29, !dbg !1353
  store volatile i32 %21, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1353
  %22 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1356
  %23 = or i32 %22, 2068, !dbg !1356
  store volatile i32 %23, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1356
  br label %49, !dbg !1357

24:                                               ; preds = %12
  %25 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1358
  %26 = and i32 %25, -29, !dbg !1358
  store volatile i32 %26, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1358
  %27 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1361
  %28 = or i32 %27, 2068, !dbg !1361
  store volatile i32 %28, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1361
  br label %49, !dbg !1362

29:                                               ; preds = %12
  %30 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1363
  %31 = and i32 %30, -29, !dbg !1363
  store volatile i32 %31, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1363
  %32 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1366
  %33 = or i32 %32, 2068, !dbg !1366
  store volatile i32 %33, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1366
  br label %49, !dbg !1367

34:                                               ; preds = %12
  %35 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1368
  %36 = and i32 %35, -29, !dbg !1368
  store volatile i32 %36, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1368
  %37 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1371
  %38 = or i32 %37, 2068, !dbg !1371
  store volatile i32 %38, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1371
  br label %49, !dbg !1372

39:                                               ; preds = %1
  %40 = icmp eq i16 %4, 0, !dbg !1373
  br i1 %40, label %41, label %46, !dbg !1375

41:                                               ; preds = %39
  %42 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1376
  %43 = and i32 %42, -29, !dbg !1376
  store volatile i32 %43, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1376
  %44 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1378
  %45 = or i32 %44, 2068, !dbg !1378
  store volatile i32 %45, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1378
  br label %49, !dbg !1379

46:                                               ; preds = %39
  %47 = zext i16 %4 to i32, !dbg !1380
  %48 = shl nuw i32 1, %47, !dbg !1380
  store volatile i32 %48, i32* inttoptr (i32 -2097106876 to i32*), align 4, !dbg !1380
  br label %49

49:                                               ; preds = %14, %24, %34, %29, %19, %9, %46, %41, %1
  %50 = phi i32 [ -1, %1 ], [ 0, %41 ], [ 0, %46 ], [ 0, %9 ], [ 0, %19 ], [ 0, %29 ], [ 0, %34 ], [ 0, %24 ], [ 0, %14 ], !dbg !1334
  ret i32 %50, !dbg !1382
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @halGPIO_SetDriving(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !1383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1385, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata i8 %1, metadata !1386, metadata !DIExpression()), !dbg !1389
  %3 = lshr i32 %0, 4, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %3, metadata !1387, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1389
  %4 = trunc i32 %0 to i16, !dbg !1391
  %5 = and i16 %4, 15, !dbg !1391
  call void @llvm.dbg.value(metadata i16 %4, metadata !1388, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1389
  %6 = trunc i32 %3 to i16, !dbg !1392
  switch i16 %6, label %131 [
    i16 0, label %7
    i16 1, label %20
    i16 2, label %92
    i16 3, label %118
  ], !dbg !1392

7:                                                ; preds = %2
  %8 = shl nuw nsw i16 %5, 1, !dbg !1393
  %9 = zext i16 %8 to i32, !dbg !1393
  %10 = shl nuw i32 3, %9, !dbg !1395
  %11 = xor i32 %10, -1, !dbg !1396
  %12 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1397
  %13 = and i32 %12, %11, !dbg !1397
  store volatile i32 %13, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1397
  %14 = lshr i8 %1, 2, !dbg !1398
  %15 = zext i8 %14 to i32, !dbg !1398
  %16 = add nsw i32 %15, -1, !dbg !1399
  %17 = shl i32 %16, %9, !dbg !1400
  %18 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1401
  %19 = or i32 %18, %17, !dbg !1401
  store volatile i32 %19, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1401
  br label %131, !dbg !1402

20:                                               ; preds = %2
  %21 = icmp ult i16 %5, 11, !dbg !1403
  br i1 %21, label %22, label %35, !dbg !1405

22:                                               ; preds = %20
  %23 = shl nuw nsw i16 %5, 1, !dbg !1406
  %24 = zext i16 %23 to i32, !dbg !1406
  %25 = shl nuw nsw i32 3, %24, !dbg !1408
  %26 = xor i32 %25, -1, !dbg !1409
  %27 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1410
  %28 = and i32 %27, %26, !dbg !1410
  store volatile i32 %28, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1410
  %29 = lshr i8 %1, 2, !dbg !1411
  %30 = zext i8 %29 to i32, !dbg !1411
  %31 = add nsw i32 %30, -1, !dbg !1412
  %32 = shl nsw i32 %31, %24, !dbg !1413
  %33 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1414
  %34 = or i32 %33, %32, !dbg !1414
  store volatile i32 %34, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1414
  br label %131, !dbg !1415

35:                                               ; preds = %20
  %36 = trunc i32 %0 to i4, !dbg !1416
  switch i4 %36, label %81 [
    i4 -5, label %37
    i4 -4, label %48
    i4 -3, label %59
    i4 -2, label %70
  ], !dbg !1416

37:                                               ; preds = %35
  %38 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1417
  %39 = and i32 %38, -449, !dbg !1417
  store volatile i32 %39, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1417
  %40 = lshr i8 %1, 1, !dbg !1420
  %41 = zext i8 %40 to i32, !dbg !1420
  %42 = shl nuw nsw i32 %41, 6, !dbg !1421
  %43 = add nsw i32 %42, -64, !dbg !1421
  %44 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1422
  %45 = or i32 %44, %43, !dbg !1422
  store volatile i32 %45, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1422
  %46 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1423
  %47 = or i32 %46, 2048, !dbg !1423
  store volatile i32 %47, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1423
  br label %131, !dbg !1424

48:                                               ; preds = %35
  %49 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1425
  %50 = and i32 %49, -449, !dbg !1425
  store volatile i32 %50, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1425
  %51 = lshr i8 %1, 1, !dbg !1428
  %52 = zext i8 %51 to i32, !dbg !1428
  %53 = shl nuw nsw i32 %52, 6, !dbg !1429
  %54 = add nsw i32 %53, -64, !dbg !1429
  %55 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1430
  %56 = or i32 %55, %54, !dbg !1430
  store volatile i32 %56, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1430
  %57 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1431
  %58 = or i32 %57, 2048, !dbg !1431
  store volatile i32 %58, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1431
  br label %131, !dbg !1432

59:                                               ; preds = %35
  %60 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1433
  %61 = and i32 %60, -449, !dbg !1433
  store volatile i32 %61, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1433
  %62 = lshr i8 %1, 1, !dbg !1436
  %63 = zext i8 %62 to i32, !dbg !1436
  %64 = shl nuw nsw i32 %63, 6, !dbg !1437
  %65 = add nsw i32 %64, -64, !dbg !1437
  %66 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1438
  %67 = or i32 %66, %65, !dbg !1438
  store volatile i32 %67, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1438
  %68 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1439
  %69 = or i32 %68, 2048, !dbg !1439
  store volatile i32 %69, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1439
  br label %131, !dbg !1440

70:                                               ; preds = %35
  %71 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1441
  %72 = and i32 %71, -449, !dbg !1441
  store volatile i32 %72, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1441
  %73 = lshr i8 %1, 1, !dbg !1444
  %74 = zext i8 %73 to i32, !dbg !1444
  %75 = shl nuw nsw i32 %74, 6, !dbg !1445
  %76 = add nsw i32 %75, -64, !dbg !1445
  %77 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1446
  %78 = or i32 %77, %76, !dbg !1446
  store volatile i32 %78, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1446
  %79 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1447
  %80 = or i32 %79, 2048, !dbg !1447
  store volatile i32 %80, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1447
  br label %131, !dbg !1448

81:                                               ; preds = %35
  %82 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1449
  %83 = and i32 %82, -449, !dbg !1449
  store volatile i32 %83, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1449
  %84 = lshr i8 %1, 1, !dbg !1452
  %85 = zext i8 %84 to i32, !dbg !1452
  %86 = shl nuw nsw i32 %85, 6, !dbg !1453
  %87 = add nsw i32 %86, -64, !dbg !1453
  %88 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1454
  %89 = or i32 %88, %87, !dbg !1454
  store volatile i32 %89, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1454
  %90 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1455
  %91 = or i32 %90, 2048, !dbg !1455
  store volatile i32 %91, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1455
  br label %131, !dbg !1456

92:                                               ; preds = %2
  %93 = icmp eq i16 %5, 0, !dbg !1457
  br i1 %93, label %94, label %105, !dbg !1459

94:                                               ; preds = %92
  %95 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1460
  %96 = and i32 %95, -449, !dbg !1460
  store volatile i32 %96, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1460
  %97 = lshr i8 %1, 1, !dbg !1462
  %98 = zext i8 %97 to i32, !dbg !1462
  %99 = shl nuw nsw i32 %98, 6, !dbg !1463
  %100 = add nsw i32 %99, -64, !dbg !1463
  %101 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1464
  %102 = or i32 %101, %100, !dbg !1464
  store volatile i32 %102, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1464
  %103 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1465
  %104 = or i32 %103, 2048, !dbg !1465
  store volatile i32 %104, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1465
  br label %131, !dbg !1466

105:                                              ; preds = %92
  %106 = shl nuw nsw i16 %5, 1, !dbg !1467
  %107 = zext i16 %106 to i32, !dbg !1467
  %108 = shl nuw i32 3, %107, !dbg !1469
  %109 = xor i32 %108, -1, !dbg !1470
  %110 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1471
  %111 = and i32 %110, %109, !dbg !1471
  store volatile i32 %111, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1471
  %112 = lshr i8 %1, 2, !dbg !1472
  %113 = zext i8 %112 to i32, !dbg !1472
  %114 = add nsw i32 %113, -1, !dbg !1473
  %115 = shl i32 %114, %107, !dbg !1474
  %116 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1475
  %117 = or i32 %116, %115, !dbg !1475
  store volatile i32 %117, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1475
  br label %131

118:                                              ; preds = %2
  %119 = shl nuw nsw i16 %5, 1, !dbg !1476
  %120 = zext i16 %119 to i32, !dbg !1476
  %121 = shl nuw i32 3, %120, !dbg !1477
  %122 = xor i32 %121, -1, !dbg !1478
  %123 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1479
  %124 = and i32 %123, %122, !dbg !1479
  store volatile i32 %124, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1479
  %125 = lshr i8 %1, 2, !dbg !1480
  %126 = zext i8 %125 to i32, !dbg !1480
  %127 = add nsw i32 %126, -1, !dbg !1481
  %128 = shl i32 %127, %120, !dbg !1482
  %129 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1483
  %130 = or i32 %129, %128, !dbg !1483
  store volatile i32 %130, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1483
  br label %131, !dbg !1484

131:                                              ; preds = %7, %118, %37, %59, %81, %70, %48, %22, %105, %94, %2
  %132 = phi i32 [ -1, %2 ], [ 0, %94 ], [ 0, %105 ], [ 0, %22 ], [ 0, %48 ], [ 0, %70 ], [ 0, %81 ], [ 0, %59 ], [ 0, %37 ], [ 0, %118 ], [ 0, %7 ], !dbg !1389
  ret i32 %132, !dbg !1485
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @halGPIO_GetDriving(i32 noundef %0, i8* nocapture noundef writeonly %1) local_unnamed_addr #2 !dbg !1486 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1491, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i8* %1, metadata !1492, metadata !DIExpression()), !dbg !1496
  %3 = lshr i32 %0, 4, !dbg !1497
  call void @llvm.dbg.value(metadata i32 %3, metadata !1493, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1496
  %4 = trunc i32 %0 to i16, !dbg !1498
  %5 = and i16 %4, 15, !dbg !1498
  call void @llvm.dbg.value(metadata i16 %4, metadata !1494, metadata !DIExpression(DW_OP_constu, 15, DW_OP_and, DW_OP_stack_value)), !dbg !1496
  %6 = trunc i32 %3 to i16, !dbg !1499
  switch i16 %6, label %91 [
    i16 0, label %7
    i16 1, label %17
    i16 2, label %61
    i16 3, label %79
  ], !dbg !1499

7:                                                ; preds = %2
  %8 = load volatile i32, i32* inttoptr (i32 -2097106736 to i32*), align 16, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %8, metadata !1495, metadata !DIExpression()), !dbg !1496
  %9 = shl nuw nsw i16 %5, 1, !dbg !1502
  %10 = zext i16 %9 to i32, !dbg !1502
  %11 = shl nuw i32 3, %10, !dbg !1503
  %12 = and i32 %8, %11, !dbg !1504
  call void @llvm.dbg.value(metadata i32 %12, metadata !1495, metadata !DIExpression()), !dbg !1496
  %13 = lshr i32 %12, %10, !dbg !1505
  %14 = trunc i32 %13 to i8, !dbg !1506
  %15 = shl i8 %14, 2, !dbg !1506
  %16 = add i8 %15, 4, !dbg !1506
  br label %89, !dbg !1507

17:                                               ; preds = %2
  %18 = icmp ult i16 %5, 11, !dbg !1508
  br i1 %18, label %19, label %29, !dbg !1510

19:                                               ; preds = %17
  %20 = load volatile i32, i32* inttoptr (i32 -2097106732 to i32*), align 4, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %20, metadata !1495, metadata !DIExpression()), !dbg !1496
  %21 = shl nuw nsw i16 %5, 1, !dbg !1513
  %22 = zext i16 %21 to i32, !dbg !1513
  %23 = shl nuw nsw i32 3, %22, !dbg !1514
  %24 = and i32 %20, %23, !dbg !1515
  call void @llvm.dbg.value(metadata i32 %24, metadata !1495, metadata !DIExpression()), !dbg !1496
  %25 = lshr i32 %24, %22, !dbg !1516
  %26 = trunc i32 %25 to i8, !dbg !1517
  %27 = shl i8 %26, 2, !dbg !1517
  %28 = add i8 %27, 4, !dbg !1517
  br label %89, !dbg !1518

29:                                               ; preds = %17
  %30 = trunc i32 %0 to i4, !dbg !1519
  switch i4 %30, label %55 [
    i4 -5, label %31
    i4 -4, label %37
    i4 -3, label %43
    i4 -2, label %49
  ], !dbg !1519

31:                                               ; preds = %29
  %32 = load volatile i32, i32* inttoptr (i32 -2130563000 to i32*), align 8, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %32, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %32, metadata !1495, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1496
  %33 = lshr i32 %32, 5, !dbg !1523
  %34 = trunc i32 %33 to i8, !dbg !1524
  %35 = and i8 %34, 14, !dbg !1524
  %36 = add nuw nsw i8 %35, 2, !dbg !1524
  br label %89, !dbg !1525

37:                                               ; preds = %29
  %38 = load volatile i32, i32* inttoptr (i32 -2130562996 to i32*), align 4, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %38, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %38, metadata !1495, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1496
  %39 = lshr i32 %38, 5, !dbg !1529
  %40 = trunc i32 %39 to i8, !dbg !1530
  %41 = and i8 %40, 14, !dbg !1530
  %42 = add nuw nsw i8 %41, 2, !dbg !1530
  br label %89, !dbg !1531

43:                                               ; preds = %29
  %44 = load volatile i32, i32* inttoptr (i32 -2130562980 to i32*), align 4, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %44, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %44, metadata !1495, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1496
  %45 = lshr i32 %44, 5, !dbg !1535
  %46 = trunc i32 %45 to i8, !dbg !1536
  %47 = and i8 %46, 14, !dbg !1536
  %48 = add nuw nsw i8 %47, 2, !dbg !1536
  br label %89, !dbg !1537

49:                                               ; preds = %29
  %50 = load volatile i32, i32* inttoptr (i32 -2130562984 to i32*), align 8, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %50, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %50, metadata !1495, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1496
  %51 = lshr i32 %50, 5, !dbg !1541
  %52 = trunc i32 %51 to i8, !dbg !1542
  %53 = and i8 %52, 14, !dbg !1542
  %54 = add nuw nsw i8 %53, 2, !dbg !1542
  br label %89, !dbg !1543

55:                                               ; preds = %29
  %56 = load volatile i32, i32* inttoptr (i32 -2130562988 to i32*), align 4, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %56, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %56, metadata !1495, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1496
  %57 = lshr i32 %56, 5, !dbg !1547
  %58 = trunc i32 %57 to i8, !dbg !1548
  %59 = and i8 %58, 14, !dbg !1548
  %60 = add nuw nsw i8 %59, 2, !dbg !1548
  br label %89, !dbg !1549

61:                                               ; preds = %2
  %62 = icmp eq i16 %5, 0, !dbg !1550
  br i1 %62, label %63, label %69, !dbg !1552

63:                                               ; preds = %61
  %64 = load volatile i32, i32* inttoptr (i32 -2130562992 to i32*), align 16, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %64, metadata !1495, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %64, metadata !1495, metadata !DIExpression(DW_OP_constu, 448, DW_OP_and, DW_OP_stack_value)), !dbg !1496
  %65 = lshr i32 %64, 5, !dbg !1555
  %66 = trunc i32 %65 to i8, !dbg !1556
  %67 = and i8 %66, 14, !dbg !1556
  %68 = add nuw nsw i8 %67, 2, !dbg !1556
  br label %89, !dbg !1557

69:                                               ; preds = %61
  %70 = load volatile i32, i32* inttoptr (i32 -2097106728 to i32*), align 8, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %70, metadata !1495, metadata !DIExpression()), !dbg !1496
  %71 = shl nuw nsw i16 %5, 1, !dbg !1560
  %72 = zext i16 %71 to i32, !dbg !1560
  %73 = shl nuw i32 3, %72, !dbg !1561
  %74 = and i32 %70, %73, !dbg !1562
  call void @llvm.dbg.value(metadata i32 %74, metadata !1495, metadata !DIExpression()), !dbg !1496
  %75 = lshr i32 %74, %72, !dbg !1563
  %76 = trunc i32 %75 to i8, !dbg !1564
  %77 = shl i8 %76, 2, !dbg !1564
  %78 = add i8 %77, 4, !dbg !1564
  br label %89

79:                                               ; preds = %2
  %80 = load volatile i32, i32* inttoptr (i32 -2097106724 to i32*), align 4, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %80, metadata !1495, metadata !DIExpression()), !dbg !1496
  %81 = shl nuw nsw i16 %5, 1, !dbg !1566
  %82 = zext i16 %81 to i32, !dbg !1566
  %83 = shl nuw i32 3, %82, !dbg !1567
  %84 = and i32 %80, %83, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %84, metadata !1495, metadata !DIExpression()), !dbg !1496
  %85 = lshr i32 %84, %82, !dbg !1569
  %86 = trunc i32 %85 to i8, !dbg !1570
  %87 = shl i8 %86, 2, !dbg !1570
  %88 = add i8 %87, 4, !dbg !1570
  br label %89, !dbg !1571

89:                                               ; preds = %63, %69, %19, %37, %49, %55, %43, %31, %79, %7
  %90 = phi i8 [ %16, %7 ], [ %88, %79 ], [ %36, %31 ], [ %48, %43 ], [ %60, %55 ], [ %54, %49 ], [ %42, %37 ], [ %28, %19 ], [ %78, %69 ], [ %68, %63 ]
  store i8 %90, i8* %1, align 1, !dbg !1572
  br label %91, !dbg !1573

91:                                               ; preds = %89, %2
  %92 = phi i32 [ -1, %2 ], [ 0, %89 ], !dbg !1496
  ret i32 %92, !dbg !1573
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @topPAD_Control_GPIO(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1579, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 %1, metadata !1580, metadata !DIExpression()), !dbg !1583
  %3 = lshr i32 %0, 5, !dbg !1584
  call void @llvm.dbg.value(metadata i32 %3, metadata !1581, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1583
  %4 = trunc i32 %0 to i16, !dbg !1585
  %5 = and i16 %4, 31, !dbg !1585
  call void @llvm.dbg.value(metadata i16 %5, metadata !1582, metadata !DIExpression()), !dbg !1583
  switch i32 %1, label %32 [
    i32 1, label %6
    i32 0, label %18
  ], !dbg !1586

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i32 %3, metadata !1581, metadata !DIExpression()), !dbg !1583
  %7 = trunc i32 %3 to i16, !dbg !1587
  switch i16 %7, label %32 [
    i16 0, label %8
    i16 1, label %13
  ], !dbg !1587

8:                                                ; preds = %6
  %9 = zext i16 %5 to i32, !dbg !1590
  %10 = shl nuw i32 1, %9, !dbg !1592
  %11 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1593
  %12 = or i32 %11, %10, !dbg !1593
  store volatile i32 %12, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1593
  br label %32, !dbg !1594

13:                                               ; preds = %6
  %14 = zext i16 %5 to i32, !dbg !1595
  %15 = shl nuw i32 1, %14, !dbg !1596
  %16 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1597
  %17 = or i32 %16, %15, !dbg !1597
  store volatile i32 %17, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1597
  br label %32, !dbg !1598

18:                                               ; preds = %2
  %19 = trunc i32 %3 to i16, !dbg !1599
  switch i16 %19, label %32 [
    i16 0, label %20
    i16 1, label %26
  ], !dbg !1599

20:                                               ; preds = %18
  %21 = zext i16 %5 to i32, !dbg !1602
  %22 = shl nuw i32 1, %21, !dbg !1604
  %23 = xor i32 %22, -1, !dbg !1605
  %24 = load volatile i32, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1606
  %25 = and i32 %24, %23, !dbg !1606
  store volatile i32 %25, i32* inttoptr (i32 -2130571136 to i32*), align 128, !dbg !1606
  br label %32, !dbg !1607

26:                                               ; preds = %18
  %27 = zext i16 %5 to i32, !dbg !1608
  %28 = shl nuw i32 1, %27, !dbg !1609
  %29 = xor i32 %28, -1, !dbg !1610
  %30 = load volatile i32, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1611
  %31 = and i32 %30, %29, !dbg !1611
  store volatile i32 %31, i32* inttoptr (i32 -2130571132 to i32*), align 4, !dbg !1611
  br label %32, !dbg !1612

32:                                               ; preds = %2, %18, %26, %20, %8, %13, %6
  ret void, !dbg !1613
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !1614 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1620, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.value(metadata i8 %1, metadata !1621, metadata !DIExpression()), !dbg !1623
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
  ], !dbg !1624

3:                                                ; preds = %2
  %4 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %4, metadata !1622, metadata !DIExpression()), !dbg !1623
  %5 = and i32 %4, -16, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %5, metadata !1622, metadata !DIExpression()), !dbg !1623
  %6 = zext i8 %1 to i32, !dbg !1628
  %7 = or i32 %5, %6, !dbg !1629
  store volatile i32 %7, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1630
  br label %187, !dbg !1631

8:                                                ; preds = %2
  %9 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %9, metadata !1622, metadata !DIExpression()), !dbg !1623
  %10 = and i32 %9, -241, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %10, metadata !1622, metadata !DIExpression()), !dbg !1623
  %11 = zext i8 %1 to i32, !dbg !1634
  %12 = shl nuw nsw i32 %11, 4, !dbg !1635
  %13 = or i32 %10, %12, !dbg !1636
  store volatile i32 %13, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1637
  br label %187, !dbg !1638

14:                                               ; preds = %2
  %15 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %15, metadata !1622, metadata !DIExpression()), !dbg !1623
  %16 = and i32 %15, -3841, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %16, metadata !1622, metadata !DIExpression()), !dbg !1623
  %17 = zext i8 %1 to i32, !dbg !1641
  %18 = shl nuw nsw i32 %17, 8, !dbg !1642
  %19 = or i32 %16, %18, !dbg !1643
  store volatile i32 %19, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1644
  br label %187, !dbg !1645

20:                                               ; preds = %2
  %21 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1646
  call void @llvm.dbg.value(metadata i32 %21, metadata !1622, metadata !DIExpression()), !dbg !1623
  %22 = and i32 %21, -61441, !dbg !1647
  call void @llvm.dbg.value(metadata i32 %22, metadata !1622, metadata !DIExpression()), !dbg !1623
  %23 = zext i8 %1 to i32, !dbg !1648
  %24 = shl nuw nsw i32 %23, 12, !dbg !1649
  %25 = or i32 %22, %24, !dbg !1650
  store volatile i32 %25, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1651
  br label %187, !dbg !1652

26:                                               ; preds = %2
  %27 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %27, metadata !1622, metadata !DIExpression()), !dbg !1623
  %28 = and i32 %27, -983041, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %28, metadata !1622, metadata !DIExpression()), !dbg !1623
  %29 = zext i8 %1 to i32, !dbg !1655
  %30 = shl nuw nsw i32 %29, 16, !dbg !1656
  %31 = or i32 %28, %30, !dbg !1657
  store volatile i32 %31, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1658
  br label %187, !dbg !1659

32:                                               ; preds = %2
  %33 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %33, metadata !1622, metadata !DIExpression()), !dbg !1623
  %34 = and i32 %33, -15728641, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %34, metadata !1622, metadata !DIExpression()), !dbg !1623
  %35 = zext i8 %1 to i32, !dbg !1662
  %36 = shl nuw nsw i32 %35, 20, !dbg !1663
  %37 = or i32 %34, %36, !dbg !1664
  store volatile i32 %37, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1665
  br label %187, !dbg !1666

38:                                               ; preds = %2
  %39 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1667
  call void @llvm.dbg.value(metadata i32 %39, metadata !1622, metadata !DIExpression()), !dbg !1623
  %40 = and i32 %39, -251658241, !dbg !1668
  call void @llvm.dbg.value(metadata i32 %40, metadata !1622, metadata !DIExpression()), !dbg !1623
  %41 = zext i8 %1 to i32, !dbg !1669
  %42 = shl nuw i32 %41, 24, !dbg !1670
  %43 = or i32 %40, %42, !dbg !1671
  store volatile i32 %43, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1672
  br label %187, !dbg !1673

44:                                               ; preds = %2
  %45 = load volatile i32, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %45, metadata !1622, metadata !DIExpression()), !dbg !1623
  %46 = and i32 %45, 268435455, !dbg !1675
  call void @llvm.dbg.value(metadata i32 %46, metadata !1622, metadata !DIExpression()), !dbg !1623
  %47 = zext i8 %1 to i32, !dbg !1676
  %48 = shl i32 %47, 28, !dbg !1677
  %49 = or i32 %46, %48, !dbg !1678
  store volatile i32 %49, i32* inttoptr (i32 -2130563040 to i32*), align 32, !dbg !1679
  br label %187, !dbg !1680

50:                                               ; preds = %2
  %51 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %51, metadata !1622, metadata !DIExpression()), !dbg !1623
  %52 = and i32 %51, -16, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %52, metadata !1622, metadata !DIExpression()), !dbg !1623
  %53 = zext i8 %1 to i32, !dbg !1683
  %54 = or i32 %52, %53, !dbg !1684
  store volatile i32 %54, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1685
  br label %187, !dbg !1686

55:                                               ; preds = %2
  %56 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %56, metadata !1622, metadata !DIExpression()), !dbg !1623
  %57 = and i32 %56, -241, !dbg !1688
  call void @llvm.dbg.value(metadata i32 %57, metadata !1622, metadata !DIExpression()), !dbg !1623
  %58 = zext i8 %1 to i32, !dbg !1689
  %59 = shl nuw nsw i32 %58, 4, !dbg !1690
  %60 = or i32 %57, %59, !dbg !1691
  store volatile i32 %60, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1692
  br label %187, !dbg !1693

61:                                               ; preds = %2
  %62 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1694
  call void @llvm.dbg.value(metadata i32 %62, metadata !1622, metadata !DIExpression()), !dbg !1623
  %63 = and i32 %62, -3841, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %63, metadata !1622, metadata !DIExpression()), !dbg !1623
  %64 = zext i8 %1 to i32, !dbg !1696
  %65 = shl nuw nsw i32 %64, 8, !dbg !1697
  %66 = or i32 %63, %65, !dbg !1698
  store volatile i32 %66, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1699
  br label %187, !dbg !1700

67:                                               ; preds = %2
  %68 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %68, metadata !1622, metadata !DIExpression()), !dbg !1623
  %69 = and i32 %68, -61441, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %69, metadata !1622, metadata !DIExpression()), !dbg !1623
  %70 = zext i8 %1 to i32, !dbg !1703
  %71 = shl nuw nsw i32 %70, 12, !dbg !1704
  %72 = or i32 %69, %71, !dbg !1705
  store volatile i32 %72, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1706
  switch i8 %1, label %187 [
    i8 5, label %73
    i8 4, label %73
    i8 2, label %73
  ], !dbg !1707

73:                                               ; preds = %67, %67, %67
  %74 = tail call i32 @halGPIO_ConfDirection(i32 noundef 27, i8 noundef zeroext 0) #16, !dbg !1709
  br label %187, !dbg !1711

75:                                               ; preds = %2
  %76 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %76, metadata !1622, metadata !DIExpression()), !dbg !1623
  %77 = and i32 %76, -983041, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %77, metadata !1622, metadata !DIExpression()), !dbg !1623
  %78 = zext i8 %1 to i32, !dbg !1714
  %79 = shl nuw nsw i32 %78, 16, !dbg !1715
  %80 = or i32 %77, %79, !dbg !1716
  store volatile i32 %80, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1717
  %81 = and i8 %1, -2, !dbg !1718
  %82 = icmp eq i8 %81, 4, !dbg !1718
  br i1 %82, label %83, label %187, !dbg !1718

83:                                               ; preds = %75
  %84 = tail call i32 @halGPIO_ConfDirection(i32 noundef 28, i8 noundef zeroext 0) #16, !dbg !1720
  br label %187, !dbg !1722

85:                                               ; preds = %2
  %86 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1723
  call void @llvm.dbg.value(metadata i32 %86, metadata !1622, metadata !DIExpression()), !dbg !1623
  %87 = and i32 %86, -15728641, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %87, metadata !1622, metadata !DIExpression()), !dbg !1623
  %88 = zext i8 %1 to i32, !dbg !1725
  %89 = shl nuw nsw i32 %88, 20, !dbg !1726
  %90 = or i32 %87, %89, !dbg !1727
  store volatile i32 %90, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1728
  %91 = icmp eq i8 %1, 6, !dbg !1729
  br i1 %91, label %92, label %187, !dbg !1731

92:                                               ; preds = %85
  %93 = tail call i32 @halGPIO_ConfDirection(i32 noundef 29, i8 noundef zeroext 0) #16, !dbg !1732
  br label %187, !dbg !1734

94:                                               ; preds = %2
  %95 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %95, metadata !1622, metadata !DIExpression()), !dbg !1623
  %96 = and i32 %95, -251658241, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %96, metadata !1622, metadata !DIExpression()), !dbg !1623
  %97 = zext i8 %1 to i32, !dbg !1737
  %98 = shl nuw i32 %97, 24, !dbg !1738
  %99 = or i32 %96, %98, !dbg !1739
  store volatile i32 %99, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1740
  switch i8 %1, label %187 [
    i8 7, label %100
    i8 4, label %100
  ], !dbg !1741

100:                                              ; preds = %94, %94
  %101 = tail call i32 @halGPIO_ConfDirection(i32 noundef 30, i8 noundef zeroext 0) #16, !dbg !1743
  br label %187, !dbg !1745

102:                                              ; preds = %2
  %103 = load volatile i32, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1746
  call void @llvm.dbg.value(metadata i32 %103, metadata !1622, metadata !DIExpression()), !dbg !1623
  %104 = and i32 %103, 268435455, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %104, metadata !1622, metadata !DIExpression()), !dbg !1623
  %105 = zext i8 %1 to i32, !dbg !1748
  %106 = shl i32 %105, 28, !dbg !1749
  %107 = or i32 %104, %106, !dbg !1750
  store volatile i32 %107, i32* inttoptr (i32 -2130563028 to i32*), align 4, !dbg !1751
  %108 = and i8 %1, -3, !dbg !1752
  %109 = icmp eq i8 %108, 4, !dbg !1752
  br i1 %109, label %110, label %187, !dbg !1752

110:                                              ; preds = %102
  %111 = tail call i32 @halGPIO_ConfDirection(i32 noundef 31, i8 noundef zeroext 0) #16, !dbg !1754
  br label %187, !dbg !1756

112:                                              ; preds = %2
  %113 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %113, metadata !1622, metadata !DIExpression()), !dbg !1623
  %114 = and i32 %113, -16, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %114, metadata !1622, metadata !DIExpression()), !dbg !1623
  %115 = zext i8 %1 to i32, !dbg !1759
  %116 = or i32 %114, %115, !dbg !1760
  store volatile i32 %116, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1761
  %117 = and i8 %1, -3, !dbg !1762
  %118 = icmp eq i8 %117, 4, !dbg !1762
  br i1 %118, label %119, label %187, !dbg !1762

119:                                              ; preds = %112
  %120 = tail call i32 @halGPIO_ConfDirection(i32 noundef 32, i8 noundef zeroext 0) #16, !dbg !1764
  br label %187, !dbg !1766

121:                                              ; preds = %2
  %122 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1767
  call void @llvm.dbg.value(metadata i32 %122, metadata !1622, metadata !DIExpression()), !dbg !1623
  %123 = and i32 %122, -241, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %123, metadata !1622, metadata !DIExpression()), !dbg !1623
  %124 = zext i8 %1 to i32, !dbg !1769
  %125 = shl nuw nsw i32 %124, 4, !dbg !1770
  %126 = or i32 %123, %125, !dbg !1771
  store volatile i32 %126, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1772
  br label %187, !dbg !1773

127:                                              ; preds = %2
  %128 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %128, metadata !1622, metadata !DIExpression()), !dbg !1623
  %129 = and i32 %128, -3841, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %129, metadata !1622, metadata !DIExpression()), !dbg !1623
  %130 = zext i8 %1 to i32, !dbg !1776
  %131 = shl nuw nsw i32 %130, 8, !dbg !1777
  %132 = or i32 %129, %131, !dbg !1778
  store volatile i32 %132, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1779
  br label %187, !dbg !1780

133:                                              ; preds = %2
  %134 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1781
  call void @llvm.dbg.value(metadata i32 %134, metadata !1622, metadata !DIExpression()), !dbg !1623
  %135 = and i32 %134, -61441, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %135, metadata !1622, metadata !DIExpression()), !dbg !1623
  %136 = zext i8 %1 to i32, !dbg !1783
  %137 = shl nuw nsw i32 %136, 12, !dbg !1784
  %138 = or i32 %135, %137, !dbg !1785
  store volatile i32 %138, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1786
  br label %187, !dbg !1787

139:                                              ; preds = %2
  %140 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %140, metadata !1622, metadata !DIExpression()), !dbg !1623
  %141 = and i32 %140, -983041, !dbg !1789
  call void @llvm.dbg.value(metadata i32 %141, metadata !1622, metadata !DIExpression()), !dbg !1623
  %142 = zext i8 %1 to i32, !dbg !1790
  %143 = shl nuw nsw i32 %142, 16, !dbg !1791
  %144 = or i32 %141, %143, !dbg !1792
  store volatile i32 %144, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1793
  br label %187, !dbg !1794

145:                                              ; preds = %2
  %146 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %146, metadata !1622, metadata !DIExpression()), !dbg !1623
  %147 = and i32 %146, -15728641, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %147, metadata !1622, metadata !DIExpression()), !dbg !1623
  %148 = zext i8 %1 to i32, !dbg !1797
  %149 = shl nuw nsw i32 %148, 20, !dbg !1798
  %150 = or i32 %147, %149, !dbg !1799
  store volatile i32 %150, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1800
  br label %187, !dbg !1801

151:                                              ; preds = %2
  %152 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1802
  call void @llvm.dbg.value(metadata i32 %152, metadata !1622, metadata !DIExpression()), !dbg !1623
  %153 = and i32 %152, -251658241, !dbg !1803
  call void @llvm.dbg.value(metadata i32 %153, metadata !1622, metadata !DIExpression()), !dbg !1623
  %154 = zext i8 %1 to i32, !dbg !1804
  %155 = shl nuw i32 %154, 24, !dbg !1805
  %156 = or i32 %153, %155, !dbg !1806
  store volatile i32 %156, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1807
  br label %187, !dbg !1808

157:                                              ; preds = %2
  %158 = load volatile i32, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %158, metadata !1622, metadata !DIExpression()), !dbg !1623
  %159 = and i32 %158, 268435455, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %159, metadata !1622, metadata !DIExpression()), !dbg !1623
  %160 = zext i8 %1 to i32, !dbg !1811
  %161 = shl i32 %160, 28, !dbg !1812
  %162 = or i32 %159, %161, !dbg !1813
  store volatile i32 %162, i32* inttoptr (i32 -2130563024 to i32*), align 16, !dbg !1814
  br label %187, !dbg !1815

163:                                              ; preds = %2
  %164 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %164, metadata !1622, metadata !DIExpression()), !dbg !1623
  %165 = and i32 %164, -241, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %165, metadata !1622, metadata !DIExpression()), !dbg !1623
  %166 = zext i8 %1 to i32, !dbg !1818
  %167 = shl nuw nsw i32 %166, 4, !dbg !1819
  %168 = or i32 %165, %167, !dbg !1820
  store volatile i32 %168, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1821
  br label %187, !dbg !1822

169:                                              ; preds = %2
  %170 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1823
  call void @llvm.dbg.value(metadata i32 %170, metadata !1622, metadata !DIExpression()), !dbg !1623
  %171 = and i32 %170, -3841, !dbg !1824
  call void @llvm.dbg.value(metadata i32 %171, metadata !1622, metadata !DIExpression()), !dbg !1623
  %172 = zext i8 %1 to i32, !dbg !1825
  %173 = shl nuw nsw i32 %172, 8, !dbg !1826
  %174 = or i32 %171, %173, !dbg !1827
  store volatile i32 %174, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1828
  br label %187, !dbg !1829

175:                                              ; preds = %2
  %176 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %176, metadata !1622, metadata !DIExpression()), !dbg !1623
  %177 = and i32 %176, -61441, !dbg !1831
  call void @llvm.dbg.value(metadata i32 %177, metadata !1622, metadata !DIExpression()), !dbg !1623
  %178 = zext i8 %1 to i32, !dbg !1832
  %179 = shl nuw nsw i32 %178, 12, !dbg !1833
  %180 = or i32 %177, %179, !dbg !1834
  store volatile i32 %180, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1835
  br label %187, !dbg !1836

181:                                              ; preds = %2
  %182 = load volatile i32, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %182, metadata !1622, metadata !DIExpression()), !dbg !1623
  %183 = and i32 %182, -983041, !dbg !1838
  call void @llvm.dbg.value(metadata i32 %183, metadata !1622, metadata !DIExpression()), !dbg !1623
  %184 = zext i8 %1 to i32, !dbg !1839
  %185 = shl nuw nsw i32 %184, 16, !dbg !1840
  %186 = or i32 %183, %185, !dbg !1841
  store volatile i32 %186, i32* inttoptr (i32 -2130563012 to i32*), align 4, !dbg !1842
  br label %187, !dbg !1843

187:                                              ; preds = %94, %67, %2, %119, %112, %110, %102, %100, %85, %92, %83, %75, %73, %181, %175, %169, %163, %157, %151, %145, %139, %133, %127, %121, %61, %55, %50, %44, %38, %32, %26, %20, %14, %8, %3
  ret void, !dbg !1844
}

; Function Attrs: noinline nounwind optsize
define dso_local void @NVIC_SetupVectorTable(i32 noundef %0) local_unnamed_addr #3 !dbg !1845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1849, metadata !DIExpression()), !dbg !1850
  store volatile i32 %0, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !1851
  tail call void asm sideeffect "dsb", ""() #17, !dbg !1852, !srcloc !1853
  tail call void asm sideeffect "isb", ""() #17, !dbg !1854, !srcloc !1855
  ret void, !dbg !1856
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @NVIC_SWInt(i32 noundef %0) local_unnamed_addr #0 !dbg !1857 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1861, metadata !DIExpression()), !dbg !1862
  store volatile i32 %0, i32* inttoptr (i32 -536809728 to i32*), align 256, !dbg !1863
  ret void, !dbg !1864
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @save_and_set_interrupt_mask() local_unnamed_addr #3 section ".ramTEXT" !dbg !1865 {
  %1 = tail call i32 asm sideeffect "MRS $0, primask", "=r"() #17, !dbg !1870, !srcloc !1877
  call void @llvm.dbg.value(metadata i32 %1, metadata !1874, metadata !DIExpression()) #17, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %1, metadata !1869, metadata !DIExpression()), !dbg !1879
  tail call void asm sideeffect "cpsid i", "~{memory}"() #17, !dbg !1880, !srcloc !1884
  ret i32 %1, !dbg !1885
}

; Function Attrs: noinline nounwind optsize
define dso_local void @restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !1886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1888, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %0, metadata !1890, metadata !DIExpression()) #17, !dbg !1893
  tail call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %0) #17, !dbg !1896, !srcloc !1897
  ret void, !dbg !1898
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @pinmux_config(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !1899 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1903, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i32 %1, metadata !1904, metadata !DIExpression()), !dbg !1906
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
  ], !dbg !1907

3:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  call void @llvm.dbg.value(metadata i32 %0, metadata !1905, metadata !DIExpression()), !dbg !1906
  %4 = trunc i32 %1 to i8, !dbg !1908
  tail call void @halPinmuxTopOnPadFunc(i32 noundef %0, i8 noundef zeroext %4) #16, !dbg !1909
  br label %5, !dbg !1910

5:                                                ; preds = %2, %3
  %6 = phi i32 [ 0, %3 ], [ -1, %2 ], !dbg !1906
  ret i32 %6, !dbg !1911
}

; Function Attrs: noinline nounwind optsize
define dso_local void @top_xtal_init() local_unnamed_addr #3 !dbg !1912 {
  call void @llvm.dbg.value(metadata i32 0, metadata !1914, metadata !DIExpression()), !dbg !1916
  %1 = load volatile i32, i32* inttoptr (i32 -2097118784 to i32*), align 64, !dbg !1917
  call void @llvm.dbg.value(metadata i32 %1, metadata !1915, metadata !DIExpression()), !dbg !1916
  %2 = lshr i32 %1, 13, !dbg !1918
  %3 = and i32 %2, 7, !dbg !1919
  call void @llvm.dbg.value(metadata i32 %3, metadata !1915, metadata !DIExpression()), !dbg !1916
  %4 = load volatile i32, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1920
  call void @llvm.dbg.value(metadata i32 %4, metadata !1914, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i32 %4, metadata !1914, metadata !DIExpression(DW_OP_constu, 18446744073709549568, DW_OP_and, DW_OP_stack_value)), !dbg !1916
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init, i32 0, i32 %3, !dbg !1921
  %6 = load i32, i32* %5, align 4, !dbg !1921
  %7 = getelementptr inbounds [8 x i32], [8 x i32]* @switch.table.top_xtal_init.1, i32 0, i32 %3, !dbg !1921
  %8 = load i32, i32* %7, align 4, !dbg !1921
  %9 = and i32 %4, -2048, !dbg !1922
  call void @llvm.dbg.value(metadata i32 %9, metadata !1914, metadata !DIExpression()), !dbg !1916
  store i32 %6, i32* @gXtalFreq, align 4, !dbg !1923
  %10 = or i32 %9, %8, !dbg !1923
  call void @llvm.dbg.value(metadata i32 %10, metadata !1914, metadata !DIExpression()), !dbg !1916
  store volatile i32 %10, i32* inttoptr (i32 -2097118792 to i32*), align 8, !dbg !1925
  %11 = load i32, i32* @gXtalFreq, align 4, !dbg !1926
  store i32 %11, i32* @gCpuFrequency, align 4, !dbg !1927
  tail call void @SystemCoreClockUpdate() #16, !dbg !1928
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !1929
  %13 = udiv i32 %12, 1000, !dbg !1930
  %14 = tail call i32 @SysTick_Set(i32 noundef %13) #16, !dbg !1931
  ret void, !dbg !1932
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_xtal_freq_get() local_unnamed_addr #4 !dbg !1933 {
  %1 = load i32, i32* @gXtalFreq, align 4, !dbg !1934
  ret i32 %1, !dbg !1935
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define dso_local i32 @top_mcu_freq_get() local_unnamed_addr #4 !dbg !1936 {
  %1 = load i32, i32* @gCpuFrequency, align 4, !dbg !1937
  ret i32 %1, !dbg !1938
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON() local_unnamed_addr #5 !dbg !1939 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !1943
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !1943
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1941, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !1942, metadata !DIExpression()), !dbg !1945
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !1946
  store volatile i32 %3, i32* %1, align 4, !dbg !1947
  %4 = load volatile i32, i32* %1, align 4, !dbg !1948
  %5 = lshr i32 %4, 28, !dbg !1949
  %6 = and i32 %5, 3, !dbg !1950
  store volatile i32 %6, i32* %1, align 4, !dbg !1951
  %7 = load volatile i32, i32* %1, align 4, !dbg !1952
  %8 = icmp eq i32 %7, 0, !dbg !1954
  br i1 %8, label %9, label %22, !dbg !1955

9:                                                ; preds = %0
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !1956
  store volatile i32 %10, i32* %1, align 4, !dbg !1958
  %11 = load volatile i32, i32* %1, align 4, !dbg !1959
  %12 = and i32 %11, -16777217, !dbg !1960
  store volatile i32 %12, i32* %1, align 4, !dbg !1961
  %13 = load volatile i32, i32* %1, align 4, !dbg !1962
  %14 = or i32 %13, 536870912, !dbg !1963
  store volatile i32 %14, i32* %1, align 4, !dbg !1964
  %15 = load volatile i32, i32* %1, align 4, !dbg !1965
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %15) #15, !dbg !1966
  br label %16, !dbg !1967

16:                                               ; preds = %16, %9
  %17 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !1968
  store volatile i32 %17, i32* %1, align 4, !dbg !1970
  %18 = load volatile i32, i32* %1, align 4, !dbg !1971
  %19 = and i32 %18, 134217728, !dbg !1972
  store volatile i32 %19, i32* %1, align 4, !dbg !1973
  %20 = load volatile i32, i32* %1, align 4, !dbg !1974
  %21 = icmp eq i32 %20, 0, !dbg !1975
  br i1 %21, label %16, label %22, !dbg !1976, !llvm.loop !1977

22:                                               ; preds = %16, %0
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !1979
  ret void, !dbg !1979
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @cmnReadRegister32(i8* noundef %0) unnamed_addr #2 !dbg !1980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1987, metadata !DIExpression()), !dbg !1988
  %2 = bitcast i8* %0 to i32*, !dbg !1989
  %3 = load volatile i32, i32* %2, align 4, !dbg !1990
  ret i32 %3, !dbg !1991
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @cmnWriteRegister32(i8* noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !1992 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1996, metadata !DIExpression()), !dbg !1998
  call void @llvm.dbg.value(metadata i32 %1, metadata !1997, metadata !DIExpression()), !dbg !1998
  %3 = bitcast i8* %0 to i32*, !dbg !1999
  store volatile i32 %1, i32* %3, align 4, !dbg !2000
  ret void, !dbg !2001
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1ON_PLL2ON(i8 noundef zeroext %0) local_unnamed_addr #5 !dbg !2002 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8 %0, metadata !2006, metadata !DIExpression()), !dbg !2009
  %3 = bitcast i32* %2 to i8*, !dbg !2010
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !2010
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2007, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2008, metadata !DIExpression()), !dbg !2009
  %4 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2012
  store volatile i32 %4, i32* %2, align 4, !dbg !2013
  %5 = load volatile i32, i32* %2, align 4, !dbg !2014
  %6 = lshr i32 %5, 28, !dbg !2015
  %7 = and i32 %6, 3, !dbg !2016
  store volatile i32 %7, i32* %2, align 4, !dbg !2017
  %8 = load volatile i32, i32* %2, align 4, !dbg !2018
  %9 = icmp eq i32 %8, 3, !dbg !2020
  br i1 %9, label %38, label %10, !dbg !2021

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2022
  store volatile i32 %11, i32* %2, align 4, !dbg !2024
  %12 = load volatile i32, i32* %2, align 4, !dbg !2025
  %13 = and i32 %12, -262145, !dbg !2026
  store volatile i32 %13, i32* %2, align 4, !dbg !2027
  %14 = load volatile i32, i32* %2, align 4, !dbg !2028
  %15 = and i32 %14, -16777217, !dbg !2029
  store volatile i32 %15, i32* %2, align 4, !dbg !2030
  %16 = load volatile i32, i32* %2, align 4, !dbg !2031
  store volatile i32 %16, i32* %2, align 4, !dbg !2032
  %17 = load volatile i32, i32* %2, align 4, !dbg !2033
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %17) #15, !dbg !2034
  %18 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2035
  store volatile i32 %18, i32* %2, align 4, !dbg !2036
  %19 = load volatile i32, i32* %2, align 4, !dbg !2037
  %20 = and i32 %19, -805306369, !dbg !2038
  store volatile i32 %20, i32* %2, align 4, !dbg !2039
  %21 = load volatile i32, i32* %2, align 4, !dbg !2040
  %22 = and i32 %21, -16777217, !dbg !2041
  store volatile i32 %22, i32* %2, align 4, !dbg !2042
  %23 = load volatile i32, i32* %2, align 4, !dbg !2043
  %24 = or i32 %23, 805306368, !dbg !2044
  store volatile i32 %24, i32* %2, align 4, !dbg !2045
  %25 = load volatile i32, i32* %2, align 4, !dbg !2046
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %25) #15, !dbg !2047
  br label %26, !dbg !2048

26:                                               ; preds = %26, %10
  %27 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2049
  store volatile i32 %27, i32* %2, align 4, !dbg !2051
  %28 = load volatile i32, i32* %2, align 4, !dbg !2052
  %29 = and i32 %28, 67108864, !dbg !2053
  store volatile i32 %29, i32* %2, align 4, !dbg !2054
  %30 = load volatile i32, i32* %2, align 4, !dbg !2055
  %31 = icmp eq i32 %30, 0, !dbg !2056
  br i1 %31, label %26, label %32, !dbg !2057, !llvm.loop !2058

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2060
  store volatile i32 %33, i32* %2, align 4, !dbg !2061
  %34 = load volatile i32, i32* %2, align 4, !dbg !2062
  %35 = and i32 %34, -262145, !dbg !2063
  store volatile i32 %35, i32* %2, align 4, !dbg !2064
  %36 = load volatile i32, i32* %2, align 4, !dbg !2065
  %37 = and i32 %36, -16777217, !dbg !2066
  store volatile i32 %37, i32* %2, align 4, !dbg !2067
  br label %38, !dbg !2068

38:                                               ; preds = %32, %1
  %39 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2069
  store volatile i32 %39, i32* %2, align 4, !dbg !2070
  %40 = icmp eq i8 %0, 0, !dbg !2071
  %41 = load volatile i32, i32* %2, align 4, !dbg !2073
  br i1 %40, label %44, label %42, !dbg !2074

42:                                               ; preds = %38
  %43 = or i32 %41, 262144, !dbg !2075
  store volatile i32 %43, i32* %2, align 4, !dbg !2077
  br label %45, !dbg !2078

44:                                               ; preds = %38
  store volatile i32 %41, i32* %2, align 4, !dbg !2079
  br label %45

45:                                               ; preds = %44, %42
  %46 = load volatile i32, i32* %2, align 4, !dbg !2081
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %46) #15, !dbg !2082
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !2083
  ret void, !dbg !2083
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnPLL1OFF_PLL2OFF() local_unnamed_addr #5 !dbg !2084 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2088
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2088
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2086, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118792 to i32*), metadata !2087, metadata !DIExpression()), !dbg !2090
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2091
  store volatile i32 %3, i32* %1, align 4, !dbg !2092
  %4 = load volatile i32, i32* %1, align 4, !dbg !2093
  %5 = and i32 %4, -805306369, !dbg !2094
  store volatile i32 %5, i32* %1, align 4, !dbg !2095
  %6 = load volatile i32, i32* %1, align 4, !dbg !2096
  %7 = and i32 %6, -16777217, !dbg !2097
  store volatile i32 %7, i32* %1, align 4, !dbg !2098
  %8 = load volatile i32, i32* %1, align 4, !dbg !2099
  store volatile i32 %8, i32* %1, align 4, !dbg !2100
  %9 = load volatile i32, i32* %1, align 4, !dbg !2101
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %9) #15, !dbg !2102
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*)) #15, !dbg !2103
  store volatile i32 %10, i32* %1, align 4, !dbg !2104
  %11 = load volatile i32, i32* %1, align 4, !dbg !2105
  %12 = and i32 %11, -262145, !dbg !2106
  store volatile i32 %12, i32* %1, align 4, !dbg !2107
  %13 = load volatile i32, i32* %1, align 4, !dbg !2108
  %14 = and i32 %13, -16777217, !dbg !2109
  store volatile i32 %14, i32* %1, align 4, !dbg !2110
  %15 = load volatile i32, i32* %1, align 4, !dbg !2111
  store volatile i32 %15, i32* %1, align 4, !dbg !2112
  %16 = load volatile i32, i32* %1, align 4, !dbg !2113
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118792 to i8*), i32 noundef %16) #15, !dbg !2114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2115
  ret void, !dbg !2115
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureToXtal() local_unnamed_addr #3 !dbg !2116 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2120
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2120
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2118, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2119, metadata !DIExpression()), !dbg !2122
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2123
  store volatile i32 %3, i32* %1, align 4, !dbg !2124
  %4 = load volatile i32, i32* %1, align 4, !dbg !2125
  %5 = and i32 %4, -8, !dbg !2126
  store volatile i32 %5, i32* %1, align 4, !dbg !2127
  %6 = load volatile i32, i32* %1, align 4, !dbg !2128
  store volatile i32 %6, i32* %1, align 4, !dbg !2129
  %7 = load volatile i32, i32* %1, align 4, !dbg !2130
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #15, !dbg !2131
  %8 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2132
  store volatile i32 %8, i32* %1, align 4, !dbg !2133
  %9 = load volatile i32, i32* %1, align 4, !dbg !2134
  %10 = and i32 %9, -49153, !dbg !2135
  store volatile i32 %10, i32* %1, align 4, !dbg !2136
  %11 = load volatile i32, i32* %1, align 4, !dbg !2137
  store volatile i32 %11, i32* %1, align 4, !dbg !2138
  %12 = load volatile i32, i32* %1, align 4, !dbg !2139
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %12) #15, !dbg !2140
  br label %13, !dbg !2141

13:                                               ; preds = %13, %0
  %14 = load volatile i32, i32* %1, align 4, !dbg !2142
  %15 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2143
  %16 = icmp eq i32 %14, %15, !dbg !2144
  br i1 %16, label %17, label %13, !dbg !2141, !llvm.loop !2145

17:                                               ; preds = %13
  %18 = tail call i32 @top_xtal_freq_get() #15, !dbg !2147
  store i32 %18, i32* @gCpuFrequency, align 4, !dbg !2148
  tail call void @SystemCoreClockUpdate() #16, !dbg !2149
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2150
  %20 = udiv i32 %19, 1000, !dbg !2151
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !2152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2153
  ret void, !dbg !2153
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo192M() local_unnamed_addr #3 !dbg !2154 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2158
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2158
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2156, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2157, metadata !DIExpression()), !dbg !2160
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 1) #15, !dbg !2161
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2162
  store volatile i32 %3, i32* %1, align 4, !dbg !2163
  %4 = load volatile i32, i32* %1, align 4, !dbg !2164
  %5 = and i32 %4, -49153, !dbg !2165
  store volatile i32 %5, i32* %1, align 4, !dbg !2166
  %6 = load volatile i32, i32* %1, align 4, !dbg !2167
  %7 = or i32 %6, 16384, !dbg !2168
  store volatile i32 %7, i32* %1, align 4, !dbg !2169
  %8 = load volatile i32, i32* %1, align 4, !dbg !2170
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #15, !dbg !2171
  br label %9, !dbg !2172

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2173
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2174
  %12 = icmp eq i32 %10, %11, !dbg !2175
  br i1 %12, label %13, label %9, !dbg !2172, !llvm.loop !2176

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2178
  store volatile i32 %14, i32* %1, align 4, !dbg !2179
  %15 = load volatile i32, i32* %1, align 4, !dbg !2180
  %16 = and i32 %15, -1009, !dbg !2181
  store volatile i32 %16, i32* %1, align 4, !dbg !2182
  %17 = load volatile i32, i32* %1, align 4, !dbg !2183
  %18 = or i32 %17, 128, !dbg !2184
  store volatile i32 %18, i32* %1, align 4, !dbg !2185
  %19 = load volatile i32, i32* %1, align 4, !dbg !2186
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #15, !dbg !2187
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2188
  store volatile i32 %20, i32* %1, align 4, !dbg !2189
  %21 = load volatile i32, i32* %1, align 4, !dbg !2190
  %22 = and i32 %21, -8, !dbg !2191
  store volatile i32 %22, i32* %1, align 4, !dbg !2192
  %23 = load volatile i32, i32* %1, align 4, !dbg !2193
  %24 = or i32 %23, 4, !dbg !2194
  store volatile i32 %24, i32* %1, align 4, !dbg !2195
  %25 = load volatile i32, i32* %1, align 4, !dbg !2196
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #15, !dbg !2197
  store i32 192000000, i32* @gCpuFrequency, align 4, !dbg !2198
  tail call void @SystemCoreClockUpdate() #16, !dbg !2199
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2200
  %27 = udiv i32 %26, 1000, !dbg !2201
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !2202
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2203
  ret void, !dbg !2203
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo160M() local_unnamed_addr #3 !dbg !2204 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2208
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2208
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2206, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2207, metadata !DIExpression()), !dbg !2210
  tail call void @cmnPLL1ON_PLL2ON(i8 noundef zeroext 0) #15, !dbg !2211
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2212
  store volatile i32 %3, i32* %1, align 4, !dbg !2213
  %4 = load volatile i32, i32* %1, align 4, !dbg !2214
  %5 = and i32 %4, -49153, !dbg !2215
  store volatile i32 %5, i32* %1, align 4, !dbg !2216
  %6 = load volatile i32, i32* %1, align 4, !dbg !2217
  %7 = or i32 %6, 32768, !dbg !2218
  store volatile i32 %7, i32* %1, align 4, !dbg !2219
  %8 = load volatile i32, i32* %1, align 4, !dbg !2220
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %8) #15, !dbg !2221
  br label %9, !dbg !2222

9:                                                ; preds = %9, %0
  %10 = load volatile i32, i32* %1, align 4, !dbg !2223
  %11 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2224
  %12 = icmp eq i32 %10, %11, !dbg !2225
  br i1 %12, label %13, label %9, !dbg !2222, !llvm.loop !2226

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2228
  store volatile i32 %14, i32* %1, align 4, !dbg !2229
  %15 = load volatile i32, i32* %1, align 4, !dbg !2230
  %16 = and i32 %15, -1009, !dbg !2231
  store volatile i32 %16, i32* %1, align 4, !dbg !2232
  %17 = load volatile i32, i32* %1, align 4, !dbg !2233
  %18 = or i32 %17, 32, !dbg !2234
  store volatile i32 %18, i32* %1, align 4, !dbg !2235
  %19 = load volatile i32, i32* %1, align 4, !dbg !2236
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %19) #15, !dbg !2237
  %20 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2238
  store volatile i32 %20, i32* %1, align 4, !dbg !2239
  %21 = load volatile i32, i32* %1, align 4, !dbg !2240
  %22 = and i32 %21, -8, !dbg !2241
  store volatile i32 %22, i32* %1, align 4, !dbg !2242
  %23 = load volatile i32, i32* %1, align 4, !dbg !2243
  %24 = or i32 %23, 4, !dbg !2244
  store volatile i32 %24, i32* %1, align 4, !dbg !2245
  %25 = load volatile i32, i32* %1, align 4, !dbg !2246
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %25) #15, !dbg !2247
  store i32 160000000, i32* @gCpuFrequency, align 4, !dbg !2248
  tail call void @SystemCoreClockUpdate() #16, !dbg !2249
  %26 = load i32, i32* @SystemCoreClock, align 4, !dbg !2250
  %27 = udiv i32 %26, 1000, !dbg !2251
  %28 = tail call i32 @SysTick_Set(i32 noundef %27) #16, !dbg !2252
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2253
  ret void, !dbg !2253
}

; Function Attrs: noinline nounwind optsize
define dso_local void @cmnCpuClkConfigureTo64M() local_unnamed_addr #3 !dbg !2254 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2258
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2258
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2256, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118800 to i32*), metadata !2257, metadata !DIExpression()), !dbg !2260
  tail call void @cmnPLL1ON() #15, !dbg !2261
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2262
  store volatile i32 %3, i32* %1, align 4, !dbg !2263
  %4 = load volatile i32, i32* %1, align 4, !dbg !2264
  %5 = and i32 %4, -49153, !dbg !2265
  store volatile i32 %5, i32* %1, align 4, !dbg !2266
  %6 = load volatile i32, i32* %1, align 4, !dbg !2267
  store volatile i32 %6, i32* %1, align 4, !dbg !2268
  %7 = load volatile i32, i32* %1, align 4, !dbg !2269
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %7) #15, !dbg !2270
  br label %8, !dbg !2271

8:                                                ; preds = %8, %0
  %9 = load volatile i32, i32* %1, align 4, !dbg !2272
  %10 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2273
  %11 = icmp eq i32 %9, %10, !dbg !2274
  br i1 %11, label %12, label %8, !dbg !2271, !llvm.loop !2275

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*)) #15, !dbg !2277
  store volatile i32 %13, i32* %1, align 4, !dbg !2278
  %14 = load volatile i32, i32* %1, align 4, !dbg !2279
  %15 = and i32 %14, -8, !dbg !2280
  store volatile i32 %15, i32* %1, align 4, !dbg !2281
  %16 = load volatile i32, i32* %1, align 4, !dbg !2282
  %17 = or i32 %16, 2, !dbg !2283
  store volatile i32 %17, i32* %1, align 4, !dbg !2284
  %18 = load volatile i32, i32* %1, align 4, !dbg !2285
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118800 to i8*), i32 noundef %18) #15, !dbg !2286
  store i32 64000000, i32* @gCpuFrequency, align 4, !dbg !2287
  tail call void @SystemCoreClockUpdate() #16, !dbg !2288
  %19 = load i32, i32* @SystemCoreClock, align 4, !dbg !2289
  %20 = udiv i32 %19, 1000, !dbg !2290
  %21 = tail call i32 @SysTick_Set(i32 noundef %20) #16, !dbg !2291
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2292
  ret void, !dbg !2292
}

; Function Attrs: nofree noinline nounwind optsize
define dso_local void @cmnSerialFlashClkConfToXtal() local_unnamed_addr #5 section ".ramTEXT" !dbg !2293 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !2297
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2), !dbg !2297
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2295, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32* inttoptr (i32 -2097118796 to i32*), metadata !2296, metadata !DIExpression()), !dbg !2299
  %3 = tail call fastcc i32 @cmnReadRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*)) #15, !dbg !2300
  store volatile i32 %3, i32* %1, align 4, !dbg !2301
  %4 = load volatile i32, i32* %1, align 4, !dbg !2302
  %5 = and i32 %4, -24577, !dbg !2303
  store volatile i32 %5, i32* %1, align 4, !dbg !2304
  %6 = load volatile i32, i32* %1, align 4, !dbg !2305
  store volatile i32 %6, i32* %1, align 4, !dbg !2306
  %7 = load volatile i32, i32* %1, align 4, !dbg !2307
  tail call fastcc void @cmnWriteRegister32(i8* noundef nonnull inttoptr (i32 -2097118796 to i8*), i32 noundef %7) #15, !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2), !dbg !2309
  ret void, !dbg !2309
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc() local_unnamed_addr #2 !dbg !2310 {
  %1 = tail call i32 @getc_nowait() #15, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %1, metadata !2314, metadata !DIExpression()), !dbg !2316
  ret i32 %1, !dbg !2317
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @getc_nowait() local_unnamed_addr #2 !dbg !2318 {
  %1 = load volatile i32, i32* inttoptr (i32 -2096955372 to i32*), align 4, !dbg !2321
  %2 = and i32 %1, 1, !dbg !2323
  %3 = icmp eq i32 %2, 0, !dbg !2323
  br i1 %3, label %7, label %4, !dbg !2324

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 -2096955392 to i32*), align 65536, !dbg !2325
  %6 = and i32 %5, 255, !dbg !2327
  call void @llvm.dbg.value(metadata i32 %5, metadata !2320, metadata !DIExpression()), !dbg !2328
  br label %7, !dbg !2329

7:                                                ; preds = %0, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %0 ], !dbg !2330
  ret i32 %8, !dbg !2331
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_output_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !dbg !2332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2337, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %1, metadata !2338, metadata !DIExpression()), !dbg !2340
  %3 = icmp eq i32 %0, 0, !dbg !2341
  %4 = select i1 %3, i32 -2096955392, i32 -2096889856, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %4, metadata !2339, metadata !DIExpression()), !dbg !2340
  %5 = or i32 %4, 20
  %6 = inttoptr i32 %5 to i32*
  br label %7, !dbg !2342

7:                                                ; preds = %7, %2
  %8 = load volatile i32, i32* %6, align 4, !dbg !2343
  %9 = and i32 %8, 32, !dbg !2344
  %10 = icmp eq i32 %9, 0, !dbg !2345
  br i1 %10, label %7, label %11, !dbg !2342, !llvm.loop !2346

11:                                               ; preds = %7
  %12 = zext i8 %1 to i32, !dbg !2348
  %13 = inttoptr i32 %4 to i32*, !dbg !2349
  store volatile i32 %12, i32* %13, align 65536, !dbg !2350
  ret void, !dbg !2351
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i8 @uart_input_char(i32 noundef %0) local_unnamed_addr #0 !dbg !2352 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2356, metadata !DIExpression()), !dbg !2359
  %2 = icmp eq i32 %0, 0, !dbg !2360
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %3, metadata !2357, metadata !DIExpression()), !dbg !2359
  %4 = or i32 %3, 20
  %5 = inttoptr i32 %4 to i32*
  br label %6, !dbg !2361

6:                                                ; preds = %6, %1
  %7 = load volatile i32, i32* %5, align 4, !dbg !2362
  %8 = and i32 %7, 1, !dbg !2363
  %9 = icmp eq i32 %8, 0, !dbg !2364
  br i1 %9, label %6, label %10, !dbg !2361, !llvm.loop !2365

10:                                               ; preds = %6
  %11 = inttoptr i32 %3 to i32*, !dbg !2367
  %12 = load volatile i32, i32* %11, align 65536, !dbg !2367
  %13 = trunc i32 %12 to i8, !dbg !2367
  call void @llvm.dbg.value(metadata i8 %13, metadata !2358, metadata !DIExpression()), !dbg !2359
  ret i8 %13, !dbg !2368
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @uart_input_char_unblocking(i32 noundef %0) local_unnamed_addr #2 !dbg !2369 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2376
  %2 = icmp eq i32 %0, 0, !dbg !2377
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %3, metadata !2374, metadata !DIExpression()), !dbg !2376
  %4 = or i32 %3, 20, !dbg !2378
  %5 = inttoptr i32 %4 to i32*, !dbg !2378
  %6 = load volatile i32, i32* %5, align 4, !dbg !2378
  %7 = and i32 %6, 1, !dbg !2380
  %8 = icmp eq i32 %7, 0, !dbg !2380
  br i1 %8, label %13, label %9, !dbg !2381

9:                                                ; preds = %1
  %10 = inttoptr i32 %3 to i32*, !dbg !2382
  %11 = load volatile i32, i32* %10, align 65536, !dbg !2382
  %12 = and i32 %11, 255, !dbg !2384
  call void @llvm.dbg.value(metadata i32 %11, metadata !2375, metadata !DIExpression()), !dbg !2376
  br label %13, !dbg !2385

13:                                               ; preds = %1, %9
  %14 = phi i32 [ %12, %9 ], [ -1, %1 ], !dbg !2386
  ret i32 %14, !dbg !2387
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_HWInit(i32 noundef %0) local_unnamed_addr #3 !dbg !2388 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2392, metadata !DIExpression()), !dbg !2393
  tail call void @halUART_SetFormat(i32 noundef %0, i32 noundef 115200, i16 noundef zeroext 3, i16 noundef zeroext 0, i16 noundef zeroext 0) #15, !dbg !2394
  switch i32 %0, label %7 [
    i32 0, label %3
    i32 1, label %2
  ], !dbg !2395

2:                                                ; preds = %1
  br label %3, !dbg !2396

3:                                                ; preds = %1, %2
  %4 = phi i32* [ inttoptr (i32 -2096889780 to i32*), %2 ], [ inttoptr (i32 -2096955316 to i32*), %1 ]
  %5 = load volatile i32, i32* %4, align 4, !dbg !2400
  %6 = or i32 %5, 1, !dbg !2400
  store volatile i32 %6, i32* %4, align 4, !dbg !2400
  br label %7, !dbg !2401

7:                                                ; preds = %3, %1
  ret void, !dbg !2401
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_SetFormat(i32 noundef %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #3 !dbg !2402 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2408, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 %1, metadata !2409, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i16 %2, metadata !2410, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i16 %3, metadata !2411, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i16 %4, metadata !2412, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 -2096955392, metadata !2414, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, metadata !2421, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.declare(metadata [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, metadata !2423, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression()), !dbg !2425
  %6 = tail call i32 @top_xtal_freq_get() #16, !dbg !2428
  store i32 %6, i32* @gUartClkFreq, align 4, !dbg !2429
  %7 = icmp eq i32 %0, 1, !dbg !2430
  %8 = select i1 %7, i32 -2096889856, i32 -2096955392, !dbg !2430
  call void @llvm.dbg.value(metadata i32 %8, metadata !2414, metadata !DIExpression()), !dbg !2425
  %9 = or i32 %8, 36, !dbg !2431
  %10 = inttoptr i32 %9 to i32*, !dbg !2431
  store volatile i32 3, i32* %10, align 4, !dbg !2432
  %11 = or i32 %8, 12, !dbg !2433
  %12 = inttoptr i32 %11 to i32*, !dbg !2433
  %13 = load volatile i32, i32* %12, align 4, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %13, metadata !2416, metadata !DIExpression()), !dbg !2425
  %14 = or i32 %13, 128, !dbg !2434
  store volatile i32 %14, i32* %12, align 4, !dbg !2435
  %15 = load i32, i32* @gUartClkFreq, align 4, !dbg !2436
  %16 = udiv i32 %15, %1, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %16, metadata !2415, metadata !DIExpression()), !dbg !2425
  %17 = lshr i32 %16, 8, !dbg !2438
  %18 = add nuw nsw i32 %17, 1, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %18, metadata !2417, metadata !DIExpression()), !dbg !2425
  %19 = udiv i32 %16, %18, !dbg !2440
  %20 = add i32 %19, -1, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %20, metadata !2418, metadata !DIExpression()), !dbg !2425
  %21 = icmp eq i32 %20, 3, !dbg !2443
  %22 = lshr i32 %20, 1, !dbg !2445
  %23 = add nsw i32 %22, -1, !dbg !2445
  %24 = select i1 %21, i32 0, i32 %23, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %24, metadata !2419, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata i32 undef, metadata !2424, metadata !DIExpression()), !dbg !2425
  %25 = mul i32 %15, 10, !dbg !2446
  %26 = udiv i32 %25, %1, !dbg !2447
  %27 = udiv i32 %26, %16, !dbg !2448
  %28 = mul i32 %19, -10, !dbg !2449
  %29 = add i32 %27, %28, !dbg !2450
  %30 = urem i32 %29, 10, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %30, metadata !2420, metadata !DIExpression()), !dbg !2425
  %31 = and i32 %18, 255, !dbg !2452
  %32 = inttoptr i32 %8 to i32*, !dbg !2453
  store volatile i32 %31, i32* %32, align 65536, !dbg !2454
  %33 = lshr i32 %18, 8, !dbg !2455
  %34 = and i32 %33, 255, !dbg !2456
  %35 = or i32 %8, 4, !dbg !2457
  %36 = inttoptr i32 %35 to i32*, !dbg !2457
  store volatile i32 %34, i32* %36, align 4, !dbg !2458
  %37 = or i32 %8, 40, !dbg !2459
  %38 = inttoptr i32 %37 to i32*, !dbg !2459
  store volatile i32 %20, i32* %38, align 8, !dbg !2460
  %39 = or i32 %8, 44, !dbg !2461
  %40 = inttoptr i32 %39 to i32*, !dbg !2461
  store volatile i32 %24, i32* %40, align 4, !dbg !2462
  %41 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_M_mapping, i32 0, i32 %30, !dbg !2463
  %42 = load i16, i16* %41, align 2, !dbg !2463
  %43 = zext i16 %42 to i32, !dbg !2463
  %44 = or i32 %8, 88, !dbg !2464
  %45 = inttoptr i32 %44 to i32*, !dbg !2464
  store volatile i32 %43, i32* %45, align 8, !dbg !2465
  %46 = getelementptr inbounds [11 x i16], [11 x i16]* @__const.halUART_SetFormat.fraction_L_mapping, i32 0, i32 %30, !dbg !2466
  %47 = load i16, i16* %46, align 2, !dbg !2466
  %48 = zext i16 %47 to i32, !dbg !2466
  %49 = or i32 %8, 84, !dbg !2467
  %50 = inttoptr i32 %49 to i32*, !dbg !2467
  store volatile i32 %48, i32* %50, align 4, !dbg !2468
  store volatile i32 %13, i32* %12, align 4, !dbg !2469
  %51 = or i32 %8, 8, !dbg !2470
  %52 = inttoptr i32 %51 to i32*, !dbg !2470
  store volatile i32 71, i32* %52, align 8, !dbg !2471
  %53 = inttoptr i32 %11 to i16*, !dbg !2472
  %54 = load volatile i16, i16* %53, align 4, !dbg !2472
  call void @llvm.dbg.value(metadata i16 %54, metadata !2413, metadata !DIExpression()), !dbg !2425
  %55 = and i16 %54, -64, !dbg !2473
  call void @llvm.dbg.value(metadata i16 %54, metadata !2413, metadata !DIExpression(DW_OP_constu, 18446744073709551608, DW_OP_and, DW_OP_stack_value)), !dbg !2425
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %2), metadata !2413, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2425
  %56 = and i16 %2, -61, !dbg !2474
  call void @llvm.dbg.value(metadata !DIArgList(i16 %54, i16 %56), metadata !2413, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 18446744073709551552, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2425
  call void @llvm.dbg.value(metadata !DIArgList(i16 %55, i16 %4, i16 %56), metadata !2413, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !2425
  %57 = and i16 %4, -57, !dbg !2475
  call void @llvm.dbg.value(metadata i16 undef, metadata !2413, metadata !DIExpression()), !dbg !2425
  %58 = or i16 %56, %3, !dbg !2474
  %59 = or i16 %58, %57, !dbg !2475
  %60 = or i16 %59, %55, !dbg !2476
  call void @llvm.dbg.value(metadata i16 %60, metadata !2413, metadata !DIExpression()), !dbg !2425
  store volatile i16 %60, i16* %53, align 4, !dbg !2477
  ret void, !dbg !2478
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef %1, i32* nocapture noundef writeonly %2) local_unnamed_addr #2 !dbg !2479 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %1, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32* %2, metadata !2486, metadata !DIExpression()), !dbg !2487
  %4 = icmp eq i32 %0, 0, !dbg !2488
  %5 = icmp eq i32 %1, 0, !dbg !2490
  br i1 %4, label %6, label %16, !dbg !2491

6:                                                ; preds = %3
  br i1 %5, label %10, label %7, !dbg !2492

7:                                                ; preds = %6
  %8 = load volatile i16, i16* inttoptr (i32 -2097082568 to i16*), align 8, !dbg !2494
  %9 = zext i16 %8 to i32, !dbg !2494
  br label %26, !dbg !2497

10:                                               ; preds = %6
  %11 = load volatile i16, i16* inttoptr (i32 -2097082812 to i16*), align 4, !dbg !2498
  %12 = zext i16 %11 to i32, !dbg !2498
  store i32 %12, i32* %2, align 4, !dbg !2500
  %13 = load volatile i16, i16* inttoptr (i32 -2097082824 to i16*), align 8, !dbg !2501
  %14 = zext i16 %13 to i32, !dbg !2501
  %15 = sub nsw i32 %12, %14, !dbg !2502
  br label %26

16:                                               ; preds = %3
  br i1 %5, label %20, label %17, !dbg !2503

17:                                               ; preds = %16
  %18 = load volatile i16, i16* inttoptr (i32 -2097082056 to i16*), align 8, !dbg !2505
  %19 = zext i16 %18 to i32, !dbg !2505
  br label %26, !dbg !2508

20:                                               ; preds = %16
  %21 = load volatile i16, i16* inttoptr (i32 -2097082300 to i16*), align 4, !dbg !2509
  %22 = zext i16 %21 to i32, !dbg !2509
  store i32 %22, i32* %2, align 4, !dbg !2511
  %23 = load volatile i16, i16* inttoptr (i32 -2097082312 to i16*), align 8, !dbg !2512
  %24 = zext i16 %23 to i32, !dbg !2512
  %25 = sub nsw i32 %22, %24, !dbg !2513
  br label %26

26:                                               ; preds = %17, %20, %7, %10
  %27 = phi i32 [ %19, %17 ], [ %25, %20 ], [ %9, %7 ], [ %15, %10 ]
  store i32 %27, i32* %2, align 4, !dbg !2490
  ret void, !dbg !2514
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Read_VFIFO_Data(i32 noundef %0, i8* nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2519, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8* %1, metadata !2520, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 %2, metadata !2521, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()), !dbg !2523
  %4 = icmp eq i32 %2, 0, !dbg !2524
  br i1 %4, label %15, label %5, !dbg !2527

5:                                                ; preds = %3, %12
  %6 = phi i32 [ %13, %12 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2522, metadata !DIExpression()), !dbg !2523
  switch i32 %0, label %12 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2528

7:                                                ; preds = %5
  br label %8, !dbg !2530

8:                                                ; preds = %5, %7
  %9 = phi i8* [ inttoptr (i32 2030044416 to i8*), %7 ], [ inttoptr (i32 2030043904 to i8*), %5 ]
  %10 = load volatile i8, i8* %9, align 256, !dbg !2534
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2534
  store i8 %10, i8* %11, align 1, !dbg !2534
  br label %12, !dbg !2535

12:                                               ; preds = %8, %5
  %13 = add nuw i32 %6, 1, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %13, metadata !2522, metadata !DIExpression()), !dbg !2523
  %14 = icmp eq i32 %13, %2, !dbg !2524
  br i1 %14, label %15, label %5, !dbg !2527, !llvm.loop !2536

15:                                               ; preds = %12, %3
  ret void, !dbg !2538
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @halUART_Write_VFIFO_Data(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !dbg !2539 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8* %1, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 %2, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 0, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 0, metadata !2548, metadata !DIExpression()), !dbg !2549
  %4 = icmp eq i32 %2, 0, !dbg !2550
  br i1 %4, label %16, label %5, !dbg !2553

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !2548, metadata !DIExpression()), !dbg !2549
  switch i32 %0, label %13 [
    i32 0, label %7
    i32 1, label %10
  ], !dbg !2554

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2556
  %9 = load i8, i8* %8, align 1, !dbg !2556
  store volatile i8 %9, i8* inttoptr (i32 2030043648 to i8*), align 512, !dbg !2559
  br label %13, !dbg !2560

10:                                               ; preds = %5
  %11 = getelementptr inbounds i8, i8* %1, i32 %6, !dbg !2561
  %12 = load i8, i8* %11, align 1, !dbg !2561
  store volatile i8 %12, i8* inttoptr (i32 2030044160 to i8*), align 1024, !dbg !2564
  br label %13, !dbg !2565

13:                                               ; preds = %5, %7, %10
  %14 = add nuw i32 %6, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %14, metadata !2548, metadata !DIExpression()), !dbg !2549
  %15 = icmp eq i32 %14, %2, !dbg !2550
  br i1 %15, label %16, label %5, !dbg !2553, !llvm.loop !2567

16:                                               ; preds = %13, %3
  ret void, !dbg !2569
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Tx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 !dbg !2570 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2574, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8* %1, metadata !2575, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 %2, metadata !2576, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i32 %3, metadata !2577, metadata !DIExpression()), !dbg !2578
  switch i32 %0, label %9 [
    i32 0, label %6
    i32 1, label %5
  ], !dbg !2579

5:                                                ; preds = %4
  br label %6, !dbg !2580

6:                                                ; preds = %4, %5
  %7 = phi i32 [ 16, %5 ], [ 14, %4 ]
  %8 = ptrtoint i8* %1 to i32, !dbg !2584
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %8, i32 noundef %2, i32 noundef %7, i32 noundef 0, i32 noundef %3, i32 noundef 0) #16, !dbg !2584
  tail call void @DMA_Vfifo_Flush(i32 noundef %7) #16, !dbg !2584
  br label %9, !dbg !2585

9:                                                ; preds = %6, %4
  ret void, !dbg !2585
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_SetAdrs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Flush(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_Rx_VFIFO_Initialize(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 !dbg !2586 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2590, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %1, metadata !2591, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %2, metadata !2592, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %3, metadata !2593, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %4, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 %5, metadata !2595, metadata !DIExpression()), !dbg !2596
  switch i32 %0, label %11 [
    i32 0, label %8
    i32 1, label %7
  ], !dbg !2597

7:                                                ; preds = %6
  br label %8, !dbg !2598

8:                                                ; preds = %6, %7
  %9 = phi i32 [ 17, %7 ], [ 15, %6 ]
  %10 = ptrtoint i8* %1 to i32, !dbg !2602
  tail call void @DMA_Vfifo_SetAdrs(i32 noundef %10, i32 noundef %2, i32 noundef %9, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16, !dbg !2602
  tail call void @DMA_Vfifo_Flush(i32 noundef %9) #16, !dbg !2602
  br label %11, !dbg !2603

11:                                               ; preds = %8, %6
  ret void, !dbg !2603
}

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2604 {
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
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !2616
  br label %6, !dbg !2617

6:                                                ; preds = %4, %2
  ret void, !dbg !2617
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %0, void ()* noundef %1) local_unnamed_addr #3 !dbg !2618 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata void ()* %1, metadata !2621, metadata !DIExpression()), !dbg !2622
  switch i32 %0, label %6 [
    i32 0, label %4
    i32 1, label %3
  ], !dbg !2623

3:                                                ; preds = %2
  br label %4, !dbg !2624

4:                                                ; preds = %2, %3
  %5 = phi i32 [ 17, %3 ], [ 15, %2 ]
  tail call void @DMA_Vfifo_Register_TO_Callback(i32 noundef %5, void ()* noundef %1) #16, !dbg !2628
  br label %6, !dbg !2629

6:                                                ; preds = %4, %2
  ret void, !dbg !2629
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Register_TO_Callback(i32 noundef, void ()* noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2630 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2632, metadata !DIExpression()), !dbg !2636
  %2 = icmp eq i32 %0, 0, !dbg !2637
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %3, metadata !2633, metadata !DIExpression()), !dbg !2636
  %4 = or i32 %3, 12, !dbg !2638
  %5 = inttoptr i32 %4 to i32*, !dbg !2638
  %6 = load volatile i32, i32* %5, align 4, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %6, metadata !2635, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2636
  store volatile i32 191, i32* %5, align 4, !dbg !2639
  %7 = or i32 %3, 8, !dbg !2640
  %8 = inttoptr i32 %7 to i32*, !dbg !2640
  %9 = load volatile i32, i32* %8, align 8, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %9, metadata !2634, metadata !DIExpression()), !dbg !2636
  %10 = and i32 %9, 65327, !dbg !2641
  %11 = or i32 %10, 208, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %9, metadata !2634, metadata !DIExpression(DW_OP_constu, 208, DW_OP_or, DW_OP_stack_value)), !dbg !2636
  store volatile i32 %11, i32* %8, align 8, !dbg !2642
  %12 = or i32 %3, 68, !dbg !2643
  %13 = inttoptr i32 %12 to i32*, !dbg !2643
  store volatile i32 0, i32* %13, align 4, !dbg !2644
  store volatile i32 0, i32* %5, align 4, !dbg !2645
  %14 = or i32 %3, 16, !dbg !2646
  %15 = inttoptr i32 %14 to i32*, !dbg !2646
  store volatile i32 2, i32* %15, align 16, !dbg !2647
  %16 = and i32 %6, 65535, !dbg !2648
  store volatile i32 %16, i32* %5, align 4, !dbg !2649
  ret void, !dbg !2650
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 !dbg !2651 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2655, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 %1, metadata !2656, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 %2, metadata !2657, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 %3, metadata !2658, metadata !DIExpression()), !dbg !2662
  %5 = icmp eq i32 %0, 0, !dbg !2663
  %6 = select i1 %5, i32 -2096955392, i32 -2096889856, !dbg !2663
  call void @llvm.dbg.value(metadata i32 %6, metadata !2659, metadata !DIExpression()), !dbg !2662
  %7 = or i32 %6, 12, !dbg !2664
  %8 = inttoptr i32 %7 to i32*, !dbg !2664
  %9 = load volatile i32, i32* %8, align 4, !dbg !2664
  call void @llvm.dbg.value(metadata i32 %9, metadata !2661, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2662
  store volatile i32 191, i32* %8, align 4, !dbg !2665
  %10 = zext i8 %1 to i32, !dbg !2666
  %11 = or i32 %6, 16, !dbg !2667
  %12 = inttoptr i32 %11 to i32*, !dbg !2667
  store volatile i32 %10, i32* %12, align 16, !dbg !2668
  %13 = or i32 %6, 20, !dbg !2669
  %14 = inttoptr i32 %13 to i32*, !dbg !2669
  store volatile i32 %10, i32* %14, align 4, !dbg !2670
  %15 = zext i8 %2 to i32, !dbg !2671
  %16 = or i32 %6, 24, !dbg !2672
  %17 = inttoptr i32 %16 to i32*, !dbg !2672
  store volatile i32 %15, i32* %17, align 8, !dbg !2673
  %18 = or i32 %6, 28, !dbg !2674
  %19 = inttoptr i32 %18 to i32*, !dbg !2674
  store volatile i32 %15, i32* %19, align 4, !dbg !2675
  %20 = or i32 %6, 8, !dbg !2676
  %21 = inttoptr i32 %20 to i32*, !dbg !2676
  %22 = load volatile i32, i32* %21, align 8, !dbg !2676
  call void @llvm.dbg.value(metadata i32 %22, metadata !2660, metadata !DIExpression()), !dbg !2662
  %23 = and i32 %22, 65525, !dbg !2677
  %24 = or i32 %23, 10, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %22, metadata !2660, metadata !DIExpression(DW_OP_constu, 10, DW_OP_or, DW_OP_stack_value)), !dbg !2662
  store volatile i32 %24, i32* %21, align 8, !dbg !2678
  %25 = and i32 %9, 65535, !dbg !2679
  store volatile i32 %25, i32* %8, align 4, !dbg !2680
  %26 = zext i8 %3 to i32, !dbg !2681
  %27 = or i32 %6, 64, !dbg !2682
  %28 = inttoptr i32 %27 to i32*, !dbg !2682
  store volatile i32 %26, i32* %28, align 64, !dbg !2683
  %29 = or i32 %6, 68, !dbg !2684
  %30 = inttoptr i32 %29 to i32*, !dbg !2684
  store volatile i32 1, i32* %30, align 4, !dbg !2685
  ret void, !dbg !2686
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #0 !dbg !2687 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2689, metadata !DIExpression()), !dbg !2692
  %2 = icmp eq i32 %0, 0, !dbg !2693
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %3, metadata !2690, metadata !DIExpression()), !dbg !2692
  %4 = or i32 %3, 12, !dbg !2694
  %5 = inttoptr i32 %4 to i32*, !dbg !2694
  %6 = load volatile i32, i32* %5, align 4, !dbg !2694
  call void @llvm.dbg.value(metadata i32 %6, metadata !2691, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2692
  store volatile i32 191, i32* %5, align 4, !dbg !2695
  %7 = or i32 %3, 8, !dbg !2696
  %8 = inttoptr i32 %7 to i32*, !dbg !2696
  store volatile i32 0, i32* %8, align 8, !dbg !2697
  store volatile i32 0, i32* %5, align 4, !dbg !2698
  %9 = and i32 %6, 65535, !dbg !2699
  store volatile i32 %9, i32* %5, align 4, !dbg !2700
  ret void, !dbg !2701
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_reset_default_value(i32 noundef %0) local_unnamed_addr #0 !dbg !2702 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2704, metadata !DIExpression()), !dbg !2706
  %2 = icmp eq i32 %0, 0, !dbg !2707
  %3 = select i1 %2, i32 -2096955392, i32 -2096889856, !dbg !2707
  call void @llvm.dbg.value(metadata i32 %3, metadata !2705, metadata !DIExpression()), !dbg !2706
  %4 = or i32 %3, 12, !dbg !2708
  %5 = inttoptr i32 %4 to i32*, !dbg !2708
  store volatile i32 191, i32* %5, align 4, !dbg !2709
  %6 = or i32 %3, 8, !dbg !2710
  %7 = inttoptr i32 %6 to i32*, !dbg !2710
  store volatile i32 16, i32* %7, align 8, !dbg !2711
  %8 = or i32 %3, 16, !dbg !2712
  %9 = inttoptr i32 %8 to i32*, !dbg !2712
  store volatile i32 0, i32* %9, align 16, !dbg !2713
  %10 = or i32 %3, 24, !dbg !2714
  %11 = inttoptr i32 %10 to i32*, !dbg !2714
  store volatile i32 0, i32* %11, align 8, !dbg !2715
  store volatile i32 128, i32* %5, align 4, !dbg !2716
  %12 = inttoptr i32 %3 to i32*, !dbg !2717
  store volatile i32 0, i32* %12, align 65536, !dbg !2718
  %13 = or i32 %3, 4, !dbg !2719
  %14 = inttoptr i32 %13 to i32*, !dbg !2719
  store volatile i32 0, i32* %14, align 4, !dbg !2720
  store volatile i32 0, i32* %5, align 4, !dbg !2721
  store volatile i32 0, i32* %14, align 4, !dbg !2722
  store volatile i32 0, i32* %7, align 8, !dbg !2723
  store volatile i32 191, i32* %5, align 4, !dbg !2724
  store volatile i32 0, i32* %7, align 8, !dbg !2725
  store volatile i32 0, i32* %5, align 4, !dbg !2726
  store volatile i32 0, i32* %9, align 16, !dbg !2727
  %15 = or i32 %3, 28, !dbg !2728
  %16 = inttoptr i32 %15 to i32*, !dbg !2728
  store volatile i32 0, i32* %16, align 4, !dbg !2729
  %17 = or i32 %3, 36, !dbg !2730
  %18 = inttoptr i32 %17 to i32*, !dbg !2730
  store volatile i32 0, i32* %18, align 4, !dbg !2731
  %19 = or i32 %3, 40, !dbg !2732
  %20 = inttoptr i32 %19 to i32*, !dbg !2732
  store volatile i32 0, i32* %20, align 8, !dbg !2733
  %21 = or i32 %3, 44, !dbg !2734
  %22 = inttoptr i32 %21 to i32*, !dbg !2734
  store volatile i32 0, i32* %22, align 4, !dbg !2735
  %23 = or i32 %3, 52, !dbg !2736
  %24 = inttoptr i32 %23 to i32*, !dbg !2736
  store volatile i32 0, i32* %24, align 4, !dbg !2737
  %25 = or i32 %3, 60, !dbg !2738
  %26 = inttoptr i32 %25 to i32*, !dbg !2738
  store volatile i32 0, i32* %26, align 4, !dbg !2739
  %27 = or i32 %3, 64, !dbg !2740
  %28 = inttoptr i32 %27 to i32*, !dbg !2740
  store volatile i32 0, i32* %28, align 64, !dbg !2741
  %29 = or i32 %3, 68, !dbg !2742
  %30 = inttoptr i32 %29 to i32*, !dbg !2742
  store volatile i32 0, i32* %30, align 4, !dbg !2743
  %31 = or i32 %3, 72, !dbg !2744
  %32 = inttoptr i32 %31 to i32*, !dbg !2744
  store volatile i32 0, i32* %32, align 8, !dbg !2745
  %33 = or i32 %3, 76, !dbg !2746
  %34 = inttoptr i32 %33 to i32*, !dbg !2746
  store volatile i32 0, i32* %34, align 4, !dbg !2747
  %35 = or i32 %3, 80, !dbg !2748
  %36 = inttoptr i32 %35 to i32*, !dbg !2748
  store volatile i32 0, i32* %36, align 16, !dbg !2749
  %37 = or i32 %3, 84, !dbg !2750
  %38 = inttoptr i32 %37 to i32*, !dbg !2750
  store volatile i32 0, i32* %38, align 4, !dbg !2751
  %39 = or i32 %3, 88, !dbg !2752
  %40 = inttoptr i32 %39 to i32*, !dbg !2752
  store volatile i32 0, i32* %40, align 8, !dbg !2753
  %41 = or i32 %3, 96, !dbg !2754
  %42 = inttoptr i32 %41 to i32*, !dbg !2754
  store volatile i32 0, i32* %42, align 32, !dbg !2755
  ret void, !dbg !2756
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @uart_query_empty(i32 noundef %0) local_unnamed_addr #0 !dbg !2757 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2759, metadata !DIExpression()), !dbg !2761
  %2 = icmp eq i32 %0, 0, !dbg !2762
  call void @llvm.dbg.value(metadata i32 undef, metadata !2760, metadata !DIExpression()), !dbg !2761
  %3 = select i1 %2, i32 -2096955372, i32 -2096889836
  %4 = inttoptr i32 %3 to i32*
  br label %5, !dbg !2763

5:                                                ; preds = %5, %1
  %6 = load volatile i32, i32* %4, align 4, !dbg !2764
  %7 = and i32 %6, 64, !dbg !2765
  %8 = icmp eq i32 %7, 0, !dbg !2766
  br i1 %8, label %5, label %9, !dbg !2763, !llvm.loop !2767

9:                                                ; preds = %5
  ret void, !dbg !2769
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_fatal_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2770 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2774, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 %1, metadata !2775, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %2, metadata !2776, metadata !DIExpression()), !dbg !2787
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2788
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2777, metadata !DIExpression()), !dbg !2789
  %7 = bitcast i32* %5 to i8*, !dbg !2790
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2790
  call void @llvm.dbg.value(metadata i32* %5, metadata !2786, metadata !DIExpression(DW_OP_deref)), !dbg !2787
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !2791
  call void @llvm.va_start(i8* nonnull %6), !dbg !2792
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2793
  %10 = load i32, i32* %9, align 4, !dbg !2793
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2793
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !2793
  call void @llvm.va_end(i8* nonnull %6), !dbg !2794
  %13 = load i32, i32* %5, align 4, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %13, metadata !2786, metadata !DIExpression()), !dbg !2787
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !2796
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2797
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2797
  ret void, !dbg !2797
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #8

; Function Attrs: optsize
declare dso_local i32 @vprintf(i8* noundef, [1 x i32]) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #8

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_error_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2798 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2800, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 %1, metadata !2801, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i8* %2, metadata !2802, metadata !DIExpression()), !dbg !2805
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2806
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2806
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2803, metadata !DIExpression()), !dbg !2807
  %7 = bitcast i32* %5 to i8*, !dbg !2808
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2808
  call void @llvm.dbg.value(metadata i32* %5, metadata !2804, metadata !DIExpression(DW_OP_deref)), !dbg !2805
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !2809
  call void @llvm.va_start(i8* nonnull %6), !dbg !2810
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2811
  %10 = load i32, i32* %9, align 4, !dbg !2811
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2811
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !2811
  call void @llvm.va_end(i8* nonnull %6), !dbg !2812
  %13 = load i32, i32* %5, align 4, !dbg !2813
  call void @llvm.dbg.value(metadata i32 %13, metadata !2804, metadata !DIExpression()), !dbg !2805
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !2814
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2815
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2815
  ret void, !dbg !2815
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_warning_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2816 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2818, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i32 %1, metadata !2819, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %2, metadata !2820, metadata !DIExpression()), !dbg !2823
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2824
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2824
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2821, metadata !DIExpression()), !dbg !2825
  %7 = bitcast i32* %5 to i8*, !dbg !2826
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2826
  call void @llvm.dbg.value(metadata i32* %5, metadata !2822, metadata !DIExpression(DW_OP_deref)), !dbg !2823
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !2827
  call void @llvm.va_start(i8* nonnull %6), !dbg !2828
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2829
  %10 = load i32, i32* %9, align 4, !dbg !2829
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2829
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !2829
  call void @llvm.va_end(i8* nonnull %6), !dbg !2830
  %13 = load i32, i32* %5, align 4, !dbg !2831
  call void @llvm.dbg.value(metadata i32 %13, metadata !2822, metadata !DIExpression()), !dbg !2823
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !2832
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2833
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2833
  ret void, !dbg !2833
}

; Function Attrs: noinline nounwind optsize
define dso_local void @log_hal_info_internal(i8* nocapture noundef readnone %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #3 !dbg !2834 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2836, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 %1, metadata !2837, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %2, metadata !2838, metadata !DIExpression()), !dbg !2841
  %6 = bitcast %struct.__va_list* %4 to i8*, !dbg !2842
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2842
  call void @llvm.dbg.declare(metadata %struct.__va_list* %4, metadata !2839, metadata !DIExpression()), !dbg !2843
  %7 = bitcast i32* %5 to i8*, !dbg !2844
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2844
  call void @llvm.dbg.value(metadata i32* %5, metadata !2840, metadata !DIExpression(DW_OP_deref)), !dbg !2841
  %8 = call i32 @hal_nvic_save_and_set_interrupt_mask(i32* noundef nonnull %5) #16, !dbg !2845
  call void @llvm.va_start(i8* nonnull %6), !dbg !2846
  %9 = bitcast %struct.__va_list* %4 to i32*, !dbg !2847
  %10 = load i32, i32* %9, align 4, !dbg !2847
  %11 = insertvalue [1 x i32] poison, i32 %10, 0, !dbg !2847
  %12 = call i32 @vprintf(i8* noundef %2, [1 x i32] %11) #16, !dbg !2847
  call void @llvm.va_end(i8* nonnull %6), !dbg !2848
  %13 = load i32, i32* %5, align 4, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %13, metadata !2840, metadata !DIExpression()), !dbg !2841
  %14 = call i32 @hal_nvic_restore_interrupt_mask(i32 noundef %13) #16, !dbg !2850
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #17, !dbg !2851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !2851
  ret void, !dbg !2851
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @log_hal_dump_internal(i8* nocapture noundef %0, i32 noundef %1, i8* nocapture noundef %2, i8* nocapture noundef %3, i32 noundef %4, ...) local_unnamed_addr #9 !dbg !2852 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2858, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 %1, metadata !2859, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %2, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %3, metadata !2861, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i32 %4, metadata !2862, metadata !DIExpression()), !dbg !2863
  ret void, !dbg !2864
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_crypt_lock_take() local_unnamed_addr #3 !dbg !2865 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %1, metadata !2869, metadata !DIExpression()), !dbg !2871
  %2 = load i8, i8* @g_crypt_lock, align 1, !dbg !2872, !range !2874
  %3 = icmp eq i8 %2, 0, !dbg !2872
  br i1 %3, label %4, label %5, !dbg !2875

4:                                                ; preds = %0
  store i8 1, i8* @g_crypt_lock, align 1, !dbg !2876
  br label %5, !dbg !2877

5:                                                ; preds = %0, %4
  %6 = phi i32 [ 0, %4 ], [ -100, %0 ], !dbg !2871
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !2871
  ret i32 %6, !dbg !2878
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn writeonly
define dso_local void @hal_crypt_lock_give() local_unnamed_addr #10 !dbg !2879 {
  store i8 0, i8* @g_crypt_lock, align 1, !dbg !2880
  ret void, !dbg !2881
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 !dbg !2882 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !2893, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !2894, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !2895, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %3, metadata !2896, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8 %4, metadata !2897, metadata !DIExpression()), !dbg !2910
  %8 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !2911
  %9 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %10 = or i1 %8, %9, !dbg !2913
  %11 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %12 = or i1 %10, %11, !dbg !2913
  %13 = icmp eq i8* %3, null
  %14 = or i1 %12, %13, !dbg !2913
  br i1 %14, label %15, label %16, !dbg !2913

15:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 154, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #16, !dbg !2914
  br label %86, !dbg !2916

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !2917
  %18 = load i32, i32* %17, align 4, !dbg !2917
  %19 = and i32 %18, 15, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %19, metadata !2898, metadata !DIExpression()), !dbg !2910
  %20 = and i32 %18, -16, !dbg !2919
  call void @llvm.dbg.value(metadata i32 %18, metadata !2899, metadata !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value)), !dbg !2910
  %21 = sub nuw nsw i32 16, %19, !dbg !2920
  call void @llvm.dbg.value(metadata !DIArgList(i8 16, i32 %19), metadata !2900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_minus, DW_OP_stack_value)), !dbg !2910
  %22 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !2921
  %23 = load i32, i32* %22, align 4, !dbg !2921
  %24 = add i32 %21, %18, !dbg !2923
  %25 = icmp ult i32 %23, %24, !dbg !2924
  br i1 %25, label %26, label %27, !dbg !2925

26:                                               ; preds = %16
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 163, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0)) #16, !dbg !2926
  br label %86, !dbg !2928

27:                                               ; preds = %16
  %28 = tail call i32 @hal_crypt_lock_take() #15, !dbg !2929
  %29 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @aes_operation_done) #16, !dbg !2930
  %30 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #16, !dbg !2931
  %31 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !2932
  %32 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !2933
  %33 = load i32, i32* %32, align 4, !dbg !2933
  %34 = trunc i32 %33 to i8, !dbg !2934
  %35 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !2935
  %36 = load i8*, i8** %35, align 4, !dbg !2935
  %37 = tail call i32 @aes_set_key(i8 noundef zeroext %34, i8* noundef %36) #16, !dbg !2936
  %38 = icmp eq i8 %4, 1, !dbg !2937
  %39 = zext i1 %38 to i8
  %40 = tail call i32 @aes_configure(i8 noundef zeroext 1, i8 noundef zeroext %39) #16, !dbg !2939
  %41 = icmp ult i32 %18, 16, !dbg !2940
  br i1 %41, label %68, label %42, !dbg !2941

42:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %20, metadata !2902, metadata !DIExpression()), !dbg !2942
  %43 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !2943
  %44 = load i8*, i8** %43, align 4, !dbg !2943
  %45 = load i32, i32* %22, align 4, !dbg !2945
  %46 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !2946
  %47 = load i8*, i8** %46, align 4, !dbg !2946
  %48 = tail call fastcc i32 @do_aes_encrypt(i8* noundef %44, i32 noundef %45, i8* noundef %47, i32 noundef %20, i8* noundef nonnull %3) #15, !dbg !2947
  %49 = icmp eq i32 %48, 0, !dbg !2948
  br i1 %49, label %51, label %50, !dbg !2949

50:                                               ; preds = %42
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 188, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #16, !dbg !2950
  tail call void @hal_crypt_lock_give() #15, !dbg !2952
  br label %86

51:                                               ; preds = %42
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !2953
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #17, !dbg !2953
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !2905, metadata !DIExpression()), !dbg !2954
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %52, i8 0, i32 16, i1 false), !dbg !2954
  %53 = load i8*, i8** %46, align 4, !dbg !2955
  %54 = getelementptr inbounds i8, i8* %53, i32 %20, !dbg !2956
  %55 = call i8* @memcpy(i8* noundef nonnull %52, i8* noundef %54, i32 noundef %19) #16, !dbg !2957
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 %19, !dbg !2958
  %57 = call i8* @memset(i8* noundef nonnull %56, i32 noundef %21, i32 noundef %21) #16, !dbg !2959
  %58 = load i8*, i8** %43, align 4, !dbg !2942
  %59 = getelementptr inbounds i8, i8* %58, i32 %20, !dbg !2960
  %60 = getelementptr inbounds i8, i8* %59, i32 -16, !dbg !2960
  %61 = select i1 %38, i8* %60, i8* %3, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %61, metadata !2901, metadata !DIExpression()), !dbg !2910
  %62 = getelementptr inbounds i8, i8* %58, i32 %20, !dbg !2961
  %63 = load i32, i32* %22, align 4, !dbg !2963
  %64 = call fastcc i32 @do_aes_encrypt(i8* noundef %62, i32 noundef %63, i8* noundef nonnull %52, i32 noundef 16, i8* noundef nonnull %61) #15, !dbg !2964
  %65 = icmp eq i32 %64, 0, !dbg !2965
  br i1 %65, label %66, label %67, !dbg !2966

66:                                               ; preds = %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #17, !dbg !2967
  br label %83

67:                                               ; preds = %51
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 210, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #16, !dbg !2968
  call void @hal_crypt_lock_give() #15, !dbg !2970
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #17, !dbg !2967
  br label %86

68:                                               ; preds = %27
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !2971
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #17, !dbg !2971
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !2908, metadata !DIExpression()), !dbg !2972
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %69, i8 0, i32 16, i1 false), !dbg !2972
  %70 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !2973
  %71 = load i8*, i8** %70, align 4, !dbg !2973
  %72 = load i32, i32* %17, align 4, !dbg !2974
  %73 = call i8* @memcpy(i8* noundef nonnull %69, i8* noundef %71, i32 noundef %72) #16, !dbg !2975
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 %19, !dbg !2976
  %75 = call i8* @memset(i8* noundef nonnull %74, i32 noundef %21, i32 noundef %21) #16, !dbg !2977
  %76 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !2978
  %77 = load i8*, i8** %76, align 4, !dbg !2978
  %78 = load i32, i32* %22, align 4, !dbg !2980
  %79 = call fastcc i32 @do_aes_encrypt(i8* noundef %77, i32 noundef %78, i8* noundef nonnull %69, i32 noundef 16, i8* noundef nonnull %3) #15, !dbg !2981
  %80 = icmp eq i32 %79, 0, !dbg !2982
  br i1 %80, label %82, label %81, !dbg !2983

81:                                               ; preds = %68
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_aes_encrypt_with_padding, i32 0, i32 0), i32 noundef 223, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #16, !dbg !2984
  call void @hal_crypt_lock_give() #15, !dbg !2986
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #17, !dbg !2987
  br label %86

82:                                               ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #17, !dbg !2987
  br label %83

83:                                               ; preds = %66, %82
  %84 = add i32 %18, 16, !dbg !2988
  %85 = and i32 %84, -16, !dbg !2988
  store i32 %85, i32* %22, align 4, !dbg !2989
  call void @hal_crypt_lock_give() #15, !dbg !2990
  br label %86, !dbg !2991

86:                                               ; preds = %67, %50, %81, %26, %83, %15
  %87 = phi i32 [ -1, %15 ], [ -1, %26 ], [ 0, %83 ], [ -1, %67 ], [ -1, %81 ], [ -1, %50 ], !dbg !2910
  ret i32 %87, !dbg !2992
}

; Function Attrs: noinline nounwind optsize
define internal void @aes_operation_done(i32 noundef %0) #3 !dbg !2993 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2995, metadata !DIExpression()), !dbg !2996
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 6) #16, !dbg !2997
  %3 = tail call i32 @hal_nvic_clear_pending_irq(i32 noundef 6) #16, !dbg !2998
  store volatile i8 1, i8* @g_aes_op_done, align 1, !dbg !2999
  %4 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !3000
  ret void, !dbg !3001
}

; Function Attrs: optsize
declare dso_local i32 @aes_set_key(i8 noundef zeroext, i8* noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i32 @aes_configure(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_aes_encrypt(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4) unnamed_addr #3 !dbg !3002 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3006, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %1, metadata !3007, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8* %2, metadata !3008, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %3, metadata !3009, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata i8* %4, metadata !3010, metadata !DIExpression()), !dbg !3013
  store volatile i8 0, i8* @g_aes_op_done, align 1, !dbg !3014
  %6 = trunc i32 %1 to i16, !dbg !3015
  %7 = trunc i32 %3 to i16, !dbg !3016
  %8 = tail call i32 @aes_operate(i8* noundef %0, i16 noundef zeroext %6, i8* noundef %2, i16 noundef zeroext %7, i8* noundef %4, i8 noundef zeroext 1) #16, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %8, metadata !3011, metadata !DIExpression()), !dbg !3013
  %9 = icmp slt i32 %8, 0, !dbg !3018
  br i1 %9, label %10, label %11, !dbg !3020

10:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_encrypt, i32 0, i32 0), i32 noundef 100, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #16, !dbg !3021
  br label %19, !dbg !3023

11:                                               ; preds = %5, %15
  %12 = phi i32 [ %16, %15 ], [ 0, %5 ], !dbg !3013
  call void @llvm.dbg.value(metadata i32 %12, metadata !3012, metadata !DIExpression()), !dbg !3013
  %13 = load volatile i8, i8* @g_aes_op_done, align 1, !dbg !3024, !range !2874
  %14 = icmp eq i8 %13, 0, !dbg !3024
  br i1 %14, label %15, label %19, !dbg !3025

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %12, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i32 %16, metadata !3012, metadata !DIExpression()), !dbg !3013
  %17 = icmp eq i32 %16, 268435457, !dbg !3028
  br i1 %17, label %18, label %11, !dbg !3030, !llvm.loop !3031

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_encrypt, i32 0, i32 0), i32 noundef 108, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0)) #16, !dbg !3033
  br label %19, !dbg !3035

19:                                               ; preds = %11, %18, %10
  %20 = phi i32 [ -1, %10 ], [ -1, %18 ], [ 0, %11 ], !dbg !3013
  ret i32 %20, !dbg !3036
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
define dso_local i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 !dbg !3037 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3039, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3040, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3041, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8* %3, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i8 %4, metadata !3043, metadata !DIExpression()), !dbg !3045
  %6 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !3046
  %7 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %8 = or i1 %6, %7, !dbg !3048
  %9 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %10 = or i1 %8, %9, !dbg !3048
  %11 = icmp eq i8* %3, null
  %12 = or i1 %10, %11, !dbg !3048
  br i1 %12, label %13, label %14, !dbg !3048

13:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 245, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #16, !dbg !3049
  br label %57, !dbg !3051

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3052
  %16 = load i32, i32* %15, align 4, !dbg !3052
  %17 = and i32 %16, 15, !dbg !3054
  %18 = icmp eq i32 %17, 0, !dbg !3055
  br i1 %18, label %20, label %19, !dbg !3056

19:                                               ; preds = %14
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 250, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i32 noundef %16) #16, !dbg !3057
  br label %57, !dbg !3059

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3060
  %22 = load i32, i32* %21, align 4, !dbg !3060
  %23 = add i32 %16, -16, !dbg !3062
  %24 = icmp ult i32 %22, %23, !dbg !3063
  br i1 %24, label %25, label %26, !dbg !3064

25:                                               ; preds = %20
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 255, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i32 0, i32 0), i32 noundef %16, i32 noundef %16) #16, !dbg !3065
  br label %57, !dbg !3067

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !3068
  %28 = load i32, i32* %27, align 4, !dbg !3068
  switch i32 %28, label %29 [
    i32 16, label %30
    i32 24, label %30
    i32 32, label %30
  ], !dbg !3070

29:                                               ; preds = %26
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 261, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), i32 noundef %28) #16, !dbg !3071
  br label %57, !dbg !3073

30:                                               ; preds = %26, %26, %26
  %31 = tail call i32 @hal_crypt_lock_take() #15, !dbg !3074
  %32 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @aes_operation_done) #16, !dbg !3075
  %33 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #16, !dbg !3076
  %34 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !3077
  %35 = load i32, i32* %27, align 4, !dbg !3078
  %36 = trunc i32 %35 to i8, !dbg !3079
  %37 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !3080
  %38 = load i8*, i8** %37, align 4, !dbg !3080
  %39 = tail call i32 @aes_set_key(i8 noundef zeroext %36, i8* noundef %38) #16, !dbg !3081
  %40 = icmp eq i8 %4, 1, !dbg !3082
  %41 = zext i1 %40 to i8
  %42 = tail call i32 @aes_configure(i8 noundef zeroext 1, i8 noundef zeroext %41) #16, !dbg !3084
  %43 = tail call fastcc i32 @do_aes_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %0, %struct.hal_aes_buffer_t* noundef nonnull %1, i8* noundef nonnull %3) #15, !dbg !3085
  %44 = icmp eq i32 %43, 0, !dbg !3087
  br i1 %44, label %46, label %45, !dbg !3088

45:                                               ; preds = %30
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 280, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #16, !dbg !3089
  tail call void @hal_crypt_lock_give() #15, !dbg !3091
  br label %57, !dbg !3092

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3093
  %48 = load i8*, i8** %47, align 4, !dbg !3093
  %49 = load i32, i32* %15, align 4, !dbg !3094
  %50 = add i32 %49, -1, !dbg !3095
  %51 = getelementptr inbounds i8, i8* %48, i32 %50, !dbg !3096
  %52 = load i8, i8* %51, align 1, !dbg !3096
  call void @llvm.dbg.value(metadata i8 %52, metadata !3044, metadata !DIExpression()), !dbg !3045
  %53 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), !dbg !3097
  tail call void (i8*, i32, i8*, i8*, i32, ...) @log_hal_dump_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_aes_decrypt, i32 0, i32 0), i32 noundef 286, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0), i8* noundef %48, i32 noundef %49, i8* noundef %53) #16, !dbg !3097
  %54 = load i32, i32* %15, align 4, !dbg !3098
  %55 = zext i8 %52 to i32, !dbg !3099
  %56 = sub i32 %54, %55, !dbg !3100
  store i32 %56, i32* %21, align 4, !dbg !3101
  tail call void @hal_crypt_lock_give() #15, !dbg !3102
  br label %57

57:                                               ; preds = %46, %45, %29, %25, %19, %13
  %58 = phi i32 [ -1, %13 ], [ -1, %19 ], [ -1, %25 ], [ -1, %29 ], [ -1, %45 ], [ 0, %46 ], !dbg !3045
  ret i32 %58, !dbg !3103
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_aes_decrypt(%struct.hal_aes_buffer_t* nocapture noundef readonly %0, %struct.hal_aes_buffer_t* nocapture noundef readonly %1, i8* noundef %2) unnamed_addr #3 !dbg !3104 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3108, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3109, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i8* %2, metadata !3110, metadata !DIExpression()), !dbg !3113
  store volatile i8 0, i8* @g_aes_op_done, align 1, !dbg !3114
  %4 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3115
  %5 = load i8*, i8** %4, align 4, !dbg !3115
  %6 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3116
  %7 = load i32, i32* %6, align 4, !dbg !3116
  %8 = trunc i32 %7 to i16, !dbg !3117
  %9 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3118
  %10 = load i8*, i8** %9, align 4, !dbg !3118
  %11 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3119
  %12 = load i32, i32* %11, align 4, !dbg !3119
  %13 = trunc i32 %12 to i16, !dbg !3120
  %14 = tail call i32 @aes_operate(i8* noundef %5, i16 noundef zeroext %8, i8* noundef %10, i16 noundef zeroext %13, i8* noundef %2, i8 noundef zeroext 0) #16, !dbg !3121
  call void @llvm.dbg.value(metadata i32 %14, metadata !3111, metadata !DIExpression()), !dbg !3113
  %15 = icmp slt i32 %14, 0, !dbg !3122
  br i1 %15, label %16, label %17, !dbg !3124

16:                                               ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_decrypt, i32 0, i32 0), i32 noundef 128, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)) #16, !dbg !3125
  br label %25, !dbg !3127

17:                                               ; preds = %3, %21
  %18 = phi i32 [ %22, %21 ], [ 0, %3 ], !dbg !3113
  call void @llvm.dbg.value(metadata i32 %18, metadata !3112, metadata !DIExpression()), !dbg !3113
  %19 = load volatile i8, i8* @g_aes_op_done, align 1, !dbg !3128, !range !2874
  %20 = icmp eq i8 %19, 0, !dbg !3128
  br i1 %20, label %21, label %25, !dbg !3129

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %18, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %22, metadata !3112, metadata !DIExpression()), !dbg !3113
  %23 = icmp eq i32 %22, 268435457, !dbg !3132
  br i1 %23, label %24, label %17, !dbg !3134, !llvm.loop !3135

24:                                               ; preds = %21
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_aes_decrypt, i32 0, i32 0), i32 noundef 136, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0)) #16, !dbg !3137
  br label %25, !dbg !3139

25:                                               ; preds = %17, %24, %16
  %26 = phi i32 [ -1, %16 ], [ -1, %24 ], [ 0, %17 ], !dbg !3113
  ret i32 %26, !dbg !3140
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_cbc_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #3 !dbg !3141 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3145, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3146, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3147, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8* %3, metadata !3148, metadata !DIExpression()), !dbg !3149
  %5 = tail call i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #15, !dbg !3150
  ret i32 %5, !dbg !3151
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_cbc_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #3 !dbg !3152 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3154, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3155, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8* %3, metadata !3157, metadata !DIExpression()), !dbg !3158
  %5 = tail call i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #15, !dbg !3159
  ret i32 %5, !dbg !3160
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_ecb_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #3 !dbg !3161 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3165, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3166, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3167, metadata !DIExpression()), !dbg !3169
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #17, !dbg !3170
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !dbg !3171
  %6 = call i32 @hal_aes_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #15, !dbg !3172
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #17, !dbg !3173
  ret i32 %6, !dbg !3174
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_aes_ecb_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #3 !dbg !3175 {
  %4 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3177, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3178, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3179, metadata !DIExpression()), !dbg !3181
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !3182
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #17, !dbg !3182
  call void @llvm.dbg.declare(metadata [16 x i8]* %4, metadata !3180, metadata !DIExpression()), !dbg !3183
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false), !dbg !3183
  %6 = call i32 @hal_aes_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #15, !dbg !3184
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #17, !dbg !3185
  ret i32 %6, !dbg !3186
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_init() local_unnamed_addr #3 !dbg !3187 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3195
  call void @llvm.dbg.value(metadata i32 %1, metadata !3194, metadata !DIExpression()), !dbg !3196
  %2 = load volatile i8, i8* @g_cache_status, align 1, !dbg !3197, !range !2874
  %3 = icmp eq i8 %2, 0, !dbg !3197
  br i1 %3, label %5, label %4, !dbg !3199

4:                                                ; preds = %0
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3200
  br label %15, !dbg !3202

5:                                                ; preds = %0
  store volatile i8 1, i8* @g_cache_status, align 1, !dbg !3203
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3205
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #15, !dbg !3206
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3207
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3208
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3209
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3210
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()), !dbg !3196
  br label %7, !dbg !3211

7:                                                ; preds = %5, %7
  %8 = phi i32 [ 0, %5 ], [ %13, %7 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !3192, metadata !DIExpression()), !dbg !3196
  %9 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %8, !dbg !3213
  store volatile i32 0, i32* %9, align 4, !dbg !3216
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %8, !dbg !3217
  store volatile i32 0, i32* %10, align 4, !dbg !3218
  %11 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 0, i32 0, i32 0, !dbg !3219
  store i32 0, i32* %11, align 4, !dbg !3220
  %12 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %8, i32 1, i32 0, i32 0, !dbg !3221
  store i32 0, i32* %12, align 4, !dbg !3222
  %13 = add nuw nsw i32 %8, 1, !dbg !3223
  call void @llvm.dbg.value(metadata i32 %13, metadata !3192, metadata !DIExpression()), !dbg !3196
  %14 = icmp eq i32 %13, 16, !dbg !3224
  br i1 %14, label %15, label %7, !dbg !3211, !llvm.loop !3225

15:                                               ; preds = %7, %4
  %16 = phi i32 [ -6, %4 ], [ 0, %7 ], !dbg !3196
  ret i32 %16, !dbg !3227
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3228 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %1, metadata !3230, metadata !DIExpression()), !dbg !3232
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3233
  %3 = and i32 %2, -31, !dbg !3233
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3233
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3234
  %5 = or i32 %4, 19, !dbg !3234
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3234
  %6 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3235
  %7 = and i32 %6, -31, !dbg !3235
  store volatile i32 %7, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3235
  %8 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3236
  %9 = or i32 %8, 3, !dbg !3236
  store volatile i32 %9, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3236
  tail call void asm sideeffect "isb", ""() #17, !dbg !3237, !srcloc !3241
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3242
  ret i32 0, !dbg !3243
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_deinit() local_unnamed_addr #3 !dbg !3244 {
  %1 = tail call i32 @hal_cache_invalidate_all_cache_lines() #15, !dbg !3247
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3248
  store volatile i32 0, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3249
  store i32 0, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3250
  store i32 0, i32* @g_cache_region_en, align 4, !dbg !3251
  call void @llvm.dbg.value(metadata i32 0, metadata !3246, metadata !DIExpression()), !dbg !3252
  br label %2, !dbg !3253

2:                                                ; preds = %0, %2
  %3 = phi i32 [ 0, %0 ], [ %8, %2 ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !3246, metadata !DIExpression()), !dbg !3252
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %3, !dbg !3255
  store volatile i32 0, i32* %4, align 4, !dbg !3258
  %5 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %3, !dbg !3259
  store volatile i32 0, i32* %5, align 4, !dbg !3260
  %6 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 0, i32 0, i32 0, !dbg !3261
  store i32 0, i32* %6, align 4, !dbg !3262
  %7 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %3, i32 1, i32 0, i32 0, !dbg !3263
  store i32 0, i32* %7, align 4, !dbg !3264
  %8 = add nuw nsw i32 %3, 1, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %8, metadata !3246, metadata !DIExpression()), !dbg !3252
  %9 = icmp eq i32 %8, 16, !dbg !3266
  br i1 %9, label %10, label %2, !dbg !3253, !llvm.loop !3267

10:                                               ; preds = %2
  store volatile i8 0, i8* @g_cache_status, align 1, !dbg !3269
  ret i32 0, !dbg !3270
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_enable() local_unnamed_addr #0 !dbg !3271 {
  %1 = load i32, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3272
  %2 = and i32 %1, 768, !dbg !3274
  %3 = icmp eq i32 %2, 0, !dbg !3274
  br i1 %3, label %8, label %4, !dbg !3275

4:                                                ; preds = %0
  %5 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3276
  %6 = or i32 %5, 13, !dbg !3276
  store volatile i32 %6, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3276
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3277
  store i32 %7, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3278
  br label %8, !dbg !3279

8:                                                ; preds = %0, %4
  %9 = phi i32 [ 0, %4 ], [ -5, %0 ], !dbg !3280
  ret i32 %9, !dbg !3281
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_disable() local_unnamed_addr #3 !dbg !3282 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3285
  call void @llvm.dbg.value(metadata i32 %1, metadata !3284, metadata !DIExpression()), !dbg !3286
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3287
  %3 = and i32 %2, 1, !dbg !3289
  %4 = icmp eq i32 %3, 0, !dbg !3289
  br i1 %4, label %7, label %5, !dbg !3290

5:                                                ; preds = %0
  %6 = tail call i32 @hal_cache_invalidate_all_cache_lines() #15, !dbg !3291
  br label %7, !dbg !3293

7:                                                ; preds = %5, %0
  %8 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3294
  %9 = and i32 %8, -2, !dbg !3294
  store volatile i32 %9, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3294
  %10 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3295
  store i32 %10, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3296
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3297
  ret i32 0, !dbg !3298
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_enable(i32 noundef %0) local_unnamed_addr #0 !dbg !3299 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3303, metadata !DIExpression()), !dbg !3304
  %2 = icmp ugt i32 %0, 15, !dbg !3305
  br i1 %2, label %13, label %3, !dbg !3307

3:                                                ; preds = %1
  %4 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3308
  %5 = load volatile i32, i32* %4, align 4, !dbg !3308
  %6 = and i32 %5, 256, !dbg !3310
  %7 = icmp eq i32 %6, 0, !dbg !3310
  br i1 %7, label %13, label %8, !dbg !3311

8:                                                ; preds = %3
  %9 = shl nuw nsw i32 1, %0, !dbg !3312
  %10 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3314
  %11 = or i32 %10, %9, !dbg !3314
  store volatile i32 %11, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3314
  %12 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3315
  store i32 %12, i32* @g_cache_region_en, align 4, !dbg !3316
  br label %13, !dbg !3317

13:                                               ; preds = %3, %1, %8
  %14 = phi i32 [ 0, %8 ], [ -4, %1 ], [ -1, %3 ], !dbg !3304
  ret i32 %14, !dbg !3318
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_region_disable(i32 noundef %0) local_unnamed_addr #0 !dbg !3319 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3321, metadata !DIExpression()), !dbg !3322
  %2 = icmp ugt i32 %0, 15, !dbg !3323
  br i1 %2, label %11, label %3, !dbg !3325

3:                                                ; preds = %1
  %4 = shl nuw nsw i32 1, %0, !dbg !3326
  %5 = xor i32 %4, -1, !dbg !3327
  %6 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3328
  %7 = and i32 %6, %5, !dbg !3328
  store volatile i32 %7, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3328
  %8 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3329
  store i32 %8, i32* @g_cache_region_en, align 4, !dbg !3330
  %9 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3331
  store i32 0, i32* %9, align 4, !dbg !3332
  %10 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3333
  store i32 0, i32* %10, align 4, !dbg !3334
  br label %11, !dbg !3335

11:                                               ; preds = %1, %3
  %12 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !3322
  ret i32 %12, !dbg !3336
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_cache_set_size(i32 noundef %0) local_unnamed_addr #0 !dbg !3337 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3342, metadata !DIExpression()), !dbg !3343
  %2 = icmp ugt i32 %0, 3, !dbg !3344
  br i1 %2, label %13, label %3, !dbg !3346

3:                                                ; preds = %1
  %4 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3347
  %5 = and i32 %4, -769, !dbg !3347
  store volatile i32 %5, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3347
  %6 = shl nuw nsw i32 %0, 8, !dbg !3348
  %7 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3349
  %8 = or i32 %7, %6, !dbg !3349
  store volatile i32 %8, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3349
  %9 = icmp eq i32 %0, 0, !dbg !3350
  br i1 %9, label %10, label %11, !dbg !3352

10:                                               ; preds = %3
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3353
  br label %11, !dbg !3355

11:                                               ; preds = %10, %3
  %12 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3356
  store i32 %12, i32* getelementptr inbounds (%union.CACHE_CON_Type, %union.CACHE_CON_Type* @g_cache_con, i32 0, i32 0, i32 0), align 4, !dbg !3357
  br label %13, !dbg !3358

13:                                               ; preds = %1, %11
  %14 = phi i32 [ 0, %11 ], [ -5, %1 ], !dbg !3343
  ret i32 %14, !dbg !3359
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_region_config(i32 noundef %0, %struct.hal_cache_region_config_t* noundef readonly %1) local_unnamed_addr #3 !dbg !3360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3371, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata %struct.hal_cache_region_config_t* %1, metadata !3372, metadata !DIExpression()), !dbg !3373
  %3 = icmp ugt i32 %0, 15, !dbg !3374
  br i1 %3, label %30, label %4, !dbg !3376

4:                                                ; preds = %2
  %5 = icmp eq %struct.hal_cache_region_config_t* %1, null, !dbg !3377
  br i1 %5, label %30, label %6, !dbg !3379

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 0, !dbg !3380
  %8 = load i32, i32* %7, align 4, !dbg !3380
  %9 = and i32 %8, 4095, !dbg !3382
  %10 = icmp eq i32 %9, 0, !dbg !3382
  br i1 %10, label %12, label %11, !dbg !3383

11:                                               ; preds = %6
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0), i32 noundef 251, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i32 0, i32 0)) #18, !dbg !3384
  unreachable, !dbg !3384

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.hal_cache_region_config_t, %struct.hal_cache_region_config_t* %1, i32 0, i32 1, !dbg !3386
  %14 = load i32, i32* %13, align 4, !dbg !3386
  %15 = and i32 %14, 4095, !dbg !3388
  %16 = icmp eq i32 %15, 0, !dbg !3388
  br i1 %16, label %18, label %17, !dbg !3389

17:                                               ; preds = %12
  tail call void @__assert_func(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.hal_cache_region_config, i32 0, i32 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.14, i32 0, i32 0)) #18, !dbg !3390
  unreachable, !dbg !3390

18:                                               ; preds = %12
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %0, !dbg !3392
  store volatile i32 %8, i32* %19, align 4, !dbg !3393
  %20 = load i32, i32* %7, align 4, !dbg !3394
  %21 = load i32, i32* %13, align 4, !dbg !3395
  %22 = add i32 %21, %20, !dbg !3396
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %0, !dbg !3397
  store volatile i32 %22, i32* %23, align 4, !dbg !3398
  %24 = load volatile i32, i32* %19, align 4, !dbg !3399
  %25 = or i32 %24, 256, !dbg !3399
  store volatile i32 %25, i32* %19, align 4, !dbg !3399
  %26 = load volatile i32, i32* %19, align 4, !dbg !3400
  %27 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 0, i32 0, i32 0, !dbg !3401
  store i32 %26, i32* %27, align 4, !dbg !3402
  %28 = load volatile i32, i32* %23, align 4, !dbg !3403
  %29 = getelementptr inbounds [16 x %struct.CACHE_ENTRY_Type], [16 x %struct.CACHE_ENTRY_Type]* @g_cache_entry, i32 0, i32 %0, i32 1, i32 0, i32 0, !dbg !3404
  store i32 %28, i32* %29, align 4, !dbg !3405
  br label %30, !dbg !3406

30:                                               ; preds = %4, %2, %18
  %31 = phi i32 [ 0, %18 ], [ -4, %2 ], [ -7, %4 ], !dbg !3373
  ret i32 %31, !dbg !3407
}

; Function Attrs: noreturn optsize
declare dso_local void @__assert_func(i8* noundef, i32 noundef, i8* noundef, i8* noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3408 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3412, metadata !DIExpression()), !dbg !3414
  %2 = and i32 %0, 31, !dbg !3415
  %3 = icmp eq i32 %2, 0, !dbg !3415
  br i1 %3, label %4, label %9, !dbg !3417

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3418
  call void @llvm.dbg.value(metadata i32 %5, metadata !3413, metadata !DIExpression()), !dbg !3414
  %6 = and i32 %0, -32, !dbg !3419
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3420
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3421
  %8 = or i32 %7, 5, !dbg !3421
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3421
  tail call void asm sideeffect "isb", ""() #17, !dbg !3422, !srcloc !3241
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !3424
  br label %9, !dbg !3425

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3414
  ret i32 %10, !dbg !3426
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_invalidate_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %1, metadata !3432, metadata !DIExpression()), !dbg !3435
  %3 = add i32 %1, %0, !dbg !3436
  call void @llvm.dbg.value(metadata i32 %3, metadata !3434, metadata !DIExpression()), !dbg !3435
  %4 = or i32 %1, %0, !dbg !3437
  %5 = and i32 %4, 31, !dbg !3437
  %6 = icmp eq i32 %5, 0, !dbg !3437
  br i1 %6, label %7, label %16, !dbg !3437

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3439
  call void @llvm.dbg.value(metadata i32 %8, metadata !3433, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()), !dbg !3435
  %9 = icmp ugt i32 %3, %0, !dbg !3440
  br i1 %9, label %10, label %15, !dbg !3441

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3431, metadata !DIExpression()), !dbg !3435
  %12 = tail call i32 @hal_cache_invalidate_one_cache_line(i32 noundef %11) #15, !dbg !3442
  %13 = add i32 %11, 32, !dbg !3444
  call void @llvm.dbg.value(metadata i32 %13, metadata !3431, metadata !DIExpression()), !dbg !3435
  %14 = icmp ult i32 %13, %3, !dbg !3440
  br i1 %14, label %10, label %15, !dbg !3441, !llvm.loop !3445

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #17, !dbg !3447, !srcloc !3241
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !3449
  br label %16, !dbg !3450

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3435
  ret i32 %17, !dbg !3451
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_one_cache_line(i32 noundef %0) local_unnamed_addr #3 section ".ramTEXT" !dbg !3452 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3454, metadata !DIExpression()), !dbg !3456
  %2 = and i32 %0, 31, !dbg !3457
  %3 = icmp eq i32 %2, 0, !dbg !3457
  br i1 %3, label %4, label %9, !dbg !3459

4:                                                ; preds = %1
  %5 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3460
  call void @llvm.dbg.value(metadata i32 %5, metadata !3455, metadata !DIExpression()), !dbg !3456
  %6 = and i32 %0, -32, !dbg !3461
  store volatile i32 %6, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3462
  %7 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3463
  %8 = or i32 %7, 21, !dbg !3463
  store volatile i32 %8, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3463
  tail call void asm sideeffect "isb", ""() #17, !dbg !3464, !srcloc !3241
  tail call void @restore_interrupt_mask(i32 noundef %5) #16, !dbg !3466
  br label %9, !dbg !3467

9:                                                ; preds = %1, %4
  %10 = phi i32 [ 0, %4 ], [ -7, %1 ], !dbg !3456
  ret i32 %10, !dbg !3468
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_multiple_cache_lines(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 section ".ramTEXT" !dbg !3469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3471, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i32 %1, metadata !3472, metadata !DIExpression()), !dbg !3475
  %3 = add i32 %1, %0, !dbg !3476
  call void @llvm.dbg.value(metadata i32 %3, metadata !3474, metadata !DIExpression()), !dbg !3475
  %4 = or i32 %1, %0, !dbg !3477
  %5 = and i32 %4, 31, !dbg !3477
  %6 = icmp eq i32 %5, 0, !dbg !3477
  br i1 %6, label %7, label %16, !dbg !3477

7:                                                ; preds = %2
  %8 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3479
  call void @llvm.dbg.value(metadata i32 %8, metadata !3473, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i32 %0, metadata !3471, metadata !DIExpression()), !dbg !3475
  %9 = icmp ugt i32 %3, %0, !dbg !3480
  br i1 %9, label %10, label %15, !dbg !3481

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ %0, %7 ]
  call void @llvm.dbg.value(metadata i32 %11, metadata !3471, metadata !DIExpression()), !dbg !3475
  %12 = tail call i32 @hal_cache_flush_one_cache_line(i32 noundef %11) #15, !dbg !3482
  %13 = add i32 %11, 32, !dbg !3484
  call void @llvm.dbg.value(metadata i32 %13, metadata !3471, metadata !DIExpression()), !dbg !3475
  %14 = icmp ult i32 %13, %3, !dbg !3480
  br i1 %14, label %10, label %15, !dbg !3481, !llvm.loop !3485

15:                                               ; preds = %10, %7
  tail call void asm sideeffect "isb", ""() #17, !dbg !3487, !srcloc !3241
  tail call void @restore_interrupt_mask(i32 noundef %8) #16, !dbg !3489
  br label %16, !dbg !3490

16:                                               ; preds = %2, %15
  %17 = phi i32 [ 0, %15 ], [ -7, %2 ], !dbg !3475
  ret i32 %17, !dbg !3491
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_cache_flush_all_cache_lines() local_unnamed_addr #3 section ".ramTEXT" !dbg !3492 {
  %1 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !3495
  call void @llvm.dbg.value(metadata i32 %1, metadata !3494, metadata !DIExpression()), !dbg !3496
  %2 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3497
  %3 = and i32 %2, -31, !dbg !3497
  store volatile i32 %3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3497
  %4 = load volatile i32, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3498
  %5 = or i32 %4, 19, !dbg !3498
  store volatile i32 %5, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !3498
  tail call void asm sideeffect "isb", ""() #17, !dbg !3499, !srcloc !3241
  tail call void @restore_interrupt_mask(i32 noundef %1) #16, !dbg !3501
  ret i32 0, !dbg !3502
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local zeroext i1 @hal_cache_is_cacheable(i32 noundef %0) local_unnamed_addr #0 !dbg !3503 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3507, metadata !DIExpression()), !dbg !3509
  %2 = load volatile i32, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !3510
  %3 = and i32 %2, 8, !dbg !3512
  %4 = icmp eq i32 %3, 0, !dbg !3512
  br i1 %4, label %23, label %5, !dbg !3513

5:                                                ; preds = %1, %20
  %6 = phi i32 [ %21, %20 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !3508, metadata !DIExpression()), !dbg !3509
  %7 = load volatile i32, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !3514
  %8 = shl nuw nsw i32 1, %6, !dbg !3519
  %9 = and i32 %7, %8, !dbg !3520
  %10 = icmp eq i32 %9, 0, !dbg !3520
  br i1 %10, label %20, label %11, !dbg !3521

11:                                               ; preds = %5
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282240 to [16 x i32]*), i32 0, i32 %6, !dbg !3522
  %13 = load volatile i32, i32* %12, align 4, !dbg !3522
  %14 = and i32 %13, -257, !dbg !3525
  %15 = icmp ugt i32 %14, %0, !dbg !3526
  br i1 %15, label %20, label %16, !dbg !3527

16:                                               ; preds = %11
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* inttoptr (i32 22282304 to [16 x i32]*), i32 0, i32 %6, !dbg !3528
  %18 = load volatile i32, i32* %17, align 4, !dbg !3528
  %19 = icmp ugt i32 %18, %0, !dbg !3529
  br i1 %19, label %23, label %20, !dbg !3530

20:                                               ; preds = %5, %16, %11
  %21 = add nuw nsw i32 %6, 1, !dbg !3531
  call void @llvm.dbg.value(metadata i32 %21, metadata !3508, metadata !DIExpression()), !dbg !3509
  %22 = icmp eq i32 %21, 16, !dbg !3532
  br i1 %22, label %23, label %5, !dbg !3533, !llvm.loop !3534

23:                                               ; preds = %20, %16, %1
  %24 = phi i1 [ false, %1 ], [ false, %20 ], [ true, %16 ], !dbg !3509
  ret i1 %24, !dbg !3536
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_des_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 !dbg !3537 {
  %6 = alloca [16 x i8], align 1
  %7 = alloca [16 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3548, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3549, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3550, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8* %3, metadata !3551, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata i8 %4, metadata !3552, metadata !DIExpression()), !dbg !3564
  %8 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !3565
  %9 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %10 = or i1 %8, %9, !dbg !3567
  %11 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %12 = or i1 %10, %11, !dbg !3567
  %13 = icmp eq i8* %3, null
  %14 = or i1 %12, %13, !dbg !3567
  br i1 %14, label %15, label %16, !dbg !3567

15:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_des_encrypt_with_padding, i32 0, i32 0), i32 noundef 132, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)) #16, !dbg !3568
  br label %86, !dbg !3570

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3571
  %18 = load i32, i32* %17, align 4, !dbg !3571
  %19 = and i32 %18, 15, !dbg !3572
  call void @llvm.dbg.value(metadata i32 %19, metadata !3553, metadata !DIExpression()), !dbg !3564
  %20 = sub nuw nsw i32 16, %19, !dbg !3573
  call void @llvm.dbg.value(metadata i32 %20, metadata !3554, metadata !DIExpression()), !dbg !3564
  %21 = and i32 %18, -16, !dbg !3574
  call void @llvm.dbg.value(metadata i32 %18, metadata !3555, metadata !DIExpression(DW_OP_constu, 4, DW_OP_shr, DW_OP_stack_value)), !dbg !3564
  %22 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3575
  %23 = load i32, i32* %22, align 4, !dbg !3575
  %24 = add i32 %20, %18, !dbg !3577
  %25 = icmp ult i32 %23, %24, !dbg !3578
  br i1 %25, label %26, label %27, !dbg !3579

26:                                               ; preds = %16
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_des_encrypt_with_padding, i32 0, i32 0), i32 noundef 142, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.16, i32 0, i32 0)) #16, !dbg !3580
  br label %86, !dbg !3582

27:                                               ; preds = %16
  %28 = tail call i32 @hal_crypt_lock_take() #16, !dbg !3583
  %29 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @des_operation_done) #16, !dbg !3584
  %30 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #16, !dbg !3585
  %31 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !3586
  %32 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !3587
  %33 = load i32, i32* %32, align 4, !dbg !3587
  %34 = trunc i32 %33 to i8, !dbg !3588
  %35 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !3589
  %36 = load i8*, i8** %35, align 4, !dbg !3589
  %37 = tail call i32 @des_set_key(i8 noundef zeroext %34, i8* noundef %36) #16, !dbg !3590
  %38 = icmp eq i8 %4, 1, !dbg !3591
  %39 = zext i1 %38 to i8
  %40 = tail call i32 @des_configure(i8 noundef zeroext 1, i8 noundef zeroext %39) #16, !dbg !3593
  %41 = icmp ult i32 %18, 16, !dbg !3594
  br i1 %41, label %68, label %42, !dbg !3595

42:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i32 %21, metadata !3557, metadata !DIExpression()), !dbg !3596
  %43 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3597
  %44 = load i8*, i8** %43, align 4, !dbg !3597
  %45 = load i32, i32* %22, align 4, !dbg !3599
  %46 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3600
  %47 = load i8*, i8** %46, align 4, !dbg !3600
  %48 = tail call fastcc i32 @do_des_encrypt(i8* noundef %44, i32 noundef %45, i8* noundef %47, i32 noundef %21, i8* noundef nonnull %3) #15, !dbg !3601
  %49 = icmp eq i32 %48, 0, !dbg !3602
  br i1 %49, label %51, label %50, !dbg !3603

50:                                               ; preds = %42
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_des_encrypt_with_padding, i32 0, i32 0), i32 noundef 166, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.17, i32 0, i32 0)) #16, !dbg !3604
  tail call void @hal_crypt_lock_give() #16, !dbg !3606
  br label %86

51:                                               ; preds = %42
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0, !dbg !3607
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %52) #17, !dbg !3607
  call void @llvm.dbg.declare(metadata [16 x i8]* %6, metadata !3560, metadata !DIExpression()), !dbg !3608
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %52, i8 0, i32 16, i1 false), !dbg !3608
  %53 = load i8*, i8** %46, align 4, !dbg !3609
  %54 = getelementptr inbounds i8, i8* %53, i32 %21, !dbg !3610
  %55 = call i8* @memcpy(i8* noundef nonnull %52, i8* noundef %54, i32 noundef %19) #16, !dbg !3611
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 %19, !dbg !3612
  %57 = call i8* @memset(i8* noundef nonnull %56, i32 noundef %20, i32 noundef %20) #16, !dbg !3613
  %58 = load i8*, i8** %43, align 4, !dbg !3596
  %59 = getelementptr inbounds i8, i8* %58, i32 %21, !dbg !3614
  %60 = getelementptr inbounds i8, i8* %59, i32 -8, !dbg !3614
  %61 = select i1 %38, i8* %60, i8* %3, !dbg !3614
  call void @llvm.dbg.value(metadata i8* %61, metadata !3556, metadata !DIExpression()), !dbg !3564
  %62 = getelementptr inbounds i8, i8* %58, i32 %21, !dbg !3615
  %63 = load i32, i32* %22, align 4, !dbg !3617
  %64 = call fastcc i32 @do_des_encrypt(i8* noundef %62, i32 noundef %63, i8* noundef nonnull %52, i32 noundef 16, i8* noundef nonnull %61) #15, !dbg !3618
  %65 = icmp eq i32 %64, 0, !dbg !3619
  br i1 %65, label %66, label %67, !dbg !3620

66:                                               ; preds = %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #17, !dbg !3621
  br label %83

67:                                               ; preds = %51
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_des_encrypt_with_padding, i32 0, i32 0), i32 noundef 188, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.17, i32 0, i32 0)) #16, !dbg !3622
  call void @hal_crypt_lock_give() #16, !dbg !3624
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %52) #17, !dbg !3621
  br label %86

68:                                               ; preds = %27
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !3625
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %69) #17, !dbg !3625
  call void @llvm.dbg.declare(metadata [16 x i8]* %7, metadata !3562, metadata !DIExpression()), !dbg !3626
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(16) %69, i8 0, i32 16, i1 false), !dbg !3626
  %70 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3627
  %71 = load i8*, i8** %70, align 4, !dbg !3627
  %72 = load i32, i32* %17, align 4, !dbg !3628
  %73 = call i8* @memcpy(i8* noundef nonnull %69, i8* noundef %71, i32 noundef %72) #16, !dbg !3629
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 %19, !dbg !3630
  %75 = call i8* @memset(i8* noundef nonnull %74, i32 noundef %20, i32 noundef %20) #16, !dbg !3631
  %76 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3632
  %77 = load i8*, i8** %76, align 4, !dbg !3632
  %78 = load i32, i32* %22, align 4, !dbg !3634
  %79 = call fastcc i32 @do_des_encrypt(i8* noundef %77, i32 noundef %78, i8* noundef nonnull %69, i32 noundef 16, i8* noundef nonnull %3) #15, !dbg !3635
  %80 = icmp eq i32 %79, 0, !dbg !3636
  br i1 %80, label %82, label %81, !dbg !3637

81:                                               ; preds = %68
  call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.hal_des_encrypt_with_padding, i32 0, i32 0), i32 noundef 202, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.17, i32 0, i32 0)) #16, !dbg !3638
  call void @hal_crypt_lock_give() #16, !dbg !3640
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #17, !dbg !3641
  br label %86

82:                                               ; preds = %68
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %69) #17, !dbg !3641
  br label %83

83:                                               ; preds = %66, %82
  %84 = add i32 %18, 16, !dbg !3642
  %85 = and i32 %84, -16, !dbg !3642
  store i32 %85, i32* %22, align 4, !dbg !3643
  call void @hal_crypt_lock_give() #16, !dbg !3644
  br label %86, !dbg !3645

86:                                               ; preds = %67, %50, %81, %26, %83, %15
  %87 = phi i32 [ -1, %15 ], [ -1, %26 ], [ 0, %83 ], [ -1, %67 ], [ -1, %81 ], [ -1, %50 ], !dbg !3564
  ret i32 %87, !dbg !3646
}

; Function Attrs: noinline nounwind optsize
define internal void @des_operation_done(i32 noundef %0) #3 !dbg !3647 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3649, metadata !DIExpression()), !dbg !3650
  %2 = tail call i32 @hal_nvic_disable_irq(i32 noundef 6) #16, !dbg !3651
  %3 = tail call i32 @hal_nvic_clear_pending_irq(i32 noundef 6) #16, !dbg !3652
  store volatile i32 1, i32* @g_des_op_done, align 4, !dbg !3653
  %4 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !3654
  ret void, !dbg !3655
}

; Function Attrs: optsize
declare dso_local i32 @des_set_key(i8 noundef zeroext, i8* noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i32 @des_configure(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_des_encrypt(i8* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4) unnamed_addr #3 !dbg !3656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3660, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %1, metadata !3661, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %2, metadata !3662, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %3, metadata !3663, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i8* %4, metadata !3664, metadata !DIExpression()), !dbg !3667
  store volatile i32 0, i32* @g_des_op_done, align 4, !dbg !3668
  %6 = trunc i32 %1 to i16, !dbg !3669
  %7 = trunc i32 %3 to i16, !dbg !3670
  %8 = tail call i32 @des_operate(i8* noundef %0, i16 noundef zeroext %6, i8* noundef %2, i16 noundef zeroext %7, i8* noundef %4, i8 noundef zeroext 1) #16, !dbg !3671
  call void @llvm.dbg.value(metadata i32 %8, metadata !3665, metadata !DIExpression()), !dbg !3667
  %9 = icmp slt i32 %8, 0, !dbg !3672
  br i1 %9, label %10, label %11, !dbg !3674

10:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_des_encrypt, i32 0, i32 0), i32 noundef 77, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7.18, i32 0, i32 0)) #16, !dbg !3675
  br label %19, !dbg !3677

11:                                               ; preds = %5, %15
  %12 = phi i32 [ %16, %15 ], [ 0, %5 ], !dbg !3667
  call void @llvm.dbg.value(metadata i32 %12, metadata !3666, metadata !DIExpression()), !dbg !3667
  %13 = load volatile i32, i32* @g_des_op_done, align 4, !dbg !3678
  %14 = icmp eq i32 %13, 0, !dbg !3679
  br i1 %14, label %15, label %19, !dbg !3680

15:                                               ; preds = %11
  %16 = add nuw nsw i32 %12, 1, !dbg !3681
  call void @llvm.dbg.value(metadata i32 %16, metadata !3666, metadata !DIExpression()), !dbg !3667
  %17 = icmp eq i32 %16, 268435457, !dbg !3683
  br i1 %17, label %18, label %11, !dbg !3685, !llvm.loop !3686

18:                                               ; preds = %15
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_des_encrypt, i32 0, i32 0), i32 noundef 85, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8.19, i32 0, i32 0)) #16, !dbg !3688
  br label %19, !dbg !3690

19:                                               ; preds = %11, %18, %10
  %20 = phi i32 [ -1, %10 ], [ -1, %18 ], [ 0, %11 ], !dbg !3667
  ret i32 %20, !dbg !3691
}

; Function Attrs: optsize
declare dso_local i32 @des_operate(i8* noundef, i16 noundef zeroext, i8* noundef, i16 noundef zeroext, i8* noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_des_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef readonly %1, %struct.hal_aes_buffer_t* noundef readonly %2, i8* noundef %3, i8 noundef zeroext %4) local_unnamed_addr #3 !dbg !3692 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3694, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3695, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3696, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i8* %3, metadata !3697, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i8 %4, metadata !3698, metadata !DIExpression()), !dbg !3700
  %6 = icmp eq %struct.hal_aes_buffer_t* %0, null, !dbg !3701
  %7 = icmp eq %struct.hal_aes_buffer_t* %1, null
  %8 = or i1 %6, %7, !dbg !3703
  %9 = icmp eq %struct.hal_aes_buffer_t* %2, null
  %10 = or i1 %8, %9, !dbg !3703
  %11 = icmp eq i8* %3, null
  %12 = or i1 %10, %11, !dbg !3703
  br i1 %12, label %13, label %14, !dbg !3703

13:                                               ; preds = %5
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_des_decrypt, i32 0, i32 0), i32 noundef 224, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)) #16, !dbg !3704
  br label %55, !dbg !3706

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3707
  %16 = load i32, i32* %15, align 4, !dbg !3707
  %17 = and i32 %16, 7, !dbg !3709
  %18 = icmp eq i32 %17, 0, !dbg !3710
  br i1 %18, label %20, label %19, !dbg !3711

19:                                               ; preds = %14
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_des_decrypt, i32 0, i32 0), i32 noundef 228, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.20, i32 0, i32 0), i32 noundef %16) #16, !dbg !3712
  br label %55, !dbg !3714

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3715
  %22 = load i32, i32* %21, align 4, !dbg !3715
  %23 = add i32 %16, -8, !dbg !3717
  %24 = icmp ult i32 %22, %23, !dbg !3718
  br i1 %24, label %25, label %26, !dbg !3719

25:                                               ; preds = %20
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_des_decrypt, i32 0, i32 0), i32 noundef 233, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4.21, i32 0, i32 0), i32 noundef %22, i32 noundef %16) #16, !dbg !3720
  br label %55, !dbg !3722

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 1, !dbg !3723
  %28 = load i32, i32* %27, align 4, !dbg !3723
  switch i32 %28, label %29 [
    i32 16, label %30
    i32 24, label %30
    i32 8, label %30
  ], !dbg !3725

29:                                               ; preds = %26
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_des_decrypt, i32 0, i32 0), i32 noundef 239, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5.22, i32 0, i32 0), i32 noundef %28) #16, !dbg !3726
  br label %55, !dbg !3728

30:                                               ; preds = %26, %26, %26
  %31 = tail call i32 @hal_crypt_lock_take() #16, !dbg !3729
  %32 = tail call i32 @hal_nvic_register_isr_handler(i32 noundef 6, void (i32)* noundef nonnull @des_operation_done) #16, !dbg !3730
  %33 = tail call i32 @hal_nvic_set_priority(i32 noundef 6, i32 noundef 5) #16, !dbg !3731
  %34 = tail call i32 @hal_nvic_enable_irq(i32 noundef 6) #16, !dbg !3732
  %35 = load i32, i32* %27, align 4, !dbg !3733
  %36 = trunc i32 %35 to i8, !dbg !3734
  %37 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %2, i32 0, i32 0, !dbg !3735
  %38 = load i8*, i8** %37, align 4, !dbg !3735
  %39 = tail call i32 @des_set_key(i8 noundef zeroext %36, i8* noundef %38) #16, !dbg !3736
  %40 = icmp eq i8 %4, 1, !dbg !3737
  %41 = zext i1 %40 to i8
  %42 = tail call i32 @des_configure(i8 noundef zeroext 1, i8 noundef zeroext %41) #16, !dbg !3739
  %43 = tail call fastcc i32 @do_des_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %0, %struct.hal_aes_buffer_t* noundef nonnull %1, i8* noundef nonnull %3) #15, !dbg !3740
  %44 = icmp eq i32 %43, 0, !dbg !3742
  br i1 %44, label %46, label %45, !dbg !3743

45:                                               ; preds = %30
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.hal_des_decrypt, i32 0, i32 0), i32 noundef 257, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6.23, i32 0, i32 0)) #16, !dbg !3744
  tail call void @hal_crypt_lock_give() #16, !dbg !3746
  br label %55, !dbg !3747

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3748
  %48 = load i8*, i8** %47, align 4, !dbg !3748
  %49 = load i32, i32* %15, align 4, !dbg !3749
  %50 = add i32 %49, -1, !dbg !3750
  %51 = getelementptr inbounds i8, i8* %48, i32 %50, !dbg !3751
  %52 = load i8, i8* %51, align 1, !dbg !3751
  %53 = zext i8 %52 to i32, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %53, metadata !3699, metadata !DIExpression()), !dbg !3700
  %54 = sub i32 %49, %53, !dbg !3752
  store i32 %54, i32* %21, align 4, !dbg !3753
  tail call void @hal_crypt_lock_give() #16, !dbg !3754
  br label %55

55:                                               ; preds = %46, %45, %29, %25, %19, %13
  %56 = phi i32 [ -1, %13 ], [ -1, %19 ], [ -1, %25 ], [ -1, %29 ], [ -1, %45 ], [ 0, %46 ], !dbg !3700
  ret i32 %56, !dbg !3755
}

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @do_des_decrypt(%struct.hal_aes_buffer_t* nocapture noundef readonly %0, %struct.hal_aes_buffer_t* nocapture noundef readonly %1, i8* noundef %2) unnamed_addr #3 !dbg !3756 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3760, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3761, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i8* %2, metadata !3762, metadata !DIExpression()), !dbg !3765
  store volatile i32 0, i32* @g_des_op_done, align 4, !dbg !3766
  %4 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 0, !dbg !3767
  %5 = load i8*, i8** %4, align 4, !dbg !3767
  %6 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %1, i32 0, i32 1, !dbg !3768
  %7 = load i32, i32* %6, align 4, !dbg !3768
  %8 = trunc i32 %7 to i16, !dbg !3769
  %9 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 0, !dbg !3770
  %10 = load i8*, i8** %9, align 4, !dbg !3770
  %11 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %0, i32 0, i32 1, !dbg !3771
  %12 = load i32, i32* %11, align 4, !dbg !3771
  %13 = trunc i32 %12 to i16, !dbg !3772
  %14 = tail call i32 @des_operate(i8* noundef %5, i16 noundef zeroext %8, i8* noundef %10, i16 noundef zeroext %13, i8* noundef %2, i8 noundef zeroext 0) #16, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %14, metadata !3763, metadata !DIExpression()), !dbg !3765
  %15 = icmp slt i32 %14, 0, !dbg !3774
  br i1 %15, label %16, label %17, !dbg !3776

16:                                               ; preds = %3
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_des_decrypt, i32 0, i32 0), i32 noundef 105, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7.18, i32 0, i32 0)) #16, !dbg !3777
  br label %25, !dbg !3779

17:                                               ; preds = %3, %21
  %18 = phi i32 [ %22, %21 ], [ 0, %3 ], !dbg !3765
  call void @llvm.dbg.value(metadata i32 %18, metadata !3764, metadata !DIExpression()), !dbg !3765
  %19 = load volatile i32, i32* @g_des_op_done, align 4, !dbg !3780
  %20 = icmp eq i32 %19, 0, !dbg !3781
  br i1 %20, label %21, label %25, !dbg !3782

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %18, 1, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %22, metadata !3764, metadata !DIExpression()), !dbg !3765
  %23 = icmp eq i32 %22, 268435457, !dbg !3785
  br i1 %23, label %24, label %17, !dbg !3787, !llvm.loop !3788

24:                                               ; preds = %21
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.do_des_decrypt, i32 0, i32 0), i32 noundef 113, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9.24, i32 0, i32 0)) #16, !dbg !3790
  br label %25, !dbg !3792

25:                                               ; preds = %17, %24, %16
  %26 = phi i32 [ -1, %16 ], [ -1, %24 ], [ 0, %17 ], !dbg !3765
  ret i32 %26, !dbg !3793
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_des_cbc_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #3 !dbg !3794 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3798, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3799, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3800, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata i8* %3, metadata !3801, metadata !DIExpression()), !dbg !3802
  %5 = tail call i32 @hal_des_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #15, !dbg !3803
  ret i32 %5, !dbg !3804
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_des_cbc_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3) local_unnamed_addr #3 !dbg !3805 {
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3807, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3808, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3809, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()), !dbg !3811
  %5 = tail call i32 @hal_des_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef %3, i8 noundef zeroext 1) #15, !dbg !3812
  ret i32 %5, !dbg !3813
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_des_ecb_encrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #3 !dbg !3814 {
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3818, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3819, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3820, metadata !DIExpression()), !dbg !3823
  %5 = bitcast i64* %4 to i8*, !dbg !3824
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #17, !dbg !3824
  call void @llvm.dbg.value(metadata i64 0, metadata !3821, metadata !DIExpression()), !dbg !3823
  store i64 0, i64* %4, align 8, !dbg !3825
  call void @llvm.dbg.value(metadata i64* %4, metadata !3821, metadata !DIExpression(DW_OP_deref)), !dbg !3823
  %6 = call i32 @hal_des_encrypt_with_padding(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #15, !dbg !3826
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #17, !dbg !3827
  ret i32 %6, !dbg !3828
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_des_ecb_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2) local_unnamed_addr #3 !dbg !3829 {
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %0, metadata !3831, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %1, metadata !3832, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata %struct.hal_aes_buffer_t* %2, metadata !3833, metadata !DIExpression()), !dbg !3835
  %5 = bitcast i64* %4 to i8*, !dbg !3836
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #17, !dbg !3836
  call void @llvm.dbg.value(metadata i64 0, metadata !3834, metadata !DIExpression()), !dbg !3835
  store i64 0, i64* %4, align 8, !dbg !3837
  call void @llvm.dbg.value(metadata i64* %4, metadata !3834, metadata !DIExpression(DW_OP_deref)), !dbg !3835
  %6 = call i32 @hal_des_decrypt(%struct.hal_aes_buffer_t* noundef %0, %struct.hal_aes_buffer_t* noundef %1, %struct.hal_aes_buffer_t* noundef %2, i8* noundef nonnull %5, i8 noundef zeroext 0) #15, !dbg !3838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #17, !dbg !3839
  ret i32 %6, !dbg !3840
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_nvic_init() local_unnamed_addr #9 !dbg !3841 {
  ret i32 0, !dbg !3845
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_enable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3846 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3850, metadata !DIExpression()), !dbg !3852
  call void @llvm.dbg.value(metadata i32 -1, metadata !3851, metadata !DIExpression()), !dbg !3852
  %2 = icmp ugt i32 %0, 95, !dbg !3853
  br i1 %2, label %4, label %3, !dbg !3853

3:                                                ; preds = %1
  tail call fastcc void @NVIC_EnableIRQ(i32 noundef %0) #15, !dbg !3855
  call void @llvm.dbg.value(metadata i32 0, metadata !3851, metadata !DIExpression()), !dbg !3852
  br label %4, !dbg !3857

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3852
  ret i32 %5, !dbg !3858
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_EnableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3859 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3863, metadata !DIExpression()), !dbg !3864
  %2 = and i32 %0, 31, !dbg !3865
  %3 = shl nuw i32 1, %2, !dbg !3866
  %4 = lshr i32 %0, 5, !dbg !3867
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813312 to [8 x i32]*), i32 0, i32 %4, !dbg !3868
  store volatile i32 %3, i32* %5, align 4, !dbg !3869
  ret void, !dbg !3870
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_disable_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3871 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3873, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 -1, metadata !3874, metadata !DIExpression()), !dbg !3875
  %2 = icmp ugt i32 %0, 95, !dbg !3876
  br i1 %2, label %4, label %3, !dbg !3876

3:                                                ; preds = %1
  tail call fastcc void @NVIC_DisableIRQ(i32 noundef %0) #15, !dbg !3878
  call void @llvm.dbg.value(metadata i32 0, metadata !3874, metadata !DIExpression()), !dbg !3875
  br label %4, !dbg !3880

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3875
  ret i32 %5, !dbg !3881
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_DisableIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3882 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3884, metadata !DIExpression()), !dbg !3885
  %2 = and i32 %0, 31, !dbg !3886
  %3 = shl nuw i32 1, %2, !dbg !3887
  %4 = lshr i32 %0, 5, !dbg !3888
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813184 to [8 x i32]*), i32 0, i32 %4, !dbg !3889
  store volatile i32 %3, i32* %5, align 4, !dbg !3890
  ret void, !dbg !3891
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_pending_irq(i32 noundef %0) local_unnamed_addr #2 !dbg !3892 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i32 255, metadata !3897, metadata !DIExpression()), !dbg !3898
  %2 = icmp ugt i32 %0, 95, !dbg !3899
  br i1 %2, label %5, label %3, !dbg !3899

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) #15, !dbg !3901
  call void @llvm.dbg.value(metadata i32 %4, metadata !3897, metadata !DIExpression()), !dbg !3898
  br label %5, !dbg !3903

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 255, %1 ], !dbg !3898
  ret i32 %6, !dbg !3904
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPendingIRQ(i32 noundef %0) unnamed_addr #2 !dbg !3905 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3909, metadata !DIExpression()), !dbg !3910
  %2 = lshr i32 %0, 5, !dbg !3911
  %3 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %2, !dbg !3912
  %4 = load volatile i32, i32* %3, align 4, !dbg !3912
  %5 = and i32 %0, 31, !dbg !3913
  %6 = lshr i32 %4, %5, !dbg !3914
  %7 = and i32 %6, 1, !dbg !3914
  ret i32 %7, !dbg !3915
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3916 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 -1, metadata !3919, metadata !DIExpression()), !dbg !3920
  %2 = icmp ugt i32 %0, 95, !dbg !3921
  br i1 %2, label %4, label %3, !dbg !3921

3:                                                ; preds = %1
  tail call fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) #15, !dbg !3923
  call void @llvm.dbg.value(metadata i32 0, metadata !3919, metadata !DIExpression()), !dbg !3920
  br label %4, !dbg !3925

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3920
  ret i32 %5, !dbg !3926
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3927 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3929, metadata !DIExpression()), !dbg !3930
  %2 = and i32 %0, 31, !dbg !3931
  %3 = shl nuw i32 1, %2, !dbg !3932
  %4 = lshr i32 %0, 5, !dbg !3933
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536813056 to [8 x i32]*), i32 0, i32 %4, !dbg !3934
  store volatile i32 %3, i32* %5, align 4, !dbg !3935
  ret void, !dbg !3936
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_clear_pending_irq(i32 noundef %0) local_unnamed_addr #0 !dbg !3937 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3939, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i32 -1, metadata !3940, metadata !DIExpression()), !dbg !3941
  %2 = icmp ugt i32 %0, 95, !dbg !3942
  br i1 %2, label %4, label %3, !dbg !3942

3:                                                ; preds = %1
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #15, !dbg !3944
  call void @llvm.dbg.value(metadata i32 0, metadata !3940, metadata !DIExpression()), !dbg !3941
  br label %4, !dbg !3946

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -3, %1 ], !dbg !3941
  ret i32 %5, !dbg !3947
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) unnamed_addr #0 !dbg !3948 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3950, metadata !DIExpression()), !dbg !3951
  %2 = and i32 %0, 31, !dbg !3952
  %3 = shl nuw i32 1, %2, !dbg !3953
  %4 = lshr i32 %0, 5, !dbg !3954
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* inttoptr (i32 -536812928 to [8 x i32]*), i32 0, i32 %4, !dbg !3955
  store volatile i32 %3, i32* %5, align 4, !dbg !3956
  ret void, !dbg !3957
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @hal_nvic_set_priority(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !3958 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3962, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i32 %1, metadata !3963, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i32 -1, metadata !3964, metadata !DIExpression()), !dbg !3965
  %3 = icmp ugt i32 %0, 95, !dbg !3966
  br i1 %3, label %5, label %4, !dbg !3966

4:                                                ; preds = %2
  tail call fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) #15, !dbg !3968
  call void @llvm.dbg.value(metadata i32 0, metadata !3964, metadata !DIExpression()), !dbg !3965
  br label %5, !dbg !3970

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 0, %4 ], [ -3, %2 ], !dbg !3965
  ret i32 %6, !dbg !3971
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define internal fastcc void @NVIC_SetPriority(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !dbg !3972 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3976, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 %1, metadata !3977, metadata !DIExpression()), !dbg !3978
  %3 = trunc i32 %1 to i8, !dbg !3979
  %4 = shl i8 %3, 5, !dbg !3979
  %5 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !3982
  store volatile i8 %4, i8* %5, align 1, !dbg !3983
  ret void, !dbg !3984
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @hal_nvic_get_priority(i32 noundef %0) local_unnamed_addr #2 !dbg !3985 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3987, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.value(metadata i32 68, metadata !3988, metadata !DIExpression()), !dbg !3989
  %2 = icmp ugt i32 %0, 95, !dbg !3990
  br i1 %2, label %5, label %3, !dbg !3990

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @NVIC_GetPriority(i32 noundef %0) #15, !dbg !3992
  call void @llvm.dbg.value(metadata i32 %4, metadata !3988, metadata !DIExpression()), !dbg !3989
  br label %5, !dbg !3994

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 68, %1 ], !dbg !3989
  ret i32 %6, !dbg !3995
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @NVIC_GetPriority(i32 noundef %0) unnamed_addr #2 !dbg !3996 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3998, metadata !DIExpression()), !dbg !3999
  %2 = getelementptr inbounds [240 x i8], [240 x i8]* inttoptr (i32 -536812544 to [240 x i8]*), i32 0, i32 %0, !dbg !4000
  %3 = load volatile i8, i8* %2, align 1, !dbg !4000
  %4 = lshr i8 %3, 5, !dbg !4003
  %5 = zext i8 %4 to i32, !dbg !4003
  ret i32 %5, !dbg !4004
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local void @Flash_ReturnReady() local_unnamed_addr #9 !dbg !4005 {
  ret void, !dbg !4006
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @isrC_main() local_unnamed_addr #3 section ".ramTEXT" !dbg !4007 {
  call void @llvm.dbg.value(metadata i32 -1, metadata !4009, metadata !DIExpression()), !dbg !4011
  %1 = tail call fastcc i32 @get_current_irq() #15, !dbg !4012
  call void @llvm.dbg.value(metadata i32 %1, metadata !4010, metadata !DIExpression()), !dbg !4011
  %2 = icmp ugt i32 %1, 95, !dbg !4013
  br i1 %2, label %12, label %3, !dbg !4013

3:                                                ; preds = %0
  %4 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 0, !dbg !4015
  %5 = load void (i32)*, void (i32)** %4, align 4, !dbg !4015
  %6 = icmp eq void (i32)* %5, null, !dbg !4017
  br i1 %6, label %7, label %8, !dbg !4018

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 -4, metadata !4009, metadata !DIExpression()), !dbg !4011
  tail call void (i8*, i32, i8*, ...) @log_hal_error_internal(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.isrC_main, i32 0, i32 0), i32 noundef 194, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i32 0, i32 0)) #16, !dbg !4019
  br label %12, !dbg !4021

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @get_pending_irq() #15, !dbg !4022
  %10 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %1, i32 1, !dbg !4024
  store i32 %9, i32* %10, align 4, !dbg !4025
  %11 = load void (i32)*, void (i32)** %4, align 4, !dbg !4026
  tail call void %11(i32 noundef %1) #16, !dbg !4027
  call void @llvm.dbg.value(metadata i32 0, metadata !4009, metadata !DIExpression()), !dbg !4011
  br label %12, !dbg !4028

12:                                               ; preds = %0, %8, %7
  %13 = phi i32 [ -4, %7 ], [ 0, %8 ], [ -3, %0 ], !dbg !4011
  ret i32 %13, !dbg !4029
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_current_irq() unnamed_addr #2 !dbg !4030 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4033
  %2 = and i32 %1, 511, !dbg !4034
  call void @llvm.dbg.value(metadata i32 %2, metadata !4032, metadata !DIExpression()), !dbg !4035
  %3 = add nsw i32 %2, -16, !dbg !4036
  ret i32 %3, !dbg !4037
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define internal fastcc i32 @get_pending_irq() unnamed_addr #2 !dbg !4038 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810236 to i32*), align 4, !dbg !4039
  %2 = lshr i32 %1, 22, !dbg !4040
  %3 = and i32 %2, 1, !dbg !4040
  ret i32 %3, !dbg !4041
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_register_isr_handler(i32 noundef %0, void (i32)* noundef %1) local_unnamed_addr #3 !dbg !4042 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4047, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata void (i32)* %1, metadata !4048, metadata !DIExpression()), !dbg !4050
  %3 = icmp ugt i32 %0, 95, !dbg !4051
  %4 = icmp eq void (i32)* %1, null
  %5 = or i1 %3, %4, !dbg !4051
  br i1 %5, label %10, label %6, !dbg !4051

6:                                                ; preds = %2
  %7 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4053
  call void @llvm.dbg.value(metadata i32 %7, metadata !4049, metadata !DIExpression()), !dbg !4050
  tail call fastcc void @NVIC_ClearPendingIRQ(i32 noundef %0) #15, !dbg !4054
  %8 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 0, !dbg !4055
  store void (i32)* %1, void (i32)** %8, align 4, !dbg !4056
  %9 = getelementptr inbounds [96 x %struct.nvic_function_t], [96 x %struct.nvic_function_t]* @nvic_function_table, i32 0, i32 %0, i32 1, !dbg !4057
  store i32 0, i32* %9, align 4, !dbg !4058
  tail call void @restore_interrupt_mask(i32 noundef %7) #16, !dbg !4059
  br label %10, !dbg !4060

10:                                               ; preds = %2, %6
  %11 = phi i32 [ 0, %6 ], [ -2, %2 ], !dbg !4050
  ret i32 %11, !dbg !4061
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_save_and_set_interrupt_mask(i32* nocapture noundef writeonly %0) local_unnamed_addr #3 !dbg !4062 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4066, metadata !DIExpression()), !dbg !4067
  %2 = tail call i32 @save_and_set_interrupt_mask() #16, !dbg !4068
  store i32 %2, i32* %0, align 4, !dbg !4069
  ret i32 0, !dbg !4070
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_nvic_restore_interrupt_mask(i32 noundef %0) local_unnamed_addr #3 !dbg !4071 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4075, metadata !DIExpression()), !dbg !4076
  tail call void @restore_interrupt_mask(i32 noundef %0) #16, !dbg !4077
  ret i32 0, !dbg !4078
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_pinmux_set_function(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4079 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4085, metadata !DIExpression()), !dbg !4088
  call void @llvm.dbg.value(metadata i8 %1, metadata !4086, metadata !DIExpression()), !dbg !4088
  %3 = icmp ugt i32 %0, 60, !dbg !4089
  br i1 %3, label %11, label %4, !dbg !4091

4:                                                ; preds = %2
  %5 = icmp ugt i8 %1, 15, !dbg !4092
  br i1 %5, label %11, label %6, !dbg !4094

6:                                                ; preds = %4
  %7 = zext i8 %1 to i32, !dbg !4095
  %8 = tail call i32 @pinmux_config(i32 noundef %0, i32 noundef %7) #16, !dbg !4096
  call void @llvm.dbg.value(metadata i32 %8, metadata !4087, metadata !DIExpression()), !dbg !4088
  %9 = icmp slt i32 %8, 0, !dbg !4097
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4097
  br label %11, !dbg !4098

11:                                               ; preds = %4, %2, %6
  %12 = phi i32 [ %10, %6 ], [ -2, %2 ], [ -1, %4 ], !dbg !4088
  ret i32 %12, !dbg !4099
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_init(i32 noundef %0) local_unnamed_addr #9 !dbg !4100 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4105, metadata !DIExpression()), !dbg !4106
  ret i32 0, !dbg !4107
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @hal_gpio_deinit(i32 noundef %0) local_unnamed_addr #9 !dbg !4108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4110, metadata !DIExpression()), !dbg !4111
  ret i32 0, !dbg !4112
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_input(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4113 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4118, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i32* %1, metadata !4119, metadata !DIExpression()), !dbg !4128
  %4 = icmp eq i32* %1, null, !dbg !4129
  br i1 %4, label %12, label %5, !dbg !4131

5:                                                ; preds = %2
  %6 = icmp ugt i32 %0, 60, !dbg !4132
  br i1 %6, label %12, label %7, !dbg !4134

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4135
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !4135
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4135
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 2, !dbg !4135
  %10 = load i8, i8* %9, align 1, !dbg !4135
  call void @llvm.dbg.value(metadata i8 %10, metadata !4120, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !4128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !4135
  %11 = zext i8 %10 to i32, !dbg !4136
  store i32 %11, i32* %1, align 4, !dbg !4137
  br label %12, !dbg !4138

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -1, %2 ], [ -2, %5 ], !dbg !4128
  ret i32 %13, !dbg !4139
}

; Function Attrs: optsize
declare dso_local void @gpio_get_status(%struct.gpio_status* sret(%struct.gpio_status) align 4, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4140 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4144, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 %1, metadata !4145, metadata !DIExpression()), !dbg !4147
  %3 = icmp ugt i32 %0, 60, !dbg !4148
  br i1 %3, label %9, label %4, !dbg !4150

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4151
  %6 = tail call i32 @gpio_write(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !4152
  call void @llvm.dbg.value(metadata i32 %6, metadata !4146, metadata !DIExpression()), !dbg !4147
  %7 = icmp slt i32 %6, 0, !dbg !4153
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4153
  br label %9, !dbg !4154

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4147
  ret i32 %10, !dbg !4155
}

; Function Attrs: optsize
declare dso_local i32 @gpio_write(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_output(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4156 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4158, metadata !DIExpression()), !dbg !4161
  call void @llvm.dbg.value(metadata i32* %1, metadata !4159, metadata !DIExpression()), !dbg !4161
  %4 = icmp ugt i32 %0, 60, !dbg !4162
  br i1 %4, label %12, label %5, !dbg !4164

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4165
  br i1 %6, label %12, label %7, !dbg !4167

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4168
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !4168
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4168
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 3, !dbg !4168
  %10 = load i8, i8* %9, align 2, !dbg !4168
  call void @llvm.dbg.value(metadata i8 %10, metadata !4160, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4161
  call void @llvm.dbg.value(metadata i8 undef, metadata !4160, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4161
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !4168
  %11 = zext i8 %10 to i32, !dbg !4169
  store i32 %11, i32* %1, align 4, !dbg !4170
  br label %12, !dbg !4171

12:                                               ; preds = %5, %2, %7
  %13 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4161
  ret i32 %13, !dbg !4172
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_direction(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4173 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4178, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i32 %1, metadata !4179, metadata !DIExpression()), !dbg !4181
  %3 = icmp ugt i32 %0, 60, !dbg !4182
  br i1 %3, label %8, label %4, !dbg !4184

4:                                                ; preds = %2
  %5 = tail call i32 @gpio_direction(i32 noundef %0, i32 noundef %1) #16, !dbg !4185
  call void @llvm.dbg.value(metadata i32 %5, metadata !4180, metadata !DIExpression()), !dbg !4181
  %6 = icmp slt i32 %5, 0, !dbg !4186
  %7 = select i1 %6, i32 -3, i32 0, !dbg !4186
  br label %8, !dbg !4187

8:                                                ; preds = %2, %4
  %9 = phi i32 [ %7, %4 ], [ -2, %2 ], !dbg !4181
  ret i32 %9, !dbg !4188
}

; Function Attrs: optsize
declare dso_local i32 @gpio_direction(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_direction(i32 noundef %0, i32* noundef writeonly %1) local_unnamed_addr #3 !dbg !4189 {
  %3 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4194, metadata !DIExpression()), !dbg !4197
  call void @llvm.dbg.value(metadata i32* %1, metadata !4195, metadata !DIExpression()), !dbg !4197
  %4 = icmp ugt i32 %0, 60, !dbg !4198
  br i1 %4, label %13, label %5, !dbg !4200

5:                                                ; preds = %2
  %6 = icmp eq i32* %1, null, !dbg !4201
  br i1 %6, label %13, label %7, !dbg !4203

7:                                                ; preds = %5
  %8 = bitcast %struct.gpio_status* %3 to i8*, !dbg !4204
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #17, !dbg !4204
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %3, i32 noundef %0) #16, !dbg !4204
  call void @llvm.dbg.value(metadata i32 undef, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4197
  %9 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %3, i32 0, i32 1, !dbg !4204
  %10 = load i8, i8* %9, align 4, !dbg !4204
  call void @llvm.dbg.value(metadata i8 %10, metadata !4196, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !4197
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #17, !dbg !4204
  %11 = icmp ne i8 %10, 0, !dbg !4205
  %12 = zext i1 %11 to i32, !dbg !4205
  store i32 %12, i32* %1, align 4, !dbg !4206
  br label %13, !dbg !4207

13:                                               ; preds = %5, %2, %7
  %14 = phi i32 [ 0, %7 ], [ -2, %2 ], [ -1, %5 ], !dbg !4197
  ret i32 %14, !dbg !4208
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_toggle_pin(i32 noundef %0) local_unnamed_addr #3 !dbg !4209 {
  %2 = alloca %struct.gpio_status, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4211, metadata !DIExpression()), !dbg !4213
  %3 = icmp ugt i32 %0, 60, !dbg !4214
  br i1 %3, label %11, label %4, !dbg !4216

4:                                                ; preds = %1
  %5 = bitcast %struct.gpio_status* %2 to i8*, !dbg !4217
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #17, !dbg !4217
  call void @gpio_get_status(%struct.gpio_status* nonnull sret(%struct.gpio_status) align 4 %2, i32 noundef %0) #16, !dbg !4217
  %6 = getelementptr inbounds %struct.gpio_status, %struct.gpio_status* %2, i32 0, i32 3, !dbg !4217
  %7 = load i8, i8* %6, align 2, !dbg !4217
  call void @llvm.dbg.value(metadata i8 %7, metadata !4212, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 8)), !dbg !4213
  call void @llvm.dbg.value(metadata i8 undef, metadata !4212, metadata !DIExpression(DW_OP_LLVM_fragment, 56, 8)), !dbg !4213
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #17, !dbg !4217
  %8 = xor i8 %7, 1, !dbg !4218
  %9 = zext i8 %8 to i32, !dbg !4218
  %10 = call i32 @hal_gpio_set_output(i32 noundef %0, i32 noundef %9) #15, !dbg !4219
  br label %11, !dbg !4220

11:                                               ; preds = %1, %4
  %12 = phi i32 [ %10, %4 ], [ -2, %1 ], !dbg !4213
  ret i32 %12, !dbg !4221
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_up(i32 noundef %0) local_unnamed_addr #3 !dbg !4222 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4224, metadata !DIExpression()), !dbg !4226
  %2 = icmp ugt i32 %0, 60, !dbg !4227
  br i1 %2, label %10, label %3, !dbg !4229

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4230
  call void @llvm.dbg.value(metadata i32 %4, metadata !4225, metadata !DIExpression()), !dbg !4226
  %5 = icmp slt i32 %4, 0, !dbg !4231
  br i1 %5, label %10, label %6, !dbg !4233

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullUp(i32 noundef %0) #16, !dbg !4234
  call void @llvm.dbg.value(metadata i32 %7, metadata !4225, metadata !DIExpression()), !dbg !4226
  %8 = icmp slt i32 %7, 0, !dbg !4235
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4235
  br label %10, !dbg !4236

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4226
  ret i32 %11, !dbg !4237
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDisable(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local i32 @gpio_PullUp(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_pull_down(i32 noundef %0) local_unnamed_addr #3 !dbg !4238 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4240, metadata !DIExpression()), !dbg !4242
  %2 = icmp ugt i32 %0, 60, !dbg !4243
  br i1 %2, label %10, label %3, !dbg !4245

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %4, metadata !4241, metadata !DIExpression()), !dbg !4242
  %5 = icmp slt i32 %4, 0, !dbg !4247
  br i1 %5, label %10, label %6, !dbg !4249

6:                                                ; preds = %3
  %7 = tail call i32 @gpio_PullDown(i32 noundef %0) #16, !dbg !4250
  call void @llvm.dbg.value(metadata i32 %7, metadata !4241, metadata !DIExpression()), !dbg !4242
  %8 = icmp slt i32 %7, 0, !dbg !4251
  %9 = select i1 %8, i32 -3, i32 0, !dbg !4251
  br label %10, !dbg !4252

10:                                               ; preds = %3, %1, %6
  %11 = phi i32 [ %9, %6 ], [ -2, %1 ], [ -3, %3 ], !dbg !4242
  ret i32 %11, !dbg !4253
}

; Function Attrs: optsize
declare dso_local i32 @gpio_PullDown(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_disable_pull(i32 noundef %0) local_unnamed_addr #3 !dbg !4254 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4256, metadata !DIExpression()), !dbg !4258
  %2 = icmp ugt i32 %0, 60, !dbg !4259
  br i1 %2, label %7, label %3, !dbg !4261

3:                                                ; preds = %1
  %4 = tail call i32 @gpio_PullDisable(i32 noundef %0) #16, !dbg !4262
  call void @llvm.dbg.value(metadata i32 %4, metadata !4257, metadata !DIExpression()), !dbg !4258
  %5 = icmp slt i32 %4, 0, !dbg !4263
  %6 = select i1 %5, i32 -3, i32 0, !dbg !4263
  br label %7, !dbg !4264

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ -2, %1 ], !dbg !4258
  ret i32 %8, !dbg !4265
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_set_driving_current(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4266 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4270, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32 %1, metadata !4271, metadata !DIExpression()), !dbg !4273
  %3 = icmp ugt i32 %0, 60, !dbg !4274
  br i1 %3, label %9, label %4, !dbg !4276

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8, !dbg !4277
  %6 = tail call i32 @gpio_SetDriving(i32 noundef %0, i8 noundef zeroext %5) #16, !dbg !4278
  call void @llvm.dbg.value(metadata i32 %6, metadata !4272, metadata !DIExpression()), !dbg !4273
  %7 = icmp slt i32 %6, 0, !dbg !4279
  %8 = select i1 %7, i32 -3, i32 0, !dbg !4279
  br label %9, !dbg !4280

9:                                                ; preds = %2, %4
  %10 = phi i32 [ %8, %4 ], [ -2, %2 ], !dbg !4273
  ret i32 %10, !dbg !4281
}

; Function Attrs: optsize
declare dso_local i32 @gpio_SetDriving(i32 noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_gpio_get_driving_current(i32 noundef %0, i32* nocapture noundef writeonly %1) local_unnamed_addr #3 !dbg !4282 {
  %3 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4287, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i32* %1, metadata !4288, metadata !DIExpression()), !dbg !4291
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3) #17, !dbg !4292
  %4 = icmp ugt i32 %0, 60, !dbg !4293
  br i1 %4, label %11, label %5, !dbg !4295

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4290, metadata !DIExpression(DW_OP_deref)), !dbg !4291
  %6 = call i32 @gpio_GetDriving(i32 noundef %0, i8* noundef nonnull %3) #16, !dbg !4296
  call void @llvm.dbg.value(metadata i32 %6, metadata !4289, metadata !DIExpression()), !dbg !4291
  %7 = load i8, i8* %3, align 1, !dbg !4297
  call void @llvm.dbg.value(metadata i8 %7, metadata !4290, metadata !DIExpression()), !dbg !4291
  %8 = zext i8 %7 to i32, !dbg !4298
  store i32 %8, i32* %1, align 4, !dbg !4299
  %9 = icmp slt i32 %6, 0, !dbg !4300
  %10 = select i1 %9, i32 -3, i32 0, !dbg !4300
  br label %11, !dbg !4301

11:                                               ; preds = %2, %5
  %12 = phi i32 [ %10, %5 ], [ -2, %2 ], !dbg !4291
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3) #17, !dbg !4302
  ret i32 %12, !dbg !4302
}

; Function Attrs: optsize
declare dso_local i32 @gpio_GetDriving(i32 noundef, i8* noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_init(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4303 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4309, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4310, metadata !DIExpression()), !dbg !4311
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #15, !dbg !4312
  br i1 %3, label %4, label %18, !dbg !4314

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4315
  %6 = load i8, i8* %5, align 4, !dbg !4315, !range !2874
  %7 = icmp eq i8 %6, 0, !dbg !4315
  br i1 %7, label %8, label %18, !dbg !4317

8:                                                ; preds = %4
  %9 = tail call i8* @memset(i8* noundef nonnull %5, i32 noundef 0, i32 noundef 64) #16, !dbg !4318
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4319
  %11 = bitcast %struct.hal_uart_config_t* %10 to i8*, !dbg !4320
  %12 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4321
  %13 = tail call i8* @memcpy(i8* noundef nonnull %11, i8* noundef %12, i32 noundef 16) #16, !dbg !4322
  store i8 1, i8* %5, align 4, !dbg !4323
  %14 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4324, !range !4325
  tail call void @uart_reset_default_value(i32 noundef %14) #16, !dbg !4326
  tail call void @halUART_HWInit(i32 noundef %14) #16, !dbg !4327
  %15 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #15, !dbg !4328
  %16 = icmp eq i32 %15, 0, !dbg !4330
  %17 = select i1 %16, i32 0, i32 -4, !dbg !4311
  br label %18, !dbg !4311

18:                                               ; preds = %8, %4, %2
  %19 = phi i32 [ -4, %2 ], [ -3, %4 ], [ %17, %8 ], !dbg !4311
  ret i32 %19, !dbg !4331
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef readonly %1) unnamed_addr #4 !dbg !4332 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4338, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4339, metadata !DIExpression()), !dbg !4340
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4341
  %4 = icmp ne %struct.hal_uart_config_t* %1, null
  %5 = and i1 %4, %3, !dbg !4343
  br i1 %5, label %6, label %22, !dbg !4343

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4344
  %8 = load i32, i32* %7, align 4, !dbg !4344
  %9 = icmp ugt i32 %8, 12, !dbg !4346
  br i1 %9, label %22, label %10, !dbg !4347

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4348
  %12 = load i32, i32* %11, align 4, !dbg !4348
  %13 = icmp ugt i32 %12, 2, !dbg !4349
  br i1 %13, label %22, label %14, !dbg !4350

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4351
  %16 = load i32, i32* %15, align 4, !dbg !4351
  %17 = icmp ugt i32 %16, 1, !dbg !4352
  br i1 %17, label %22, label %18, !dbg !4353

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4354
  %20 = load i32, i32* %19, align 4, !dbg !4354
  %21 = icmp ult i32 %20, 4, !dbg !4355
  br label %22, !dbg !4356

22:                                               ; preds = %18, %6, %10, %14, %2
  %23 = phi i1 [ false, %2 ], [ false, %14 ], [ false, %10 ], [ false, %6 ], [ %21, %18 ], !dbg !4340
  ret i1 %23, !dbg !4357
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_port(i32 noundef %0) unnamed_addr #9 !dbg !4358 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4362, metadata !DIExpression()), !dbg !4363
  %2 = icmp ne i32 %0, 0, !dbg !4364
  %3 = zext i1 %2 to i32, !dbg !4365
  ret i32 %3, !dbg !4366
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) local_unnamed_addr #3 !dbg !4367 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4371, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata %struct.hal_uart_config_t* %1, metadata !4372, metadata !DIExpression()), !dbg !4373
  %3 = tail call fastcc zeroext i1 @hal_uart_is_config_valid(i32 noundef %0, %struct.hal_uart_config_t* noundef %1) #15, !dbg !4374
  br i1 %3, label %4, label %22, !dbg !4376

4:                                                ; preds = %2
  %5 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4377
  %6 = bitcast %struct.hal_uart_config_t* %5 to i8*, !dbg !4378
  %7 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !4379
  %8 = tail call i8* @memcpy(i8* noundef nonnull %6, i8* noundef %7, i32 noundef 16) #16, !dbg !4380
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4381
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !4382
  %11 = load i32, i32* %10, align 4, !dbg !4382
  %12 = tail call fastcc i32 @hal_uart_translate_baudrate(i32 noundef %11) #15, !dbg !4383
  %13 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !4384
  %14 = load i32, i32* %13, align 4, !dbg !4384
  %15 = tail call fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %14) #15, !dbg !4385
  %16 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !4386
  %17 = load i32, i32* %16, align 4, !dbg !4386
  %18 = tail call fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %17) #15, !dbg !4387
  %19 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !4388
  %20 = load i32, i32* %19, align 4, !dbg !4388
  %21 = tail call fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %20) #15, !dbg !4389
  tail call void @halUART_SetFormat(i32 noundef %9, i32 noundef %12, i16 noundef zeroext %15, i16 noundef zeroext %18, i16 noundef zeroext %21) #16, !dbg !4390
  br label %22, !dbg !4391

22:                                               ; preds = %2, %4
  %23 = phi i32 [ 0, %4 ], [ -4, %2 ], !dbg !4373
  ret i32 %23, !dbg !4392
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @hal_uart_translate_baudrate(i32 noundef %0) unnamed_addr #9 !dbg !4393 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4397, metadata !DIExpression()), !dbg !4402
  call void @llvm.dbg.declare(metadata [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, metadata !4398, metadata !DIExpression()), !dbg !4403
  %2 = getelementptr inbounds [13 x i32], [13 x i32]* @__const.hal_uart_translate_baudrate.baudrate_tbl, i32 0, i32 %0, !dbg !4404
  %3 = load i32, i32* %2, align 4, !dbg !4404
  ret i32 %3, !dbg !4405
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_word_length(i32 noundef %0) unnamed_addr #9 !dbg !4406 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4410, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.declare(metadata [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, metadata !4411, metadata !DIExpression()), !dbg !4414
  %2 = getelementptr inbounds [4 x i16], [4 x i16]* @__const.hal_uart_translate_word_length.databit_tbl, i32 0, i32 %0, !dbg !4415
  %3 = load i16, i16* %2, align 2, !dbg !4415
  ret i16 %3, !dbg !4416
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_parity(i32 noundef %0) unnamed_addr #9 !dbg !4417 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4421, metadata !DIExpression()), !dbg !4424
  call void @llvm.dbg.declare(metadata [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, metadata !4422, metadata !DIExpression()), !dbg !4425
  %2 = getelementptr inbounds [5 x i16], [5 x i16]* @__const.hal_uart_translate_parity.parity_tbl, i32 0, i32 %0, !dbg !4426
  %3 = load i16, i16* %2, align 2, !dbg !4426
  ret i16 %3, !dbg !4427
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i16 @hal_uart_translate_stopbit(i32 noundef %0) unnamed_addr #9 !dbg !4428 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4432, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.declare(metadata [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, metadata !4433, metadata !DIExpression()), !dbg !4436
  %2 = getelementptr inbounds [3 x i16], [3 x i16]* @__const.hal_uart_translate_stopbit.stopbit_tbl, i32 0, i32 %0, !dbg !4437
  %3 = load i16, i16* %2, align 2, !dbg !4437
  ret i16 %3, !dbg !4438
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) unnamed_addr #9 !dbg !4439 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4443, metadata !DIExpression()), !dbg !4444
  %2 = icmp ult i32 %0, 2, !dbg !4445
  ret i1 %2, !dbg !4446
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_deinit(i32 noundef %0) local_unnamed_addr #3 !dbg !4447 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4451, metadata !DIExpression()), !dbg !4452
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4453
  br i1 %2, label %3, label %10, !dbg !4455

3:                                                ; preds = %1
  %4 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 0, !dbg !4456
  %5 = load i8, i8* %4, align 4, !dbg !4456, !range !2874
  %6 = icmp eq i8 %5, 0, !dbg !4458
  br i1 %6, label %10, label %7, !dbg !4459

7:                                                ; preds = %3
  %8 = tail call i8* @memset(i8* noundef nonnull %4, i32 noundef 0, i32 noundef 64) #16, !dbg !4460
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4461, !range !4325
  tail call void @uart_query_empty(i32 noundef %9) #16, !dbg !4462
  tail call void @uart_reset_default_value(i32 noundef %9) #16, !dbg !4463
  br label %10, !dbg !4464

10:                                               ; preds = %3, %1, %7
  %11 = phi i32 [ 0, %7 ], [ -4, %1 ], [ -2, %3 ], !dbg !4452
  ret i32 %11, !dbg !4465
}

; Function Attrs: noinline nounwind optsize
define dso_local void @hal_uart_put_char(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !dbg !4466 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4470, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i8 %1, metadata !4471, metadata !DIExpression()), !dbg !4473
  %3 = icmp eq i32 %0, 0, !dbg !4474
  %4 = icmp eq i32 %0, 1, !dbg !4474
  %5 = select i1 %4, i32 1, i32 2, !dbg !4474
  %6 = select i1 %3, i32 0, i32 %5, !dbg !4474
  call void @llvm.dbg.value(metadata i32 %6, metadata !4472, metadata !DIExpression()), !dbg !4473
  %7 = icmp eq i32 %6, 2, !dbg !4475
  br i1 %7, label %9, label %8, !dbg !4477

8:                                                ; preds = %2
  tail call void @uart_output_char(i32 noundef %6, i8 noundef zeroext %1) #16, !dbg !4478
  br label %9, !dbg !4480

9:                                                ; preds = %2, %8
  ret void, !dbg !4481
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_polling(i32 noundef %0, i8* noundef readonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4482 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4486, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i8* %1, metadata !4487, metadata !DIExpression()), !dbg !4491
  call void @llvm.dbg.value(metadata i32 %2, metadata !4488, metadata !DIExpression()), !dbg !4491
  %4 = icmp eq i32 %0, 0, !dbg !4492
  %5 = icmp eq i32 %0, 1, !dbg !4492
  %6 = select i1 %5, i32 1, i32 2, !dbg !4492
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4492
  call void @llvm.dbg.value(metadata i32 %7, metadata !4489, metadata !DIExpression()), !dbg !4491
  %8 = icmp eq i8* %1, null, !dbg !4493
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4495
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4495
  call void @llvm.dbg.value(metadata i32 0, metadata !4490, metadata !DIExpression()), !dbg !4491
  br i1 %12, label %19, label %13, !dbg !4495

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4490, metadata !DIExpression()), !dbg !4491
  %15 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4496
  %16 = load i8, i8* %15, align 1, !dbg !4496
  tail call void @uart_output_char(i32 noundef %7, i8 noundef zeroext %16) #16, !dbg !4502
  %17 = add nuw i32 %14, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %17, metadata !4490, metadata !DIExpression()), !dbg !4491
  %18 = icmp eq i32 %17, %2, !dbg !4504
  br i1 %18, label %19, label %13, !dbg !4505, !llvm.loop !4506

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4491
  ret i32 %20, !dbg !4508
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_send_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4509 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4511, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i8* %1, metadata !4512, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i32 %2, metadata !4513, metadata !DIExpression()), !dbg !4518
  %5 = bitcast i32* %4 to i8*, !dbg !4519
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4519
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4520
  br i1 %6, label %7, label %24, !dbg !4522

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4523
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4525
  br i1 %10, label %24, label %11, !dbg !4525

11:                                               ; preds = %7
  %12 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4526
  %13 = load i8, i8* %12, align 4, !dbg !4526, !range !2874
  %14 = icmp eq i8 %13, 0, !dbg !4526
  br i1 %14, label %24, label %15, !dbg !4528

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4529, !range !4325
  call void @llvm.dbg.value(metadata i32* %4, metadata !4514, metadata !DIExpression(DW_OP_deref)), !dbg !4518
  call void @halUART_Get_VFIFO_Length(i32 noundef %16, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !4530
  %17 = load i32, i32* %4, align 4, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %17, metadata !4514, metadata !DIExpression()), !dbg !4518
  %18 = icmp ult i32 %17, %2, !dbg !4533
  %19 = select i1 %18, i32 %17, i32 %2
  call void @llvm.dbg.value(metadata i32 %19, metadata !4515, metadata !DIExpression()), !dbg !4518
  call void @halUART_Write_VFIFO_Data(i32 noundef %16, i8* noundef nonnull %1, i32 noundef %19) #16, !dbg !4534
  %20 = load i32, i32* %4, align 4, !dbg !4535
  call void @llvm.dbg.value(metadata i32 %20, metadata !4514, metadata !DIExpression()), !dbg !4518
  %21 = icmp eq i32 %19, %20, !dbg !4537
  br i1 %21, label %22, label %24, !dbg !4538

22:                                               ; preds = %15
  %23 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %16, i1 noundef zeroext false) #15, !dbg !4539, !range !4541
  call void @llvm.dbg.value(metadata i32 %23, metadata !4516, metadata !DIExpression()), !dbg !4518
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %23) #16, !dbg !4542
  br label %24, !dbg !4543

24:                                               ; preds = %15, %22, %11, %7, %3
  %25 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %11 ], [ %19, %22 ], [ %19, %15 ], !dbg !4518
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4544
  ret i32 %25, !dbg !4544
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #9 !dbg !4545 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4549, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i1 %1, metadata !4550, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4552
  %3 = icmp eq i32 %0, 0, !dbg !4553
  %4 = select i1 %1, i32 15, i32 14, !dbg !4555
  %5 = select i1 %1, i32 17, i32 16, !dbg !4555
  %6 = select i1 %3, i32 %4, i32 %5, !dbg !4555
  call void @llvm.dbg.value(metadata i32 %6, metadata !4551, metadata !DIExpression()), !dbg !4552
  ret i32 %6, !dbg !4556
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_enable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local zeroext i8 @hal_uart_get_char(i32 noundef %0) local_unnamed_addr #3 !dbg !4557 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4561, metadata !DIExpression()), !dbg !4563
  %2 = icmp eq i32 %0, 0, !dbg !4564
  %3 = icmp eq i32 %0, 1, !dbg !4564
  %4 = select i1 %3, i32 1, i32 2, !dbg !4564
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4564
  call void @llvm.dbg.value(metadata i32 %5, metadata !4562, metadata !DIExpression()), !dbg !4563
  %6 = icmp ult i32 %5, 2, !dbg !4565
  br i1 %6, label %7, label %9, !dbg !4567

7:                                                ; preds = %1
  %8 = tail call zeroext i8 @uart_input_char(i32 noundef %5) #16, !dbg !4568
  br label %9, !dbg !4570

9:                                                ; preds = %1, %7
  %10 = phi i8 [ %8, %7 ], [ 0, %1 ], !dbg !4571
  ret i8 %10, !dbg !4572
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_char_unblocking(i32 noundef %0) local_unnamed_addr #3 !dbg !4573 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4577, metadata !DIExpression()), !dbg !4579
  %2 = icmp eq i32 %0, 0, !dbg !4580
  %3 = icmp eq i32 %0, 1, !dbg !4580
  %4 = select i1 %3, i32 1, i32 2, !dbg !4580
  %5 = select i1 %2, i32 0, i32 %4, !dbg !4580
  call void @llvm.dbg.value(metadata i32 %5, metadata !4578, metadata !DIExpression()), !dbg !4579
  %6 = icmp ult i32 %5, 2, !dbg !4581
  br i1 %6, label %7, label %9, !dbg !4583

7:                                                ; preds = %1
  %8 = tail call i32 @uart_input_char_unblocking(i32 noundef %5) #16, !dbg !4584
  br label %9, !dbg !4586

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ], !dbg !4587
  ret i32 %10, !dbg !4588
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_polling(i32 noundef %0, i8* noundef writeonly %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4589 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4593, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i8* %1, metadata !4594, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata i32 %2, metadata !4595, metadata !DIExpression()), !dbg !4598
  %4 = icmp eq i32 %0, 0, !dbg !4599
  %5 = icmp eq i32 %0, 1, !dbg !4599
  %6 = select i1 %5, i32 1, i32 2, !dbg !4599
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4599
  call void @llvm.dbg.value(metadata i32 %7, metadata !4596, metadata !DIExpression()), !dbg !4598
  %8 = icmp eq i8* %1, null, !dbg !4600
  %9 = icmp ugt i32 %7, 1
  %10 = or i1 %8, %9, !dbg !4602
  %11 = icmp eq i32 %2, 0
  %12 = or i1 %10, %11, !dbg !4602
  call void @llvm.dbg.value(metadata i32 0, metadata !4597, metadata !DIExpression()), !dbg !4598
  br i1 %12, label %19, label %13, !dbg !4602

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %17, %13 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !4597, metadata !DIExpression()), !dbg !4598
  %15 = tail call zeroext i8 @uart_input_char(i32 noundef %7) #16, !dbg !4603
  %16 = getelementptr inbounds i8, i8* %1, i32 %14, !dbg !4609
  store i8 %15, i8* %16, align 1, !dbg !4610
  %17 = add nuw i32 %14, 1, !dbg !4611
  call void @llvm.dbg.value(metadata i32 %17, metadata !4597, metadata !DIExpression()), !dbg !4598
  %18 = icmp eq i32 %17, %2, !dbg !4612
  br i1 %18, label %19, label %13, !dbg !4613, !llvm.loop !4614

19:                                               ; preds = %13, %3
  %20 = phi i32 [ 0, %3 ], [ %2, %13 ], !dbg !4598
  ret i32 %20, !dbg !4616
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_receive_dma(i32 noundef %0, i8* noundef %1, i32 noundef %2) local_unnamed_addr #3 !dbg !4617 {
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4619, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i8* %1, metadata !4620, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i32 %2, metadata !4621, metadata !DIExpression()), !dbg !4625
  %5 = bitcast i32* %4 to i8*, !dbg !4626
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4626
  %6 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4627
  br i1 %6, label %7, label %20, !dbg !4629

7:                                                ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !4630
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9, !dbg !4632
  br i1 %10, label %20, label %11, !dbg !4632

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4633, !range !4325
  call void @llvm.dbg.value(metadata i32* %4, metadata !4622, metadata !DIExpression(DW_OP_deref)), !dbg !4625
  call void @halUART_Get_VFIFO_Length(i32 noundef %12, i32 noundef 1, i32* noundef nonnull %4) #16, !dbg !4634
  %13 = load i32, i32* %4, align 4, !dbg !4635
  call void @llvm.dbg.value(metadata i32 %13, metadata !4622, metadata !DIExpression()), !dbg !4625
  %14 = icmp ult i32 %13, %2, !dbg !4637
  %15 = select i1 %14, i32 %13, i32 %2
  call void @llvm.dbg.value(metadata i32 %15, metadata !4623, metadata !DIExpression()), !dbg !4625
  call void @halUART_Read_VFIFO_Data(i32 noundef %12, i8* noundef nonnull %1, i32 noundef %15) #16, !dbg !4638
  %16 = load i32, i32* %4, align 4, !dbg !4639
  call void @llvm.dbg.value(metadata i32 %16, metadata !4622, metadata !DIExpression()), !dbg !4625
  %17 = icmp eq i32 %15, %16, !dbg !4641
  br i1 %17, label %18, label %20, !dbg !4642

18:                                               ; preds = %11
  %19 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %12, i1 noundef zeroext true) #15, !dbg !4643, !range !4541
  call void @llvm.dbg.value(metadata i32 %19, metadata !4624, metadata !DIExpression()), !dbg !4625
  call void @DMA_Vfifo_enable_interrupt(i32 noundef %19) #16, !dbg !4645
  br label %20, !dbg !4646

20:                                               ; preds = %11, %18, %7, %3
  %21 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %15, %18 ], [ %15, %11 ], !dbg !4625
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4647
  ret i32 %21, !dbg !4647
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_send_space(i32 noundef %0) local_unnamed_addr #3 !dbg !4648 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4650, metadata !DIExpression()), !dbg !4652
  %3 = bitcast i32* %2 to i8*, !dbg !4653
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17, !dbg !4653
  call void @llvm.dbg.value(metadata i32 0, metadata !4651, metadata !DIExpression()), !dbg !4652
  store i32 0, i32* %2, align 4, !dbg !4654
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4655
  br i1 %4, label %5, label %8, !dbg !4657

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4658, !range !4325
  call void @llvm.dbg.value(metadata i32* %2, metadata !4651, metadata !DIExpression(DW_OP_deref)), !dbg !4652
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 0, i32* noundef nonnull %2) #16, !dbg !4659
  %7 = load i32, i32* %2, align 4, !dbg !4660
  call void @llvm.dbg.value(metadata i32 %7, metadata !4651, metadata !DIExpression()), !dbg !4652
  br label %8, !dbg !4661

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4652
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17, !dbg !4662
  ret i32 %9, !dbg !4662
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_get_available_receive_bytes(i32 noundef %0) local_unnamed_addr #3 !dbg !4663 {
  %2 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4665, metadata !DIExpression()), !dbg !4667
  %3 = bitcast i32* %2 to i8*, !dbg !4668
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #17, !dbg !4668
  call void @llvm.dbg.value(metadata i32 0, metadata !4666, metadata !DIExpression()), !dbg !4667
  store i32 0, i32* %2, align 4, !dbg !4669
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4670
  br i1 %4, label %5, label %8, !dbg !4672

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4673, !range !4325
  call void @llvm.dbg.value(metadata i32* %2, metadata !4666, metadata !DIExpression(DW_OP_deref)), !dbg !4667
  call void @halUART_Get_VFIFO_Length(i32 noundef %6, i32 noundef 1, i32* noundef nonnull %2) #16, !dbg !4674
  %7 = load i32, i32* %2, align 4, !dbg !4675
  call void @llvm.dbg.value(metadata i32 %7, metadata !4666, metadata !DIExpression()), !dbg !4667
  br label %8, !dbg !4676

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !4667
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #17, !dbg !4677
  ret i32 %9, !dbg !4677
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_register_callback(i32 noundef %0, void (i32, i8*)* noundef %1, i8* noundef %2) local_unnamed_addr #3 !dbg !4678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4682, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata void (i32, i8*)* %1, metadata !4683, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i8* %2, metadata !4684, metadata !DIExpression()), !dbg !4686
  %4 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4687
  %5 = icmp ne void (i32, i8*)* %1, null
  %6 = and i1 %5, %4, !dbg !4689
  br i1 %6, label %7, label %18, !dbg !4689

7:                                                ; preds = %3
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 0, !dbg !4690
  store void (i32, i8*)* %1, void (i32, i8*)** %8, align 4, !dbg !4691
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 3, i32 1, !dbg !4692
  store i8* %2, i8** %9, align 4, !dbg !4693
  %10 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 2, !dbg !4694
  store i8 1, i8* %10, align 4, !dbg !4695
  %11 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4696
  %12 = tail call fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) #15, !dbg !4697
  tail call void @halUART_VDMA_Rx_Register_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !4698
  tail call void @halUART_VDMA_Rx_Register_TO_Callback(i32 noundef %11, void ()* noundef %12) #16, !dbg !4699
  %13 = icmp eq i32 %11, 0, !dbg !4700
  br i1 %13, label %14, label %15, !dbg !4702

14:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 14, void ()* noundef nonnull @hal_uart_send_callback0) #16, !dbg !4703
  br label %16, !dbg !4705

15:                                               ; preds = %7
  tail call void @DMA_Vfifo_Register_Callback(i32 noundef 16, void ()* noundef nonnull @hal_uart_send_callback1) #16, !dbg !4706
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %11, i1 noundef zeroext false) #15, !dbg !4708, !range !4541
  call void @llvm.dbg.value(metadata i32 %17, metadata !4685, metadata !DIExpression()), !dbg !4686
  tail call void @DMA_Vfifo_enable_interrupt(i32 noundef %17) #16, !dbg !4709
  br label %18, !dbg !4710

18:                                               ; preds = %3, %16
  %19 = phi i32 [ 0, %16 ], [ -4, %3 ], !dbg !4686
  ret i32 %19, !dbg !4711
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define internal fastcc void ()* @hal_uart_map_receive_callback(i32 noundef %0) unnamed_addr #9 !dbg !381 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !390, metadata !DIExpression()), !dbg !4712
  %2 = getelementptr inbounds [2 x void ()*], [2 x void ()*]* @hal_uart_map_receive_callback.func_tbl, i32 0, i32 %0, !dbg !4713
  %3 = load void ()*, void ()** %2, align 4, !dbg !4713
  ret void ()* %3, !dbg !4714
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback0() #3 !dbg !4715 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4721, !range !2874
  %2 = icmp eq i8 %1, 0, !dbg !4721
  br i1 %2, label %8, label %3, !dbg !4722

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4723
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4725
  br i1 %5, label %8, label %6, !dbg !4726

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4727
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !4729
  br label %8, !dbg !4730

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #15, !dbg !4731, !range !4325
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #15, !dbg !4732
  ret void, !dbg !4733
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_send_callback1() #3 !dbg !4734 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4739, !range !2874
  %2 = icmp eq i8 %1, 0, !dbg !4739
  br i1 %2, label %8, label %3, !dbg !4740

3:                                                ; preds = %0
  %4 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4741
  %5 = icmp eq void (i32, i8*)* %4, null, !dbg !4743
  br i1 %5, label %8, label %6, !dbg !4744

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4745
  tail call void %4(i32 noundef 2, i8* noundef %7) #16, !dbg !4747
  br label %8, !dbg !4748

8:                                                ; preds = %3, %6, %0
  %9 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #15, !dbg !4749, !range !4325
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %9, i1 noundef zeroext false) #15, !dbg !4750
  ret void, !dbg !4751
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @hal_uart_check_irq_disable(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !dbg !4752 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !4756, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.value(metadata i1 %1, metadata !4757, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4763
  %5 = bitcast i32* %3 to i8*, !dbg !4764
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4764
  %6 = bitcast i32* %4 to i8*, !dbg !4764
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4764
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4760, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4763
  br i1 %1, label %7, label %12, !dbg !4765

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata !DIArgList([2 x %struct.uart_context_t]* @g_uart_context_table, i32 %0), metadata !4760, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 36, DW_OP_stack_value)), !dbg !4763
  call void @llvm.dbg.value(metadata i32* %3, metadata !4758, metadata !DIExpression(DW_OP_deref)), !dbg !4763
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 1, i32* noundef nonnull %3) #16, !dbg !4766
  %8 = load i32, i32* %3, align 4, !dbg !4769
  call void @llvm.dbg.value(metadata i32 %8, metadata !4758, metadata !DIExpression()), !dbg !4763
  %9 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 5, !dbg !4771
  %10 = load i32, i32* %9, align 4, !dbg !4771
  %11 = icmp ult i32 %8, %10, !dbg !4772
  br i1 %11, label %22, label %20, !dbg !4773

12:                                               ; preds = %2
  call void @llvm.dbg.value(metadata i32* %4, metadata !4759, metadata !DIExpression(DW_OP_deref)), !dbg !4763
  call void @halUART_Get_VFIFO_Length(i32 noundef %0, i32 noundef 0, i32* noundef nonnull %4) #16, !dbg !4774
  %13 = load i32, i32* %4, align 4, !dbg !4776
  call void @llvm.dbg.value(metadata i32 %13, metadata !4759, metadata !DIExpression()), !dbg !4763
  %14 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 1, !dbg !4778
  %15 = load i32, i32* %14, align 4, !dbg !4778
  %16 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, i32 2, !dbg !4779
  %17 = load i32, i32* %16, align 4, !dbg !4779
  %18 = sub i32 %15, %17, !dbg !4780
  %19 = icmp ult i32 %13, %18, !dbg !4781
  br i1 %19, label %22, label %20, !dbg !4782

20:                                               ; preds = %12, %7
  %21 = call fastcc i32 @uart_channel_to_dma_channel(i32 noundef %0, i1 noundef zeroext %1) #15, !dbg !4783, !range !4541
  call void @DMA_Vfifo_disable_interrupt(i32 noundef %21) #16, !dbg !4783
  br label %22, !dbg !4784

22:                                               ; preds = %20, %12, %7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #17, !dbg !4784
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #17, !dbg !4784
  ret void, !dbg !4784
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_disable_interrupt(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback0() #3 !dbg !4785 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 2), align 4, !dbg !4790, !range !2874
  %2 = icmp eq i8 %1, 0, !dbg !4790
  br i1 %2, label %11, label %3, !dbg !4791

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 0) #15, !dbg !4792
  %5 = icmp eq i32 %4, 0, !dbg !4793
  br i1 %5, label %11, label %6, !dbg !4794

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 0), align 4, !dbg !4795
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4797
  br i1 %8, label %11, label %9, !dbg !4798

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 0, i32 3, i32 1), align 4, !dbg !4799
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !4801
  br label %11, !dbg !4802

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 0) #15, !dbg !4803, !range !4325
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #15, !dbg !4804
  ret void, !dbg !4805
}

; Function Attrs: noinline nounwind optsize
define internal void @hal_uart_receive_callback1() #3 !dbg !4806 {
  %1 = load i8, i8* getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 2), align 4, !dbg !4811, !range !2874
  %2 = icmp eq i8 %1, 0, !dbg !4811
  br i1 %2, label %11, label %3, !dbg !4812

3:                                                ; preds = %0
  %4 = tail call i32 @hal_uart_get_available_receive_bytes(i32 noundef 1) #15, !dbg !4813
  %5 = icmp eq i32 %4, 0, !dbg !4814
  br i1 %5, label %11, label %6, !dbg !4815

6:                                                ; preds = %3
  %7 = load void (i32, i8*)*, void (i32, i8*)** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 0), align 4, !dbg !4816
  %8 = icmp eq void (i32, i8*)* %7, null, !dbg !4818
  br i1 %8, label %11, label %9, !dbg !4819

9:                                                ; preds = %6
  %10 = load i8*, i8** getelementptr inbounds ([2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 1, i32 3, i32 1), align 4, !dbg !4820
  tail call void %7(i32 noundef 1, i8* noundef %10) #16, !dbg !4822
  br label %11, !dbg !4823

11:                                               ; preds = %6, %9, %3, %0
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef 1) #15, !dbg !4824, !range !4325
  tail call fastcc void @hal_uart_check_irq_disable(i32 noundef %12, i1 noundef zeroext true) #15, !dbg !4825
  ret void, !dbg !4826
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_baudrate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4827 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4831, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.value(metadata i32 %1, metadata !4832, metadata !DIExpression()), !dbg !4833
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4834
  %4 = icmp ult i32 %1, 13
  %5 = and i1 %4, %3, !dbg !4836
  br i1 %5, label %6, label %10, !dbg !4836

6:                                                ; preds = %2
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 1, !dbg !4837
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %7, i32 0, i32 0, !dbg !4838
  store i32 %1, i32* %8, align 4, !dbg !4839
  %9 = tail call i32 @hal_uart_set_format(i32 noundef %0, %struct.hal_uart_config_t* noundef nonnull %7) #15, !dbg !4840
  br label %10, !dbg !4841

10:                                               ; preds = %2, %6
  %11 = phi i32 [ %9, %6 ], [ -4, %2 ], !dbg !4833
  ret i32 %11, !dbg !4842
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma(i32 noundef %0, %struct.hal_uart_dma_config_t* noundef %1) local_unnamed_addr #3 !dbg !4843 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4849, metadata !DIExpression()), !dbg !4851
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %1, metadata !4850, metadata !DIExpression()), !dbg !4851
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4852
  br i1 %3, label %4, label %28, !dbg !4854

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef %1) #15, !dbg !4855
  br i1 %5, label %6, label %28, !dbg !4857

6:                                                ; preds = %4
  %7 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 4, !dbg !4858
  store i8 1, i8* %7, align 4, !dbg !4859
  %8 = getelementptr inbounds [2 x %struct.uart_context_t], [2 x %struct.uart_context_t]* @g_uart_context_table, i32 0, i32 %0, i32 5, !dbg !4860
  %9 = bitcast %struct.hal_uart_dma_config_t* %8 to i8*, !dbg !4861
  %10 = bitcast %struct.hal_uart_dma_config_t* %1 to i8*, !dbg !4862
  %11 = tail call i8* @memcpy(i8* noundef nonnull %9, i8* noundef %10, i32 noundef 28) #16, !dbg !4863
  tail call void @DMA_Init() #16, !dbg !4864
  tail call void @DMA_Vfifo_init() #16, !dbg !4865
  %12 = tail call fastcc i32 @hal_uart_translate_port(i32 noundef %0) #15, !dbg !4866
  %13 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 3, !dbg !4867
  %14 = load i8*, i8** %13, align 4, !dbg !4867
  %15 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 4, !dbg !4868
  %16 = load i32, i32* %15, align 4, !dbg !4868
  %17 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 6, !dbg !4869
  %18 = load i32, i32* %17, align 4, !dbg !4869
  %19 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 5, !dbg !4870
  %20 = load i32, i32* %19, align 4, !dbg !4870
  %21 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef 5000) #15, !dbg !4871
  tail call void @halUART_Rx_VFIFO_Initialize(i32 noundef %12, i8* noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %21) #16, !dbg !4872
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 0, !dbg !4873
  %23 = load i8*, i8** %22, align 4, !dbg !4873
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 1, !dbg !4874
  %25 = load i32, i32* %24, align 4, !dbg !4874
  %26 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %1, i32 0, i32 2, !dbg !4875
  %27 = load i32, i32* %26, align 4, !dbg !4875
  tail call void @halUART_Tx_VFIFO_Initialize(i32 noundef %12, i8* noundef %23, i32 noundef %25, i32 noundef %27) #16, !dbg !4876
  br label %28, !dbg !4877

28:                                               ; preds = %4, %2, %6
  %29 = phi i32 [ 0, %6 ], [ -4, %2 ], [ -4, %4 ], !dbg !4851
  ret i32 %29, !dbg !4878
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readonly willreturn
define internal fastcc zeroext i1 @hal_uart_is_dma_config_valid(%struct.hal_uart_dma_config_t* noundef readonly %0) unnamed_addr #4 !dbg !4879 {
  call void @llvm.dbg.value(metadata %struct.hal_uart_dma_config_t* %0, metadata !4883, metadata !DIExpression()), !dbg !4884
  %2 = icmp eq %struct.hal_uart_dma_config_t* %0, null, !dbg !4885
  br i1 %2, label %27, label %3, !dbg !4887

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 3, !dbg !4888
  %5 = load i8*, i8** %4, align 4, !dbg !4888
  %6 = icmp eq i8* %5, null, !dbg !4890
  br i1 %6, label %27, label %7, !dbg !4891

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 4, !dbg !4892
  %9 = load i32, i32* %8, align 4, !dbg !4892
  %10 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 5, !dbg !4894
  %11 = load i32, i32* %10, align 4, !dbg !4894
  %12 = icmp ult i32 %9, %11, !dbg !4895
  br i1 %12, label %27, label %13, !dbg !4896

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 6, !dbg !4897
  %15 = load i32, i32* %14, align 4, !dbg !4897
  %16 = icmp ult i32 %9, %15, !dbg !4899
  br i1 %16, label %27, label %17, !dbg !4900

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 0, !dbg !4901
  %19 = load i8*, i8** %18, align 4, !dbg !4901
  %20 = icmp eq i8* %19, null, !dbg !4903
  br i1 %20, label %27, label %21, !dbg !4904

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 1, !dbg !4905
  %23 = load i32, i32* %22, align 4, !dbg !4905
  %24 = getelementptr inbounds %struct.hal_uart_dma_config_t, %struct.hal_uart_dma_config_t* %0, i32 0, i32 2, !dbg !4907
  %25 = load i32, i32* %24, align 4, !dbg !4907
  %26 = icmp uge i32 %23, %25, !dbg !4908
  br label %27, !dbg !4909

27:                                               ; preds = %21, %17, %13, %7, %3, %1
  %28 = phi i1 [ false, %1 ], [ false, %3 ], [ false, %7 ], [ false, %13 ], [ false, %17 ], [ %26, %21 ], !dbg !4884
  ret i1 %28, !dbg !4910
}

; Function Attrs: optsize
declare dso_local void @DMA_Init() local_unnamed_addr #7

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_init() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc i32 @hal_uart_translate_timeout(i32 noundef %0) unnamed_addr #3 !dbg !4911 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4915, metadata !DIExpression()), !dbg !4917
  %2 = tail call i32 @top_mcu_freq_get() #16, !dbg !4918
  %3 = udiv i32 %2, 1000000, !dbg !4919
  call void @llvm.dbg.value(metadata i32 %3, metadata !4916, metadata !DIExpression()), !dbg !4917
  %4 = mul i32 %3, %0, !dbg !4920
  ret i32 %4, !dbg !4921
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_hardware_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4922 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4924, metadata !DIExpression()), !dbg !4926
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4927
  br i1 %2, label %3, label %8, !dbg !4929

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4930
  %5 = icmp eq i32 %0, 1, !dbg !4930
  %6 = select i1 %5, i32 1, i32 2, !dbg !4930
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4930
  call void @llvm.dbg.value(metadata i32 %7, metadata !4925, metadata !DIExpression()), !dbg !4926
  tail call void @uart_set_hardware_flowcontrol(i32 noundef %7) #16, !dbg !4931
  br label %8, !dbg !4932

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4926
  ret i32 %9, !dbg !4933
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_software_flowcontrol(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #3 !dbg !4934 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4938, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i8 %1, metadata !4939, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i8 %2, metadata !4940, metadata !DIExpression()), !dbg !4943
  call void @llvm.dbg.value(metadata i8 %3, metadata !4941, metadata !DIExpression()), !dbg !4943
  %5 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4944
  br i1 %5, label %6, label %11, !dbg !4946

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 0, !dbg !4947
  %8 = icmp eq i32 %0, 1, !dbg !4947
  %9 = select i1 %8, i32 1, i32 2, !dbg !4947
  %10 = select i1 %7, i32 0, i32 %9, !dbg !4947
  call void @llvm.dbg.value(metadata i32 %10, metadata !4942, metadata !DIExpression()), !dbg !4943
  tail call void @uart_set_software_flowcontrol(i32 noundef %10, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #16, !dbg !4948
  br label %11, !dbg !4949

11:                                               ; preds = %4, %6
  %12 = phi i32 [ 0, %6 ], [ -4, %4 ], !dbg !4943
  ret i32 %12, !dbg !4950
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_disable_flowcontrol(i32 noundef %0) local_unnamed_addr #3 !dbg !4951 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4953, metadata !DIExpression()), !dbg !4955
  %2 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4956
  br i1 %2, label %3, label %8, !dbg !4958

3:                                                ; preds = %1
  %4 = icmp eq i32 %0, 0, !dbg !4959
  %5 = icmp eq i32 %0, 1, !dbg !4959
  %6 = select i1 %5, i32 1, i32 2, !dbg !4959
  %7 = select i1 %4, i32 0, i32 %6, !dbg !4959
  call void @llvm.dbg.value(metadata i32 %7, metadata !4954, metadata !DIExpression()), !dbg !4955
  tail call void @uart_disable_flowcontrol(i32 noundef %7) #16, !dbg !4960
  br label %8, !dbg !4961

8:                                                ; preds = %1, %3
  %9 = phi i32 [ 0, %3 ], [ -4, %1 ], !dbg !4955
  ret i32 %9, !dbg !4962
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @hal_uart_set_dma_timeout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !4963 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4967, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.value(metadata i32 %1, metadata !4968, metadata !DIExpression()), !dbg !4969
  %3 = tail call fastcc zeroext i1 @hal_uart_is_port_valid(i32 noundef %0) #15, !dbg !4970
  br i1 %3, label %4, label %8, !dbg !4972

4:                                                ; preds = %2
  %5 = icmp eq i32 %0, 0, !dbg !4973
  %6 = tail call fastcc i32 @hal_uart_translate_timeout(i32 noundef %1) #15, !dbg !4975
  %7 = select i1 %5, i32 15, i32 17
  tail call void @DMA_Vfifo_Set_timeout(i32 noundef %7, i32 noundef %6) #16, !dbg !4975
  br label %8, !dbg !4976

8:                                                ; preds = %4, %2
  %9 = phi i32 [ -4, %2 ], [ 0, %4 ], !dbg !4969
  ret i32 %9, !dbg !4976
}

; Function Attrs: optsize
declare dso_local void @DMA_Vfifo_Set_timeout(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define dso_local i32 @__io_putchar(i32 noundef returned %0) local_unnamed_addr #3 !dbg !4977 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4981, metadata !DIExpression()), !dbg !4982
  %2 = trunc i32 %0 to i8, !dbg !4983
  tail call void @hal_uart_put_char(i32 noundef 0, i8 noundef zeroext %2) #16, !dbg !4984
  ret i32 %0, !dbg !4985
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local i32 @main() local_unnamed_addr #13 !dbg !4986 {
  tail call fastcc void @SystemClock_Config() #15, !dbg !4987
  tail call fastcc void @prvSetupHardware() #15, !dbg !4988
  tail call void asm sideeffect "cpsie i", "~{memory}"() #17, !dbg !4989, !srcloc !4992
  tail call void asm sideeffect "cpsie f", "~{memory}"() #17, !dbg !4993, !srcloc !4996
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)) #16, !dbg !4997
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.41, i32 0, i32 0)) #16, !dbg !4998
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i32 0, i32 0)) #16, !dbg !4999
  tail call fastcc void @des_encrypt_decrypt_data_example() #15, !dbg !5000
  br label %4, !dbg !5001

4:                                                ; preds = %4, %0
  br label %4, !dbg !5002, !llvm.loop !5005
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @SystemClock_Config() unnamed_addr #3 !dbg !5008 {
  tail call void @top_xtal_init() #16, !dbg !5009
  ret void, !dbg !5010
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @prvSetupHardware() unnamed_addr #3 !dbg !5011 {
  tail call fastcc void @log_uart_init() #15, !dbg !5012
  ret void, !dbg !5013
}

; Function Attrs: optsize
declare dso_local i32 @printf(i8* noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize
define internal fastcc void @des_encrypt_decrypt_data_example() unnamed_addr #3 !dbg !5014 {
  %1 = alloca [30 x i8], align 1
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [32 x i8], align 1
  %5 = alloca [32 x i8], align 1
  %6 = alloca %struct.hal_aes_buffer_t, align 4
  %7 = alloca %struct.hal_aes_buffer_t, align 4
  %8 = alloca %struct.hal_aes_buffer_t, align 4
  %9 = alloca %struct.hal_aes_buffer_t, align 4
  %10 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i32 0, i32 0, !dbg !5034
  call void @llvm.lifetime.start.p0i8(i64 30, i8* nonnull %10) #17, !dbg !5034
  call void @llvm.dbg.declare(metadata [30 x i8]* %1, metadata !5016, metadata !DIExpression()), !dbg !5035
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(30) %10, i8* noundef nonnull align 1 dereferenceable(30) getelementptr inbounds ([30 x i8], [30 x i8]* @__const.des_encrypt_decrypt_data_example.plain, i32 0, i32 0), i32 30, i1 false), !dbg !5035
  %11 = bitcast i64* %2 to i8*, !dbg !5036
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #17, !dbg !5036
  call void @llvm.dbg.value(metadata i64 3472328296229459021, metadata !5020, metadata !DIExpression()), !dbg !5037
  store i64 3472328296229459021, i64* %2, align 8, !dbg !5038
  %12 = bitcast i64* %3 to i8*, !dbg !5039
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #17, !dbg !5039
  call void @llvm.dbg.value(metadata i64 4841713013872800609, metadata !5021, metadata !DIExpression()), !dbg !5037
  store i64 4841713013872800609, i64* %3, align 8, !dbg !5040
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i32 0, i32 0, !dbg !5041
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #17, !dbg !5041
  call void @llvm.dbg.declare(metadata [32 x i8]* %4, metadata !5022, metadata !DIExpression()), !dbg !5042
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %13, i8 0, i32 32, i1 false), !dbg !5042
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0, !dbg !5043
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #17, !dbg !5043
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !5024, metadata !DIExpression()), !dbg !5044
  call void @llvm.memset.p0i8.i32(i8* noundef nonnull align 1 dereferenceable(32) %14, i8 0, i32 32, i1 false), !dbg !5044
  %15 = bitcast %struct.hal_aes_buffer_t* %6 to i8*, !dbg !5045
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #17, !dbg !5045
  call void @llvm.dbg.declare(metadata %struct.hal_aes_buffer_t* %6, metadata !5025, metadata !DIExpression()), !dbg !5046
  %16 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %6, i32 0, i32 0, !dbg !5047
  store i8* %13, i8** %16, align 4, !dbg !5047
  %17 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %6, i32 0, i32 1, !dbg !5047
  store i32 32, i32* %17, align 4, !dbg !5047
  %18 = bitcast %struct.hal_aes_buffer_t* %7 to i8*, !dbg !5048
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #17, !dbg !5048
  call void @llvm.dbg.declare(metadata %struct.hal_aes_buffer_t* %7, metadata !5031, metadata !DIExpression()), !dbg !5049
  %19 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %7, i32 0, i32 0, !dbg !5050
  store i8* %10, i8** %19, align 4, !dbg !5050
  %20 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %7, i32 0, i32 1, !dbg !5050
  store i32 30, i32* %20, align 4, !dbg !5050
  %21 = bitcast %struct.hal_aes_buffer_t* %8 to i8*, !dbg !5051
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #17, !dbg !5051
  call void @llvm.dbg.declare(metadata %struct.hal_aes_buffer_t* %8, metadata !5032, metadata !DIExpression()), !dbg !5052
  %22 = bitcast %struct.hal_aes_buffer_t* %8 to i64**, !dbg !5053
  store i64* %2, i64** %22, align 4, !dbg !5053
  %23 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %8, i32 0, i32 1, !dbg !5053
  store i32 8, i32* %23, align 4, !dbg !5053
  %24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.42, i32 0, i32 0)) #16, !dbg !5054
  call fastcc void @des_result_dump(i8* noundef nonnull %10, i8 noundef zeroext 30) #15, !dbg !5055
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.43, i32 0, i32 0)) #16, !dbg !5056
  call fastcc void @des_result_dump(i8* noundef nonnull %11, i8 noundef zeroext 8) #15, !dbg !5057
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.44, i32 0, i32 0)) #16, !dbg !5058
  call void @llvm.dbg.value(metadata i64* %3, metadata !5021, metadata !DIExpression(DW_OP_deref)), !dbg !5037
  call fastcc void @des_result_dump(i8* noundef nonnull %12, i8 noundef zeroext 8) #15, !dbg !5059
  %27 = call i32 @hal_des_cbc_encrypt(%struct.hal_aes_buffer_t* noundef nonnull %6, %struct.hal_aes_buffer_t* noundef nonnull %7, %struct.hal_aes_buffer_t* noundef nonnull %8, i8* noundef nonnull %12) #16, !dbg !5060
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5.45, i32 0, i32 0)) #16, !dbg !5061
  %29 = load i8*, i8** %16, align 4, !dbg !5062
  %30 = load i32, i32* %17, align 4, !dbg !5063
  %31 = trunc i32 %30 to i8, !dbg !5064
  call fastcc void @des_result_dump(i8* noundef %29, i8 noundef zeroext %31) #15, !dbg !5065
  %32 = bitcast %struct.hal_aes_buffer_t* %9 to i8*, !dbg !5066
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #17, !dbg !5066
  call void @llvm.dbg.declare(metadata %struct.hal_aes_buffer_t* %9, metadata !5033, metadata !DIExpression()), !dbg !5067
  %33 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %9, i32 0, i32 0, !dbg !5068
  store i8* %14, i8** %33, align 4, !dbg !5068
  %34 = getelementptr inbounds %struct.hal_aes_buffer_t, %struct.hal_aes_buffer_t* %9, i32 0, i32 1, !dbg !5068
  store i32 32, i32* %34, align 4, !dbg !5068
  %35 = call i32 @hal_des_cbc_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %9, %struct.hal_aes_buffer_t* noundef nonnull %6, %struct.hal_aes_buffer_t* noundef nonnull %8, i8* noundef nonnull %12) #16, !dbg !5069
  %36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6.46, i32 0, i32 0)) #16, !dbg !5070
  %37 = load i8*, i8** %33, align 4, !dbg !5071
  %38 = load i32, i32* %34, align 4, !dbg !5072
  %39 = trunc i32 %38 to i8, !dbg !5073
  call fastcc void @des_result_dump(i8* noundef %37, i8 noundef zeroext %39) #15, !dbg !5074
  %40 = call i32 @hal_des_ecb_encrypt(%struct.hal_aes_buffer_t* noundef nonnull %6, %struct.hal_aes_buffer_t* noundef nonnull %7, %struct.hal_aes_buffer_t* noundef nonnull %8) #16, !dbg !5075
  %41 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.47, i32 0, i32 0)) #16, !dbg !5076
  %42 = load i8*, i8** %16, align 4, !dbg !5077
  %43 = load i32, i32* %17, align 4, !dbg !5078
  %44 = trunc i32 %43 to i8, !dbg !5079
  call fastcc void @des_result_dump(i8* noundef %42, i8 noundef zeroext %44) #15, !dbg !5080
  %45 = call i32 @hal_des_ecb_decrypt(%struct.hal_aes_buffer_t* noundef nonnull %9, %struct.hal_aes_buffer_t* noundef nonnull %6, %struct.hal_aes_buffer_t* noundef nonnull %8) #16, !dbg !5081
  %46 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8.48, i32 0, i32 0)) #16, !dbg !5082
  %47 = load i8*, i8** %33, align 4, !dbg !5083
  %48 = load i32, i32* %34, align 4, !dbg !5084
  %49 = trunc i32 %48 to i8, !dbg !5085
  call fastcc void @des_result_dump(i8* noundef %47, i8 noundef zeroext %49) #15, !dbg !5086
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #17, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #17, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #17, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #17, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #17, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #17, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #17, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #17, !dbg !5087
  call void @llvm.lifetime.end.p0i8(i64 30, i8* nonnull %10) #17, !dbg !5087
  ret void, !dbg !5087
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: noinline nounwind optsize
define internal fastcc void @des_result_dump(i8* nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 !dbg !5088 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5092, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata i8 %1, metadata !5093, metadata !DIExpression()), !dbg !5095
  call void @llvm.dbg.value(metadata i8 0, metadata !5094, metadata !DIExpression()), !dbg !5095
  %3 = icmp eq i8 %1, 0, !dbg !5096
  br i1 %3, label %19, label %4, !dbg !5099

4:                                                ; preds = %2
  %5 = zext i8 %1 to i32, !dbg !5096
  br label %6, !dbg !5099

6:                                                ; preds = %4, %12
  %7 = phi i32 [ 0, %4 ], [ %17, %12 ]
  call void @llvm.dbg.value(metadata i32 %7, metadata !5094, metadata !DIExpression()), !dbg !5095
  %8 = and i32 %7, 15, !dbg !5100
  %9 = icmp eq i32 %8, 0, !dbg !5103
  br i1 %9, label %10, label %12, !dbg !5104

10:                                               ; preds = %6
  %11 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.49, i32 0, i32 0)) #16, !dbg !5105
  br label %12, !dbg !5107

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds i8, i8* %0, i32 %7, !dbg !5108
  %14 = load i8, i8* %13, align 1, !dbg !5108
  %15 = zext i8 %14 to i32, !dbg !5108
  %16 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.50, i32 0, i32 0), i32 noundef %15) #16, !dbg !5109
  %17 = add nuw nsw i32 %7, 1, !dbg !5110
  call void @llvm.dbg.value(metadata i32 %17, metadata !5094, metadata !DIExpression()), !dbg !5095
  %18 = icmp eq i32 %17, %5, !dbg !5096
  br i1 %18, label %19, label %6, !dbg !5099, !llvm.loop !5111

19:                                               ; preds = %12, %2
  %20 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.49, i32 0, i32 0)) #16, !dbg !5113
  ret void, !dbg !5114
}

; Function Attrs: noinline nounwind optsize
define internal fastcc void @log_uart_init() unnamed_addr #3 !dbg !5115 {
  %1 = alloca %struct.hal_uart_config_t, align 4
  %2 = bitcast %struct.hal_uart_config_t* %1 to i8*, !dbg !5125
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #17, !dbg !5125
  call void @llvm.dbg.declare(metadata %struct.hal_uart_config_t* %1, metadata !5117, metadata !DIExpression()), !dbg !5126
  %3 = tail call i32 @hal_pinmux_set_function(i32 noundef 0, i8 noundef zeroext 7) #16, !dbg !5127
  %4 = tail call i32 @hal_pinmux_set_function(i32 noundef 1, i8 noundef zeroext 7) #16, !dbg !5128
  %5 = tail call i32 @hal_pinmux_set_function(i32 noundef 2, i8 noundef zeroext 7) #16, !dbg !5129
  %6 = tail call i32 @hal_pinmux_set_function(i32 noundef 3, i8 noundef zeroext 7) #16, !dbg !5130
  %7 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 0, !dbg !5131
  store i32 9, i32* %7, align 4, !dbg !5132
  %8 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 1, !dbg !5133
  store i32 3, i32* %8, align 4, !dbg !5134
  %9 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 2, !dbg !5135
  store i32 0, i32* %9, align 4, !dbg !5136
  %10 = getelementptr inbounds %struct.hal_uart_config_t, %struct.hal_uart_config_t* %1, i32 0, i32 3, !dbg !5137
  store i32 0, i32* %10, align 4, !dbg !5138
  %11 = call i32 @hal_uart_init(i32 noundef 0, %struct.hal_uart_config_t* noundef nonnull %1) #16, !dbg !5139
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #17, !dbg !5140
  ret void, !dbg !5140
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local i32 @SysTick_Set(i32 noundef %0) local_unnamed_addr #0 !dbg !5141 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5143, metadata !DIExpression()), !dbg !5145
  %2 = add i32 %0, -1, !dbg !5146
  %3 = icmp ugt i32 %2, 16777215, !dbg !5148
  br i1 %3, label %8, label %4, !dbg !5149

4:                                                ; preds = %1
  %5 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5150
  call void @llvm.dbg.value(metadata i32 %5, metadata !5144, metadata !DIExpression()), !dbg !5145
  %6 = load volatile i32, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5151
  %7 = and i32 %6, -4, !dbg !5151
  store volatile i32 %7, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5151
  store volatile i32 %2, i32* inttoptr (i32 -536813548 to i32*), align 4, !dbg !5152
  store volatile i32 0, i32* inttoptr (i32 -536813544 to i32*), align 8, !dbg !5153
  store volatile i32 %5, i32* inttoptr (i32 -536813552 to i32*), align 16, !dbg !5154
  br label %8, !dbg !5155

8:                                                ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 1, %1 ], !dbg !5145
  ret i32 %9, !dbg !5156
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SysInitStatus_Set() local_unnamed_addr #0 !dbg !5157 {
  store volatile i32 1, i32* @System_Initialize_Done, align 4, !dbg !5158
  ret void, !dbg !5159
}

; Function Attrs: mustprogress nofree noinline norecurse nounwind optsize willreturn
define dso_local i32 @SysInitStatus_Query() local_unnamed_addr #2 !dbg !5160 {
  %1 = load volatile i32, i32* @System_Initialize_Done, align 4, !dbg !5161
  ret i32 %1, !dbg !5162
}

; Function Attrs: noinline nounwind optsize
define dso_local void @SystemCoreClockUpdate() local_unnamed_addr #3 !dbg !5163 {
  %1 = tail call i32 @top_mcu_freq_get() #16, !dbg !5164
  store i32 %1, i32* @SystemCoreClock, align 4, !dbg !5165
  ret void, !dbg !5166
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @SystemInit() local_unnamed_addr #0 !dbg !5167 {
  %1 = load volatile i32, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5168
  %2 = or i32 %1, 15728640, !dbg !5168
  store volatile i32 %2, i32* inttoptr (i32 -536810104 to i32*), align 8, !dbg !5168
  store volatile i32 536870912, i32* inttoptr (i32 -536810232 to i32*), align 8, !dbg !5169
  %3 = load volatile i32, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5170
  %4 = or i32 %3, 458752, !dbg !5170
  store volatile i32 %4, i32* inttoptr (i32 -536810204 to i32*), align 4, !dbg !5170
  ret void, !dbg !5171
}

; Function Attrs: nofree noinline norecurse nounwind optsize
define dso_local void @CachePreInit() local_unnamed_addr #0 !dbg !5172 {
  store volatile i32 0, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5173
  store volatile i32 19, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5174
  store volatile i32 3, i32* inttoptr (i32 22216708 to i32*), align 4, !dbg !5175
  store volatile i32 268931328, i32* inttoptr (i32 22282240 to i32*), align 262144, !dbg !5176
  store volatile i32 269713408, i32* inttoptr (i32 22282304 to i32*), align 64, !dbg !5177
  store volatile i32 1, i32* inttoptr (i32 22216748 to i32*), align 4, !dbg !5178
  store volatile i32 781, i32* inttoptr (i32 22216704 to i32*), align 65536, !dbg !5179
  ret void, !dbg !5180
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_close(i32 noundef %0) local_unnamed_addr #9 !dbg !5181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5183, metadata !DIExpression()), !dbg !5184
  ret i32 0, !dbg !5185
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_fstat(i32 noundef %0, %struct.stat* nocapture noundef readnone %1) local_unnamed_addr #9 !dbg !5186 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5236, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.value(metadata %struct.stat* %1, metadata !5237, metadata !DIExpression()), !dbg !5238
  ret i32 0, !dbg !5239
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_isatty(i32 noundef %0) local_unnamed_addr #9 !dbg !5240 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5242, metadata !DIExpression()), !dbg !5243
  ret i32 1, !dbg !5244
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_lseek(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5245 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5249, metadata !DIExpression()), !dbg !5252
  call void @llvm.dbg.value(metadata i32 %1, metadata !5250, metadata !DIExpression()), !dbg !5252
  call void @llvm.dbg.value(metadata i32 %2, metadata !5251, metadata !DIExpression()), !dbg !5252
  ret i32 0, !dbg !5253
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_open(i8* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5254 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5258, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.value(metadata i32 %1, metadata !5259, metadata !DIExpression()), !dbg !5261
  call void @llvm.dbg.value(metadata i32 %2, metadata !5260, metadata !DIExpression()), !dbg !5261
  ret i32 -1, !dbg !5262
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize readnone willreturn
define dso_local i32 @_read(i32 noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #9 !dbg !5263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5267, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata i8* %1, metadata !5268, metadata !DIExpression()), !dbg !5270
  call void @llvm.dbg.value(metadata i32 %2, metadata !5269, metadata !DIExpression()), !dbg !5270
  ret i32 0, !dbg !5271
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_write(i32 noundef %0, i8* nocapture noundef readonly %1, i32 noundef returned %2) local_unnamed_addr #3 !dbg !5272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5274, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.value(metadata i8* %1, metadata !5275, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.value(metadata i32 %2, metadata !5276, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.value(metadata i32 0, metadata !5277, metadata !DIExpression()), !dbg !5278
  %4 = icmp sgt i32 %2, 0, !dbg !5279
  br i1 %4, label %5, label %14, !dbg !5282

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %12, %5 ], [ 0, %3 ]
  %7 = phi i8* [ %8, %5 ], [ %1, %3 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !5277, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.value(metadata i8* %7, metadata !5275, metadata !DIExpression()), !dbg !5278
  %8 = getelementptr inbounds i8, i8* %7, i32 1, !dbg !5283
  call void @llvm.dbg.value(metadata i8* %8, metadata !5275, metadata !DIExpression()), !dbg !5278
  %9 = load i8, i8* %7, align 1, !dbg !5285
  %10 = zext i8 %9 to i32, !dbg !5285
  %11 = tail call i32 @__io_putchar(i32 noundef %10) #16, !dbg !5286
  %12 = add nuw nsw i32 %6, 1, !dbg !5287
  call void @llvm.dbg.value(metadata i32 %12, metadata !5277, metadata !DIExpression()), !dbg !5278
  %13 = icmp eq i32 %12, %2, !dbg !5279
  br i1 %13, label %14, label %5, !dbg !5282, !llvm.loop !5288

14:                                               ; preds = %5, %3
  ret i32 %2, !dbg !5290
}

; Function Attrs: noinline nounwind optsize
define dso_local i8* @_sbrk_r(%struct._reent* nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #3 !dbg !497 {
  call void @llvm.dbg.value(metadata %struct._reent* %0, metadata !700, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.value(metadata i32 %1, metadata !701, metadata !DIExpression()), !dbg !5291
  %3 = tail call i8* asm sideeffect "MRS $0, msp\0A", "=r"() #17, !dbg !5292, !srcloc !5293
  call void @llvm.dbg.value(metadata i8* %3, metadata !703, metadata !DIExpression()), !dbg !5291
  %4 = load i8*, i8** @_sbrk_r.heap_end, align 4, !dbg !5294
  %5 = icmp eq i8* %4, null, !dbg !5296
  %6 = select i1 %5, i8* @end, i8* %4, !dbg !5297
  call void @llvm.dbg.value(metadata i8* %6, metadata !702, metadata !DIExpression()), !dbg !5291
  %7 = getelementptr inbounds i8, i8* %6, i32 %1, !dbg !5298
  %8 = icmp ult i8* %3, %7, !dbg !5300
  %9 = xor i1 %8, true, !dbg !5301
  %10 = or i1 %5, %9, !dbg !5301
  br i1 %10, label %11, label %13, !dbg !5301

11:                                               ; preds = %2
  %12 = select i1 %8, i8* %6, i8* %7, !dbg !5302
  store i8* %12, i8** @_sbrk_r.heap_end, align 4, !dbg !5301
  br label %13, !dbg !5301

13:                                               ; preds = %2, %11
  %14 = select i1 %8, i8* inttoptr (i32 -1 to i8*), i8* %6, !dbg !5302
  ret i8* %14, !dbg !5301
}

; Function Attrs: noinline noreturn nounwind optsize
define dso_local void @_exit(i32 noundef %0) local_unnamed_addr #13 !dbg !5303 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5305, metadata !DIExpression()), !dbg !5306
  %2 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0)) #16, !dbg !5307
  br label %3, !dbg !5308

3:                                                ; preds = %1, %3
  br label %3, !dbg !5308, !llvm.loop !5309
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_kill(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !dbg !5311 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5315, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.value(metadata i32 %1, metadata !5316, metadata !DIExpression()), !dbg !5317
  %3 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1.58, i32 0, i32 0), i32 noundef %1) #16, !dbg !5318
  ret i32 -1, !dbg !5319
}

; Function Attrs: noinline nounwind optsize
define dso_local i32 @_getpid() local_unnamed_addr #3 !dbg !5320 {
  %1 = tail call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.59, i32 0, i32 0)) #16, !dbg !5325
  ret i32 0, !dbg !5326
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

!llvm.dbg.cu = !{!720, !732, !813, !858, !2, !23, !892, !61, !127, !209, !221, !894, !323, !965, !437, !695, !706}
!llvm.ident = !{!968, !968, !968, !968, !968, !968, !968, !968, !968, !968, !968, !968, !968, !968, !968, !968, !968}
!llvm.module.flags = !{!969, !970, !971, !972, !973, !974, !975, !976, !977}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gXtalFreq", scope: !2, file: !3, line: 43, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/top.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!4 = !{!5, !8, !10, !16}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!6 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT32", file: !9, line: 62, baseType: !7)
!9 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/type_def.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
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
!24 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!25 = !{!26, !32}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 71, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "UART_PORT0", value: 0)
!30 = !DIEnumerator(name: "UART_PORT1", value: 1)
!31 = !DIEnumerator(name: "UART_MAX_PORT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 129, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/dma_sw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
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
!62 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_aes.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!63 = !{!64, !70}
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 290, baseType: !66, size: 32, elements: !67)
!65 = !DIFile(filename: "../../../../../driver/chip/inc/hal_aes.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!66 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "HAL_AES_STATUS_ERROR", value: -1)
!69 = !DIEnumerator(name: "HAL_AES_STATUS_OK", value: 0)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "IRQn", file: !71, line: 47, baseType: !66, size: 32, elements: !72)
!71 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
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
!128 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_cache.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!129 = !{!130, !141, !160, !167}
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 163, baseType: !66, size: 32, elements: !132)
!131 = !DIFile(filename: "../../../../../driver/chip/inc/hal_cache.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
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
!168 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_internal.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
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
!179 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_cache_hw.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
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
!208 = distinct !DIGlobalVariable(name: "g_des_op_done", scope: !209, file: !210, line: 51, type: !11, isLocal: true, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !217, globals: !218, splitDebugInlining: false, nameTableKind: None)
!210 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_des.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!211 = !{!212, !70}
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !213, line: 286, baseType: !66, size: 32, elements: !214)
!213 = !DIFile(filename: "../../../../../driver/chip/inc/hal_des.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!214 = !{!215, !216}
!215 = !DIEnumerator(name: "HAL_DES_STATUS_ERROR", value: -1)
!216 = !DIEnumerator(name: "HAL_DES_STATUS_OK", value: 0)
!217 = !{!116, !117}
!218 = !{!207}
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "nvic_function_table", scope: !221, file: !222, line: 53, type: !310, isLocal: false, isDefinition: true)
!221 = distinct !DICompileUnit(language: DW_LANG_C99, file: !222, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !223, retainedTypes: !232, globals: !309, splitDebugInlining: false, nameTableKind: None)
!222 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!223 = !{!224, !70}
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !225, line: 152, baseType: !66, size: 32, elements: !226)
!225 = !DIFile(filename: "../../../../../driver/chip/inc/hal_nvic.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!226 = !{!227, !228, !229, !230, !231}
!227 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_NO_ISR", value: -4)
!228 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR_IRQ_NUMBER", value: -3)
!229 = !DIEnumerator(name: "HAL_NVIC_STATUS_INVALID_PARAMETER", value: -2)
!230 = !DIEnumerator(name: "HAL_NVIC_STATUS_ERROR", value: -1)
!231 = !DIEnumerator(name: "HAL_NVIC_STATUS_OK", value: 0)
!232 = !{!233, !116, !12, !234, !236, !270}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_irq_t", file: !71, line: 97, baseType: !117)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 44, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !15, line: 77, baseType: !66)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !238, line: 378, baseType: !239)
!238 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cm4.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 363, size: 28704, elements: !240)
!240 = !{!241, !245, !249, !250, !251, !252, !253, !254, !255, !256, !260, !265, !269}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !239, file: !238, line: 365, baseType: !242, size: 256)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 256, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 8)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !239, file: !238, line: 366, baseType: !246, size: 768, offset: 256)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 768, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 24)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !239, file: !238, line: 367, baseType: !242, size: 256, offset: 1024)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !239, file: !238, line: 368, baseType: !246, size: 768, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !239, file: !238, line: 369, baseType: !242, size: 256, offset: 2048)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !239, file: !238, line: 370, baseType: !246, size: 768, offset: 2304)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !239, file: !238, line: 371, baseType: !242, size: 256, offset: 3072)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !239, file: !238, line: 372, baseType: !246, size: 768, offset: 3328)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !239, file: !238, line: 373, baseType: !242, size: 256, offset: 4096)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !239, file: !238, line: 374, baseType: !257, size: 1792, offset: 4352)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1792, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 56)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !239, file: !238, line: 375, baseType: !261, size: 1920, offset: 6144)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 1920, elements: !263)
!262 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!263 = !{!264}
!264 = !DISubrange(count: 240)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !239, file: !238, line: 376, baseType: !266, size: 20608, offset: 8064)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 20608, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 644)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !239, file: !238, line: 377, baseType: !11, size: 32, offset: 28672)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !238, line: 418, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 395, size: 1120, elements: !273)
!273 = !{!274, !276, !277, !278, !279, !280, !281, !285, !286, !287, !288, !289, !290, !291, !292, !296, !297, !298, !302, !306, !308}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !272, file: !238, line: 397, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !272, file: !238, line: 398, baseType: !11, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !272, file: !238, line: 399, baseType: !11, size: 32, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !272, file: !238, line: 400, baseType: !11, size: 32, offset: 96)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !272, file: !238, line: 401, baseType: !11, size: 32, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !272, file: !238, line: 402, baseType: !11, size: 32, offset: 160)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !272, file: !238, line: 403, baseType: !282, size: 96, offset: 192)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 96, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 12)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !272, file: !238, line: 404, baseType: !11, size: 32, offset: 288)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !272, file: !238, line: 405, baseType: !11, size: 32, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !272, file: !238, line: 406, baseType: !11, size: 32, offset: 352)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !272, file: !238, line: 407, baseType: !11, size: 32, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !272, file: !238, line: 408, baseType: !11, size: 32, offset: 416)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !272, file: !238, line: 409, baseType: !11, size: 32, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !272, file: !238, line: 410, baseType: !11, size: 32, offset: 480)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !272, file: !238, line: 411, baseType: !293, size: 64, offset: 512)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 64, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 2)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !272, file: !238, line: 412, baseType: !275, size: 32, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !272, file: !238, line: 413, baseType: !275, size: 32, offset: 608)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !272, file: !238, line: 414, baseType: !299, size: 128, offset: 640)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 128, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 4)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !272, file: !238, line: 415, baseType: !303, size: 160, offset: 768)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 160, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 5)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !272, file: !238, line: 416, baseType: !307, size: 160, offset: 928)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !304)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !272, file: !238, line: 417, baseType: !11, size: 32, offset: 1088)
!309 = !{!219}
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 6144, elements: !319)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "nvic_function_t", file: !222, line: 50, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !222, line: 47, size: 64, elements: !313)
!313 = !{!314, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nvic_callback", scope: !312, file: !222, line: 48, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 32)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !233}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pending", scope: !312, file: !222, line: 49, baseType: !12, size: 32, offset: 32)
!319 = !{!320}
!320 = !DISubrange(count: 96)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "g_uart_context_table", scope: !323, file: !324, line: 77, type: !393, isLocal: true, isDefinition: true)
!323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !324, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !325, retainedTypes: !376, globals: !378, splitDebugInlining: false, nameTableKind: None)
!324 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_uart.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!325 = !{!326, !334, !340, !356, !362, !366, !26, !32, !371}
!326 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !327, line: 345, baseType: !66, size: 32, elements: !328)
!327 = !DIFile(filename: "../../../../../driver/chip/inc/hal_uart.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!328 = !{!329, !330, !331, !332, !333}
!329 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_PARAMETER", value: -4)
!330 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_BUSY", value: -3)
!331 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR_UNINITIALIZED", value: -2)
!332 = !DIEnumerator(name: "HAL_UART_STATUS_ERROR", value: -1)
!333 = !DIEnumerator(name: "HAL_UART_STATUS_OK", value: 0)
!334 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !335, line: 109, baseType: !7, size: 32, elements: !336)
!335 = !DIFile(filename: "../../../../../driver/chip/mt7687/inc/hal_platform.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!336 = !{!337, !338, !339}
!337 = !DIEnumerator(name: "HAL_UART_0", value: 0)
!338 = !DIEnumerator(name: "HAL_UART_1", value: 1)
!339 = !DIEnumerator(name: "HAL_UART_MAX", value: 2)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !327, line: 302, baseType: !7, size: 32, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!342 = !DIEnumerator(name: "HAL_UART_BAUDRATE_110", value: 0)
!343 = !DIEnumerator(name: "HAL_UART_BAUDRATE_300", value: 1)
!344 = !DIEnumerator(name: "HAL_UART_BAUDRATE_1200", value: 2)
!345 = !DIEnumerator(name: "HAL_UART_BAUDRATE_2400", value: 3)
!346 = !DIEnumerator(name: "HAL_UART_BAUDRATE_4800", value: 4)
!347 = !DIEnumerator(name: "HAL_UART_BAUDRATE_9600", value: 5)
!348 = !DIEnumerator(name: "HAL_UART_BAUDRATE_19200", value: 6)
!349 = !DIEnumerator(name: "HAL_UART_BAUDRATE_38400", value: 7)
!350 = !DIEnumerator(name: "HAL_UART_BAUDRATE_57600", value: 8)
!351 = !DIEnumerator(name: "HAL_UART_BAUDRATE_115200", value: 9)
!352 = !DIEnumerator(name: "HAL_UART_BAUDRATE_230400", value: 10)
!353 = !DIEnumerator(name: "HAL_UART_BAUDRATE_460800", value: 11)
!354 = !DIEnumerator(name: "HAL_UART_BAUDRATE_921600", value: 12)
!355 = !DIEnumerator(name: "HAL_UART_BAUDRATE_MAX", value: 13)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !327, line: 321, baseType: !7, size: 32, elements: !357)
!357 = !{!358, !359, !360, !361}
!358 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_5", value: 0)
!359 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_6", value: 1)
!360 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_7", value: 2)
!361 = !DIEnumerator(name: "HAL_UART_WORD_LENGTH_8", value: 3)
!362 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !327, line: 330, baseType: !7, size: 32, elements: !363)
!363 = !{!364, !365}
!364 = !DIEnumerator(name: "HAL_UART_STOP_BIT_1", value: 0)
!365 = !DIEnumerator(name: "HAL_UART_STOP_BIT_2", value: 1)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !327, line: 337, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIEnumerator(name: "HAL_UART_PARITY_NONE", value: 0)
!369 = !DIEnumerator(name: "HAL_UART_PARITY_ODD", value: 1)
!370 = !DIEnumerator(name: "HAL_UART_PARITY_EVEN", value: 2)
!371 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !327, line: 355, baseType: !66, size: 32, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIEnumerator(name: "HAL_UART_EVENT_TRANSACTION_ERROR", value: -1)
!374 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_READ", value: 1)
!375 = !DIEnumerator(name: "HAL_UART_EVENT_READY_TO_WRITE", value: 2)
!376 = !{!7, !116, !55, !377, !118}
!377 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!378 = !{!321, !379}
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "func_tbl", scope: !381, file: !324, line: 536, type: !391, isLocal: true, isDefinition: true)
!381 = distinct !DISubprogram(name: "hal_uart_map_receive_callback", scope: !324, file: !324, line: 534, type: !382, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !389)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !388}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID_FUNC", file: !33, line: 197, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = !DISubroutineType(types: !387)
!387 = !{null}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_port_t", file: !335, line: 113, baseType: !334)
!389 = !{!390}
!390 = !DILocalVariable(name: "uart_port", arg: 1, scope: !381, file: !324, line: 534, type: !388)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 64, elements: !294)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 1024, elements: !294)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uart_context_t", file: !324, line: 75, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 68, size: 512, elements: !396)
!396 = !{!397, !398, !410, !411, !422, !423}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config_present", scope: !395, file: !324, line: 69, baseType: !124, size: 8)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "basic_config", scope: !395, file: !324, line: 70, baseType: !399, size: 128, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !327, line: 378, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !327, line: 373, size: 128, elements: !401)
!401 = !{!402, !404, !406, !408}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !400, file: !327, line: 374, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_baudrate_t", file: !327, line: 317, baseType: !340)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !400, file: !327, line: 375, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_word_length_t", file: !327, line: 326, baseType: !356)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !400, file: !327, line: 376, baseType: !407, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_stop_bit_t", file: !327, line: 333, baseType: !362)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !400, file: !327, line: 377, baseType: !409, size: 32, offset: 96)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_parity_t", file: !327, line: 341, baseType: !366)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "callback_present", scope: !395, file: !324, line: 71, baseType: !124, size: 8, offset: 160)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "callback_config", scope: !395, file: !324, line: 72, baseType: !412, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_config_t", file: !324, line: 66, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 63, size: 64, elements: !414)
!414 = !{!415, !421}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !413, file: !324, line: 64, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_t", file: !327, line: 410, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420, !116}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_callback_event_t", file: !327, line: 359, baseType: !371)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !413, file: !324, line: 65, baseType: !116, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config_present", scope: !395, file: !324, line: 73, baseType: !124, size: 8, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_config", scope: !395, file: !324, line: 74, baseType: !424, size: 224, offset: 288)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_dma_config_t", file: !327, line: 390, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !327, line: 382, size: 224, elements: !426)
!426 = !{!427, !429, !430, !431, !432, !433, !434}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer", scope: !425, file: !327, line: 383, baseType: !428, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_buffer_size", scope: !425, file: !327, line: 384, baseType: !12, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "send_vfifo_threshold_size", scope: !425, file: !327, line: 385, baseType: !12, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer", scope: !425, file: !327, line: 386, baseType: !428, size: 32, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_buffer_size", scope: !425, file: !327, line: 387, baseType: !12, size: 32, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_threshold_size", scope: !425, file: !327, line: 388, baseType: !12, size: 32, offset: 160)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "receive_vfifo_alert_size", scope: !425, file: !327, line: 389, baseType: !12, size: 32, offset: 192)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "SystemCoreClock", scope: !437, file: !438, line: 59, type: !12, isLocal: false, isDefinition: true)
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !439, globals: !492, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/src/system_mt7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!439 = !{!440, !448, !473}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !238, line: 656, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 650, size: 128, elements: !443)
!443 = !{!444, !445, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !442, file: !238, line: 652, baseType: !11, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !442, file: !238, line: 653, baseType: !11, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !442, file: !238, line: 654, baseType: !11, size: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !442, file: !238, line: 655, baseType: !275, size: 32, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !238, line: 418, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 395, size: 1120, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !450, file: !238, line: 397, baseType: !275, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !450, file: !238, line: 398, baseType: !11, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !450, file: !238, line: 399, baseType: !11, size: 32, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !450, file: !238, line: 400, baseType: !11, size: 32, offset: 96)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !450, file: !238, line: 401, baseType: !11, size: 32, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !450, file: !238, line: 402, baseType: !11, size: 32, offset: 160)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !450, file: !238, line: 403, baseType: !282, size: 96, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !450, file: !238, line: 404, baseType: !11, size: 32, offset: 288)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !450, file: !238, line: 405, baseType: !11, size: 32, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !450, file: !238, line: 406, baseType: !11, size: 32, offset: 352)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !450, file: !238, line: 407, baseType: !11, size: 32, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !450, file: !238, line: 408, baseType: !11, size: 32, offset: 416)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !450, file: !238, line: 409, baseType: !11, size: 32, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !450, file: !238, line: 410, baseType: !11, size: 32, offset: 480)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !450, file: !238, line: 411, baseType: !293, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !450, file: !238, line: 412, baseType: !275, size: 32, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !450, file: !238, line: 413, baseType: !275, size: 32, offset: 608)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !450, file: !238, line: 414, baseType: !299, size: 128, offset: 640)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !450, file: !238, line: 415, baseType: !303, size: 160, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !450, file: !238, line: 416, baseType: !307, size: 160, offset: 928)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !450, file: !238, line: 417, baseType: !11, size: 32, offset: 1088)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "CACHE_REGISTER_T", file: !179, line: 72, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !179, line: 56, size: 525312, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CON", scope: !475, file: !179, line: 57, baseType: !11, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_OP", scope: !475, file: !179, line: 58, baseType: !11, size: 32, offset: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0L", scope: !475, file: !179, line: 59, baseType: !11, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT0U", scope: !475, file: !179, line: 60, baseType: !11, size: 32, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0L", scope: !475, file: !179, line: 61, baseType: !11, size: 32, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT0U", scope: !475, file: !179, line: 62, baseType: !11, size: 32, offset: 160)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1L", scope: !475, file: !179, line: 63, baseType: !11, size: 32, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_HCNT1U", scope: !475, file: !179, line: 64, baseType: !11, size: 32, offset: 224)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1L", scope: !475, file: !179, line: 65, baseType: !11, size: 32, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_CCNT1U", scope: !475, file: !179, line: 66, baseType: !11, size: 32, offset: 288)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !475, file: !179, line: 67, baseType: !193, size: 32, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_REGION_EN", scope: !475, file: !179, line: 68, baseType: !11, size: 32, offset: 352)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !475, file: !179, line: 69, baseType: !198, size: 523904, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_ENTRY_N", scope: !475, file: !179, line: 70, baseType: !202, size: 512, offset: 524288)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "CACHE_END_ENTRY_N", scope: !475, file: !179, line: 71, baseType: !202, size: 512, offset: 524800)
!492 = !{!435, !493}
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "System_Initialize_Done", scope: !437, file: !438, line: 61, type: !11, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "heap_end", scope: !497, file: !498, line: 66, type: !503, isLocal: true, isDefinition: true)
!497 = distinct !DISubprogram(name: "_sbrk_r", scope: !498, file: !498, line: 63, type: !499, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !699)
!498 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC/syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !504, !694}
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "caddr_t", file: !502, line: 123, baseType: !503)
!502 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/types.h", directory: "/home/mjshen/RTOSExploration")
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 32)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !506, line: 377, size: 1920, elements: !507)
!506 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/reent.h", directory: "/home/mjshen/RTOSExploration")
!507 = !{!508, !509, !583, !584, !585, !586, !587, !588, !589, !592, !613, !617, !618, !619, !620, !630, !643, !644, !649, !668, !669, !676, !677, !693}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !505, file: !506, line: 381, baseType: !66, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !505, file: !506, line: 386, baseType: !510, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !506, line: 292, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !506, line: 186, size: 832, elements: !513)
!513 = !{!514, !516, !517, !518, !520, !521, !526, !527, !528, !529, !533, !539, !546, !550, !551, !552, !553, !557, !559, !560, !561, !563, !569, !582}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !512, file: !506, line: 187, baseType: !515, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !512, file: !506, line: 188, baseType: !66, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !512, file: !506, line: 189, baseType: !66, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !512, file: !506, line: 190, baseType: !519, size: 16, offset: 96)
!519 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !512, file: !506, line: 191, baseType: !519, size: 16, offset: 112)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !512, file: !506, line: 192, baseType: !522, size: 64, offset: 128)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !506, line: 122, size: 64, elements: !523)
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !522, file: !506, line: 123, baseType: !515, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !522, file: !506, line: 124, baseType: !66, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !512, file: !506, line: 193, baseType: !66, size: 32, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !512, file: !506, line: 196, baseType: !504, size: 32, offset: 224)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !512, file: !506, line: 200, baseType: !116, size: 32, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !512, file: !506, line: 202, baseType: !530, size: 32, offset: 288)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 32)
!531 = !DISubroutineType(types: !532)
!532 = !{!66, !504, !116, !503, !66}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !512, file: !506, line: 204, baseType: !534, size: 32, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 32)
!535 = !DISubroutineType(types: !536)
!536 = !{!66, !504, !116, !537, !66}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !512, file: !506, line: 207, baseType: !540, size: 32, offset: 352)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 32)
!541 = !DISubroutineType(types: !542)
!542 = !{!543, !504, !116, !543, !66}
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !544, line: 116, baseType: !545)
!544 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_types.h", directory: "/home/mjshen/RTOSExploration")
!545 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !512, file: !506, line: 208, baseType: !547, size: 32, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 32)
!548 = !DISubroutineType(types: !549)
!549 = !{!66, !504, !116}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !512, file: !506, line: 211, baseType: !522, size: 64, offset: 416)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !512, file: !506, line: 212, baseType: !515, size: 32, offset: 480)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !512, file: !506, line: 213, baseType: !66, size: 32, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !512, file: !506, line: 216, baseType: !554, size: 24, offset: 544)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 24, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 3)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !512, file: !506, line: 217, baseType: !558, size: 8, offset: 568)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !194)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !512, file: !506, line: 220, baseType: !522, size: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !512, file: !506, line: 223, baseType: !66, size: 32, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !512, file: !506, line: 224, baseType: !562, size: 32, offset: 672)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !544, line: 46, baseType: !545)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !512, file: !506, line: 231, baseType: !564, size: 32, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !506, line: 35, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_T", file: !566, line: 34, baseType: !567)
!566 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/lock.h", directory: "/home/mjshen/RTOSExploration")
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 32)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "__lock", file: !566, line: 33, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !512, file: !506, line: 233, baseType: !570, size: 64, offset: 736)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !544, line: 170, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 162, size: 64, elements: !572)
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !571, file: !544, line: 164, baseType: !66, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !571, file: !544, line: 169, baseType: !575, size: 32, offset: 32)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !544, line: 165, size: 32, elements: !576)
!576 = !{!577, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !575, file: !544, line: 167, baseType: !578, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !579, line: 116, baseType: !66)
!579 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "")
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !575, file: !544, line: 168, baseType: !581, size: 32)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !300)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !512, file: !506, line: 234, baseType: !66, size: 32, offset: 800)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !505, file: !506, line: 386, baseType: !510, size: 32, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !505, file: !506, line: 386, baseType: !510, size: 32, offset: 96)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !505, file: !506, line: 388, baseType: !66, size: 32, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !505, file: !506, line: 390, baseType: !503, size: 32, offset: 160)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !505, file: !506, line: 392, baseType: !66, size: 32, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !505, file: !506, line: 394, baseType: !66, size: 32, offset: 224)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !505, file: !506, line: 395, baseType: !590, size: 32, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 32)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !506, line: 45, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "_mp", scope: !505, file: !506, line: 397, baseType: !593, size: 32, offset: 288)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 32)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_mprec", file: !506, line: 349, size: 128, elements: !595)
!595 = !{!596, !609, !610, !611}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !594, file: !506, line: 352, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 32)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !506, line: 52, size: 192, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !598, file: !506, line: 54, baseType: !597, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !598, file: !506, line: 55, baseType: !66, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !598, file: !506, line: 55, baseType: !66, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !598, file: !506, line: 55, baseType: !66, size: 32, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !598, file: !506, line: 55, baseType: !66, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !598, file: !506, line: 56, baseType: !606, size: 32, offset: 160)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 32, elements: !194)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !506, line: 22, baseType: !608)
!608 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !594, file: !506, line: 353, baseType: !66, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !594, file: !506, line: 354, baseType: !597, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !594, file: !506, line: 355, baseType: !612, size: 32, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !505, file: !506, line: 399, baseType: !614, size: 32, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 32)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !504}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !505, file: !506, line: 401, baseType: !66, size: 32, offset: 352)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !505, file: !506, line: 404, baseType: !66, size: 32, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !505, file: !506, line: 405, baseType: !503, size: 32, offset: 416)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !505, file: !506, line: 407, baseType: !621, size: 32, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 32)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !506, line: 324, size: 192, elements: !623)
!623 = !{!624, !626, !627, !628}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !622, file: !506, line: 325, baseType: !625, size: 48)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !555)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !622, file: !506, line: 326, baseType: !625, size: 48, offset: 48)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !622, file: !506, line: 327, baseType: !53, size: 16, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !622, file: !506, line: 330, baseType: !629, size: 64, offset: 128)
!629 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !505, file: !506, line: 408, baseType: !631, size: 32, offset: 480)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 32)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !506, line: 60, size: 288, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !632, file: !506, line: 62, baseType: !66, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !632, file: !506, line: 63, baseType: !66, size: 32, offset: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !632, file: !506, line: 64, baseType: !66, size: 32, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !632, file: !506, line: 65, baseType: !66, size: 32, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !632, file: !506, line: 66, baseType: !66, size: 32, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !632, file: !506, line: 67, baseType: !66, size: 32, offset: 160)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !632, file: !506, line: 68, baseType: !66, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !632, file: !506, line: 69, baseType: !66, size: 32, offset: 224)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !632, file: !506, line: 70, baseType: !66, size: 32, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !505, file: !506, line: 409, baseType: !503, size: 32, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !505, file: !506, line: 412, baseType: !645, size: 32, offset: 544)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 32)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !66}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !505, file: !506, line: 416, baseType: !650, size: 32, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 32)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !506, line: 90, size: 1120, elements: !652)
!652 = !{!653, !654, !655, !659}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !651, file: !506, line: 91, baseType: !650, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !651, file: !506, line: 92, baseType: !66, size: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !651, file: !506, line: 93, baseType: !656, size: 1024, offset: 64)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 1024, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args_ptr", scope: !651, file: !506, line: 94, baseType: !660, size: 32, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 32)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !506, line: 79, size: 2112, elements: !662)
!662 = !{!663, !665, !666, !667}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !661, file: !506, line: 80, baseType: !664, size: 1024)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 1024, elements: !657)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !661, file: !506, line: 81, baseType: !664, size: 1024, offset: 1024)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !661, file: !506, line: 83, baseType: !607, size: 32, offset: 2048)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !661, file: !506, line: 86, baseType: !607, size: 32, offset: 2080)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !505, file: !506, line: 417, baseType: !651, size: 1120, offset: 608)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !505, file: !506, line: 420, baseType: !670, size: 96, offset: 1728)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !506, line: 296, size: 96, elements: !671)
!671 = !{!672, !674, !675}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !670, file: !506, line: 298, baseType: !673, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !670, file: !506, line: 299, baseType: !66, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !670, file: !506, line: 300, baseType: !510, size: 32, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !505, file: !506, line: 421, baseType: !510, size: 32, offset: 1824)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_misc", scope: !505, file: !506, line: 422, baseType: !678, size: 32, offset: 1856)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 32)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_misc_reent", file: !506, line: 359, size: 640, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !687, !688, !689, !690, !691, !692}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !679, file: !506, line: 362, baseType: !503, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !679, file: !506, line: 363, baseType: !570, size: 64, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !679, file: !506, line: 364, baseType: !570, size: 64, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !679, file: !506, line: 365, baseType: !570, size: 64, offset: 160)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !679, file: !506, line: 366, baseType: !686, size: 64, offset: 224)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 64, elements: !243)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !679, file: !506, line: 367, baseType: !66, size: 32, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !679, file: !506, line: 368, baseType: !570, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !679, file: !506, line: 369, baseType: !570, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !679, file: !506, line: 370, baseType: !570, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !679, file: !506, line: 371, baseType: !570, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !679, file: !506, line: 372, baseType: !570, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !505, file: !506, line: 423, baseType: !503, size: 32, offset: 1888)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !579, line: 46, baseType: !7)
!695 = distinct !DICompileUnit(language: DW_LANG_C99, file: !696, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !697, globals: !698, splitDebugInlining: false, nameTableKind: None)
!696 = !DIFile(filename: "syscalls.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!697 = !{!503, !501}
!698 = !{!495}
!699 = !{!700, !701, !702, !703}
!700 = !DILocalVariable(name: "r", arg: 1, scope: !497, file: !498, line: 63, type: !504)
!701 = !DILocalVariable(name: "nbytes", arg: 2, scope: !497, file: !498, line: 63, type: !694)
!702 = !DILocalVariable(name: "prev_heap_end", scope: !497, file: !498, line: 67, type: !503)
!703 = !DILocalVariable(name: "stack", scope: !497, file: !498, line: 68, type: !503)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(name: "build_date_time_str", scope: !706, file: !711, line: 4, type: !717, isLocal: false, isDefinition: true)
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !707, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !708, splitDebugInlining: false, nameTableKind: None)
!707 = !DIFile(filename: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC/build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!708 = !{!704, !709, !715}
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "sw_verno_str", scope: !706, file: !711, line: 5, type: !712, isLocal: false, isDefinition: true)
!711 = !DIFile(filename: "build/middleware/MTK/verno/verno.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 88, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 11)
!715 = !DIGlobalVariableExpression(var: !716, expr: !DIExpression())
!716 = distinct !DIGlobalVariable(name: "hw_verno_str", scope: !706, file: !711, line: 6, type: !712, isLocal: false, isDefinition: true)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 248, elements: !718)
!718 = !{!719}
!719 = !DISubrange(count: 31)
!720 = distinct !DICompileUnit(language: DW_LANG_C99, file: !721, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !722, retainedTypes: !728, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_gpio_7687.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!722 = !{!723}
!723 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !724, line: 1209, baseType: !7, size: 32, elements: !725)
!724 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_gpio_7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!725 = !{!726, !727}
!726 = !DIEnumerator(name: "ePAD_CONTROL_BY_N9", value: 0)
!727 = !DIEnumerator(name: "ePAD_CONTROL_BY_CM4", value: 1)
!728 = !{!729, !731}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "kal_uint32", file: !9, line: 116, baseType: !7)
!732 = distinct !DICompileUnit(language: DW_LANG_C99, file: !733, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !734, retainedTypes: !812, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/hal_pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!734 = !{!735}
!735 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !736, line: 150, baseType: !7, size: 32, elements: !737)
!736 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/hal_pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!738 = !DIEnumerator(name: "ePAD_ANTSEL0", value: 0)
!739 = !DIEnumerator(name: "ePAD_ANTSEL1", value: 1)
!740 = !DIEnumerator(name: "ePAD_ANTSEL2", value: 2)
!741 = !DIEnumerator(name: "ePAD_ANTSEL3", value: 3)
!742 = !DIEnumerator(name: "ePAD_ANTSEL4", value: 4)
!743 = !DIEnumerator(name: "ePAD_ANTSEL5", value: 5)
!744 = !DIEnumerator(name: "ePAD_ANTSEL6", value: 6)
!745 = !DIEnumerator(name: "ePAD_ANTSEL7", value: 7)
!746 = !DIEnumerator(name: "ePAD_IN_GPIO8", value: 8)
!747 = !DIEnumerator(name: "ePAD_IN_GPIO9", value: 9)
!748 = !DIEnumerator(name: "ePAD_IN_GPIO10", value: 10)
!749 = !DIEnumerator(name: "ePAD_IN_GPIO11", value: 11)
!750 = !DIEnumerator(name: "ePAD_IN_GPIO12", value: 12)
!751 = !DIEnumerator(name: "ePAD_IN_GPIO13", value: 13)
!752 = !DIEnumerator(name: "ePAD_IN_GPIO14", value: 14)
!753 = !DIEnumerator(name: "ePAD_IN_GPIO15", value: 15)
!754 = !DIEnumerator(name: "ePAD_IN_GPIO16", value: 16)
!755 = !DIEnumerator(name: "ePAD_IN_GPIO17", value: 17)
!756 = !DIEnumerator(name: "ePAD_IN_GPIO18", value: 18)
!757 = !DIEnumerator(name: "ePAD_IN_GPIO19", value: 19)
!758 = !DIEnumerator(name: "ePAD_IN_GPIO20", value: 20)
!759 = !DIEnumerator(name: "ePAD_IN_GPIO21", value: 21)
!760 = !DIEnumerator(name: "ePAD_IN_GPIO22", value: 22)
!761 = !DIEnumerator(name: "ePAD_IN_UART0_TXD", value: 23)
!762 = !DIEnumerator(name: "ePAD_PERST_N", value: 24)
!763 = !DIEnumerator(name: "ePAD_WAKE_N", value: 25)
!764 = !DIEnumerator(name: "ePAD_CLK_REQ_N", value: 26)
!765 = !DIEnumerator(name: "ePAD_SDIO_CLK", value: 27)
!766 = !DIEnumerator(name: "ePAD_SDIO_CMD", value: 28)
!767 = !DIEnumerator(name: "ePAD_SDIO_DAT3", value: 29)
!768 = !DIEnumerator(name: "ePAD_SDIO_DAT2", value: 30)
!769 = !DIEnumerator(name: "ePAD_SDIO_DAT1", value: 31)
!770 = !DIEnumerator(name: "ePAD_SDIO_DAT0", value: 32)
!771 = !DIEnumerator(name: "ePAD_GPIO0", value: 33)
!772 = !DIEnumerator(name: "ePAD_GPIO1", value: 34)
!773 = !DIEnumerator(name: "ePAD_UART_DBG", value: 35)
!774 = !DIEnumerator(name: "ePAD_UART_RX", value: 36)
!775 = !DIEnumerator(name: "ePAD_UART_TX", value: 37)
!776 = !DIEnumerator(name: "ePAD_UART_RTS", value: 38)
!777 = !DIEnumerator(name: "ePAD_UART_CTS", value: 39)
!778 = !DIEnumerator(name: "ePAD_IN_GPIO44", value: 40)
!779 = !DIEnumerator(name: "ePAD_IN_GPIO45", value: 41)
!780 = !DIEnumerator(name: "ePAD_IN_GPIO46", value: 42)
!781 = !DIEnumerator(name: "ePAD_IN_GPIO47", value: 43)
!782 = !DIEnumerator(name: "ePAD_IN_GPIO48", value: 44)
!783 = !DIEnumerator(name: "ePAD_IN_GPIO49", value: 45)
!784 = !DIEnumerator(name: "ePAD_IN_GPIO50", value: 46)
!785 = !DIEnumerator(name: "ePAD_IN_GPIO51", value: 47)
!786 = !DIEnumerator(name: "ePAD_IN_GPIO52", value: 48)
!787 = !DIEnumerator(name: "ePAD_IN_GPIO53", value: 49)
!788 = !DIEnumerator(name: "ePAD_IN_GPIO54", value: 50)
!789 = !DIEnumerator(name: "ePAD_IN_PWM2", value: 51)
!790 = !DIEnumerator(name: "ePAD_IN_PWM3", value: 52)
!791 = !DIEnumerator(name: "ePAD_IN_PWM4", value: 53)
!792 = !DIEnumerator(name: "ePAD_IN_PWM5", value: 54)
!793 = !DIEnumerator(name: "ePAD_IN_PWM6", value: 55)
!794 = !DIEnumerator(name: "ePAD_IN_PWM7", value: 56)
!795 = !DIEnumerator(name: "ePAD_WF_RF_DIS_B", value: 57)
!796 = !DIEnumerator(name: "ePAD_BT_RF_DIS_B", value: 58)
!797 = !DIEnumerator(name: "ePAD_WF_LED_B", value: 59)
!798 = !DIEnumerator(name: "ePAD_BT_LED_B", value: 60)
!799 = !DIEnumerator(name: "ePAD_IN_ADC4", value: 61)
!800 = !DIEnumerator(name: "ePAD_IN_ADC5", value: 62)
!801 = !DIEnumerator(name: "ePAD_IN_ADC6", value: 63)
!802 = !DIEnumerator(name: "ePAD_IN_ADC7", value: 64)
!803 = !DIEnumerator(name: "ePAD_IN_ADC8", value: 65)
!804 = !DIEnumerator(name: "ePAD_IN_ADC9", value: 66)
!805 = !DIEnumerator(name: "ePAD_IN_ADC10", value: 67)
!806 = !DIEnumerator(name: "ePAD_IN_ADC11", value: 68)
!807 = !DIEnumerator(name: "ePAD_IN_ADC12", value: 69)
!808 = !DIEnumerator(name: "ePAD_IN_ADC13", value: 70)
!809 = !DIEnumerator(name: "ePAD_IN_ADC14", value: 71)
!810 = !DIEnumerator(name: "ePAD_IN_ADC15", value: 72)
!811 = !DIEnumerator(name: "ePAD_NUM", value: 73)
!812 = !{!729, !8}
!813 = distinct !DICompileUnit(language: DW_LANG_C99, file: !814, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !815, splitDebugInlining: false, nameTableKind: None)
!814 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/nvic.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!815 = !{!816, !841}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !238, line: 418, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 395, size: 1120, elements: !819)
!819 = !{!820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !818, file: !238, line: 397, baseType: !275, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !818, file: !238, line: 398, baseType: !11, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "VTOR", scope: !818, file: !238, line: 399, baseType: !11, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !818, file: !238, line: 400, baseType: !11, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !818, file: !238, line: 401, baseType: !11, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !818, file: !238, line: 402, baseType: !11, size: 32, offset: 160)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !818, file: !238, line: 403, baseType: !282, size: 96, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !818, file: !238, line: 404, baseType: !11, size: 32, offset: 288)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "CFSR", scope: !818, file: !238, line: 405, baseType: !11, size: 32, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "HFSR", scope: !818, file: !238, line: 406, baseType: !11, size: 32, offset: 352)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "DFSR", scope: !818, file: !238, line: 407, baseType: !11, size: 32, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "MMFAR", scope: !818, file: !238, line: 408, baseType: !11, size: 32, offset: 416)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "BFAR", scope: !818, file: !238, line: 409, baseType: !11, size: 32, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "AFSR", scope: !818, file: !238, line: 410, baseType: !11, size: 32, offset: 480)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "PFR", scope: !818, file: !238, line: 411, baseType: !293, size: 64, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "DFR", scope: !818, file: !238, line: 412, baseType: !275, size: 32, offset: 576)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ADR", scope: !818, file: !238, line: 413, baseType: !275, size: 32, offset: 608)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "MMFR", scope: !818, file: !238, line: 414, baseType: !299, size: 128, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ISAR", scope: !818, file: !238, line: 415, baseType: !303, size: 160, offset: 768)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !818, file: !238, line: 416, baseType: !307, size: 160, offset: 928)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "CPACR", scope: !818, file: !238, line: 417, baseType: !11, size: 32, offset: 1088)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !238, line: 378, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 363, size: 28704, elements: !844)
!844 = !{!845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !843, file: !238, line: 365, baseType: !242, size: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !843, file: !238, line: 366, baseType: !246, size: 768, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !843, file: !238, line: 367, baseType: !242, size: 256, offset: 1024)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "RSERVED1", scope: !843, file: !238, line: 368, baseType: !246, size: 768, offset: 1280)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !843, file: !238, line: 369, baseType: !242, size: 256, offset: 2048)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !843, file: !238, line: 370, baseType: !246, size: 768, offset: 2304)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !843, file: !238, line: 371, baseType: !242, size: 256, offset: 3072)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !843, file: !238, line: 372, baseType: !246, size: 768, offset: 3328)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "IABR", scope: !843, file: !238, line: 373, baseType: !242, size: 256, offset: 4096)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !843, file: !238, line: 374, baseType: !257, size: 1792, offset: 4352)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !843, file: !238, line: 375, baseType: !261, size: 1920, offset: 6144)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED5", scope: !843, file: !238, line: 376, baseType: !266, size: 20608, offset: 8064)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "STIR", scope: !843, file: !238, line: 377, baseType: !11, size: 32, offset: 28672)
!858 = distinct !DICompileUnit(language: DW_LANG_C99, file: !859, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !860, splitDebugInlining: false, nameTableKind: None)
!859 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/pinmux.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!860 = !{!861, !735}
!861 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !862, line: 55, baseType: !7, size: 32, elements: !863)
!862 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/pinmux.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!863 = !{!864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891}
!864 = !DIEnumerator(name: "eIOT_GPIO_IDX_0", value: 0)
!865 = !DIEnumerator(name: "eIOT_GPIO_IDX_1", value: 1)
!866 = !DIEnumerator(name: "eIOT_GPIO_IDX_2", value: 2)
!867 = !DIEnumerator(name: "eIOT_GPIO_IDX_3", value: 3)
!868 = !DIEnumerator(name: "eIOT_GPIO_IDX_4", value: 4)
!869 = !DIEnumerator(name: "eIOT_GPIO_IDX_5", value: 5)
!870 = !DIEnumerator(name: "eIOT_GPIO_IDX_6", value: 6)
!871 = !DIEnumerator(name: "eIOT_GPIO_IDX_7", value: 7)
!872 = !DIEnumerator(name: "eIOT_GPIO_IDX_24", value: 24)
!873 = !DIEnumerator(name: "eIOT_GPIO_IDX_25", value: 25)
!874 = !DIEnumerator(name: "eIOT_GPIO_IDX_26", value: 26)
!875 = !DIEnumerator(name: "eIOT_GPIO_IDX_27", value: 27)
!876 = !DIEnumerator(name: "eIOT_GPIO_IDX_28", value: 28)
!877 = !DIEnumerator(name: "eIOT_GPIO_IDX_29", value: 29)
!878 = !DIEnumerator(name: "eIOT_GPIO_IDX_30", value: 30)
!879 = !DIEnumerator(name: "eIOT_GPIO_IDX_31", value: 31)
!880 = !DIEnumerator(name: "eIOT_GPIO_IDX_32", value: 32)
!881 = !DIEnumerator(name: "eIOT_GPIO_IDX_33", value: 33)
!882 = !DIEnumerator(name: "eIOT_GPIO_IDX_34", value: 34)
!883 = !DIEnumerator(name: "eIOT_GPIO_IDX_35", value: 35)
!884 = !DIEnumerator(name: "eIOT_GPIO_IDX_36", value: 36)
!885 = !DIEnumerator(name: "eIOT_GPIO_IDX_37", value: 37)
!886 = !DIEnumerator(name: "eIOT_GPIO_IDX_38", value: 38)
!887 = !DIEnumerator(name: "eIOT_GPIO_IDX_39", value: 39)
!888 = !DIEnumerator(name: "eIOT_GPIO_IDX_57", value: 57)
!889 = !DIEnumerator(name: "eIOT_GPIO_IDX_58", value: 58)
!890 = !DIEnumerator(name: "eIOT_GPIO_IDX_59", value: 59)
!891 = !DIEnumerator(name: "eIOT_GPIO_IDX_60", value: 60)
!892 = distinct !DICompileUnit(language: DW_LANG_C99, file: !893, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!893 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_log.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!894 = distinct !DICompileUnit(language: DW_LANG_C99, file: !895, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !896, retainedTypes: !960, splitDebugInlining: false, nameTableKind: None)
!895 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/hal_gpio.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!896 = !{!897, !904, !861, !935, !941, !945, !949, !955}
!897 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !898, line: 233, baseType: !66, size: 32, elements: !899)
!898 = !DIFile(filename: "../../../../../driver/chip/inc/hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!899 = !{!900, !901, !902, !903}
!900 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR", value: -3)
!901 = !DIEnumerator(name: "HAL_PINMUX_STATUS_ERROR_PORT", value: -2)
!902 = !DIEnumerator(name: "HAL_PINMUX_STATUS_INVALID_FUNCTION", value: -1)
!903 = !DIEnumerator(name: "HAL_PINMUX_STATUS_OK", value: 0)
!904 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !335, line: 249, baseType: !7, size: 32, elements: !905)
!905 = !{!906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934}
!906 = !DIEnumerator(name: "HAL_GPIO_0", value: 0)
!907 = !DIEnumerator(name: "HAL_GPIO_1", value: 1)
!908 = !DIEnumerator(name: "HAL_GPIO_2", value: 2)
!909 = !DIEnumerator(name: "HAL_GPIO_3", value: 3)
!910 = !DIEnumerator(name: "HAL_GPIO_4", value: 4)
!911 = !DIEnumerator(name: "HAL_GPIO_5", value: 5)
!912 = !DIEnumerator(name: "HAL_GPIO_6", value: 6)
!913 = !DIEnumerator(name: "HAL_GPIO_7", value: 7)
!914 = !DIEnumerator(name: "HAL_GPIO_24", value: 24)
!915 = !DIEnumerator(name: "HAL_GPIO_25", value: 25)
!916 = !DIEnumerator(name: "HAL_GPIO_26", value: 26)
!917 = !DIEnumerator(name: "HAL_GPIO_27", value: 27)
!918 = !DIEnumerator(name: "HAL_GPIO_28", value: 28)
!919 = !DIEnumerator(name: "HAL_GPIO_29", value: 29)
!920 = !DIEnumerator(name: "HAL_GPIO_30", value: 30)
!921 = !DIEnumerator(name: "HAL_GPIO_31", value: 31)
!922 = !DIEnumerator(name: "HAL_GPIO_32", value: 32)
!923 = !DIEnumerator(name: "HAL_GPIO_33", value: 33)
!924 = !DIEnumerator(name: "HAL_GPIO_34", value: 34)
!925 = !DIEnumerator(name: "HAL_GPIO_35", value: 35)
!926 = !DIEnumerator(name: "HAL_GPIO_36", value: 36)
!927 = !DIEnumerator(name: "HAL_GPIO_37", value: 37)
!928 = !DIEnumerator(name: "HAL_GPIO_38", value: 38)
!929 = !DIEnumerator(name: "HAL_GPIO_39", value: 39)
!930 = !DIEnumerator(name: "HAL_GPIO_57", value: 57)
!931 = !DIEnumerator(name: "HAL_GPIO_58", value: 58)
!932 = !DIEnumerator(name: "HAL_GPIO_59", value: 59)
!933 = !DIEnumerator(name: "HAL_GPIO_60", value: 60)
!934 = !DIEnumerator(name: "HAL_GPIO_MAX", value: 61)
!935 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !898, line: 224, baseType: !66, size: 32, elements: !936)
!936 = !{!937, !938, !939, !940}
!937 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR", value: -3)
!938 = !DIEnumerator(name: "HAL_GPIO_STATUS_ERROR_PIN", value: -2)
!939 = !DIEnumerator(name: "HAL_GPIO_STATUS_INVALID_PARAMETER", value: -1)
!940 = !DIEnumerator(name: "HAL_GPIO_STATUS_OK", value: 0)
!941 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !898, line: 217, baseType: !7, size: 32, elements: !942)
!942 = !{!943, !944}
!943 = !DIEnumerator(name: "HAL_GPIO_DATA_LOW", value: 0)
!944 = !DIEnumerator(name: "HAL_GPIO_DATA_HIGH", value: 1)
!945 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !898, line: 210, baseType: !7, size: 32, elements: !946)
!946 = !{!947, !948}
!947 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_INPUT", value: 0)
!948 = !DIEnumerator(name: "HAL_GPIO_DIRECTION_OUTPUT", value: 1)
!949 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !898, line: 242, baseType: !7, size: 32, elements: !950)
!950 = !{!951, !952, !953, !954}
!951 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_4MA", value: 0)
!952 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_8MA", value: 1)
!953 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_12MA", value: 2)
!954 = !DIEnumerator(name: "HAL_GPIO_DRIVING_CURRENT_16MA", value: 3)
!955 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !956, line: 57, baseType: !7, size: 32, elements: !957)
!956 = !DIFile(filename: "../../../../../driver/chip/mt7687/src/common/include/low_hal_gpio.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!957 = !{!958, !959}
!958 = !DIEnumerator(name: "eDirection_IN", value: 0)
!959 = !DIEnumerator(name: "eDirection_OUT", value: 1)
!960 = !{!961, !116, !962, !118, !963, !964}
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_IOT_GPIO_NAME_T", file: !862, line: 87, baseType: !861)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_data_t", file: !898, line: 220, baseType: !941)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_driving_current_t", file: !898, line: 247, baseType: !949)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_DIR_T", file: !956, line: 60, baseType: !955)
!965 = distinct !DICompileUnit(language: DW_LANG_C99, file: !966, producer: "Ubuntu clang version 14.0.6", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !967, splitDebugInlining: false, nameTableKind: None)
!966 = !DIFile(filename: "../../../../../project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/src/main.c", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!967 = !{!334, !340, !356, !362, !366, !904}
!968 = !{!"Ubuntu clang version 14.0.6"}
!969 = !{i32 7, !"Dwarf Version", i32 2}
!970 = !{i32 2, !"Debug Info Version", i32 3}
!971 = !{i32 1, !"wchar_size", i32 4}
!972 = !{i32 1, !"min_enum_size", i32 4}
!973 = !{i32 1, !"branch-target-enforcement", i32 0}
!974 = !{i32 1, !"sign-return-address", i32 0}
!975 = !{i32 1, !"sign-return-address-all", i32 0}
!976 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!977 = !{i32 7, !"frame-pointer", i32 2}
!978 = distinct !DISubprogram(name: "halGPIO_ConfDirection", scope: !721, file: !721, line: 54, type: !979, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !982)
!979 = !DISubroutineType(types: !980)
!980 = !{!981, !8, !54}
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !9, line: 56, baseType: !66)
!982 = !{!983, !984, !985, !987}
!983 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !978, file: !721, line: 54, type: !8)
!984 = !DILocalVariable(name: "outEnable", arg: 2, scope: !978, file: !721, line: 54, type: !54)
!985 = !DILocalVariable(name: "no", scope: !978, file: !721, line: 57, type: !986)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !9, line: 60, baseType: !53)
!987 = !DILocalVariable(name: "remainder", scope: !978, file: !721, line: 58, type: !986)
!988 = !DILocation(line: 0, scope: !978)
!989 = !DILocation(line: 59, column: 19, scope: !978)
!990 = !DILocation(line: 60, column: 17, scope: !978)
!991 = !DILocation(line: 61, column: 5, scope: !978)
!992 = !DILocation(line: 65, column: 27, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !721, line: 65, column: 17)
!994 = distinct !DILexicalBlock(scope: !978, file: !721, line: 61, column: 17)
!995 = !DILocation(line: 0, scope: !993)
!996 = !DILocation(line: 65, column: 17, scope: !994)
!997 = !DILocation(line: 66, column: 21, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !721, line: 65, column: 33)
!999 = !DILocation(line: 67, column: 73, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !721, line: 66, column: 38)
!1001 = distinct !DILexicalBlock(scope: !998, file: !721, line: 66, column: 21)
!1002 = !DILocation(line: 67, column: 69, scope: !1000)
!1003 = !DILocation(line: 67, column: 66, scope: !1000)
!1004 = !DILocation(line: 68, column: 17, scope: !1000)
!1005 = !DILocation(line: 68, column: 28, scope: !1001)
!1006 = !DILocation(line: 69, column: 77, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !721, line: 68, column: 45)
!1008 = distinct !DILexicalBlock(scope: !1001, file: !721, line: 68, column: 28)
!1009 = !DILocation(line: 70, column: 77, scope: !1007)
!1010 = !DILocation(line: 71, column: 17, scope: !1007)
!1011 = !DILocation(line: 72, column: 77, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !721, line: 71, column: 45)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !721, line: 71, column: 28)
!1014 = !DILocation(line: 73, column: 77, scope: !1012)
!1015 = !DILocation(line: 74, column: 17, scope: !1012)
!1016 = !DILocation(line: 75, column: 79, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !721, line: 74, column: 45)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !721, line: 74, column: 28)
!1019 = !DILocation(line: 76, column: 79, scope: !1017)
!1020 = !DILocation(line: 77, column: 17, scope: !1017)
!1021 = !DILocation(line: 78, column: 79, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !721, line: 77, column: 45)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !721, line: 77, column: 28)
!1024 = !DILocation(line: 79, column: 79, scope: !1022)
!1025 = !DILocation(line: 80, column: 17, scope: !1022)
!1026 = !DILocation(line: 81, column: 79, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !721, line: 80, column: 45)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !721, line: 80, column: 28)
!1029 = !DILocation(line: 82, column: 79, scope: !1027)
!1030 = !DILocation(line: 83, column: 17, scope: !1027)
!1031 = !DILocation(line: 85, column: 17, scope: !998)
!1032 = !DILocation(line: 86, column: 13, scope: !998)
!1033 = !DILocation(line: 88, column: 21, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !993, file: !721, line: 86, column: 20)
!1035 = !DILocation(line: 89, column: 72, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !721, line: 88, column: 38)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !721, line: 88, column: 21)
!1038 = !DILocation(line: 89, column: 66, scope: !1036)
!1039 = !DILocation(line: 90, column: 17, scope: !1036)
!1040 = !DILocation(line: 90, column: 28, scope: !1037)
!1041 = !DILocation(line: 91, column: 77, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !721, line: 90, column: 45)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !721, line: 90, column: 28)
!1044 = !DILocation(line: 92, column: 17, scope: !1042)
!1045 = !DILocation(line: 93, column: 77, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !721, line: 92, column: 45)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !721, line: 92, column: 28)
!1048 = !DILocation(line: 94, column: 17, scope: !1046)
!1049 = !DILocation(line: 95, column: 79, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !721, line: 94, column: 45)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !721, line: 94, column: 28)
!1052 = !DILocation(line: 96, column: 17, scope: !1050)
!1053 = !DILocation(line: 97, column: 79, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !721, line: 96, column: 45)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !721, line: 96, column: 28)
!1056 = !DILocation(line: 98, column: 17, scope: !1054)
!1057 = !DILocation(line: 99, column: 79, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !721, line: 98, column: 45)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !721, line: 98, column: 28)
!1060 = !DILocation(line: 100, column: 17, scope: !1058)
!1061 = !DILocation(line: 103, column: 17, scope: !1034)
!1062 = !DILocation(line: 109, column: 27, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !994, file: !721, line: 109, column: 17)
!1064 = !DILocation(line: 0, scope: !1063)
!1065 = !DILocation(line: 109, column: 17, scope: !994)
!1066 = !DILocation(line: 110, column: 21, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !721, line: 109, column: 33)
!1068 = !DILocation(line: 111, column: 73, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !721, line: 110, column: 36)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !721, line: 110, column: 21)
!1071 = !DILocation(line: 111, column: 69, scope: !1069)
!1072 = !DILocation(line: 111, column: 66, scope: !1069)
!1073 = !DILocation(line: 112, column: 17, scope: !1069)
!1074 = !DILocation(line: 113, column: 79, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !721, line: 112, column: 24)
!1076 = !DILocation(line: 114, column: 79, scope: !1075)
!1077 = !DILocation(line: 117, column: 17, scope: !1067)
!1078 = !DILocation(line: 118, column: 13, scope: !1067)
!1079 = !DILocation(line: 120, column: 21, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1063, file: !721, line: 118, column: 20)
!1081 = !DILocation(line: 121, column: 72, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !721, line: 120, column: 36)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !721, line: 120, column: 21)
!1084 = !DILocation(line: 121, column: 66, scope: !1082)
!1085 = !DILocation(line: 122, column: 17, scope: !1082)
!1086 = !DILocation(line: 123, column: 79, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !721, line: 122, column: 24)
!1088 = !DILocation(line: 126, column: 17, scope: !1080)
!1089 = !DILocation(line: 133, column: 1, scope: !978)
!1090 = distinct !DISubprogram(name: "halGPO_Write", scope: !721, file: !721, line: 136, type: !979, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1091)
!1091 = !{!1092, !1093, !1094, !1095}
!1092 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1090, file: !721, line: 136, type: !8)
!1093 = !DILocalVariable(name: "writeValue", arg: 2, scope: !1090, file: !721, line: 136, type: !54)
!1094 = !DILocalVariable(name: "no", scope: !1090, file: !721, line: 138, type: !986)
!1095 = !DILocalVariable(name: "remainder", scope: !1090, file: !721, line: 139, type: !986)
!1096 = !DILocation(line: 0, scope: !1090)
!1097 = !DILocation(line: 140, column: 19, scope: !1090)
!1098 = !DILocation(line: 141, column: 17, scope: !1090)
!1099 = !DILocation(line: 142, column: 5, scope: !1090)
!1100 = !DILocation(line: 145, column: 17, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !721, line: 145, column: 17)
!1102 = distinct !DILexicalBlock(scope: !1090, file: !721, line: 142, column: 17)
!1103 = !DILocation(line: 0, scope: !1101)
!1104 = !DILocation(line: 145, column: 17, scope: !1102)
!1105 = !DILocation(line: 146, column: 17, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !721, line: 145, column: 29)
!1107 = !DILocation(line: 147, column: 13, scope: !1106)
!1108 = !DILocation(line: 148, column: 17, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1101, file: !721, line: 147, column: 20)
!1110 = !DILocation(line: 153, column: 17, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1102, file: !721, line: 153, column: 17)
!1112 = !DILocation(line: 0, scope: !1111)
!1113 = !DILocation(line: 153, column: 17, scope: !1102)
!1114 = !DILocation(line: 154, column: 17, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !721, line: 153, column: 29)
!1116 = !DILocation(line: 155, column: 13, scope: !1115)
!1117 = !DILocation(line: 156, column: 17, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !721, line: 155, column: 20)
!1119 = !DILocation(line: 163, column: 1, scope: !1090)
!1120 = distinct !DISubprogram(name: "halgetGPIO_DOUT", scope: !721, file: !721, line: 169, type: !1121, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!54, !8}
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1120, file: !721, line: 169, type: !8)
!1125 = !DILocalVariable(name: "no", scope: !1120, file: !721, line: 171, type: !986)
!1126 = !DILocalVariable(name: "remainder", scope: !1120, file: !721, line: 172, type: !986)
!1127 = !DILocalVariable(name: "dout", scope: !1120, file: !721, line: 175, type: !54)
!1128 = !DILocation(line: 0, scope: !1120)
!1129 = !DILocation(line: 173, column: 19, scope: !1120)
!1130 = !DILocation(line: 174, column: 17, scope: !1120)
!1131 = !DILocation(line: 177, column: 5, scope: !1120)
!1132 = !DILocation(line: 183, column: 13, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1120, file: !721, line: 177, column: 17)
!1134 = !DILocation(line: 0, scope: !1133)
!1135 = !DILocation(line: 187, column: 5, scope: !1120)
!1136 = !DILocation(line: 188, column: 1, scope: !1120)
!1137 = distinct !DISubprogram(name: "halgetGPIO_DIN", scope: !721, file: !721, line: 189, type: !1121, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1137, file: !721, line: 189, type: !8)
!1140 = !DILocalVariable(name: "no", scope: !1137, file: !721, line: 191, type: !986)
!1141 = !DILocalVariable(name: "remainder", scope: !1137, file: !721, line: 192, type: !986)
!1142 = !DILocalVariable(name: "din", scope: !1137, file: !721, line: 195, type: !54)
!1143 = !DILocation(line: 0, scope: !1137)
!1144 = !DILocation(line: 193, column: 19, scope: !1137)
!1145 = !DILocation(line: 194, column: 17, scope: !1137)
!1146 = !DILocation(line: 196, column: 5, scope: !1137)
!1147 = !DILocation(line: 203, column: 13, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1137, file: !721, line: 196, column: 17)
!1149 = !DILocation(line: 0, scope: !1148)
!1150 = !DILocation(line: 208, column: 5, scope: !1137)
!1151 = !DILocation(line: 209, column: 1, scope: !1137)
!1152 = distinct !DISubprogram(name: "halgetGPIO_OutEnable", scope: !721, file: !721, line: 210, type: !1121, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1153)
!1153 = !{!1154, !1155, !1156, !1157}
!1154 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1152, file: !721, line: 210, type: !8)
!1155 = !DILocalVariable(name: "no", scope: !1152, file: !721, line: 212, type: !986)
!1156 = !DILocalVariable(name: "remainder", scope: !1152, file: !721, line: 213, type: !986)
!1157 = !DILocalVariable(name: "outEnable", scope: !1152, file: !721, line: 216, type: !54)
!1158 = !DILocation(line: 0, scope: !1152)
!1159 = !DILocation(line: 214, column: 19, scope: !1152)
!1160 = !DILocation(line: 215, column: 17, scope: !1152)
!1161 = !DILocation(line: 218, column: 5, scope: !1152)
!1162 = !DILocation(line: 224, column: 13, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1152, file: !721, line: 218, column: 17)
!1164 = !DILocation(line: 0, scope: !1163)
!1165 = !DILocation(line: 228, column: 5, scope: !1152)
!1166 = !DILocation(line: 229, column: 1, scope: !1152)
!1167 = distinct !DISubprogram(name: "halGPIO_PullUp_SET", scope: !721, file: !721, line: 232, type: !1168, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!981, !8}
!1170 = !{!1171, !1172, !1173}
!1171 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1167, file: !721, line: 232, type: !8)
!1172 = !DILocalVariable(name: "no", scope: !1167, file: !721, line: 234, type: !986)
!1173 = !DILocalVariable(name: "remainder", scope: !1167, file: !721, line: 235, type: !986)
!1174 = !DILocation(line: 0, scope: !1167)
!1175 = !DILocation(line: 236, column: 19, scope: !1167)
!1176 = !DILocation(line: 237, column: 17, scope: !1167)
!1177 = !DILocation(line: 238, column: 5, scope: !1167)
!1178 = !DILocation(line: 239, column: 5, scope: !1167)
!1179 = !DILocation(line: 241, column: 27, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !721, line: 241, column: 17)
!1181 = distinct !DILexicalBlock(scope: !1167, file: !721, line: 239, column: 17)
!1182 = !DILocation(line: 241, column: 17, scope: !1181)
!1183 = !DILocation(line: 241, column: 17, scope: !1180)
!1184 = !DILocation(line: 242, column: 17, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !721, line: 241, column: 34)
!1186 = !DILocation(line: 243, column: 13, scope: !1185)
!1187 = !DILocation(line: 243, column: 24, scope: !1180)
!1188 = !DILocation(line: 244, column: 73, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !721, line: 243, column: 41)
!1190 = distinct !DILexicalBlock(scope: !1180, file: !721, line: 243, column: 24)
!1191 = !DILocation(line: 245, column: 73, scope: !1189)
!1192 = !DILocation(line: 246, column: 13, scope: !1189)
!1193 = !DILocation(line: 247, column: 73, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !721, line: 246, column: 41)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !721, line: 246, column: 24)
!1196 = !DILocation(line: 248, column: 73, scope: !1194)
!1197 = !DILocation(line: 249, column: 13, scope: !1194)
!1198 = !DILocation(line: 250, column: 75, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !721, line: 249, column: 41)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !721, line: 249, column: 24)
!1201 = !DILocation(line: 251, column: 75, scope: !1199)
!1202 = !DILocation(line: 252, column: 13, scope: !1199)
!1203 = !DILocation(line: 253, column: 75, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !721, line: 252, column: 41)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !721, line: 252, column: 24)
!1206 = !DILocation(line: 254, column: 75, scope: !1204)
!1207 = !DILocation(line: 255, column: 13, scope: !1204)
!1208 = !DILocation(line: 256, column: 75, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !721, line: 255, column: 41)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !721, line: 255, column: 24)
!1211 = !DILocation(line: 257, column: 75, scope: !1209)
!1212 = !DILocation(line: 258, column: 13, scope: !1209)
!1213 = !DILocation(line: 261, column: 18, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1181, file: !721, line: 261, column: 17)
!1215 = !DILocation(line: 261, column: 17, scope: !1181)
!1216 = !DILocation(line: 262, column: 75, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !721, line: 261, column: 29)
!1218 = !DILocation(line: 263, column: 75, scope: !1217)
!1219 = !DILocation(line: 264, column: 13, scope: !1217)
!1220 = !DILocation(line: 265, column: 17, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1214, file: !721, line: 264, column: 20)
!1222 = !DILocation(line: 272, column: 1, scope: !1167)
!1223 = distinct !DISubprogram(name: "halGPIO_PullDown_RESET", scope: !721, file: !721, line: 359, type: !1168, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1224)
!1224 = !{!1225, !1226, !1227}
!1225 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1223, file: !721, line: 359, type: !8)
!1226 = !DILocalVariable(name: "no", scope: !1223, file: !721, line: 362, type: !986)
!1227 = !DILocalVariable(name: "remainder", scope: !1223, file: !721, line: 363, type: !986)
!1228 = !DILocation(line: 0, scope: !1223)
!1229 = !DILocation(line: 364, column: 19, scope: !1223)
!1230 = !DILocation(line: 365, column: 17, scope: !1223)
!1231 = !DILocation(line: 367, column: 5, scope: !1223)
!1232 = !DILocation(line: 369, column: 27, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !721, line: 369, column: 17)
!1234 = distinct !DILexicalBlock(scope: !1223, file: !721, line: 367, column: 17)
!1235 = !DILocation(line: 369, column: 17, scope: !1234)
!1236 = !DILocation(line: 369, column: 17, scope: !1233)
!1237 = !DILocation(line: 370, column: 17, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !721, line: 369, column: 34)
!1239 = !DILocation(line: 371, column: 13, scope: !1238)
!1240 = !DILocation(line: 371, column: 24, scope: !1233)
!1241 = !DILocation(line: 372, column: 73, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !721, line: 371, column: 41)
!1243 = distinct !DILexicalBlock(scope: !1233, file: !721, line: 371, column: 24)
!1244 = !DILocation(line: 373, column: 73, scope: !1242)
!1245 = !DILocation(line: 374, column: 13, scope: !1242)
!1246 = !DILocation(line: 375, column: 73, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !721, line: 374, column: 41)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !721, line: 374, column: 24)
!1249 = !DILocation(line: 376, column: 73, scope: !1247)
!1250 = !DILocation(line: 377, column: 13, scope: !1247)
!1251 = !DILocation(line: 378, column: 75, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !721, line: 377, column: 41)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !721, line: 377, column: 24)
!1254 = !DILocation(line: 379, column: 75, scope: !1252)
!1255 = !DILocation(line: 380, column: 13, scope: !1252)
!1256 = !DILocation(line: 381, column: 75, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !721, line: 380, column: 41)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !721, line: 380, column: 24)
!1259 = !DILocation(line: 382, column: 75, scope: !1257)
!1260 = !DILocation(line: 383, column: 13, scope: !1257)
!1261 = !DILocation(line: 384, column: 75, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !721, line: 383, column: 41)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !721, line: 383, column: 24)
!1264 = !DILocation(line: 385, column: 75, scope: !1262)
!1265 = !DILocation(line: 386, column: 13, scope: !1262)
!1266 = !DILocation(line: 389, column: 18, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1234, file: !721, line: 389, column: 17)
!1268 = !DILocation(line: 389, column: 17, scope: !1234)
!1269 = !DILocation(line: 390, column: 75, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !721, line: 389, column: 29)
!1271 = !DILocation(line: 391, column: 75, scope: !1270)
!1272 = !DILocation(line: 392, column: 13, scope: !1270)
!1273 = !DILocation(line: 393, column: 17, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !721, line: 392, column: 20)
!1275 = !DILocation(line: 401, column: 1, scope: !1223)
!1276 = distinct !DISubprogram(name: "halGPIO_PullUp_RESET", scope: !721, file: !721, line: 274, type: !1168, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1276, file: !721, line: 274, type: !8)
!1279 = !DILocalVariable(name: "no", scope: !1276, file: !721, line: 276, type: !986)
!1280 = !DILocalVariable(name: "remainder", scope: !1276, file: !721, line: 277, type: !986)
!1281 = !DILocation(line: 0, scope: !1276)
!1282 = !DILocation(line: 278, column: 19, scope: !1276)
!1283 = !DILocation(line: 279, column: 17, scope: !1276)
!1284 = !DILocation(line: 281, column: 5, scope: !1276)
!1285 = !DILocation(line: 283, column: 27, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !721, line: 283, column: 17)
!1287 = distinct !DILexicalBlock(scope: !1276, file: !721, line: 281, column: 17)
!1288 = !DILocation(line: 283, column: 17, scope: !1287)
!1289 = !DILocation(line: 283, column: 17, scope: !1286)
!1290 = !DILocation(line: 284, column: 17, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !721, line: 283, column: 34)
!1292 = !DILocation(line: 285, column: 13, scope: !1291)
!1293 = !DILocation(line: 285, column: 24, scope: !1286)
!1294 = !DILocation(line: 286, column: 73, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !721, line: 285, column: 41)
!1296 = distinct !DILexicalBlock(scope: !1286, file: !721, line: 285, column: 24)
!1297 = !DILocation(line: 287, column: 73, scope: !1295)
!1298 = !DILocation(line: 288, column: 13, scope: !1295)
!1299 = !DILocation(line: 289, column: 73, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !721, line: 288, column: 41)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !721, line: 288, column: 24)
!1302 = !DILocation(line: 290, column: 73, scope: !1300)
!1303 = !DILocation(line: 291, column: 13, scope: !1300)
!1304 = !DILocation(line: 292, column: 75, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !721, line: 291, column: 41)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !721, line: 291, column: 24)
!1307 = !DILocation(line: 293, column: 75, scope: !1305)
!1308 = !DILocation(line: 294, column: 13, scope: !1305)
!1309 = !DILocation(line: 295, column: 75, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !721, line: 294, column: 41)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !721, line: 294, column: 24)
!1312 = !DILocation(line: 296, column: 75, scope: !1310)
!1313 = !DILocation(line: 297, column: 13, scope: !1310)
!1314 = !DILocation(line: 298, column: 75, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !721, line: 297, column: 41)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !721, line: 297, column: 24)
!1317 = !DILocation(line: 299, column: 75, scope: !1315)
!1318 = !DILocation(line: 300, column: 13, scope: !1315)
!1319 = !DILocation(line: 303, column: 18, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1287, file: !721, line: 303, column: 17)
!1321 = !DILocation(line: 303, column: 17, scope: !1287)
!1322 = !DILocation(line: 304, column: 75, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !721, line: 303, column: 29)
!1324 = !DILocation(line: 305, column: 75, scope: !1323)
!1325 = !DILocation(line: 306, column: 13, scope: !1323)
!1326 = !DILocation(line: 307, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1320, file: !721, line: 306, column: 20)
!1328 = !DILocation(line: 314, column: 1, scope: !1276)
!1329 = distinct !DISubprogram(name: "halGPIO_PullDown_SET", scope: !721, file: !721, line: 316, type: !1168, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1329, file: !721, line: 316, type: !8)
!1332 = !DILocalVariable(name: "no", scope: !1329, file: !721, line: 318, type: !986)
!1333 = !DILocalVariable(name: "remainder", scope: !1329, file: !721, line: 319, type: !986)
!1334 = !DILocation(line: 0, scope: !1329)
!1335 = !DILocation(line: 320, column: 19, scope: !1329)
!1336 = !DILocation(line: 321, column: 17, scope: !1329)
!1337 = !DILocation(line: 322, column: 5, scope: !1329)
!1338 = !DILocation(line: 323, column: 5, scope: !1329)
!1339 = !DILocation(line: 325, column: 27, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !721, line: 325, column: 17)
!1341 = distinct !DILexicalBlock(scope: !1329, file: !721, line: 323, column: 17)
!1342 = !DILocation(line: 325, column: 17, scope: !1341)
!1343 = !DILocation(line: 325, column: 17, scope: !1340)
!1344 = !DILocation(line: 326, column: 17, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1340, file: !721, line: 325, column: 34)
!1346 = !DILocation(line: 327, column: 13, scope: !1345)
!1347 = !DILocation(line: 327, column: 24, scope: !1340)
!1348 = !DILocation(line: 328, column: 73, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !721, line: 327, column: 41)
!1350 = distinct !DILexicalBlock(scope: !1340, file: !721, line: 327, column: 24)
!1351 = !DILocation(line: 329, column: 73, scope: !1349)
!1352 = !DILocation(line: 330, column: 13, scope: !1349)
!1353 = !DILocation(line: 331, column: 73, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !721, line: 330, column: 41)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !721, line: 330, column: 24)
!1356 = !DILocation(line: 332, column: 73, scope: !1354)
!1357 = !DILocation(line: 333, column: 13, scope: !1354)
!1358 = !DILocation(line: 334, column: 75, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !721, line: 333, column: 41)
!1360 = distinct !DILexicalBlock(scope: !1355, file: !721, line: 333, column: 24)
!1361 = !DILocation(line: 335, column: 75, scope: !1359)
!1362 = !DILocation(line: 336, column: 13, scope: !1359)
!1363 = !DILocation(line: 337, column: 75, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !721, line: 336, column: 41)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !721, line: 336, column: 24)
!1366 = !DILocation(line: 338, column: 75, scope: !1364)
!1367 = !DILocation(line: 339, column: 13, scope: !1364)
!1368 = !DILocation(line: 340, column: 75, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !721, line: 339, column: 41)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !721, line: 339, column: 24)
!1371 = !DILocation(line: 341, column: 75, scope: !1369)
!1372 = !DILocation(line: 342, column: 13, scope: !1369)
!1373 = !DILocation(line: 345, column: 18, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1341, file: !721, line: 345, column: 17)
!1375 = !DILocation(line: 345, column: 17, scope: !1341)
!1376 = !DILocation(line: 346, column: 75, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !721, line: 345, column: 29)
!1378 = !DILocation(line: 347, column: 75, scope: !1377)
!1379 = !DILocation(line: 348, column: 13, scope: !1377)
!1380 = !DILocation(line: 349, column: 17, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1374, file: !721, line: 348, column: 20)
!1382 = !DILocation(line: 357, column: 1, scope: !1329)
!1383 = distinct !DISubprogram(name: "halGPIO_SetDriving", scope: !721, file: !721, line: 404, type: !979, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1384)
!1384 = !{!1385, !1386, !1387, !1388}
!1385 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1383, file: !721, line: 404, type: !8)
!1386 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1383, file: !721, line: 404, type: !54)
!1387 = !DILocalVariable(name: "no", scope: !1383, file: !721, line: 406, type: !986)
!1388 = !DILocalVariable(name: "remainder", scope: !1383, file: !721, line: 407, type: !986)
!1389 = !DILocation(line: 0, scope: !1383)
!1390 = !DILocation(line: 408, column: 19, scope: !1383)
!1391 = !DILocation(line: 409, column: 17, scope: !1383)
!1392 = !DILocation(line: 411, column: 5, scope: !1383)
!1393 = !DILocation(line: 413, column: 84, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1383, file: !721, line: 411, column: 17)
!1395 = !DILocation(line: 413, column: 70, scope: !1394)
!1396 = !DILocation(line: 413, column: 64, scope: !1394)
!1397 = !DILocation(line: 413, column: 61, scope: !1394)
!1398 = !DILocation(line: 414, column: 79, scope: !1394)
!1399 = !DILocation(line: 414, column: 83, scope: !1394)
!1400 = !DILocation(line: 414, column: 88, scope: !1394)
!1401 = !DILocation(line: 414, column: 61, scope: !1394)
!1402 = !DILocation(line: 415, column: 13, scope: !1394)
!1403 = !DILocation(line: 417, column: 27, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1394, file: !721, line: 417, column: 17)
!1405 = !DILocation(line: 417, column: 17, scope: !1394)
!1406 = !DILocation(line: 418, column: 88, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1404, file: !721, line: 417, column: 33)
!1408 = !DILocation(line: 418, column: 74, scope: !1407)
!1409 = !DILocation(line: 418, column: 68, scope: !1407)
!1410 = !DILocation(line: 418, column: 65, scope: !1407)
!1411 = !DILocation(line: 419, column: 83, scope: !1407)
!1412 = !DILocation(line: 419, column: 87, scope: !1407)
!1413 = !DILocation(line: 419, column: 92, scope: !1407)
!1414 = !DILocation(line: 419, column: 65, scope: !1407)
!1415 = !DILocation(line: 420, column: 13, scope: !1407)
!1416 = !DILocation(line: 420, column: 24, scope: !1404)
!1417 = !DILocation(line: 421, column: 73, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !721, line: 420, column: 41)
!1419 = distinct !DILexicalBlock(scope: !1404, file: !721, line: 420, column: 24)
!1420 = !DILocation(line: 422, column: 91, scope: !1418)
!1421 = !DILocation(line: 422, column: 100, scope: !1418)
!1422 = !DILocation(line: 422, column: 73, scope: !1418)
!1423 = !DILocation(line: 423, column: 73, scope: !1418)
!1424 = !DILocation(line: 424, column: 13, scope: !1418)
!1425 = !DILocation(line: 425, column: 73, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !721, line: 424, column: 41)
!1427 = distinct !DILexicalBlock(scope: !1419, file: !721, line: 424, column: 24)
!1428 = !DILocation(line: 426, column: 91, scope: !1426)
!1429 = !DILocation(line: 426, column: 100, scope: !1426)
!1430 = !DILocation(line: 426, column: 73, scope: !1426)
!1431 = !DILocation(line: 427, column: 73, scope: !1426)
!1432 = !DILocation(line: 428, column: 13, scope: !1426)
!1433 = !DILocation(line: 429, column: 75, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !721, line: 428, column: 41)
!1435 = distinct !DILexicalBlock(scope: !1427, file: !721, line: 428, column: 24)
!1436 = !DILocation(line: 430, column: 93, scope: !1434)
!1437 = !DILocation(line: 430, column: 102, scope: !1434)
!1438 = !DILocation(line: 430, column: 75, scope: !1434)
!1439 = !DILocation(line: 431, column: 75, scope: !1434)
!1440 = !DILocation(line: 432, column: 13, scope: !1434)
!1441 = !DILocation(line: 433, column: 75, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !721, line: 432, column: 41)
!1443 = distinct !DILexicalBlock(scope: !1435, file: !721, line: 432, column: 24)
!1444 = !DILocation(line: 434, column: 93, scope: !1442)
!1445 = !DILocation(line: 434, column: 102, scope: !1442)
!1446 = !DILocation(line: 434, column: 75, scope: !1442)
!1447 = !DILocation(line: 435, column: 75, scope: !1442)
!1448 = !DILocation(line: 436, column: 13, scope: !1442)
!1449 = !DILocation(line: 437, column: 75, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !721, line: 436, column: 41)
!1451 = distinct !DILexicalBlock(scope: !1443, file: !721, line: 436, column: 24)
!1452 = !DILocation(line: 438, column: 93, scope: !1450)
!1453 = !DILocation(line: 438, column: 102, scope: !1450)
!1454 = !DILocation(line: 438, column: 75, scope: !1450)
!1455 = !DILocation(line: 439, column: 75, scope: !1450)
!1456 = !DILocation(line: 440, column: 13, scope: !1450)
!1457 = !DILocation(line: 443, column: 18, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1394, file: !721, line: 443, column: 17)
!1459 = !DILocation(line: 443, column: 17, scope: !1394)
!1460 = !DILocation(line: 444, column: 75, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !721, line: 443, column: 29)
!1462 = !DILocation(line: 445, column: 93, scope: !1461)
!1463 = !DILocation(line: 445, column: 102, scope: !1461)
!1464 = !DILocation(line: 445, column: 75, scope: !1461)
!1465 = !DILocation(line: 446, column: 75, scope: !1461)
!1466 = !DILocation(line: 447, column: 13, scope: !1461)
!1467 = !DILocation(line: 448, column: 88, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1458, file: !721, line: 447, column: 20)
!1469 = !DILocation(line: 448, column: 74, scope: !1468)
!1470 = !DILocation(line: 448, column: 68, scope: !1468)
!1471 = !DILocation(line: 448, column: 65, scope: !1468)
!1472 = !DILocation(line: 449, column: 83, scope: !1468)
!1473 = !DILocation(line: 449, column: 87, scope: !1468)
!1474 = !DILocation(line: 449, column: 92, scope: !1468)
!1475 = !DILocation(line: 449, column: 65, scope: !1468)
!1476 = !DILocation(line: 453, column: 84, scope: !1394)
!1477 = !DILocation(line: 453, column: 70, scope: !1394)
!1478 = !DILocation(line: 453, column: 64, scope: !1394)
!1479 = !DILocation(line: 453, column: 61, scope: !1394)
!1480 = !DILocation(line: 454, column: 79, scope: !1394)
!1481 = !DILocation(line: 454, column: 83, scope: !1394)
!1482 = !DILocation(line: 454, column: 88, scope: !1394)
!1483 = !DILocation(line: 454, column: 61, scope: !1394)
!1484 = !DILocation(line: 455, column: 13, scope: !1394)
!1485 = !DILocation(line: 460, column: 1, scope: !1383)
!1486 = distinct !DISubprogram(name: "halGPIO_GetDriving", scope: !721, file: !721, line: 463, type: !1487, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1490)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!981, !8, !1489}
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!1490 = !{!1491, !1492, !1493, !1494, !1495}
!1491 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1486, file: !721, line: 463, type: !8)
!1492 = !DILocalVariable(name: "GPIO_driving", arg: 2, scope: !1486, file: !721, line: 463, type: !1489)
!1493 = !DILocalVariable(name: "no", scope: !1486, file: !721, line: 465, type: !986)
!1494 = !DILocalVariable(name: "remainder", scope: !1486, file: !721, line: 466, type: !986)
!1495 = !DILocalVariable(name: "temp", scope: !1486, file: !721, line: 467, type: !8)
!1496 = !DILocation(line: 0, scope: !1486)
!1497 = !DILocation(line: 468, column: 19, scope: !1486)
!1498 = !DILocation(line: 469, column: 17, scope: !1486)
!1499 = !DILocation(line: 471, column: 5, scope: !1486)
!1500 = !DILocation(line: 473, column: 20, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1486, file: !721, line: 471, column: 17)
!1502 = !DILocation(line: 474, column: 40, scope: !1501)
!1503 = !DILocation(line: 474, column: 26, scope: !1501)
!1504 = !DILocation(line: 474, column: 18, scope: !1501)
!1505 = !DILocation(line: 475, column: 40, scope: !1501)
!1506 = !DILocation(line: 475, column: 29, scope: !1501)
!1507 = !DILocation(line: 476, column: 13, scope: !1501)
!1508 = !DILocation(line: 478, column: 27, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !721, line: 478, column: 17)
!1510 = !DILocation(line: 478, column: 17, scope: !1501)
!1511 = !DILocation(line: 479, column: 24, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !721, line: 478, column: 33)
!1513 = !DILocation(line: 480, column: 44, scope: !1512)
!1514 = !DILocation(line: 480, column: 30, scope: !1512)
!1515 = !DILocation(line: 480, column: 22, scope: !1512)
!1516 = !DILocation(line: 481, column: 44, scope: !1512)
!1517 = !DILocation(line: 481, column: 33, scope: !1512)
!1518 = !DILocation(line: 482, column: 13, scope: !1512)
!1519 = !DILocation(line: 482, column: 24, scope: !1509)
!1520 = !DILocation(line: 483, column: 24, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !721, line: 482, column: 41)
!1522 = distinct !DILexicalBlock(scope: !1509, file: !721, line: 482, column: 24)
!1523 = !DILocation(line: 485, column: 53, scope: !1521)
!1524 = !DILocation(line: 485, column: 33, scope: !1521)
!1525 = !DILocation(line: 486, column: 13, scope: !1521)
!1526 = !DILocation(line: 487, column: 24, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !721, line: 486, column: 41)
!1528 = distinct !DILexicalBlock(scope: !1522, file: !721, line: 486, column: 24)
!1529 = !DILocation(line: 489, column: 53, scope: !1527)
!1530 = !DILocation(line: 489, column: 33, scope: !1527)
!1531 = !DILocation(line: 490, column: 13, scope: !1527)
!1532 = !DILocation(line: 491, column: 24, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !721, line: 490, column: 41)
!1534 = distinct !DILexicalBlock(scope: !1528, file: !721, line: 490, column: 24)
!1535 = !DILocation(line: 493, column: 53, scope: !1533)
!1536 = !DILocation(line: 493, column: 33, scope: !1533)
!1537 = !DILocation(line: 494, column: 13, scope: !1533)
!1538 = !DILocation(line: 495, column: 24, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !721, line: 494, column: 41)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !721, line: 494, column: 24)
!1541 = !DILocation(line: 497, column: 53, scope: !1539)
!1542 = !DILocation(line: 497, column: 33, scope: !1539)
!1543 = !DILocation(line: 498, column: 13, scope: !1539)
!1544 = !DILocation(line: 499, column: 24, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !721, line: 498, column: 41)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !721, line: 498, column: 24)
!1547 = !DILocation(line: 501, column: 53, scope: !1545)
!1548 = !DILocation(line: 501, column: 33, scope: !1545)
!1549 = !DILocation(line: 502, column: 13, scope: !1545)
!1550 = !DILocation(line: 505, column: 18, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1501, file: !721, line: 505, column: 17)
!1552 = !DILocation(line: 505, column: 17, scope: !1501)
!1553 = !DILocation(line: 506, column: 24, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1551, file: !721, line: 505, column: 29)
!1555 = !DILocation(line: 508, column: 53, scope: !1554)
!1556 = !DILocation(line: 508, column: 33, scope: !1554)
!1557 = !DILocation(line: 509, column: 13, scope: !1554)
!1558 = !DILocation(line: 510, column: 24, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1551, file: !721, line: 509, column: 20)
!1560 = !DILocation(line: 511, column: 44, scope: !1559)
!1561 = !DILocation(line: 511, column: 30, scope: !1559)
!1562 = !DILocation(line: 511, column: 22, scope: !1559)
!1563 = !DILocation(line: 512, column: 44, scope: !1559)
!1564 = !DILocation(line: 512, column: 33, scope: !1559)
!1565 = !DILocation(line: 516, column: 20, scope: !1501)
!1566 = !DILocation(line: 517, column: 40, scope: !1501)
!1567 = !DILocation(line: 517, column: 26, scope: !1501)
!1568 = !DILocation(line: 517, column: 18, scope: !1501)
!1569 = !DILocation(line: 518, column: 40, scope: !1501)
!1570 = !DILocation(line: 518, column: 29, scope: !1501)
!1571 = !DILocation(line: 519, column: 13, scope: !1501)
!1572 = !DILocation(line: 0, scope: !1501)
!1573 = !DILocation(line: 524, column: 1, scope: !1486)
!1574 = distinct !DISubprogram(name: "topPAD_Control_GPIO", scope: !721, file: !721, line: 526, type: !1575, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !1578)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !8, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_TOP_PAD_CONTROL_T", file: !724, line: 1212, baseType: !723)
!1578 = !{!1579, !1580, !1581, !1582}
!1579 = !DILocalVariable(name: "GPIO_pin", arg: 1, scope: !1574, file: !721, line: 526, type: !8)
!1580 = !DILocalVariable(name: "ePadControl", arg: 2, scope: !1574, file: !721, line: 526, type: !1577)
!1581 = !DILocalVariable(name: "no", scope: !1574, file: !721, line: 529, type: !986)
!1582 = !DILocalVariable(name: "remainder", scope: !1574, file: !721, line: 530, type: !986)
!1583 = !DILocation(line: 0, scope: !1574)
!1584 = !DILocation(line: 531, column: 19, scope: !1574)
!1585 = !DILocation(line: 532, column: 17, scope: !1574)
!1586 = !DILocation(line: 534, column: 9, scope: !1574)
!1587 = !DILocation(line: 536, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !721, line: 534, column: 45)
!1589 = distinct !DILexicalBlock(scope: !1574, file: !721, line: 534, column: 9)
!1590 = !DILocation(line: 538, column: 56, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !721, line: 536, column: 21)
!1592 = !DILocation(line: 538, column: 53, scope: !1591)
!1593 = !DILocation(line: 538, column: 47, scope: !1591)
!1594 = !DILocation(line: 539, column: 17, scope: !1591)
!1595 = !DILocation(line: 541, column: 56, scope: !1591)
!1596 = !DILocation(line: 541, column: 53, scope: !1591)
!1597 = !DILocation(line: 541, column: 47, scope: !1591)
!1598 = !DILocation(line: 542, column: 17, scope: !1591)
!1599 = !DILocation(line: 548, column: 9, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !721, line: 547, column: 51)
!1601 = distinct !DILexicalBlock(scope: !1589, file: !721, line: 547, column: 16)
!1602 = !DILocation(line: 550, column: 57, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !721, line: 548, column: 21)
!1604 = !DILocation(line: 550, column: 54, scope: !1603)
!1605 = !DILocation(line: 550, column: 50, scope: !1603)
!1606 = !DILocation(line: 550, column: 47, scope: !1603)
!1607 = !DILocation(line: 551, column: 17, scope: !1603)
!1608 = !DILocation(line: 553, column: 57, scope: !1603)
!1609 = !DILocation(line: 553, column: 54, scope: !1603)
!1610 = !DILocation(line: 553, column: 50, scope: !1603)
!1611 = !DILocation(line: 553, column: 47, scope: !1603)
!1612 = !DILocation(line: 554, column: 17, scope: !1603)
!1613 = !DILocation(line: 560, column: 1, scope: !1574)
!1614 = distinct !DISubprogram(name: "halPinmuxTopOnPadFunc", scope: !733, file: !733, line: 85, type: !1615, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !1619)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1617, !1618, !54}
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOID", file: !9, line: 79, baseType: null)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENUM_PAD_NAME_T", file: !736, line: 225, baseType: !735)
!1619 = !{!1620, !1621, !1622}
!1620 = !DILocalVariable(name: "ePadIndex", arg: 1, scope: !1614, file: !733, line: 85, type: !1618)
!1621 = !DILocalVariable(name: "ucFunc", arg: 2, scope: !1614, file: !733, line: 85, type: !54)
!1622 = !DILocalVariable(name: "temp", scope: !1614, file: !733, line: 87, type: !12)
!1623 = !DILocation(line: 0, scope: !1614)
!1624 = !DILocation(line: 88, column: 5, scope: !1614)
!1625 = !DILocation(line: 91, column: 20, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1614, file: !733, line: 88, column: 24)
!1627 = !DILocation(line: 92, column: 18, scope: !1626)
!1628 = !DILocation(line: 93, column: 66, scope: !1626)
!1629 = !DILocation(line: 93, column: 63, scope: !1626)
!1630 = !DILocation(line: 93, column: 56, scope: !1626)
!1631 = !DILocation(line: 94, column: 13, scope: !1626)
!1632 = !DILocation(line: 97, column: 20, scope: !1626)
!1633 = !DILocation(line: 98, column: 18, scope: !1626)
!1634 = !DILocation(line: 99, column: 67, scope: !1626)
!1635 = !DILocation(line: 99, column: 74, scope: !1626)
!1636 = !DILocation(line: 99, column: 64, scope: !1626)
!1637 = !DILocation(line: 99, column: 56, scope: !1626)
!1638 = !DILocation(line: 100, column: 13, scope: !1626)
!1639 = !DILocation(line: 103, column: 20, scope: !1626)
!1640 = !DILocation(line: 104, column: 18, scope: !1626)
!1641 = !DILocation(line: 105, column: 67, scope: !1626)
!1642 = !DILocation(line: 105, column: 74, scope: !1626)
!1643 = !DILocation(line: 105, column: 64, scope: !1626)
!1644 = !DILocation(line: 105, column: 56, scope: !1626)
!1645 = !DILocation(line: 106, column: 13, scope: !1626)
!1646 = !DILocation(line: 109, column: 20, scope: !1626)
!1647 = !DILocation(line: 110, column: 18, scope: !1626)
!1648 = !DILocation(line: 111, column: 67, scope: !1626)
!1649 = !DILocation(line: 111, column: 74, scope: !1626)
!1650 = !DILocation(line: 111, column: 64, scope: !1626)
!1651 = !DILocation(line: 111, column: 56, scope: !1626)
!1652 = !DILocation(line: 112, column: 13, scope: !1626)
!1653 = !DILocation(line: 115, column: 20, scope: !1626)
!1654 = !DILocation(line: 116, column: 18, scope: !1626)
!1655 = !DILocation(line: 117, column: 67, scope: !1626)
!1656 = !DILocation(line: 117, column: 74, scope: !1626)
!1657 = !DILocation(line: 117, column: 64, scope: !1626)
!1658 = !DILocation(line: 117, column: 56, scope: !1626)
!1659 = !DILocation(line: 118, column: 13, scope: !1626)
!1660 = !DILocation(line: 121, column: 20, scope: !1626)
!1661 = !DILocation(line: 122, column: 18, scope: !1626)
!1662 = !DILocation(line: 123, column: 67, scope: !1626)
!1663 = !DILocation(line: 123, column: 74, scope: !1626)
!1664 = !DILocation(line: 123, column: 64, scope: !1626)
!1665 = !DILocation(line: 123, column: 56, scope: !1626)
!1666 = !DILocation(line: 124, column: 13, scope: !1626)
!1667 = !DILocation(line: 127, column: 20, scope: !1626)
!1668 = !DILocation(line: 128, column: 18, scope: !1626)
!1669 = !DILocation(line: 129, column: 67, scope: !1626)
!1670 = !DILocation(line: 129, column: 74, scope: !1626)
!1671 = !DILocation(line: 129, column: 64, scope: !1626)
!1672 = !DILocation(line: 129, column: 56, scope: !1626)
!1673 = !DILocation(line: 130, column: 13, scope: !1626)
!1674 = !DILocation(line: 133, column: 20, scope: !1626)
!1675 = !DILocation(line: 134, column: 18, scope: !1626)
!1676 = !DILocation(line: 135, column: 67, scope: !1626)
!1677 = !DILocation(line: 135, column: 74, scope: !1626)
!1678 = !DILocation(line: 135, column: 64, scope: !1626)
!1679 = !DILocation(line: 135, column: 56, scope: !1626)
!1680 = !DILocation(line: 136, column: 13, scope: !1626)
!1681 = !DILocation(line: 139, column: 20, scope: !1626)
!1682 = !DILocation(line: 140, column: 18, scope: !1626)
!1683 = !DILocation(line: 141, column: 67, scope: !1626)
!1684 = !DILocation(line: 141, column: 64, scope: !1626)
!1685 = !DILocation(line: 141, column: 56, scope: !1626)
!1686 = !DILocation(line: 142, column: 13, scope: !1626)
!1687 = !DILocation(line: 145, column: 20, scope: !1626)
!1688 = !DILocation(line: 146, column: 18, scope: !1626)
!1689 = !DILocation(line: 147, column: 67, scope: !1626)
!1690 = !DILocation(line: 147, column: 74, scope: !1626)
!1691 = !DILocation(line: 147, column: 64, scope: !1626)
!1692 = !DILocation(line: 147, column: 56, scope: !1626)
!1693 = !DILocation(line: 148, column: 13, scope: !1626)
!1694 = !DILocation(line: 151, column: 20, scope: !1626)
!1695 = !DILocation(line: 152, column: 18, scope: !1626)
!1696 = !DILocation(line: 153, column: 67, scope: !1626)
!1697 = !DILocation(line: 153, column: 74, scope: !1626)
!1698 = !DILocation(line: 153, column: 64, scope: !1626)
!1699 = !DILocation(line: 153, column: 56, scope: !1626)
!1700 = !DILocation(line: 154, column: 13, scope: !1626)
!1701 = !DILocation(line: 157, column: 20, scope: !1626)
!1702 = !DILocation(line: 158, column: 18, scope: !1626)
!1703 = !DILocation(line: 159, column: 67, scope: !1626)
!1704 = !DILocation(line: 159, column: 74, scope: !1626)
!1705 = !DILocation(line: 159, column: 64, scope: !1626)
!1706 = !DILocation(line: 159, column: 56, scope: !1626)
!1707 = !DILocation(line: 160, column: 29, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1626, file: !733, line: 160, column: 17)
!1709 = !DILocation(line: 161, column: 17, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1708, file: !733, line: 160, column: 60)
!1711 = !DILocation(line: 162, column: 13, scope: !1710)
!1712 = !DILocation(line: 166, column: 20, scope: !1626)
!1713 = !DILocation(line: 167, column: 18, scope: !1626)
!1714 = !DILocation(line: 168, column: 67, scope: !1626)
!1715 = !DILocation(line: 168, column: 74, scope: !1626)
!1716 = !DILocation(line: 168, column: 64, scope: !1626)
!1717 = !DILocation(line: 168, column: 56, scope: !1626)
!1718 = !DILocation(line: 169, column: 29, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1626, file: !733, line: 169, column: 17)
!1720 = !DILocation(line: 170, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1719, file: !733, line: 169, column: 45)
!1722 = !DILocation(line: 171, column: 13, scope: !1721)
!1723 = !DILocation(line: 175, column: 20, scope: !1626)
!1724 = !DILocation(line: 176, column: 18, scope: !1626)
!1725 = !DILocation(line: 177, column: 67, scope: !1626)
!1726 = !DILocation(line: 177, column: 74, scope: !1626)
!1727 = !DILocation(line: 177, column: 64, scope: !1626)
!1728 = !DILocation(line: 177, column: 56, scope: !1626)
!1729 = !DILocation(line: 178, column: 19, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1626, file: !733, line: 178, column: 17)
!1731 = !DILocation(line: 178, column: 17, scope: !1626)
!1732 = !DILocation(line: 179, column: 17, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1730, file: !733, line: 178, column: 30)
!1734 = !DILocation(line: 180, column: 13, scope: !1733)
!1735 = !DILocation(line: 184, column: 20, scope: !1626)
!1736 = !DILocation(line: 185, column: 18, scope: !1626)
!1737 = !DILocation(line: 186, column: 67, scope: !1626)
!1738 = !DILocation(line: 186, column: 74, scope: !1626)
!1739 = !DILocation(line: 186, column: 64, scope: !1626)
!1740 = !DILocation(line: 186, column: 56, scope: !1626)
!1741 = !DILocation(line: 187, column: 29, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1626, file: !733, line: 187, column: 17)
!1743 = !DILocation(line: 188, column: 17, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1742, file: !733, line: 187, column: 45)
!1745 = !DILocation(line: 189, column: 13, scope: !1744)
!1746 = !DILocation(line: 193, column: 20, scope: !1626)
!1747 = !DILocation(line: 194, column: 18, scope: !1626)
!1748 = !DILocation(line: 195, column: 67, scope: !1626)
!1749 = !DILocation(line: 195, column: 74, scope: !1626)
!1750 = !DILocation(line: 195, column: 64, scope: !1626)
!1751 = !DILocation(line: 195, column: 56, scope: !1626)
!1752 = !DILocation(line: 196, column: 29, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1626, file: !733, line: 196, column: 17)
!1754 = !DILocation(line: 197, column: 17, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1753, file: !733, line: 196, column: 45)
!1756 = !DILocation(line: 198, column: 13, scope: !1755)
!1757 = !DILocation(line: 202, column: 20, scope: !1626)
!1758 = !DILocation(line: 203, column: 18, scope: !1626)
!1759 = !DILocation(line: 204, column: 67, scope: !1626)
!1760 = !DILocation(line: 204, column: 64, scope: !1626)
!1761 = !DILocation(line: 204, column: 56, scope: !1626)
!1762 = !DILocation(line: 205, column: 29, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1626, file: !733, line: 205, column: 17)
!1764 = !DILocation(line: 206, column: 17, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1763, file: !733, line: 205, column: 45)
!1766 = !DILocation(line: 207, column: 13, scope: !1765)
!1767 = !DILocation(line: 211, column: 20, scope: !1626)
!1768 = !DILocation(line: 212, column: 18, scope: !1626)
!1769 = !DILocation(line: 213, column: 67, scope: !1626)
!1770 = !DILocation(line: 213, column: 74, scope: !1626)
!1771 = !DILocation(line: 213, column: 64, scope: !1626)
!1772 = !DILocation(line: 213, column: 56, scope: !1626)
!1773 = !DILocation(line: 214, column: 13, scope: !1626)
!1774 = !DILocation(line: 217, column: 20, scope: !1626)
!1775 = !DILocation(line: 218, column: 18, scope: !1626)
!1776 = !DILocation(line: 219, column: 67, scope: !1626)
!1777 = !DILocation(line: 219, column: 74, scope: !1626)
!1778 = !DILocation(line: 219, column: 64, scope: !1626)
!1779 = !DILocation(line: 219, column: 56, scope: !1626)
!1780 = !DILocation(line: 220, column: 13, scope: !1626)
!1781 = !DILocation(line: 223, column: 20, scope: !1626)
!1782 = !DILocation(line: 224, column: 18, scope: !1626)
!1783 = !DILocation(line: 225, column: 67, scope: !1626)
!1784 = !DILocation(line: 225, column: 74, scope: !1626)
!1785 = !DILocation(line: 225, column: 64, scope: !1626)
!1786 = !DILocation(line: 225, column: 56, scope: !1626)
!1787 = !DILocation(line: 226, column: 13, scope: !1626)
!1788 = !DILocation(line: 229, column: 20, scope: !1626)
!1789 = !DILocation(line: 230, column: 18, scope: !1626)
!1790 = !DILocation(line: 231, column: 67, scope: !1626)
!1791 = !DILocation(line: 231, column: 74, scope: !1626)
!1792 = !DILocation(line: 231, column: 64, scope: !1626)
!1793 = !DILocation(line: 231, column: 56, scope: !1626)
!1794 = !DILocation(line: 232, column: 13, scope: !1626)
!1795 = !DILocation(line: 235, column: 20, scope: !1626)
!1796 = !DILocation(line: 236, column: 18, scope: !1626)
!1797 = !DILocation(line: 237, column: 66, scope: !1626)
!1798 = !DILocation(line: 237, column: 73, scope: !1626)
!1799 = !DILocation(line: 237, column: 63, scope: !1626)
!1800 = !DILocation(line: 237, column: 56, scope: !1626)
!1801 = !DILocation(line: 238, column: 13, scope: !1626)
!1802 = !DILocation(line: 241, column: 20, scope: !1626)
!1803 = !DILocation(line: 242, column: 18, scope: !1626)
!1804 = !DILocation(line: 243, column: 67, scope: !1626)
!1805 = !DILocation(line: 243, column: 74, scope: !1626)
!1806 = !DILocation(line: 243, column: 64, scope: !1626)
!1807 = !DILocation(line: 243, column: 56, scope: !1626)
!1808 = !DILocation(line: 244, column: 13, scope: !1626)
!1809 = !DILocation(line: 247, column: 20, scope: !1626)
!1810 = !DILocation(line: 248, column: 18, scope: !1626)
!1811 = !DILocation(line: 249, column: 67, scope: !1626)
!1812 = !DILocation(line: 249, column: 74, scope: !1626)
!1813 = !DILocation(line: 249, column: 64, scope: !1626)
!1814 = !DILocation(line: 249, column: 56, scope: !1626)
!1815 = !DILocation(line: 250, column: 13, scope: !1626)
!1816 = !DILocation(line: 253, column: 20, scope: !1626)
!1817 = !DILocation(line: 254, column: 18, scope: !1626)
!1818 = !DILocation(line: 255, column: 67, scope: !1626)
!1819 = !DILocation(line: 255, column: 74, scope: !1626)
!1820 = !DILocation(line: 255, column: 64, scope: !1626)
!1821 = !DILocation(line: 255, column: 56, scope: !1626)
!1822 = !DILocation(line: 256, column: 13, scope: !1626)
!1823 = !DILocation(line: 259, column: 20, scope: !1626)
!1824 = !DILocation(line: 260, column: 18, scope: !1626)
!1825 = !DILocation(line: 261, column: 67, scope: !1626)
!1826 = !DILocation(line: 261, column: 74, scope: !1626)
!1827 = !DILocation(line: 261, column: 64, scope: !1626)
!1828 = !DILocation(line: 261, column: 56, scope: !1626)
!1829 = !DILocation(line: 262, column: 13, scope: !1626)
!1830 = !DILocation(line: 265, column: 20, scope: !1626)
!1831 = !DILocation(line: 266, column: 18, scope: !1626)
!1832 = !DILocation(line: 267, column: 67, scope: !1626)
!1833 = !DILocation(line: 267, column: 74, scope: !1626)
!1834 = !DILocation(line: 267, column: 64, scope: !1626)
!1835 = !DILocation(line: 267, column: 56, scope: !1626)
!1836 = !DILocation(line: 268, column: 13, scope: !1626)
!1837 = !DILocation(line: 271, column: 20, scope: !1626)
!1838 = !DILocation(line: 272, column: 18, scope: !1626)
!1839 = !DILocation(line: 273, column: 67, scope: !1626)
!1840 = !DILocation(line: 273, column: 74, scope: !1626)
!1841 = !DILocation(line: 273, column: 64, scope: !1626)
!1842 = !DILocation(line: 273, column: 56, scope: !1626)
!1843 = !DILocation(line: 274, column: 13, scope: !1626)
!1844 = !DILocation(line: 278, column: 1, scope: !1614)
!1845 = distinct !DISubprogram(name: "NVIC_SetupVectorTable", scope: !814, file: !814, line: 47, type: !1846, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1848)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !12}
!1848 = !{!1849}
!1849 = !DILocalVariable(name: "addr", arg: 1, scope: !1845, file: !814, line: 47, type: !12)
!1850 = !DILocation(line: 0, scope: !1845)
!1851 = !DILocation(line: 49, column: 15, scope: !1845)
!1852 = !DILocation(line: 51, column: 5, scope: !1845)
!1853 = !{i64 2624}
!1854 = !DILocation(line: 52, column: 5, scope: !1845)
!1855 = !{i64 2651}
!1856 = !DILocation(line: 53, column: 1, scope: !1845)
!1857 = distinct !DISubprogram(name: "NVIC_SWInt", scope: !814, file: !814, line: 56, type: !1858, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !7}
!1860 = !{!1861}
!1861 = !DILocalVariable(name: "source", arg: 1, scope: !1857, file: !814, line: 56, type: !7)
!1862 = !DILocation(line: 0, scope: !1857)
!1863 = !DILocation(line: 58, column: 16, scope: !1857)
!1864 = !DILocation(line: 59, column: 1, scope: !1857)
!1865 = distinct !DISubprogram(name: "save_and_set_interrupt_mask", scope: !814, file: !814, line: 61, type: !1866, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!12}
!1868 = !{!1869}
!1869 = !DILocalVariable(name: "mask", scope: !1865, file: !814, line: 63, type: !12)
!1870 = !DILocation(line: 470, column: 3, scope: !1871, inlinedAt: !1875)
!1871 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !1872, file: !1872, line: 466, type: !1866, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1873)
!1872 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmFunc.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "result", scope: !1871, file: !1872, line: 468, type: !12)
!1875 = distinct !DILocation(line: 64, column: 5, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1865, file: !814, line: 64, column: 5)
!1877 = !{i64 302174}
!1878 = !DILocation(line: 0, scope: !1871, inlinedAt: !1875)
!1879 = !DILocation(line: 0, scope: !1865)
!1880 = !DILocation(line: 330, column: 3, scope: !1881, inlinedAt: !1883)
!1881 = distinct !DISubprogram(name: "__disable_irq", scope: !1872, file: !1872, line: 328, type: !386, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1882)
!1882 = !{}
!1883 = distinct !DILocation(line: 64, column: 5, scope: !1876)
!1884 = !{i64 298838}
!1885 = !DILocation(line: 65, column: 5, scope: !1865)
!1886 = distinct !DISubprogram(name: "restore_interrupt_mask", scope: !814, file: !814, line: 68, type: !1846, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1887)
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "mask", arg: 1, scope: !1886, file: !814, line: 68, type: !12)
!1889 = !DILocation(line: 0, scope: !1886)
!1890 = !DILocalVariable(name: "priMask", arg: 1, scope: !1891, file: !1872, line: 481, type: !12)
!1891 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !1872, file: !1872, line: 481, type: !1846, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !813, retainedNodes: !1892)
!1892 = !{!1890}
!1893 = !DILocation(line: 0, scope: !1891, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 70, column: 5, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1886, file: !814, line: 70, column: 5)
!1896 = !DILocation(line: 483, column: 3, scope: !1891, inlinedAt: !1894)
!1897 = !{i64 302492}
!1898 = !DILocation(line: 71, column: 1, scope: !1886)
!1899 = distinct !DISubprogram(name: "pinmux_config", scope: !859, file: !859, line: 54, type: !1900, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !858, retainedNodes: !1902)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!234, !961, !12}
!1902 = !{!1903, !1904, !1905}
!1903 = !DILocalVariable(name: "gpio_index", arg: 1, scope: !1899, file: !859, line: 54, type: !961)
!1904 = !DILocalVariable(name: "function", arg: 2, scope: !1899, file: !859, line: 54, type: !12)
!1905 = !DILocalVariable(name: "ePadIndex", scope: !1899, file: !859, line: 56, type: !1618)
!1906 = !DILocation(line: 0, scope: !1899)
!1907 = !DILocation(line: 60, column: 5, scope: !1899)
!1908 = !DILocation(line: 205, column: 38, scope: !1899)
!1909 = !DILocation(line: 205, column: 5, scope: !1899)
!1910 = !DILocation(line: 207, column: 5, scope: !1899)
!1911 = !DILocation(line: 208, column: 1, scope: !1899)
!1912 = distinct !DISubprogram(name: "top_xtal_init", scope: !3, file: !3, line: 52, type: !386, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1913 = !{!1914, !1915}
!1914 = !DILocalVariable(name: "u4RegVal", scope: !1912, file: !3, line: 54, type: !12)
!1915 = !DILocalVariable(name: "reg", scope: !1912, file: !3, line: 55, type: !608)
!1916 = !DILocation(line: 0, scope: !1912)
!1917 = !DILocation(line: 55, column: 25, scope: !1912)
!1918 = !DILocation(line: 56, column: 16, scope: !1912)
!1919 = !DILocation(line: 56, column: 23, scope: !1912)
!1920 = !DILocation(line: 58, column: 16, scope: !1912)
!1921 = !DILocation(line: 61, column: 5, scope: !1912)
!1922 = !DILocation(line: 59, column: 14, scope: !1912)
!1923 = !DILocation(line: 0, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 61, column: 18)
!1925 = !DILocation(line: 87, column: 38, scope: !1912)
!1926 = !DILocation(line: 88, column: 21, scope: !1912)
!1927 = !DILocation(line: 88, column: 19, scope: !1912)
!1928 = !DILocation(line: 89, column: 5, scope: !1912)
!1929 = !DILocation(line: 90, column: 17, scope: !1912)
!1930 = !DILocation(line: 90, column: 33, scope: !1912)
!1931 = !DILocation(line: 90, column: 5, scope: !1912)
!1932 = !DILocation(line: 91, column: 1, scope: !1912)
!1933 = distinct !DISubprogram(name: "top_xtal_freq_get", scope: !3, file: !3, line: 98, type: !1866, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1882)
!1934 = !DILocation(line: 100, column: 12, scope: !1933)
!1935 = !DILocation(line: 100, column: 5, scope: !1933)
!1936 = distinct !DISubprogram(name: "top_mcu_freq_get", scope: !3, file: !3, line: 108, type: !1866, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1882)
!1937 = !DILocation(line: 110, column: 12, scope: !1936)
!1938 = !DILocation(line: 110, column: 5, scope: !1936)
!1939 = distinct !DISubprogram(name: "cmnPLL1ON", scope: !3, file: !3, line: 118, type: !386, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1940)
!1940 = !{!1941, !1942}
!1941 = !DILocalVariable(name: "reg", scope: !1939, file: !3, line: 120, type: !11)
!1942 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !1939, file: !3, line: 121, type: !10)
!1943 = !DILocation(line: 120, column: 5, scope: !1939)
!1944 = !DILocation(line: 120, column: 23, scope: !1939)
!1945 = !DILocation(line: 0, scope: !1939)
!1946 = !DILocation(line: 123, column: 11, scope: !1939)
!1947 = !DILocation(line: 123, column: 9, scope: !1939)
!1948 = !DILocation(line: 124, column: 12, scope: !1939)
!1949 = !DILocation(line: 124, column: 16, scope: !1939)
!1950 = !DILocation(line: 124, column: 39, scope: !1939)
!1951 = !DILocation(line: 124, column: 9, scope: !1939)
!1952 = !DILocation(line: 126, column: 9, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 126, column: 9)
!1954 = !DILocation(line: 126, column: 13, scope: !1953)
!1955 = !DILocation(line: 126, column: 9, scope: !1939)
!1956 = !DILocation(line: 127, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 126, column: 47)
!1958 = !DILocation(line: 127, column: 13, scope: !1957)
!1959 = !DILocation(line: 128, column: 15, scope: !1957)
!1960 = !DILocation(line: 128, column: 19, scope: !1957)
!1961 = !DILocation(line: 128, column: 13, scope: !1957)
!1962 = !DILocation(line: 129, column: 15, scope: !1957)
!1963 = !DILocation(line: 129, column: 19, scope: !1957)
!1964 = !DILocation(line: 129, column: 13, scope: !1957)
!1965 = !DILocation(line: 130, column: 46, scope: !1957)
!1966 = !DILocation(line: 130, column: 9, scope: !1957)
!1967 = !DILocation(line: 132, column: 9, scope: !1957)
!1968 = !DILocation(line: 133, column: 19, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 132, column: 12)
!1970 = !DILocation(line: 133, column: 17, scope: !1969)
!1971 = !DILocation(line: 134, column: 19, scope: !1969)
!1972 = !DILocation(line: 134, column: 23, scope: !1969)
!1973 = !DILocation(line: 134, column: 17, scope: !1969)
!1974 = !DILocation(line: 135, column: 19, scope: !1957)
!1975 = !DILocation(line: 135, column: 18, scope: !1957)
!1976 = !DILocation(line: 135, column: 9, scope: !1969)
!1977 = distinct !{!1977, !1967, !1978}
!1978 = !DILocation(line: 135, column: 22, scope: !1957)
!1979 = !DILocation(line: 138, column: 1, scope: !1939)
!1980 = distinct !DISubprogram(name: "cmnReadRegister32", scope: !1981, file: !1981, line: 176, type: !1982, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1981 = !DIFile(filename: "../../../../../driver/CMSIS/Device/MTK/mt7687/Include/system_mt7687.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!12, !1984}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1986 = !{!1987}
!1987 = !DILocalVariable(name: "Register", arg: 1, scope: !1980, file: !1981, line: 176, type: !1984)
!1988 = !DILocation(line: 0, scope: !1980)
!1989 = !DILocation(line: 178, column: 13, scope: !1980)
!1990 = !DILocation(line: 178, column: 12, scope: !1980)
!1991 = !DILocation(line: 178, column: 5, scope: !1980)
!1992 = distinct !DISubprogram(name: "cmnWriteRegister32", scope: !1981, file: !1981, line: 171, type: !1993, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1984, !12}
!1995 = !{!1996, !1997}
!1996 = !DILocalVariable(name: "Register", arg: 1, scope: !1992, file: !1981, line: 171, type: !1984)
!1997 = !DILocalVariable(name: "Value", arg: 2, scope: !1992, file: !1981, line: 171, type: !12)
!1998 = !DILocation(line: 0, scope: !1992)
!1999 = !DILocation(line: 173, column: 6, scope: !1992)
!2000 = !DILocation(line: 173, column: 36, scope: !1992)
!2001 = !DILocation(line: 174, column: 1, scope: !1992)
!2002 = distinct !DISubprogram(name: "cmnPLL1ON_PLL2ON", scope: !3, file: !3, line: 145, type: !2003, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !118}
!2005 = !{!2006, !2007, !2008}
!2006 = !DILocalVariable(name: "fg960M", arg: 1, scope: !2002, file: !3, line: 145, type: !118)
!2007 = !DILocalVariable(name: "reg", scope: !2002, file: !3, line: 147, type: !11)
!2008 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2002, file: !3, line: 148, type: !10)
!2009 = !DILocation(line: 0, scope: !2002)
!2010 = !DILocation(line: 147, column: 5, scope: !2002)
!2011 = !DILocation(line: 147, column: 23, scope: !2002)
!2012 = !DILocation(line: 150, column: 11, scope: !2002)
!2013 = !DILocation(line: 150, column: 9, scope: !2002)
!2014 = !DILocation(line: 151, column: 12, scope: !2002)
!2015 = !DILocation(line: 151, column: 16, scope: !2002)
!2016 = !DILocation(line: 151, column: 39, scope: !2002)
!2017 = !DILocation(line: 151, column: 9, scope: !2002)
!2018 = !DILocation(line: 153, column: 9, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 153, column: 9)
!2020 = !DILocation(line: 153, column: 13, scope: !2019)
!2021 = !DILocation(line: 153, column: 9, scope: !2002)
!2022 = !DILocation(line: 154, column: 15, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 153, column: 45)
!2024 = !DILocation(line: 154, column: 13, scope: !2023)
!2025 = !DILocation(line: 155, column: 15, scope: !2023)
!2026 = !DILocation(line: 155, column: 19, scope: !2023)
!2027 = !DILocation(line: 155, column: 13, scope: !2023)
!2028 = !DILocation(line: 156, column: 15, scope: !2023)
!2029 = !DILocation(line: 156, column: 19, scope: !2023)
!2030 = !DILocation(line: 156, column: 13, scope: !2023)
!2031 = !DILocation(line: 157, column: 15, scope: !2023)
!2032 = !DILocation(line: 157, column: 13, scope: !2023)
!2033 = !DILocation(line: 158, column: 46, scope: !2023)
!2034 = !DILocation(line: 158, column: 9, scope: !2023)
!2035 = !DILocation(line: 160, column: 15, scope: !2023)
!2036 = !DILocation(line: 160, column: 13, scope: !2023)
!2037 = !DILocation(line: 161, column: 15, scope: !2023)
!2038 = !DILocation(line: 161, column: 19, scope: !2023)
!2039 = !DILocation(line: 161, column: 13, scope: !2023)
!2040 = !DILocation(line: 162, column: 15, scope: !2023)
!2041 = !DILocation(line: 162, column: 19, scope: !2023)
!2042 = !DILocation(line: 162, column: 13, scope: !2023)
!2043 = !DILocation(line: 163, column: 15, scope: !2023)
!2044 = !DILocation(line: 163, column: 19, scope: !2023)
!2045 = !DILocation(line: 163, column: 13, scope: !2023)
!2046 = !DILocation(line: 164, column: 46, scope: !2023)
!2047 = !DILocation(line: 164, column: 9, scope: !2023)
!2048 = !DILocation(line: 166, column: 9, scope: !2023)
!2049 = !DILocation(line: 167, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 166, column: 12)
!2051 = !DILocation(line: 167, column: 17, scope: !2050)
!2052 = !DILocation(line: 168, column: 19, scope: !2050)
!2053 = !DILocation(line: 168, column: 23, scope: !2050)
!2054 = !DILocation(line: 168, column: 17, scope: !2050)
!2055 = !DILocation(line: 169, column: 19, scope: !2023)
!2056 = !DILocation(line: 169, column: 18, scope: !2023)
!2057 = !DILocation(line: 169, column: 9, scope: !2050)
!2058 = distinct !{!2058, !2048, !2059}
!2059 = !DILocation(line: 169, column: 22, scope: !2023)
!2060 = !DILocation(line: 171, column: 15, scope: !2023)
!2061 = !DILocation(line: 171, column: 13, scope: !2023)
!2062 = !DILocation(line: 172, column: 15, scope: !2023)
!2063 = !DILocation(line: 172, column: 19, scope: !2023)
!2064 = !DILocation(line: 172, column: 13, scope: !2023)
!2065 = !DILocation(line: 173, column: 15, scope: !2023)
!2066 = !DILocation(line: 173, column: 19, scope: !2023)
!2067 = !DILocation(line: 173, column: 13, scope: !2023)
!2068 = !DILocation(line: 174, column: 5, scope: !2023)
!2069 = !DILocation(line: 176, column: 11, scope: !2002)
!2070 = !DILocation(line: 176, column: 9, scope: !2002)
!2071 = !DILocation(line: 177, column: 9, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 177, column: 9)
!2073 = !DILocation(line: 0, scope: !2072)
!2074 = !DILocation(line: 177, column: 9, scope: !2002)
!2075 = !DILocation(line: 178, column: 19, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 177, column: 17)
!2077 = !DILocation(line: 178, column: 13, scope: !2076)
!2078 = !DILocation(line: 179, column: 5, scope: !2076)
!2079 = !DILocation(line: 180, column: 13, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 179, column: 12)
!2081 = !DILocation(line: 182, column: 42, scope: !2002)
!2082 = !DILocation(line: 182, column: 5, scope: !2002)
!2083 = !DILocation(line: 184, column: 1, scope: !2002)
!2084 = distinct !DISubprogram(name: "cmnPLL1OFF_PLL2OFF", scope: !3, file: !3, line: 191, type: !386, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2085)
!2085 = !{!2086, !2087}
!2086 = !DILocalVariable(name: "reg", scope: !2084, file: !3, line: 193, type: !11)
!2087 = !DILocalVariable(name: "pTopCfgCM4PWRCtl", scope: !2084, file: !3, line: 194, type: !10)
!2088 = !DILocation(line: 193, column: 5, scope: !2084)
!2089 = !DILocation(line: 193, column: 23, scope: !2084)
!2090 = !DILocation(line: 0, scope: !2084)
!2091 = !DILocation(line: 196, column: 11, scope: !2084)
!2092 = !DILocation(line: 196, column: 9, scope: !2084)
!2093 = !DILocation(line: 197, column: 11, scope: !2084)
!2094 = !DILocation(line: 197, column: 15, scope: !2084)
!2095 = !DILocation(line: 197, column: 9, scope: !2084)
!2096 = !DILocation(line: 198, column: 11, scope: !2084)
!2097 = !DILocation(line: 198, column: 15, scope: !2084)
!2098 = !DILocation(line: 198, column: 9, scope: !2084)
!2099 = !DILocation(line: 199, column: 11, scope: !2084)
!2100 = !DILocation(line: 199, column: 9, scope: !2084)
!2101 = !DILocation(line: 200, column: 42, scope: !2084)
!2102 = !DILocation(line: 200, column: 5, scope: !2084)
!2103 = !DILocation(line: 202, column: 11, scope: !2084)
!2104 = !DILocation(line: 202, column: 9, scope: !2084)
!2105 = !DILocation(line: 203, column: 11, scope: !2084)
!2106 = !DILocation(line: 203, column: 15, scope: !2084)
!2107 = !DILocation(line: 203, column: 9, scope: !2084)
!2108 = !DILocation(line: 204, column: 11, scope: !2084)
!2109 = !DILocation(line: 204, column: 15, scope: !2084)
!2110 = !DILocation(line: 204, column: 9, scope: !2084)
!2111 = !DILocation(line: 205, column: 11, scope: !2084)
!2112 = !DILocation(line: 205, column: 9, scope: !2084)
!2113 = !DILocation(line: 206, column: 42, scope: !2084)
!2114 = !DILocation(line: 206, column: 5, scope: !2084)
!2115 = !DILocation(line: 209, column: 1, scope: !2084)
!2116 = distinct !DISubprogram(name: "cmnCpuClkConfigureToXtal", scope: !3, file: !3, line: 216, type: !386, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2117)
!2117 = !{!2118, !2119}
!2118 = !DILocalVariable(name: "reg", scope: !2116, file: !3, line: 218, type: !11)
!2119 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2116, file: !3, line: 219, type: !10)
!2120 = !DILocation(line: 218, column: 5, scope: !2116)
!2121 = !DILocation(line: 218, column: 23, scope: !2116)
!2122 = !DILocation(line: 0, scope: !2116)
!2123 = !DILocation(line: 222, column: 11, scope: !2116)
!2124 = !DILocation(line: 222, column: 9, scope: !2116)
!2125 = !DILocation(line: 223, column: 11, scope: !2116)
!2126 = !DILocation(line: 223, column: 15, scope: !2116)
!2127 = !DILocation(line: 223, column: 9, scope: !2116)
!2128 = !DILocation(line: 224, column: 11, scope: !2116)
!2129 = !DILocation(line: 224, column: 9, scope: !2116)
!2130 = !DILocation(line: 225, column: 39, scope: !2116)
!2131 = !DILocation(line: 225, column: 5, scope: !2116)
!2132 = !DILocation(line: 228, column: 11, scope: !2116)
!2133 = !DILocation(line: 228, column: 9, scope: !2116)
!2134 = !DILocation(line: 229, column: 11, scope: !2116)
!2135 = !DILocation(line: 229, column: 15, scope: !2116)
!2136 = !DILocation(line: 229, column: 9, scope: !2116)
!2137 = !DILocation(line: 230, column: 11, scope: !2116)
!2138 = !DILocation(line: 230, column: 9, scope: !2116)
!2139 = !DILocation(line: 231, column: 39, scope: !2116)
!2140 = !DILocation(line: 231, column: 5, scope: !2116)
!2141 = !DILocation(line: 233, column: 5, scope: !2116)
!2142 = !DILocation(line: 233, column: 12, scope: !2116)
!2143 = !DILocation(line: 233, column: 19, scope: !2116)
!2144 = !DILocation(line: 233, column: 16, scope: !2116)
!2145 = distinct !{!2145, !2141, !2146}
!2146 = !DILocation(line: 233, column: 52, scope: !2116)
!2147 = !DILocation(line: 235, column: 21, scope: !2116)
!2148 = !DILocation(line: 235, column: 19, scope: !2116)
!2149 = !DILocation(line: 236, column: 5, scope: !2116)
!2150 = !DILocation(line: 237, column: 17, scope: !2116)
!2151 = !DILocation(line: 237, column: 33, scope: !2116)
!2152 = !DILocation(line: 237, column: 5, scope: !2116)
!2153 = !DILocation(line: 239, column: 1, scope: !2116)
!2154 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo192M", scope: !3, file: !3, line: 246, type: !386, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2155)
!2155 = !{!2156, !2157}
!2156 = !DILocalVariable(name: "reg", scope: !2154, file: !3, line: 248, type: !11)
!2157 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2154, file: !3, line: 249, type: !10)
!2158 = !DILocation(line: 248, column: 5, scope: !2154)
!2159 = !DILocation(line: 248, column: 23, scope: !2154)
!2160 = !DILocation(line: 0, scope: !2154)
!2161 = !DILocation(line: 252, column: 5, scope: !2154)
!2162 = !DILocation(line: 255, column: 11, scope: !2154)
!2163 = !DILocation(line: 255, column: 9, scope: !2154)
!2164 = !DILocation(line: 256, column: 11, scope: !2154)
!2165 = !DILocation(line: 256, column: 15, scope: !2154)
!2166 = !DILocation(line: 256, column: 9, scope: !2154)
!2167 = !DILocation(line: 257, column: 11, scope: !2154)
!2168 = !DILocation(line: 257, column: 15, scope: !2154)
!2169 = !DILocation(line: 257, column: 9, scope: !2154)
!2170 = !DILocation(line: 258, column: 39, scope: !2154)
!2171 = !DILocation(line: 258, column: 5, scope: !2154)
!2172 = !DILocation(line: 260, column: 5, scope: !2154)
!2173 = !DILocation(line: 260, column: 12, scope: !2154)
!2174 = !DILocation(line: 260, column: 19, scope: !2154)
!2175 = !DILocation(line: 260, column: 16, scope: !2154)
!2176 = distinct !{!2176, !2172, !2177}
!2177 = !DILocation(line: 260, column: 52, scope: !2154)
!2178 = !DILocation(line: 263, column: 11, scope: !2154)
!2179 = !DILocation(line: 263, column: 9, scope: !2154)
!2180 = !DILocation(line: 264, column: 11, scope: !2154)
!2181 = !DILocation(line: 264, column: 15, scope: !2154)
!2182 = !DILocation(line: 264, column: 9, scope: !2154)
!2183 = !DILocation(line: 265, column: 11, scope: !2154)
!2184 = !DILocation(line: 265, column: 15, scope: !2154)
!2185 = !DILocation(line: 265, column: 9, scope: !2154)
!2186 = !DILocation(line: 266, column: 39, scope: !2154)
!2187 = !DILocation(line: 266, column: 5, scope: !2154)
!2188 = !DILocation(line: 269, column: 11, scope: !2154)
!2189 = !DILocation(line: 269, column: 9, scope: !2154)
!2190 = !DILocation(line: 270, column: 11, scope: !2154)
!2191 = !DILocation(line: 270, column: 15, scope: !2154)
!2192 = !DILocation(line: 270, column: 9, scope: !2154)
!2193 = !DILocation(line: 271, column: 11, scope: !2154)
!2194 = !DILocation(line: 271, column: 15, scope: !2154)
!2195 = !DILocation(line: 271, column: 9, scope: !2154)
!2196 = !DILocation(line: 272, column: 39, scope: !2154)
!2197 = !DILocation(line: 272, column: 5, scope: !2154)
!2198 = !DILocation(line: 273, column: 19, scope: !2154)
!2199 = !DILocation(line: 274, column: 5, scope: !2154)
!2200 = !DILocation(line: 275, column: 17, scope: !2154)
!2201 = !DILocation(line: 275, column: 33, scope: !2154)
!2202 = !DILocation(line: 275, column: 5, scope: !2154)
!2203 = !DILocation(line: 277, column: 1, scope: !2154)
!2204 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo160M", scope: !3, file: !3, line: 284, type: !386, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2205 = !{!2206, !2207}
!2206 = !DILocalVariable(name: "reg", scope: !2204, file: !3, line: 286, type: !11)
!2207 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2204, file: !3, line: 287, type: !10)
!2208 = !DILocation(line: 286, column: 5, scope: !2204)
!2209 = !DILocation(line: 286, column: 23, scope: !2204)
!2210 = !DILocation(line: 0, scope: !2204)
!2211 = !DILocation(line: 290, column: 5, scope: !2204)
!2212 = !DILocation(line: 293, column: 11, scope: !2204)
!2213 = !DILocation(line: 293, column: 9, scope: !2204)
!2214 = !DILocation(line: 294, column: 11, scope: !2204)
!2215 = !DILocation(line: 294, column: 15, scope: !2204)
!2216 = !DILocation(line: 294, column: 9, scope: !2204)
!2217 = !DILocation(line: 295, column: 11, scope: !2204)
!2218 = !DILocation(line: 295, column: 15, scope: !2204)
!2219 = !DILocation(line: 295, column: 9, scope: !2204)
!2220 = !DILocation(line: 296, column: 39, scope: !2204)
!2221 = !DILocation(line: 296, column: 5, scope: !2204)
!2222 = !DILocation(line: 298, column: 5, scope: !2204)
!2223 = !DILocation(line: 298, column: 12, scope: !2204)
!2224 = !DILocation(line: 298, column: 19, scope: !2204)
!2225 = !DILocation(line: 298, column: 16, scope: !2204)
!2226 = distinct !{!2226, !2222, !2227}
!2227 = !DILocation(line: 298, column: 52, scope: !2204)
!2228 = !DILocation(line: 301, column: 11, scope: !2204)
!2229 = !DILocation(line: 301, column: 9, scope: !2204)
!2230 = !DILocation(line: 302, column: 11, scope: !2204)
!2231 = !DILocation(line: 302, column: 15, scope: !2204)
!2232 = !DILocation(line: 302, column: 9, scope: !2204)
!2233 = !DILocation(line: 303, column: 11, scope: !2204)
!2234 = !DILocation(line: 303, column: 15, scope: !2204)
!2235 = !DILocation(line: 303, column: 9, scope: !2204)
!2236 = !DILocation(line: 304, column: 39, scope: !2204)
!2237 = !DILocation(line: 304, column: 5, scope: !2204)
!2238 = !DILocation(line: 307, column: 11, scope: !2204)
!2239 = !DILocation(line: 307, column: 9, scope: !2204)
!2240 = !DILocation(line: 308, column: 11, scope: !2204)
!2241 = !DILocation(line: 308, column: 15, scope: !2204)
!2242 = !DILocation(line: 308, column: 9, scope: !2204)
!2243 = !DILocation(line: 309, column: 11, scope: !2204)
!2244 = !DILocation(line: 309, column: 15, scope: !2204)
!2245 = !DILocation(line: 309, column: 9, scope: !2204)
!2246 = !DILocation(line: 310, column: 39, scope: !2204)
!2247 = !DILocation(line: 310, column: 5, scope: !2204)
!2248 = !DILocation(line: 311, column: 19, scope: !2204)
!2249 = !DILocation(line: 312, column: 5, scope: !2204)
!2250 = !DILocation(line: 313, column: 17, scope: !2204)
!2251 = !DILocation(line: 313, column: 33, scope: !2204)
!2252 = !DILocation(line: 313, column: 5, scope: !2204)
!2253 = !DILocation(line: 315, column: 1, scope: !2204)
!2254 = distinct !DISubprogram(name: "cmnCpuClkConfigureTo64M", scope: !3, file: !3, line: 323, type: !386, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2255)
!2255 = !{!2256, !2257}
!2256 = !DILocalVariable(name: "reg", scope: !2254, file: !3, line: 325, type: !11)
!2257 = !DILocalVariable(name: "pTopCfgCM4CKG", scope: !2254, file: !3, line: 326, type: !10)
!2258 = !DILocation(line: 325, column: 5, scope: !2254)
!2259 = !DILocation(line: 325, column: 23, scope: !2254)
!2260 = !DILocation(line: 0, scope: !2254)
!2261 = !DILocation(line: 329, column: 5, scope: !2254)
!2262 = !DILocation(line: 332, column: 11, scope: !2254)
!2263 = !DILocation(line: 332, column: 9, scope: !2254)
!2264 = !DILocation(line: 333, column: 11, scope: !2254)
!2265 = !DILocation(line: 333, column: 15, scope: !2254)
!2266 = !DILocation(line: 333, column: 9, scope: !2254)
!2267 = !DILocation(line: 334, column: 11, scope: !2254)
!2268 = !DILocation(line: 334, column: 9, scope: !2254)
!2269 = !DILocation(line: 335, column: 39, scope: !2254)
!2270 = !DILocation(line: 335, column: 5, scope: !2254)
!2271 = !DILocation(line: 337, column: 5, scope: !2254)
!2272 = !DILocation(line: 337, column: 12, scope: !2254)
!2273 = !DILocation(line: 337, column: 19, scope: !2254)
!2274 = !DILocation(line: 337, column: 16, scope: !2254)
!2275 = distinct !{!2275, !2271, !2276}
!2276 = !DILocation(line: 337, column: 52, scope: !2254)
!2277 = !DILocation(line: 340, column: 11, scope: !2254)
!2278 = !DILocation(line: 340, column: 9, scope: !2254)
!2279 = !DILocation(line: 341, column: 11, scope: !2254)
!2280 = !DILocation(line: 341, column: 15, scope: !2254)
!2281 = !DILocation(line: 341, column: 9, scope: !2254)
!2282 = !DILocation(line: 342, column: 11, scope: !2254)
!2283 = !DILocation(line: 342, column: 15, scope: !2254)
!2284 = !DILocation(line: 342, column: 9, scope: !2254)
!2285 = !DILocation(line: 343, column: 39, scope: !2254)
!2286 = !DILocation(line: 343, column: 5, scope: !2254)
!2287 = !DILocation(line: 344, column: 19, scope: !2254)
!2288 = !DILocation(line: 345, column: 5, scope: !2254)
!2289 = !DILocation(line: 346, column: 17, scope: !2254)
!2290 = !DILocation(line: 346, column: 33, scope: !2254)
!2291 = !DILocation(line: 346, column: 5, scope: !2254)
!2292 = !DILocation(line: 348, column: 1, scope: !2254)
!2293 = distinct !DISubprogram(name: "cmnSerialFlashClkConfToXtal", scope: !3, file: !3, line: 353, type: !386, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2294 = !{!2295, !2296}
!2295 = !DILocalVariable(name: "reg", scope: !2293, file: !3, line: 355, type: !17)
!2296 = !DILocalVariable(name: "pTopCfgHclk", scope: !2293, file: !3, line: 356, type: !16)
!2297 = !DILocation(line: 355, column: 5, scope: !2293)
!2298 = !DILocation(line: 355, column: 21, scope: !2293)
!2299 = !DILocation(line: 0, scope: !2293)
!2300 = !DILocation(line: 358, column: 11, scope: !2293)
!2301 = !DILocation(line: 358, column: 9, scope: !2293)
!2302 = !DILocation(line: 359, column: 11, scope: !2293)
!2303 = !DILocation(line: 359, column: 15, scope: !2293)
!2304 = !DILocation(line: 359, column: 9, scope: !2293)
!2305 = !DILocation(line: 360, column: 11, scope: !2293)
!2306 = !DILocation(line: 360, column: 9, scope: !2293)
!2307 = !DILocation(line: 361, column: 37, scope: !2293)
!2308 = !DILocation(line: 361, column: 5, scope: !2293)
!2309 = !DILocation(line: 362, column: 1, scope: !2293)
!2310 = distinct !DISubprogram(name: "getc", scope: !24, file: !24, line: 68, type: !2311, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!66}
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "rc", scope: !2310, file: !24, line: 71, type: !66)
!2315 = !DILocation(line: 71, column: 14, scope: !2310)
!2316 = !DILocation(line: 0, scope: !2310)
!2317 = !DILocation(line: 72, column: 5, scope: !2310)
!2318 = distinct !DISubprogram(name: "getc_nowait", scope: !24, file: !24, line: 80, type: !2311, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2319)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "c", scope: !2318, file: !24, line: 82, type: !377)
!2321 = !DILocation(line: 84, column: 9, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !24, line: 84, column: 9)
!2323 = !DILocation(line: 84, column: 40, scope: !2322)
!2324 = !DILocation(line: 84, column: 9, scope: !2318)
!2325 = !DILocation(line: 85, column: 13, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !24, line: 84, column: 47)
!2327 = !DILocation(line: 86, column: 16, scope: !2326)
!2328 = !DILocation(line: 0, scope: !2318)
!2329 = !DILocation(line: 86, column: 9, scope: !2326)
!2330 = !DILocation(line: 0, scope: !2322)
!2331 = !DILocation(line: 90, column: 1, scope: !2318)
!2332 = distinct !DISubprogram(name: "uart_output_char", scope: !24, file: !24, line: 93, type: !2333, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2336)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !2335, !55}
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "UART_PORT", file: !27, line: 75, baseType: !26)
!2336 = !{!2337, !2338, !2339}
!2337 = !DILocalVariable(name: "port_no", arg: 1, scope: !2332, file: !24, line: 93, type: !2335)
!2338 = !DILocalVariable(name: "c", arg: 2, scope: !2332, file: !24, line: 93, type: !55)
!2339 = !DILocalVariable(name: "base", scope: !2332, file: !24, line: 95, type: !7)
!2340 = !DILocation(line: 0, scope: !2332)
!2341 = !DILocation(line: 95, column: 25, scope: !2332)
!2342 = !DILocation(line: 97, column: 5, scope: !2332)
!2343 = !DILocation(line: 97, column: 14, scope: !2332)
!2344 = !DILocation(line: 97, column: 42, scope: !2332)
!2345 = !DILocation(line: 97, column: 12, scope: !2332)
!2346 = distinct !{!2346, !2342, !2347}
!2347 = !DILocation(line: 98, column: 9, scope: !2332)
!2348 = !DILocation(line: 99, column: 35, scope: !2332)
!2349 = !DILocation(line: 99, column: 5, scope: !2332)
!2350 = !DILocation(line: 99, column: 33, scope: !2332)
!2351 = !DILocation(line: 102, column: 1, scope: !2332)
!2352 = distinct !DISubprogram(name: "uart_input_char", scope: !24, file: !24, line: 106, type: !2353, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2355)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!118, !2335}
!2355 = !{!2356, !2357, !2358}
!2356 = !DILocalVariable(name: "port_no", arg: 1, scope: !2352, file: !24, line: 106, type: !2335)
!2357 = !DILocalVariable(name: "base", scope: !2352, file: !24, line: 108, type: !7)
!2358 = !DILocalVariable(name: "c", scope: !2352, file: !24, line: 109, type: !377)
!2359 = !DILocation(line: 0, scope: !2352)
!2360 = !DILocation(line: 108, column: 25, scope: !2352)
!2361 = !DILocation(line: 111, column: 5, scope: !2352)
!2362 = !DILocation(line: 111, column: 14, scope: !2352)
!2363 = !DILocation(line: 111, column: 42, scope: !2352)
!2364 = !DILocation(line: 111, column: 12, scope: !2352)
!2365 = distinct !{!2365, !2361, !2366}
!2366 = !DILocation(line: 112, column: 9, scope: !2352)
!2367 = !DILocation(line: 114, column: 9, scope: !2352)
!2368 = !DILocation(line: 116, column: 5, scope: !2352)
!2369 = distinct !DISubprogram(name: "uart_input_char_unblocking", scope: !24, file: !24, line: 120, type: !2370, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!12, !2335}
!2372 = !{!2373, !2374, !2375}
!2373 = !DILocalVariable(name: "port_no", arg: 1, scope: !2369, file: !24, line: 120, type: !2335)
!2374 = !DILocalVariable(name: "base", scope: !2369, file: !24, line: 122, type: !7)
!2375 = !DILocalVariable(name: "c", scope: !2369, file: !24, line: 123, type: !377)
!2376 = !DILocation(line: 0, scope: !2369)
!2377 = !DILocation(line: 122, column: 25, scope: !2369)
!2378 = !DILocation(line: 125, column: 9, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2369, file: !24, line: 125, column: 9)
!2380 = !DILocation(line: 125, column: 37, scope: !2379)
!2381 = !DILocation(line: 125, column: 9, scope: !2369)
!2382 = !DILocation(line: 126, column: 13, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2379, file: !24, line: 125, column: 44)
!2384 = !DILocation(line: 127, column: 16, scope: !2383)
!2385 = !DILocation(line: 127, column: 9, scope: !2383)
!2386 = !DILocation(line: 0, scope: !2379)
!2387 = !DILocation(line: 131, column: 1, scope: !2369)
!2388 = distinct !DISubprogram(name: "halUART_HWInit", scope: !24, file: !24, line: 136, type: !2389, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2391)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{null, !2335}
!2391 = !{!2392}
!2392 = !DILocalVariable(name: "u_port", arg: 1, scope: !2388, file: !24, line: 136, type: !2335)
!2393 = !DILocation(line: 0, scope: !2388)
!2394 = !DILocation(line: 139, column: 5, scope: !2388)
!2395 = !DILocation(line: 140, column: 9, scope: !2388)
!2396 = !DILocation(line: 153, column: 5, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !24, line: 147, column: 38)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !24, line: 147, column: 16)
!2399 = distinct !DILexicalBlock(scope: !2388, file: !24, line: 140, column: 9)
!2400 = !DILocation(line: 0, scope: !2399)
!2401 = !DILocation(line: 155, column: 1, scope: !2388)
!2402 = distinct !DISubprogram(name: "halUART_SetFormat", scope: !24, file: !24, line: 158, type: !2403, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2407)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !2335, !12, !2405, !2405, !2405}
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 36, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !53)
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2423, !2424}
!2408 = !DILocalVariable(name: "u_port", arg: 1, scope: !2402, file: !24, line: 158, type: !2335)
!2409 = !DILocalVariable(name: "baudrate", arg: 2, scope: !2402, file: !24, line: 158, type: !12)
!2410 = !DILocalVariable(name: "databit", arg: 3, scope: !2402, file: !24, line: 158, type: !2405)
!2411 = !DILocalVariable(name: "parity", arg: 4, scope: !2402, file: !24, line: 158, type: !2405)
!2412 = !DILocalVariable(name: "stopbit", arg: 5, scope: !2402, file: !24, line: 158, type: !2405)
!2413 = !DILocalVariable(name: "control_word", scope: !2402, file: !24, line: 160, type: !2405)
!2414 = !DILocalVariable(name: "UART_BASE", scope: !2402, file: !24, line: 161, type: !12)
!2415 = !DILocalVariable(name: "data", scope: !2402, file: !24, line: 162, type: !12)
!2416 = !DILocalVariable(name: "uart_lcr", scope: !2402, file: !24, line: 162, type: !12)
!2417 = !DILocalVariable(name: "high_speed_div", scope: !2402, file: !24, line: 162, type: !12)
!2418 = !DILocalVariable(name: "sample_count", scope: !2402, file: !24, line: 162, type: !12)
!2419 = !DILocalVariable(name: "sample_point", scope: !2402, file: !24, line: 162, type: !12)
!2420 = !DILocalVariable(name: "fraction", scope: !2402, file: !24, line: 162, type: !12)
!2421 = !DILocalVariable(name: "fraction_L_mapping", scope: !2402, file: !24, line: 163, type: !2422)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2405, size: 176, elements: !713)
!2423 = !DILocalVariable(name: "fraction_M_mapping", scope: !2402, file: !24, line: 164, type: !2422)
!2424 = !DILocalVariable(name: "status", scope: !2402, file: !24, line: 165, type: !234)
!2425 = !DILocation(line: 0, scope: !2402)
!2426 = !DILocation(line: 163, column: 15, scope: !2402)
!2427 = !DILocation(line: 164, column: 15, scope: !2402)
!2428 = !DILocation(line: 166, column: 20, scope: !2402)
!2429 = !DILocation(line: 166, column: 18, scope: !2402)
!2430 = !DILocation(line: 168, column: 9, scope: !2402)
!2431 = !DILocation(line: 176, column: 5, scope: !2402)
!2432 = !DILocation(line: 176, column: 44, scope: !2402)
!2433 = !DILocation(line: 177, column: 16, scope: !2402)
!2434 = !DILocation(line: 178, column: 50, scope: !2402)
!2435 = !DILocation(line: 178, column: 38, scope: !2402)
!2436 = !DILocation(line: 179, column: 12, scope: !2402)
!2437 = !DILocation(line: 179, column: 25, scope: !2402)
!2438 = !DILocation(line: 180, column: 28, scope: !2402)
!2439 = !DILocation(line: 180, column: 34, scope: !2402)
!2440 = !DILocation(line: 182, column: 29, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2402, file: !24, line: 181, column: 5)
!2442 = !DILocation(line: 182, column: 46, scope: !2441)
!2443 = !DILocation(line: 183, column: 26, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2441, file: !24, line: 183, column: 13)
!2445 = !DILocation(line: 183, column: 13, scope: !2441)
!2446 = !DILocation(line: 192, column: 30, scope: !2402)
!2447 = !DILocation(line: 192, column: 35, scope: !2402)
!2448 = !DILocation(line: 192, column: 46, scope: !2402)
!2449 = !DILocation(line: 192, column: 74, scope: !2402)
!2450 = !DILocation(line: 192, column: 53, scope: !2402)
!2451 = !DILocation(line: 192, column: 80, scope: !2402)
!2452 = !DILocation(line: 193, column: 56, scope: !2402)
!2453 = !DILocation(line: 193, column: 5, scope: !2402)
!2454 = !DILocation(line: 193, column: 38, scope: !2402)
!2455 = !DILocation(line: 194, column: 57, scope: !2402)
!2456 = !DILocation(line: 194, column: 63, scope: !2402)
!2457 = !DILocation(line: 194, column: 5, scope: !2402)
!2458 = !DILocation(line: 194, column: 38, scope: !2402)
!2459 = !DILocation(line: 195, column: 5, scope: !2402)
!2460 = !DILocation(line: 195, column: 45, scope: !2402)
!2461 = !DILocation(line: 196, column: 5, scope: !2402)
!2462 = !DILocation(line: 196, column: 47, scope: !2402)
!2463 = !DILocation(line: 197, column: 46, scope: !2402)
!2464 = !DILocation(line: 197, column: 5, scope: !2402)
!2465 = !DILocation(line: 197, column: 44, scope: !2402)
!2466 = !DILocation(line: 198, column: 46, scope: !2402)
!2467 = !DILocation(line: 198, column: 5, scope: !2402)
!2468 = !DILocation(line: 198, column: 44, scope: !2402)
!2469 = !DILocation(line: 199, column: 38, scope: !2402)
!2470 = !DILocation(line: 200, column: 5, scope: !2402)
!2471 = !DILocation(line: 200, column: 38, scope: !2402)
!2472 = !DILocation(line: 202, column: 20, scope: !2402)
!2473 = !DILocation(line: 203, column: 18, scope: !2402)
!2474 = !DILocation(line: 205, column: 18, scope: !2402)
!2475 = !DILocation(line: 207, column: 18, scope: !2402)
!2476 = !DILocation(line: 208, column: 18, scope: !2402)
!2477 = !DILocation(line: 209, column: 5, scope: !2402)
!2478 = !DILocation(line: 213, column: 1, scope: !2402)
!2479 = distinct !DISubprogram(name: "halUART_Get_VFIFO_Length", scope: !24, file: !24, line: 215, type: !2480, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2483)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !2335, !234, !2482}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!2483 = !{!2484, !2485, !2486}
!2484 = !DILocalVariable(name: "u_port", arg: 1, scope: !2479, file: !24, line: 215, type: !2335)
!2485 = !DILocalVariable(name: "is_rx", arg: 2, scope: !2479, file: !24, line: 215, type: !234)
!2486 = !DILocalVariable(name: "length", arg: 3, scope: !2479, file: !24, line: 215, type: !2482)
!2487 = !DILocation(line: 0, scope: !2479)
!2488 = !DILocation(line: 217, column: 16, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2479, file: !24, line: 217, column: 9)
!2490 = !DILocation(line: 0, scope: !2489)
!2491 = !DILocation(line: 217, column: 9, scope: !2479)
!2492 = !DILocation(line: 218, column: 13, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !24, line: 217, column: 31)
!2494 = !DILocation(line: 219, column: 23, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !24, line: 218, column: 20)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !24, line: 218, column: 13)
!2497 = !DILocation(line: 220, column: 9, scope: !2495)
!2498 = !DILocation(line: 221, column: 23, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !24, line: 220, column: 16)
!2500 = !DILocation(line: 221, column: 21, scope: !2499)
!2501 = !DILocation(line: 222, column: 24, scope: !2499)
!2502 = !DILocation(line: 222, column: 21, scope: !2499)
!2503 = !DILocation(line: 225, column: 13, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2489, file: !24, line: 224, column: 12)
!2505 = !DILocation(line: 226, column: 23, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !24, line: 225, column: 20)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !24, line: 225, column: 13)
!2508 = !DILocation(line: 227, column: 9, scope: !2506)
!2509 = !DILocation(line: 228, column: 23, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2507, file: !24, line: 227, column: 16)
!2511 = !DILocation(line: 228, column: 21, scope: !2510)
!2512 = !DILocation(line: 229, column: 24, scope: !2510)
!2513 = !DILocation(line: 229, column: 21, scope: !2510)
!2514 = !DILocation(line: 233, column: 5, scope: !2479)
!2515 = distinct !DISubprogram(name: "halUART_Read_VFIFO_Data", scope: !24, file: !24, line: 236, type: !2516, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !2335, !428, !12}
!2518 = !{!2519, !2520, !2521, !2522}
!2519 = !DILocalVariable(name: "u_port", arg: 1, scope: !2515, file: !24, line: 236, type: !2335)
!2520 = !DILocalVariable(name: "data", arg: 2, scope: !2515, file: !24, line: 236, type: !428)
!2521 = !DILocalVariable(name: "length", arg: 3, scope: !2515, file: !24, line: 236, type: !12)
!2522 = !DILocalVariable(name: "idx", scope: !2515, file: !24, line: 238, type: !8)
!2523 = !DILocation(line: 0, scope: !2515)
!2524 = !DILocation(line: 239, column: 23, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !24, line: 239, column: 5)
!2526 = distinct !DILexicalBlock(scope: !2515, file: !24, line: 239, column: 5)
!2527 = !DILocation(line: 239, column: 5, scope: !2526)
!2528 = !DILocation(line: 240, column: 13, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !24, line: 239, column: 40)
!2530 = !DILocation(line: 244, column: 9, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !24, line: 242, column: 42)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !24, line: 242, column: 20)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !24, line: 240, column: 13)
!2534 = !DILocation(line: 0, scope: !2533)
!2535 = !DILocation(line: 239, column: 36, scope: !2525)
!2536 = distinct !{!2536, !2527, !2537}
!2537 = !DILocation(line: 246, column: 5, scope: !2526)
!2538 = !DILocation(line: 249, column: 1, scope: !2515)
!2539 = distinct !DISubprogram(name: "halUART_Write_VFIFO_Data", scope: !24, file: !24, line: 251, type: !2540, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2544)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{null, !2335, !2542, !12}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!2544 = !{!2545, !2546, !2547, !2548}
!2545 = !DILocalVariable(name: "u_port", arg: 1, scope: !2539, file: !24, line: 251, type: !2335)
!2546 = !DILocalVariable(name: "data", arg: 2, scope: !2539, file: !24, line: 251, type: !2542)
!2547 = !DILocalVariable(name: "length", arg: 3, scope: !2539, file: !24, line: 251, type: !12)
!2548 = !DILocalVariable(name: "idx", scope: !2539, file: !24, line: 253, type: !8)
!2549 = !DILocation(line: 0, scope: !2539)
!2550 = !DILocation(line: 254, column: 23, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !24, line: 254, column: 5)
!2552 = distinct !DILexicalBlock(scope: !2539, file: !24, line: 254, column: 5)
!2553 = !DILocation(line: 254, column: 5, scope: !2552)
!2554 = !DILocation(line: 255, column: 13, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !24, line: 254, column: 40)
!2556 = !DILocation(line: 256, column: 61, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !24, line: 255, column: 35)
!2558 = distinct !DILexicalBlock(scope: !2555, file: !24, line: 255, column: 13)
!2559 = !DILocation(line: 256, column: 59, scope: !2557)
!2560 = !DILocation(line: 257, column: 9, scope: !2557)
!2561 = !DILocation(line: 258, column: 61, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !24, line: 257, column: 42)
!2563 = distinct !DILexicalBlock(scope: !2558, file: !24, line: 257, column: 20)
!2564 = !DILocation(line: 258, column: 59, scope: !2562)
!2565 = !DILocation(line: 259, column: 9, scope: !2562)
!2566 = !DILocation(line: 254, column: 36, scope: !2551)
!2567 = distinct !{!2567, !2553, !2568}
!2568 = !DILocation(line: 261, column: 5, scope: !2552)
!2569 = !DILocation(line: 264, column: 1, scope: !2539)
!2570 = distinct !DISubprogram(name: "halUART_Tx_VFIFO_Initialize", scope: !24, file: !24, line: 266, type: !2571, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2573)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{null, !2335, !428, !12, !12}
!2573 = !{!2574, !2575, !2576, !2577}
!2574 = !DILocalVariable(name: "u_port", arg: 1, scope: !2570, file: !24, line: 266, type: !2335)
!2575 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2570, file: !24, line: 266, type: !428)
!2576 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2570, file: !24, line: 266, type: !12)
!2577 = !DILocalVariable(name: "threshold", arg: 4, scope: !2570, file: !24, line: 266, type: !12)
!2578 = !DILocation(line: 0, scope: !2570)
!2579 = !DILocation(line: 268, column: 9, scope: !2570)
!2580 = !DILocation(line: 274, column: 5, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !24, line: 271, column: 38)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !24, line: 271, column: 16)
!2583 = distinct !DILexicalBlock(scope: !2570, file: !24, line: 268, column: 9)
!2584 = !DILocation(line: 0, scope: !2583)
!2585 = !DILocation(line: 276, column: 1, scope: !2570)
!2586 = distinct !DISubprogram(name: "halUART_Rx_VFIFO_Initialize", scope: !24, file: !24, line: 278, type: !2587, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{null, !2335, !428, !12, !12, !12, !12}
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595}
!2590 = !DILocalVariable(name: "u_port", arg: 1, scope: !2586, file: !24, line: 278, type: !2335)
!2591 = !DILocalVariable(name: "vfifo_buffer", arg: 2, scope: !2586, file: !24, line: 278, type: !428)
!2592 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !2586, file: !24, line: 278, type: !12)
!2593 = !DILocalVariable(name: "alert_length", arg: 4, scope: !2586, file: !24, line: 278, type: !12)
!2594 = !DILocalVariable(name: "threshold", arg: 5, scope: !2586, file: !24, line: 278, type: !12)
!2595 = !DILocalVariable(name: "timeout", arg: 6, scope: !2586, file: !24, line: 278, type: !12)
!2596 = !DILocation(line: 0, scope: !2586)
!2597 = !DILocation(line: 280, column: 9, scope: !2586)
!2598 = !DILocation(line: 286, column: 5, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !24, line: 283, column: 38)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !24, line: 283, column: 16)
!2601 = distinct !DILexicalBlock(scope: !2586, file: !24, line: 280, column: 9)
!2602 = !DILocation(line: 0, scope: !2601)
!2603 = !DILocation(line: 288, column: 1, scope: !2586)
!2604 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_Callback", scope: !24, file: !24, line: 290, type: !2605, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{null, !2335, !384}
!2607 = !{!2608, !2609}
!2608 = !DILocalVariable(name: "u_port", arg: 1, scope: !2604, file: !24, line: 290, type: !2335)
!2609 = !DILocalVariable(name: "func", arg: 2, scope: !2604, file: !24, line: 290, type: !384)
!2610 = !DILocation(line: 0, scope: !2604)
!2611 = !DILocation(line: 292, column: 9, scope: !2604)
!2612 = !DILocation(line: 296, column: 5, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !24, line: 294, column: 38)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !24, line: 294, column: 16)
!2615 = distinct !DILexicalBlock(scope: !2604, file: !24, line: 292, column: 9)
!2616 = !DILocation(line: 0, scope: !2615)
!2617 = !DILocation(line: 298, column: 1, scope: !2604)
!2618 = distinct !DISubprogram(name: "halUART_VDMA_Rx_Register_TO_Callback", scope: !24, file: !24, line: 300, type: !2605, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2619)
!2619 = !{!2620, !2621}
!2620 = !DILocalVariable(name: "u_port", arg: 1, scope: !2618, file: !24, line: 300, type: !2335)
!2621 = !DILocalVariable(name: "func", arg: 2, scope: !2618, file: !24, line: 300, type: !384)
!2622 = !DILocation(line: 0, scope: !2618)
!2623 = !DILocation(line: 302, column: 9, scope: !2618)
!2624 = !DILocation(line: 306, column: 5, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !24, line: 304, column: 38)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !24, line: 304, column: 16)
!2627 = distinct !DILexicalBlock(scope: !2618, file: !24, line: 302, column: 9)
!2628 = !DILocation(line: 0, scope: !2627)
!2629 = !DILocation(line: 308, column: 1, scope: !2618)
!2630 = distinct !DISubprogram(name: "uart_set_hardware_flowcontrol", scope: !24, file: !24, line: 310, type: !2389, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2631)
!2631 = !{!2632, !2633, !2634, !2635}
!2632 = !DILocalVariable(name: "u_port", arg: 1, scope: !2630, file: !24, line: 310, type: !2335)
!2633 = !DILocalVariable(name: "base", scope: !2630, file: !24, line: 312, type: !7)
!2634 = !DILocalVariable(name: "EFR", scope: !2630, file: !24, line: 313, type: !2405)
!2635 = !DILocalVariable(name: "LCR", scope: !2630, file: !24, line: 313, type: !2405)
!2636 = !DILocation(line: 0, scope: !2630)
!2637 = !DILocation(line: 312, column: 25, scope: !2630)
!2638 = !DILocation(line: 315, column: 11, scope: !2630)
!2639 = !DILocation(line: 317, column: 33, scope: !2630)
!2640 = !DILocation(line: 318, column: 11, scope: !2630)
!2641 = !DILocation(line: 320, column: 35, scope: !2630)
!2642 = !DILocation(line: 320, column: 33, scope: !2630)
!2643 = !DILocation(line: 322, column: 5, scope: !2630)
!2644 = !DILocation(line: 322, column: 39, scope: !2630)
!2645 = !DILocation(line: 324, column: 33, scope: !2630)
!2646 = !DILocation(line: 325, column: 5, scope: !2630)
!2647 = !DILocation(line: 325, column: 33, scope: !2630)
!2648 = !DILocation(line: 327, column: 35, scope: !2630)
!2649 = !DILocation(line: 327, column: 33, scope: !2630)
!2650 = !DILocation(line: 328, column: 1, scope: !2630)
!2651 = distinct !DISubprogram(name: "uart_set_software_flowcontrol", scope: !24, file: !24, line: 330, type: !2652, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !2335, !118, !118, !118}
!2654 = !{!2655, !2656, !2657, !2658, !2659, !2660, !2661}
!2655 = !DILocalVariable(name: "u_port", arg: 1, scope: !2651, file: !24, line: 330, type: !2335)
!2656 = !DILocalVariable(name: "xon", arg: 2, scope: !2651, file: !24, line: 330, type: !118)
!2657 = !DILocalVariable(name: "xoff", arg: 3, scope: !2651, file: !24, line: 330, type: !118)
!2658 = !DILocalVariable(name: "escape_character", arg: 4, scope: !2651, file: !24, line: 330, type: !118)
!2659 = !DILocalVariable(name: "base", scope: !2651, file: !24, line: 332, type: !7)
!2660 = !DILocalVariable(name: "EFR", scope: !2651, file: !24, line: 333, type: !2405)
!2661 = !DILocalVariable(name: "LCR", scope: !2651, file: !24, line: 333, type: !2405)
!2662 = !DILocation(line: 0, scope: !2651)
!2663 = !DILocation(line: 332, column: 25, scope: !2651)
!2664 = !DILocation(line: 335, column: 11, scope: !2651)
!2665 = !DILocation(line: 337, column: 33, scope: !2651)
!2666 = !DILocation(line: 338, column: 36, scope: !2651)
!2667 = !DILocation(line: 338, column: 5, scope: !2651)
!2668 = !DILocation(line: 338, column: 34, scope: !2651)
!2669 = !DILocation(line: 339, column: 5, scope: !2651)
!2670 = !DILocation(line: 339, column: 34, scope: !2651)
!2671 = !DILocation(line: 340, column: 37, scope: !2651)
!2672 = !DILocation(line: 340, column: 5, scope: !2651)
!2673 = !DILocation(line: 340, column: 35, scope: !2651)
!2674 = !DILocation(line: 341, column: 5, scope: !2651)
!2675 = !DILocation(line: 341, column: 35, scope: !2651)
!2676 = !DILocation(line: 343, column: 11, scope: !2651)
!2677 = !DILocation(line: 345, column: 35, scope: !2651)
!2678 = !DILocation(line: 345, column: 33, scope: !2651)
!2679 = !DILocation(line: 347, column: 35, scope: !2651)
!2680 = !DILocation(line: 347, column: 33, scope: !2651)
!2681 = !DILocation(line: 349, column: 43, scope: !2651)
!2682 = !DILocation(line: 349, column: 5, scope: !2651)
!2683 = !DILocation(line: 349, column: 41, scope: !2651)
!2684 = !DILocation(line: 350, column: 5, scope: !2651)
!2685 = !DILocation(line: 350, column: 39, scope: !2651)
!2686 = !DILocation(line: 351, column: 1, scope: !2651)
!2687 = distinct !DISubprogram(name: "uart_disable_flowcontrol", scope: !24, file: !24, line: 353, type: !2389, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2688)
!2688 = !{!2689, !2690, !2691}
!2689 = !DILocalVariable(name: "u_port", arg: 1, scope: !2687, file: !24, line: 353, type: !2335)
!2690 = !DILocalVariable(name: "base", scope: !2687, file: !24, line: 355, type: !7)
!2691 = !DILocalVariable(name: "LCR", scope: !2687, file: !24, line: 356, type: !2405)
!2692 = !DILocation(line: 0, scope: !2687)
!2693 = !DILocation(line: 355, column: 25, scope: !2687)
!2694 = !DILocation(line: 358, column: 11, scope: !2687)
!2695 = !DILocation(line: 360, column: 33, scope: !2687)
!2696 = !DILocation(line: 362, column: 5, scope: !2687)
!2697 = !DILocation(line: 362, column: 33, scope: !2687)
!2698 = !DILocation(line: 364, column: 33, scope: !2687)
!2699 = !DILocation(line: 366, column: 35, scope: !2687)
!2700 = !DILocation(line: 366, column: 33, scope: !2687)
!2701 = !DILocation(line: 367, column: 1, scope: !2687)
!2702 = distinct !DISubprogram(name: "uart_reset_default_value", scope: !24, file: !24, line: 436, type: !2389, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2703)
!2703 = !{!2704, !2705}
!2704 = !DILocalVariable(name: "u_port", arg: 1, scope: !2702, file: !24, line: 436, type: !2335)
!2705 = !DILocalVariable(name: "base", scope: !2702, file: !24, line: 438, type: !7)
!2706 = !DILocation(line: 0, scope: !2702)
!2707 = !DILocation(line: 438, column: 25, scope: !2702)
!2708 = !DILocation(line: 440, column: 5, scope: !2702)
!2709 = !DILocation(line: 440, column: 33, scope: !2702)
!2710 = !DILocation(line: 441, column: 5, scope: !2702)
!2711 = !DILocation(line: 441, column: 33, scope: !2702)
!2712 = !DILocation(line: 442, column: 5, scope: !2702)
!2713 = !DILocation(line: 442, column: 34, scope: !2702)
!2714 = !DILocation(line: 443, column: 5, scope: !2702)
!2715 = !DILocation(line: 443, column: 35, scope: !2702)
!2716 = !DILocation(line: 445, column: 33, scope: !2702)
!2717 = !DILocation(line: 446, column: 5, scope: !2702)
!2718 = !DILocation(line: 446, column: 33, scope: !2702)
!2719 = !DILocation(line: 447, column: 5, scope: !2702)
!2720 = !DILocation(line: 447, column: 33, scope: !2702)
!2721 = !DILocation(line: 449, column: 33, scope: !2702)
!2722 = !DILocation(line: 450, column: 33, scope: !2702)
!2723 = !DILocation(line: 451, column: 33, scope: !2702)
!2724 = !DILocation(line: 453, column: 33, scope: !2702)
!2725 = !DILocation(line: 454, column: 33, scope: !2702)
!2726 = !DILocation(line: 455, column: 33, scope: !2702)
!2727 = !DILocation(line: 457, column: 33, scope: !2702)
!2728 = !DILocation(line: 458, column: 5, scope: !2702)
!2729 = !DILocation(line: 458, column: 33, scope: !2702)
!2730 = !DILocation(line: 459, column: 5, scope: !2702)
!2731 = !DILocation(line: 459, column: 39, scope: !2702)
!2732 = !DILocation(line: 460, column: 5, scope: !2702)
!2733 = !DILocation(line: 460, column: 40, scope: !2702)
!2734 = !DILocation(line: 461, column: 5, scope: !2702)
!2735 = !DILocation(line: 461, column: 42, scope: !2702)
!2736 = !DILocation(line: 462, column: 5, scope: !2702)
!2737 = !DILocation(line: 462, column: 42, scope: !2702)
!2738 = !DILocation(line: 463, column: 5, scope: !2702)
!2739 = !DILocation(line: 463, column: 35, scope: !2702)
!2740 = !DILocation(line: 464, column: 5, scope: !2702)
!2741 = !DILocation(line: 464, column: 41, scope: !2702)
!2742 = !DILocation(line: 465, column: 5, scope: !2702)
!2743 = !DILocation(line: 465, column: 39, scope: !2702)
!2744 = !DILocation(line: 466, column: 5, scope: !2702)
!2745 = !DILocation(line: 466, column: 38, scope: !2702)
!2746 = !DILocation(line: 467, column: 5, scope: !2702)
!2747 = !DILocation(line: 467, column: 42, scope: !2702)
!2748 = !DILocation(line: 468, column: 5, scope: !2702)
!2749 = !DILocation(line: 468, column: 45, scope: !2702)
!2750 = !DILocation(line: 469, column: 5, scope: !2702)
!2751 = !DILocation(line: 469, column: 39, scope: !2702)
!2752 = !DILocation(line: 470, column: 5, scope: !2702)
!2753 = !DILocation(line: 470, column: 39, scope: !2702)
!2754 = !DILocation(line: 471, column: 5, scope: !2702)
!2755 = !DILocation(line: 471, column: 42, scope: !2702)
!2756 = !DILocation(line: 472, column: 1, scope: !2702)
!2757 = distinct !DISubprogram(name: "uart_query_empty", scope: !24, file: !24, line: 474, type: !2389, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !2758)
!2758 = !{!2759, !2760}
!2759 = !DILocalVariable(name: "u_port", arg: 1, scope: !2757, file: !24, line: 474, type: !2335)
!2760 = !DILocalVariable(name: "base", scope: !2757, file: !24, line: 476, type: !7)
!2761 = !DILocation(line: 0, scope: !2757)
!2762 = !DILocation(line: 476, column: 25, scope: !2757)
!2763 = !DILocation(line: 478, column: 5, scope: !2757)
!2764 = !DILocation(line: 478, column: 14, scope: !2757)
!2765 = !DILocation(line: 478, column: 42, scope: !2757)
!2766 = !DILocation(line: 478, column: 12, scope: !2757)
!2767 = distinct !{!2767, !2763, !2768}
!2768 = !DILocation(line: 478, column: 50, scope: !2757)
!2769 = !DILocation(line: 479, column: 1, scope: !2757)
!2770 = distinct !DISubprogram(name: "log_hal_fatal_internal", scope: !893, file: !893, line: 64, type: !2771, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !537, !66, !537, null}
!2773 = !{!2774, !2775, !2776, !2777, !2786}
!2774 = !DILocalVariable(name: "func", arg: 1, scope: !2770, file: !893, line: 64, type: !537)
!2775 = !DILocalVariable(name: "line", arg: 2, scope: !2770, file: !893, line: 64, type: !66)
!2776 = !DILocalVariable(name: "message", arg: 3, scope: !2770, file: !893, line: 64, type: !537)
!2777 = !DILocalVariable(name: "ap", scope: !2770, file: !893, line: 66, type: !2778)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2779, line: 46, baseType: !2780)
!2779 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/stdio.h", directory: "/home/mjshen/RTOSExploration")
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2781, line: 32, baseType: !2782)
!2781 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "")
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !893, baseType: !2783)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !2784)
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !2783, file: !893, line: 66, baseType: !116, size: 32)
!2786 = !DILocalVariable(name: "mask", scope: !2770, file: !893, line: 68, type: !12)
!2787 = !DILocation(line: 0, scope: !2770)
!2788 = !DILocation(line: 66, column: 5, scope: !2770)
!2789 = !DILocation(line: 66, column: 13, scope: !2770)
!2790 = !DILocation(line: 68, column: 5, scope: !2770)
!2791 = !DILocation(line: 69, column: 5, scope: !2770)
!2792 = !DILocation(line: 71, column: 5, scope: !2770)
!2793 = !DILocation(line: 72, column: 5, scope: !2770)
!2794 = !DILocation(line: 73, column: 5, scope: !2770)
!2795 = !DILocation(line: 75, column: 37, scope: !2770)
!2796 = !DILocation(line: 75, column: 5, scope: !2770)
!2797 = !DILocation(line: 77, column: 1, scope: !2770)
!2798 = distinct !DISubprogram(name: "log_hal_error_internal", scope: !893, file: !893, line: 78, type: !2771, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804}
!2800 = !DILocalVariable(name: "func", arg: 1, scope: !2798, file: !893, line: 78, type: !537)
!2801 = !DILocalVariable(name: "line", arg: 2, scope: !2798, file: !893, line: 78, type: !66)
!2802 = !DILocalVariable(name: "message", arg: 3, scope: !2798, file: !893, line: 78, type: !537)
!2803 = !DILocalVariable(name: "ap", scope: !2798, file: !893, line: 80, type: !2778)
!2804 = !DILocalVariable(name: "mask", scope: !2798, file: !893, line: 82, type: !12)
!2805 = !DILocation(line: 0, scope: !2798)
!2806 = !DILocation(line: 80, column: 5, scope: !2798)
!2807 = !DILocation(line: 80, column: 13, scope: !2798)
!2808 = !DILocation(line: 82, column: 5, scope: !2798)
!2809 = !DILocation(line: 83, column: 5, scope: !2798)
!2810 = !DILocation(line: 85, column: 5, scope: !2798)
!2811 = !DILocation(line: 86, column: 5, scope: !2798)
!2812 = !DILocation(line: 87, column: 5, scope: !2798)
!2813 = !DILocation(line: 89, column: 37, scope: !2798)
!2814 = !DILocation(line: 89, column: 5, scope: !2798)
!2815 = !DILocation(line: 91, column: 1, scope: !2798)
!2816 = distinct !DISubprogram(name: "log_hal_warning_internal", scope: !893, file: !893, line: 92, type: !2771, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !2817)
!2817 = !{!2818, !2819, !2820, !2821, !2822}
!2818 = !DILocalVariable(name: "func", arg: 1, scope: !2816, file: !893, line: 92, type: !537)
!2819 = !DILocalVariable(name: "line", arg: 2, scope: !2816, file: !893, line: 92, type: !66)
!2820 = !DILocalVariable(name: "message", arg: 3, scope: !2816, file: !893, line: 92, type: !537)
!2821 = !DILocalVariable(name: "ap", scope: !2816, file: !893, line: 94, type: !2778)
!2822 = !DILocalVariable(name: "mask", scope: !2816, file: !893, line: 96, type: !12)
!2823 = !DILocation(line: 0, scope: !2816)
!2824 = !DILocation(line: 94, column: 5, scope: !2816)
!2825 = !DILocation(line: 94, column: 13, scope: !2816)
!2826 = !DILocation(line: 96, column: 5, scope: !2816)
!2827 = !DILocation(line: 97, column: 5, scope: !2816)
!2828 = !DILocation(line: 99, column: 5, scope: !2816)
!2829 = !DILocation(line: 100, column: 5, scope: !2816)
!2830 = !DILocation(line: 101, column: 5, scope: !2816)
!2831 = !DILocation(line: 103, column: 37, scope: !2816)
!2832 = !DILocation(line: 103, column: 5, scope: !2816)
!2833 = !DILocation(line: 105, column: 1, scope: !2816)
!2834 = distinct !DISubprogram(name: "log_hal_info_internal", scope: !893, file: !893, line: 106, type: !2771, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !2835)
!2835 = !{!2836, !2837, !2838, !2839, !2840}
!2836 = !DILocalVariable(name: "func", arg: 1, scope: !2834, file: !893, line: 106, type: !537)
!2837 = !DILocalVariable(name: "line", arg: 2, scope: !2834, file: !893, line: 106, type: !66)
!2838 = !DILocalVariable(name: "message", arg: 3, scope: !2834, file: !893, line: 106, type: !537)
!2839 = !DILocalVariable(name: "ap", scope: !2834, file: !893, line: 108, type: !2778)
!2840 = !DILocalVariable(name: "mask", scope: !2834, file: !893, line: 110, type: !12)
!2841 = !DILocation(line: 0, scope: !2834)
!2842 = !DILocation(line: 108, column: 5, scope: !2834)
!2843 = !DILocation(line: 108, column: 13, scope: !2834)
!2844 = !DILocation(line: 110, column: 5, scope: !2834)
!2845 = !DILocation(line: 111, column: 5, scope: !2834)
!2846 = !DILocation(line: 113, column: 5, scope: !2834)
!2847 = !DILocation(line: 114, column: 5, scope: !2834)
!2848 = !DILocation(line: 115, column: 5, scope: !2834)
!2849 = !DILocation(line: 117, column: 37, scope: !2834)
!2850 = !DILocation(line: 117, column: 5, scope: !2834)
!2851 = !DILocation(line: 119, column: 1, scope: !2834)
!2852 = distinct !DISubprogram(name: "log_hal_dump_internal", scope: !893, file: !893, line: 121, type: !2853, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !892, retainedNodes: !2857)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{null, !537, !66, !537, !2855, !66, null}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2857 = !{!2858, !2859, !2860, !2861, !2862}
!2858 = !DILocalVariable(name: "func", arg: 1, scope: !2852, file: !893, line: 121, type: !537)
!2859 = !DILocalVariable(name: "line", arg: 2, scope: !2852, file: !893, line: 121, type: !66)
!2860 = !DILocalVariable(name: "message", arg: 3, scope: !2852, file: !893, line: 121, type: !537)
!2861 = !DILocalVariable(name: "data", arg: 4, scope: !2852, file: !893, line: 121, type: !2855)
!2862 = !DILocalVariable(name: "length", arg: 5, scope: !2852, file: !893, line: 121, type: !66)
!2863 = !DILocation(line: 0, scope: !2852)
!2864 = !DILocation(line: 123, column: 1, scope: !2852)
!2865 = distinct !DISubprogram(name: "hal_crypt_lock_take", scope: !62, file: !62, line: 51, type: !2866, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!234}
!2868 = !{!2869}
!2869 = !DILocalVariable(name: "irq_status", scope: !2865, file: !62, line: 53, type: !12)
!2870 = !DILocation(line: 54, column: 18, scope: !2865)
!2871 = !DILocation(line: 0, scope: !2865)
!2872 = !DILocation(line: 55, column: 9, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2865, file: !62, line: 55, column: 9)
!2874 = !{i8 0, i8 2}
!2875 = !DILocation(line: 55, column: 9, scope: !2865)
!2876 = !DILocation(line: 59, column: 18, scope: !2865)
!2877 = !DILocation(line: 61, column: 5, scope: !2865)
!2878 = !DILocation(line: 62, column: 1, scope: !2865)
!2879 = distinct !DISubprogram(name: "hal_crypt_lock_give", scope: !62, file: !62, line: 66, type: !386, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1882)
!2880 = !DILocation(line: 68, column: 18, scope: !2879)
!2881 = !DILocation(line: 69, column: 1, scope: !2879)
!2882 = distinct !DISubprogram(name: "hal_aes_encrypt_with_padding", scope: !62, file: !62, line: 144, type: !2883, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2892)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!2885, !2886, !2886, !2886, !428, !118}
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_status_t", file: !65, line: 293, baseType: !64)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_aes_buffer_t", file: !65, line: 307, baseType: !2888)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 304, size: 64, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2888, file: !65, line: 305, baseType: !428, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2888, file: !65, line: 306, baseType: !12, size: 32, offset: 32)
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2905, !2907, !2908}
!2893 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !2882, file: !62, line: 144, type: !2886)
!2894 = !DILocalVariable(name: "plain_text", arg: 2, scope: !2882, file: !62, line: 145, type: !2886)
!2895 = !DILocalVariable(name: "key", arg: 3, scope: !2882, file: !62, line: 146, type: !2886)
!2896 = !DILocalVariable(name: "init_vector", arg: 4, scope: !2882, file: !62, line: 147, type: !428)
!2897 = !DILocalVariable(name: "mode", arg: 5, scope: !2882, file: !62, line: 148, type: !118)
!2898 = !DILocalVariable(name: "last_block_size", scope: !2882, file: !62, line: 157, type: !12)
!2899 = !DILocalVariable(name: "block_num", scope: !2882, file: !62, line: 158, type: !12)
!2900 = !DILocalVariable(name: "padding_size", scope: !2882, file: !62, line: 159, type: !118)
!2901 = !DILocalVariable(name: "iv", scope: !2882, file: !62, line: 160, type: !428)
!2902 = !DILocalVariable(name: "first_encypt_size", scope: !2903, file: !62, line: 182, type: !12)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !62, line: 181, column: 24)
!2904 = distinct !DILexicalBlock(scope: !2882, file: !62, line: 181, column: 9)
!2905 = !DILocalVariable(name: "data_block", scope: !2903, file: !62, line: 193, type: !2906)
!2906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !203)
!2907 = !DILocalVariable(name: "init_vector2", scope: !2903, file: !62, line: 197, type: !428)
!2908 = !DILocalVariable(name: "data_block", scope: !2909, file: !62, line: 215, type: !2906)
!2909 = distinct !DILexicalBlock(scope: !2904, file: !62, line: 214, column: 12)
!2910 = !DILocation(line: 0, scope: !2882)
!2911 = !DILocation(line: 150, column: 15, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2882, file: !62, line: 150, column: 9)
!2913 = !DILocation(line: 151, column: 13, scope: !2912)
!2914 = !DILocation(line: 154, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2912, file: !62, line: 153, column: 39)
!2916 = !DILocation(line: 155, column: 9, scope: !2915)
!2917 = !DILocation(line: 157, column: 44, scope: !2882)
!2918 = !DILocation(line: 157, column: 51, scope: !2882)
!2919 = !DILocation(line: 182, column: 48, scope: !2903)
!2920 = !DILocation(line: 159, column: 28, scope: !2882)
!2921 = !DILocation(line: 162, column: 25, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2882, file: !62, line: 162, column: 9)
!2923 = !DILocation(line: 162, column: 54, scope: !2922)
!2924 = !DILocation(line: 162, column: 32, scope: !2922)
!2925 = !DILocation(line: 162, column: 9, scope: !2882)
!2926 = !DILocation(line: 163, column: 9, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2922, file: !62, line: 162, column: 71)
!2928 = !DILocation(line: 164, column: 9, scope: !2927)
!2929 = !DILocation(line: 167, column: 5, scope: !2882)
!2930 = !DILocation(line: 169, column: 5, scope: !2882)
!2931 = !DILocation(line: 170, column: 5, scope: !2882)
!2932 = !DILocation(line: 171, column: 5, scope: !2882)
!2933 = !DILocation(line: 173, column: 31, scope: !2882)
!2934 = !DILocation(line: 173, column: 17, scope: !2882)
!2935 = !DILocation(line: 173, column: 44, scope: !2882)
!2936 = !DILocation(line: 173, column: 5, scope: !2882)
!2937 = !DILocation(line: 175, column: 22, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2882, file: !62, line: 175, column: 9)
!2939 = !DILocation(line: 0, scope: !2938)
!2940 = !DILocation(line: 181, column: 19, scope: !2904)
!2941 = !DILocation(line: 181, column: 9, scope: !2882)
!2942 = !DILocation(line: 0, scope: !2903)
!2943 = !DILocation(line: 183, column: 65, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2903, file: !62, line: 183, column: 13)
!2945 = !DILocation(line: 184, column: 65, scope: !2944)
!2946 = !DILocation(line: 185, column: 61, scope: !2944)
!2947 = !DILocation(line: 183, column: 34, scope: !2944)
!2948 = !DILocation(line: 183, column: 31, scope: !2944)
!2949 = !DILocation(line: 183, column: 13, scope: !2903)
!2950 = !DILocation(line: 188, column: 13, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2944, file: !62, line: 187, column: 63)
!2952 = !DILocation(line: 189, column: 13, scope: !2951)
!2953 = !DILocation(line: 193, column: 9, scope: !2903)
!2954 = !DILocation(line: 193, column: 17, scope: !2903)
!2955 = !DILocation(line: 194, column: 40, scope: !2903)
!2956 = !DILocation(line: 194, column: 47, scope: !2903)
!2957 = !DILocation(line: 194, column: 9, scope: !2903)
!2958 = !DILocation(line: 195, column: 27, scope: !2903)
!2959 = !DILocation(line: 195, column: 9, scope: !2903)
!2960 = !DILocation(line: 198, column: 13, scope: !2903)
!2961 = !DILocation(line: 205, column: 72, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2903, file: !62, line: 205, column: 13)
!2963 = !DILocation(line: 206, column: 65, scope: !2962)
!2964 = !DILocation(line: 205, column: 34, scope: !2962)
!2965 = !DILocation(line: 205, column: 31, scope: !2962)
!2966 = !DILocation(line: 205, column: 13, scope: !2903)
!2967 = !DILocation(line: 214, column: 5, scope: !2904)
!2968 = !DILocation(line: 210, column: 13, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2962, file: !62, line: 209, column: 54)
!2970 = !DILocation(line: 211, column: 13, scope: !2969)
!2971 = !DILocation(line: 215, column: 9, scope: !2909)
!2972 = !DILocation(line: 215, column: 17, scope: !2909)
!2973 = !DILocation(line: 216, column: 40, scope: !2909)
!2974 = !DILocation(line: 216, column: 60, scope: !2909)
!2975 = !DILocation(line: 216, column: 9, scope: !2909)
!2976 = !DILocation(line: 217, column: 27, scope: !2909)
!2977 = !DILocation(line: 217, column: 9, scope: !2909)
!2978 = !DILocation(line: 218, column: 65, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2909, file: !62, line: 218, column: 13)
!2980 = !DILocation(line: 219, column: 65, scope: !2979)
!2981 = !DILocation(line: 218, column: 34, scope: !2979)
!2982 = !DILocation(line: 218, column: 31, scope: !2979)
!2983 = !DILocation(line: 218, column: 13, scope: !2909)
!2984 = !DILocation(line: 223, column: 13, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2979, file: !62, line: 222, column: 63)
!2986 = !DILocation(line: 224, column: 13, scope: !2985)
!2987 = !DILocation(line: 227, column: 5, scope: !2904)
!2988 = !DILocation(line: 229, column: 46, scope: !2882)
!2989 = !DILocation(line: 229, column: 28, scope: !2882)
!2990 = !DILocation(line: 231, column: 5, scope: !2882)
!2991 = !DILocation(line: 232, column: 5, scope: !2882)
!2992 = !DILocation(line: 233, column: 1, scope: !2882)
!2993 = distinct !DISubprogram(name: "aes_operation_done", scope: !62, file: !62, line: 76, type: !316, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !2994)
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "irq_number", arg: 1, scope: !2993, file: !62, line: 76, type: !233)
!2996 = !DILocation(line: 0, scope: !2993)
!2997 = !DILocation(line: 78, column: 5, scope: !2993)
!2998 = !DILocation(line: 79, column: 5, scope: !2993)
!2999 = !DILocation(line: 81, column: 19, scope: !2993)
!3000 = !DILocation(line: 83, column: 5, scope: !2993)
!3001 = !DILocation(line: 84, column: 1, scope: !2993)
!3002 = distinct !DISubprogram(name: "do_aes_encrypt", scope: !62, file: !62, line: 86, type: !3003, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!2885, !428, !12, !428, !12, !428}
!3005 = !{!3006, !3007, !3008, !3009, !3010, !3011, !3012}
!3006 = !DILocalVariable(name: "encrypt_buffer", arg: 1, scope: !3002, file: !62, line: 86, type: !428)
!3007 = !DILocalVariable(name: "encrypt_buffer_length", arg: 2, scope: !3002, file: !62, line: 87, type: !12)
!3008 = !DILocalVariable(name: "plain_buffer", arg: 3, scope: !3002, file: !62, line: 88, type: !428)
!3009 = !DILocalVariable(name: "plain_buffer_length", arg: 4, scope: !3002, file: !62, line: 89, type: !12)
!3010 = !DILocalVariable(name: "init_vector", arg: 5, scope: !3002, file: !62, line: 90, type: !428)
!3011 = !DILocalVariable(name: "ret_val", scope: !3002, file: !62, line: 93, type: !234)
!3012 = !DILocalVariable(name: "wait_count", scope: !3002, file: !62, line: 103, type: !12)
!3013 = !DILocation(line: 0, scope: !3002)
!3014 = !DILocation(line: 92, column: 19, scope: !3002)
!3015 = !DILocation(line: 94, column: 35, scope: !3002)
!3016 = !DILocation(line: 96, column: 35, scope: !3002)
!3017 = !DILocation(line: 93, column: 23, scope: !3002)
!3018 = !DILocation(line: 99, column: 17, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3002, file: !62, line: 99, column: 9)
!3020 = !DILocation(line: 99, column: 9, scope: !3002)
!3021 = !DILocation(line: 100, column: 9, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3019, file: !62, line: 99, column: 22)
!3023 = !DILocation(line: 101, column: 9, scope: !3022)
!3024 = !DILocation(line: 104, column: 13, scope: !3002)
!3025 = !DILocation(line: 104, column: 5, scope: !3002)
!3026 = !DILocation(line: 106, column: 19, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3002, file: !62, line: 104, column: 28)
!3028 = !DILocation(line: 107, column: 24, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3027, file: !62, line: 107, column: 13)
!3030 = !DILocation(line: 107, column: 13, scope: !3027)
!3031 = distinct !{!3031, !3025, !3032}
!3032 = !DILocation(line: 111, column: 5, scope: !3002)
!3033 = !DILocation(line: 108, column: 13, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !62, line: 107, column: 50)
!3035 = !DILocation(line: 109, column: 13, scope: !3034)
!3036 = !DILocation(line: 113, column: 1, scope: !3002)
!3037 = distinct !DISubprogram(name: "hal_aes_decrypt", scope: !62, file: !62, line: 235, type: !2883, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3038)
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044}
!3039 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3037, file: !62, line: 235, type: !2886)
!3040 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3037, file: !62, line: 236, type: !2886)
!3041 = !DILocalVariable(name: "key", arg: 3, scope: !3037, file: !62, line: 237, type: !2886)
!3042 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3037, file: !62, line: 238, type: !428)
!3043 = !DILocalVariable(name: "mode", arg: 5, scope: !3037, file: !62, line: 239, type: !118)
!3044 = !DILocalVariable(name: "padding_size", scope: !3037, file: !62, line: 285, type: !118)
!3045 = !DILocation(line: 0, scope: !3037)
!3046 = !DILocation(line: 241, column: 15, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3037, file: !62, line: 241, column: 9)
!3048 = !DILocation(line: 242, column: 13, scope: !3047)
!3049 = !DILocation(line: 245, column: 9, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3047, file: !62, line: 244, column: 39)
!3051 = !DILocation(line: 246, column: 9, scope: !3050)
!3052 = !DILocation(line: 249, column: 26, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3037, file: !62, line: 249, column: 9)
!3054 = !DILocation(line: 249, column: 33, scope: !3053)
!3055 = !DILocation(line: 249, column: 56, scope: !3053)
!3056 = !DILocation(line: 249, column: 9, scope: !3037)
!3057 = !DILocation(line: 250, column: 9, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3053, file: !62, line: 249, column: 62)
!3059 = !DILocation(line: 251, column: 9, scope: !3058)
!3060 = !DILocation(line: 253, column: 21, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3037, file: !62, line: 253, column: 9)
!3062 = !DILocation(line: 253, column: 54, scope: !3061)
!3063 = !DILocation(line: 253, column: 28, scope: !3061)
!3064 = !DILocation(line: 253, column: 9, scope: !3037)
!3065 = !DILocation(line: 254, column: 9, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !62, line: 253, column: 78)
!3067 = !DILocation(line: 256, column: 9, scope: !3066)
!3068 = !DILocation(line: 258, column: 15, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3037, file: !62, line: 258, column: 9)
!3070 = !DILocation(line: 259, column: 13, scope: !3069)
!3071 = !DILocation(line: 261, column: 9, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3069, file: !62, line: 260, column: 57)
!3073 = !DILocation(line: 262, column: 9, scope: !3072)
!3074 = !DILocation(line: 265, column: 5, scope: !3037)
!3075 = !DILocation(line: 267, column: 5, scope: !3037)
!3076 = !DILocation(line: 268, column: 5, scope: !3037)
!3077 = !DILocation(line: 269, column: 5, scope: !3037)
!3078 = !DILocation(line: 271, column: 22, scope: !3037)
!3079 = !DILocation(line: 271, column: 17, scope: !3037)
!3080 = !DILocation(line: 271, column: 35, scope: !3037)
!3081 = !DILocation(line: 271, column: 5, scope: !3037)
!3082 = !DILocation(line: 272, column: 22, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3037, file: !62, line: 272, column: 9)
!3084 = !DILocation(line: 0, scope: !3083)
!3085 = !DILocation(line: 279, column: 30, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3037, file: !62, line: 279, column: 9)
!3087 = !DILocation(line: 279, column: 27, scope: !3086)
!3088 = !DILocation(line: 279, column: 9, scope: !3037)
!3089 = !DILocation(line: 280, column: 9, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !62, line: 279, column: 87)
!3091 = !DILocation(line: 281, column: 9, scope: !3090)
!3092 = !DILocation(line: 282, column: 9, scope: !3090)
!3093 = !DILocation(line: 285, column: 40, scope: !3037)
!3094 = !DILocation(line: 285, column: 63, scope: !3037)
!3095 = !DILocation(line: 285, column: 70, scope: !3037)
!3096 = !DILocation(line: 285, column: 28, scope: !3037)
!3097 = !DILocation(line: 286, column: 5, scope: !3037)
!3098 = !DILocation(line: 287, column: 42, scope: !3037)
!3099 = !DILocation(line: 287, column: 51, scope: !3037)
!3100 = !DILocation(line: 287, column: 49, scope: !3037)
!3101 = !DILocation(line: 287, column: 24, scope: !3037)
!3102 = !DILocation(line: 289, column: 5, scope: !3037)
!3103 = !DILocation(line: 291, column: 1, scope: !3037)
!3104 = distinct !DISubprogram(name: "do_aes_decrypt", scope: !62, file: !62, line: 115, type: !3105, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!2885, !2886, !2886, !428}
!3107 = !{!3108, !3109, !3110, !3111, !3112}
!3108 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3104, file: !62, line: 115, type: !2886)
!3109 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3104, file: !62, line: 116, type: !2886)
!3110 = !DILocalVariable(name: "init_vector", arg: 3, scope: !3104, file: !62, line: 117, type: !428)
!3111 = !DILocalVariable(name: "ret_val", scope: !3104, file: !62, line: 121, type: !234)
!3112 = !DILocalVariable(name: "wait_count", scope: !3104, file: !62, line: 131, type: !12)
!3113 = !DILocation(line: 0, scope: !3104)
!3114 = !DILocation(line: 119, column: 19, scope: !3104)
!3115 = !DILocation(line: 121, column: 51, scope: !3104)
!3116 = !DILocation(line: 122, column: 51, scope: !3104)
!3117 = !DILocation(line: 122, column: 35, scope: !3104)
!3118 = !DILocation(line: 123, column: 47, scope: !3104)
!3119 = !DILocation(line: 124, column: 47, scope: !3104)
!3120 = !DILocation(line: 124, column: 35, scope: !3104)
!3121 = !DILocation(line: 121, column: 23, scope: !3104)
!3122 = !DILocation(line: 127, column: 17, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3104, file: !62, line: 127, column: 9)
!3124 = !DILocation(line: 127, column: 9, scope: !3104)
!3125 = !DILocation(line: 128, column: 9, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !62, line: 127, column: 22)
!3127 = !DILocation(line: 129, column: 9, scope: !3126)
!3128 = !DILocation(line: 132, column: 13, scope: !3104)
!3129 = !DILocation(line: 132, column: 5, scope: !3104)
!3130 = !DILocation(line: 134, column: 19, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3104, file: !62, line: 132, column: 28)
!3132 = !DILocation(line: 135, column: 24, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3131, file: !62, line: 135, column: 13)
!3134 = !DILocation(line: 135, column: 13, scope: !3131)
!3135 = distinct !{!3135, !3129, !3136}
!3136 = !DILocation(line: 139, column: 5, scope: !3104)
!3137 = !DILocation(line: 136, column: 13, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3133, file: !62, line: 135, column: 50)
!3139 = !DILocation(line: 137, column: 13, scope: !3138)
!3140 = !DILocation(line: 141, column: 1, scope: !3104)
!3141 = distinct !DISubprogram(name: "hal_aes_cbc_encrypt", scope: !62, file: !62, line: 293, type: !3142, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!2885, !2886, !2886, !2886, !428}
!3144 = !{!3145, !3146, !3147, !3148}
!3145 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3141, file: !62, line: 293, type: !2886)
!3146 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3141, file: !62, line: 294, type: !2886)
!3147 = !DILocalVariable(name: "key", arg: 3, scope: !3141, file: !62, line: 295, type: !2886)
!3148 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3141, file: !62, line: 296, type: !428)
!3149 = !DILocation(line: 0, scope: !3141)
!3150 = !DILocation(line: 298, column: 12, scope: !3141)
!3151 = !DILocation(line: 298, column: 5, scope: !3141)
!3152 = distinct !DISubprogram(name: "hal_aes_cbc_decrypt", scope: !62, file: !62, line: 301, type: !3142, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3153)
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3152, file: !62, line: 301, type: !2886)
!3155 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3152, file: !62, line: 302, type: !2886)
!3156 = !DILocalVariable(name: "key", arg: 3, scope: !3152, file: !62, line: 303, type: !2886)
!3157 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3152, file: !62, line: 304, type: !428)
!3158 = !DILocation(line: 0, scope: !3152)
!3159 = !DILocation(line: 306, column: 12, scope: !3152)
!3160 = !DILocation(line: 306, column: 5, scope: !3152)
!3161 = distinct !DISubprogram(name: "hal_aes_ecb_encrypt", scope: !62, file: !62, line: 309, type: !3162, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!2885, !2886, !2886, !2886}
!3164 = !{!3165, !3166, !3167, !3168}
!3165 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3161, file: !62, line: 309, type: !2886)
!3166 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3161, file: !62, line: 310, type: !2886)
!3167 = !DILocalVariable(name: "key", arg: 3, scope: !3161, file: !62, line: 311, type: !2886)
!3168 = !DILocalVariable(name: "init_vector", scope: !3161, file: !62, line: 313, type: !2906)
!3169 = !DILocation(line: 0, scope: !3161)
!3170 = !DILocation(line: 313, column: 5, scope: !3161)
!3171 = !DILocation(line: 313, column: 13, scope: !3161)
!3172 = !DILocation(line: 315, column: 12, scope: !3161)
!3173 = !DILocation(line: 316, column: 1, scope: !3161)
!3174 = !DILocation(line: 315, column: 5, scope: !3161)
!3175 = distinct !DISubprogram(name: "hal_aes_ecb_decrypt", scope: !62, file: !62, line: 318, type: !3162, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !3176)
!3176 = !{!3177, !3178, !3179, !3180}
!3177 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3175, file: !62, line: 318, type: !2886)
!3178 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3175, file: !62, line: 319, type: !2886)
!3179 = !DILocalVariable(name: "key", arg: 3, scope: !3175, file: !62, line: 320, type: !2886)
!3180 = !DILocalVariable(name: "init_vector", scope: !3175, file: !62, line: 322, type: !2906)
!3181 = !DILocation(line: 0, scope: !3175)
!3182 = !DILocation(line: 322, column: 5, scope: !3175)
!3183 = !DILocation(line: 322, column: 13, scope: !3175)
!3184 = !DILocation(line: 324, column: 12, scope: !3175)
!3185 = !DILocation(line: 325, column: 1, scope: !3175)
!3186 = !DILocation(line: 324, column: 5, scope: !3175)
!3187 = distinct !DISubprogram(name: "hal_cache_init", scope: !128, file: !128, line: 53, type: !3188, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3191)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_status_t", file: !131, line: 172, baseType: !130)
!3191 = !{!3192, !3194}
!3192 = !DILocalVariable(name: "region", scope: !3187, file: !128, line: 55, type: !3193)
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_t", file: !131, line: 204, baseType: !141)
!3194 = !DILocalVariable(name: "irq_flag", scope: !3187, file: !128, line: 56, type: !12)
!3195 = !DILocation(line: 59, column: 16, scope: !3187)
!3196 = !DILocation(line: 0, scope: !3187)
!3197 = !DILocation(line: 62, column: 9, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3187, file: !128, line: 62, column: 9)
!3199 = !DILocation(line: 62, column: 9, scope: !3187)
!3200 = !DILocation(line: 64, column: 9, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3198, file: !128, line: 62, column: 39)
!3202 = !DILocation(line: 66, column: 9, scope: !3201)
!3203 = !DILocation(line: 69, column: 24, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3198, file: !128, line: 67, column: 12)
!3205 = !DILocation(line: 72, column: 9, scope: !3204)
!3206 = !DILocation(line: 77, column: 5, scope: !3187)
!3207 = !DILocation(line: 80, column: 22, scope: !3187)
!3208 = !DILocation(line: 81, column: 28, scope: !3187)
!3209 = !DILocation(line: 84, column: 19, scope: !3187)
!3210 = !DILocation(line: 85, column: 23, scope: !3187)
!3211 = !DILocation(line: 88, column: 5, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3187, file: !128, line: 88, column: 5)
!3213 = !DILocation(line: 90, column: 9, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !128, line: 88, column: 81)
!3215 = distinct !DILexicalBlock(scope: !3212, file: !128, line: 88, column: 5)
!3216 = !DILocation(line: 90, column: 38, scope: !3214)
!3217 = !DILocation(line: 91, column: 9, scope: !3214)
!3218 = !DILocation(line: 91, column: 42, scope: !3214)
!3219 = !DILocation(line: 94, column: 45, scope: !3214)
!3220 = !DILocation(line: 94, column: 47, scope: !3214)
!3221 = !DILocation(line: 95, column: 49, scope: !3214)
!3222 = !DILocation(line: 95, column: 51, scope: !3214)
!3223 = !DILocation(line: 88, column: 77, scope: !3215)
!3224 = !DILocation(line: 88, column: 46, scope: !3215)
!3225 = distinct !{!3225, !3211, !3226}
!3226 = !DILocation(line: 96, column: 5, scope: !3212)
!3227 = !DILocation(line: 99, column: 1, scope: !3187)
!3228 = distinct !DISubprogram(name: "hal_cache_invalidate_all_cache_lines", scope: !128, file: !128, line: 327, type: !3188, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3229)
!3229 = !{!3230}
!3230 = !DILocalVariable(name: "irq_flag", scope: !3228, file: !128, line: 329, type: !12)
!3231 = !DILocation(line: 332, column: 16, scope: !3228)
!3232 = !DILocation(line: 0, scope: !3228)
!3233 = !DILocation(line: 335, column: 21, scope: !3228)
!3234 = !DILocation(line: 336, column: 21, scope: !3228)
!3235 = !DILocation(line: 339, column: 21, scope: !3228)
!3236 = !DILocation(line: 340, column: 21, scope: !3228)
!3237 = !DILocation(line: 434, column: 3, scope: !3238, inlinedAt: !3240)
!3238 = distinct !DISubprogram(name: "__ISB", scope: !3239, file: !3239, line: 432, type: !386, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1882)
!3239 = !DIFile(filename: "../../../../../driver/CMSIS/Include/core_cmInstr.h", directory: "/home/mjshen/RTOSExploration/Embedded-GUI-for-MT2523/project/mt7687_hdk/hal_examples/des_encrypt_decrypt_data/GCC")
!3240 = distinct !DILocation(line: 343, column: 5, scope: !3228)
!3241 = !{i64 296587}
!3242 = !DILocation(line: 346, column: 5, scope: !3228)
!3243 = !DILocation(line: 348, column: 5, scope: !3228)
!3244 = distinct !DISubprogram(name: "hal_cache_deinit", scope: !128, file: !128, line: 101, type: !3188, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3245)
!3245 = !{!3246}
!3246 = !DILocalVariable(name: "region", scope: !3244, file: !128, line: 103, type: !3193)
!3247 = !DILocation(line: 107, column: 5, scope: !3244)
!3248 = !DILocation(line: 110, column: 22, scope: !3244)
!3249 = !DILocation(line: 111, column: 28, scope: !3244)
!3250 = !DILocation(line: 114, column: 19, scope: !3244)
!3251 = !DILocation(line: 115, column: 23, scope: !3244)
!3252 = !DILocation(line: 0, scope: !3244)
!3253 = !DILocation(line: 118, column: 5, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3244, file: !128, line: 118, column: 5)
!3255 = !DILocation(line: 120, column: 9, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !128, line: 118, column: 81)
!3257 = distinct !DILexicalBlock(scope: !3254, file: !128, line: 118, column: 5)
!3258 = !DILocation(line: 120, column: 38, scope: !3256)
!3259 = !DILocation(line: 121, column: 9, scope: !3256)
!3260 = !DILocation(line: 121, column: 42, scope: !3256)
!3261 = !DILocation(line: 124, column: 45, scope: !3256)
!3262 = !DILocation(line: 124, column: 47, scope: !3256)
!3263 = !DILocation(line: 125, column: 49, scope: !3256)
!3264 = !DILocation(line: 125, column: 51, scope: !3256)
!3265 = !DILocation(line: 118, column: 77, scope: !3257)
!3266 = !DILocation(line: 118, column: 46, scope: !3257)
!3267 = distinct !{!3267, !3253, !3268}
!3268 = !DILocation(line: 126, column: 5, scope: !3254)
!3269 = !DILocation(line: 129, column: 20, scope: !3244)
!3270 = !DILocation(line: 131, column: 5, scope: !3244)
!3271 = distinct !DISubprogram(name: "hal_cache_enable", scope: !128, file: !128, line: 134, type: !3188, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !1882)
!3272 = !DILocation(line: 137, column: 45, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3271, file: !128, line: 137, column: 9)
!3274 = !DILocation(line: 137, column: 28, scope: !3273)
!3275 = !DILocation(line: 137, column: 9, scope: !3271)
!3276 = !DILocation(line: 142, column: 22, scope: !3271)
!3277 = !DILocation(line: 145, column: 28, scope: !3271)
!3278 = !DILocation(line: 145, column: 19, scope: !3271)
!3279 = !DILocation(line: 147, column: 5, scope: !3271)
!3280 = !DILocation(line: 0, scope: !3271)
!3281 = !DILocation(line: 148, column: 1, scope: !3271)
!3282 = distinct !DISubprogram(name: "hal_cache_disable", scope: !128, file: !128, line: 150, type: !3188, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3283)
!3283 = !{!3284}
!3284 = !DILocalVariable(name: "irq_flag", scope: !3282, file: !128, line: 152, type: !12)
!3285 = !DILocation(line: 155, column: 16, scope: !3282)
!3286 = !DILocation(line: 0, scope: !3282)
!3287 = !DILocation(line: 158, column: 16, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3282, file: !128, line: 158, column: 9)
!3289 = !DILocation(line: 158, column: 26, scope: !3288)
!3290 = !DILocation(line: 158, column: 9, scope: !3282)
!3291 = !DILocation(line: 160, column: 9, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3288, file: !128, line: 158, column: 49)
!3293 = !DILocation(line: 161, column: 5, scope: !3292)
!3294 = !DILocation(line: 164, column: 22, scope: !3282)
!3295 = !DILocation(line: 167, column: 28, scope: !3282)
!3296 = !DILocation(line: 167, column: 19, scope: !3282)
!3297 = !DILocation(line: 170, column: 5, scope: !3282)
!3298 = !DILocation(line: 172, column: 5, scope: !3282)
!3299 = distinct !DISubprogram(name: "hal_cache_region_enable", scope: !128, file: !128, line: 175, type: !3300, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!3190, !3193}
!3302 = !{!3303}
!3303 = !DILocalVariable(name: "region", arg: 1, scope: !3299, file: !128, line: 175, type: !3193)
!3304 = !DILocation(line: 0, scope: !3299)
!3305 = !DILocation(line: 178, column: 16, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3299, file: !128, line: 178, column: 9)
!3307 = !DILocation(line: 178, column: 9, scope: !3299)
!3308 = !DILocation(line: 183, column: 9, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3299, file: !128, line: 183, column: 9)
!3310 = !DILocation(line: 183, column: 38, scope: !3309)
!3311 = !DILocation(line: 183, column: 9, scope: !3299)
!3312 = !DILocation(line: 184, column: 38, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !128, line: 183, column: 62)
!3314 = !DILocation(line: 184, column: 32, scope: !3313)
!3315 = !DILocation(line: 190, column: 32, scope: !3299)
!3316 = !DILocation(line: 190, column: 23, scope: !3299)
!3317 = !DILocation(line: 192, column: 5, scope: !3299)
!3318 = !DILocation(line: 193, column: 1, scope: !3299)
!3319 = distinct !DISubprogram(name: "hal_cache_region_disable", scope: !128, file: !128, line: 195, type: !3300, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3320)
!3320 = !{!3321}
!3321 = !DILocalVariable(name: "region", arg: 1, scope: !3319, file: !128, line: 195, type: !3193)
!3322 = !DILocation(line: 0, scope: !3319)
!3323 = !DILocation(line: 198, column: 16, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3319, file: !128, line: 198, column: 9)
!3325 = !DILocation(line: 198, column: 9, scope: !3319)
!3326 = !DILocation(line: 203, column: 35, scope: !3319)
!3327 = !DILocation(line: 203, column: 31, scope: !3319)
!3328 = !DILocation(line: 203, column: 28, scope: !3319)
!3329 = !DILocation(line: 206, column: 32, scope: !3319)
!3330 = !DILocation(line: 206, column: 23, scope: !3319)
!3331 = !DILocation(line: 209, column: 41, scope: !3319)
!3332 = !DILocation(line: 209, column: 43, scope: !3319)
!3333 = !DILocation(line: 210, column: 45, scope: !3319)
!3334 = !DILocation(line: 210, column: 47, scope: !3319)
!3335 = !DILocation(line: 212, column: 5, scope: !3319)
!3336 = !DILocation(line: 213, column: 1, scope: !3319)
!3337 = distinct !DISubprogram(name: "hal_cache_set_size", scope: !128, file: !128, line: 215, type: !3338, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3341)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!3190, !3340}
!3340 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_size_t", file: !131, line: 182, baseType: !160)
!3341 = !{!3342}
!3342 = !DILocalVariable(name: "cache_size", arg: 1, scope: !3337, file: !128, line: 215, type: !3340)
!3343 = !DILocation(line: 0, scope: !3337)
!3344 = !DILocation(line: 218, column: 20, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3337, file: !128, line: 218, column: 9)
!3346 = !DILocation(line: 218, column: 9, scope: !3337)
!3347 = !DILocation(line: 223, column: 22, scope: !3337)
!3348 = !DILocation(line: 224, column: 37, scope: !3337)
!3349 = !DILocation(line: 224, column: 22, scope: !3337)
!3350 = !DILocation(line: 227, column: 20, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3337, file: !128, line: 227, column: 9)
!3352 = !DILocation(line: 227, column: 9, scope: !3337)
!3353 = !DILocation(line: 228, column: 26, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !128, line: 227, column: 43)
!3355 = !DILocation(line: 229, column: 5, scope: !3354)
!3356 = !DILocation(line: 232, column: 28, scope: !3337)
!3357 = !DILocation(line: 232, column: 19, scope: !3337)
!3358 = !DILocation(line: 234, column: 5, scope: !3337)
!3359 = !DILocation(line: 235, column: 1, scope: !3337)
!3360 = distinct !DISubprogram(name: "hal_cache_region_config", scope: !128, file: !128, line: 237, type: !3361, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3370)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!3190, !3193, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3365)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_cache_region_config_t", file: !131, line: 222, baseType: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 219, size: 64, elements: !3367)
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_address", scope: !3366, file: !131, line: 220, baseType: !12, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "cache_region_size", scope: !3366, file: !131, line: 221, baseType: !12, size: 32, offset: 32)
!3370 = !{!3371, !3372}
!3371 = !DILocalVariable(name: "region", arg: 1, scope: !3360, file: !128, line: 237, type: !3193)
!3372 = !DILocalVariable(name: "region_config", arg: 2, scope: !3360, file: !128, line: 237, type: !3363)
!3373 = !DILocation(line: 0, scope: !3360)
!3374 = !DILocation(line: 240, column: 16, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3360, file: !128, line: 240, column: 9)
!3376 = !DILocation(line: 240, column: 9, scope: !3360)
!3377 = !DILocation(line: 245, column: 23, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3360, file: !128, line: 245, column: 9)
!3379 = !DILocation(line: 245, column: 9, scope: !3360)
!3380 = !DILocation(line: 250, column: 24, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3360, file: !128, line: 250, column: 9)
!3382 = !DILocation(line: 250, column: 45, scope: !3381)
!3383 = !DILocation(line: 250, column: 9, scope: !3360)
!3384 = !DILocation(line: 251, column: 9, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3381, file: !128, line: 250, column: 81)
!3386 = !DILocation(line: 256, column: 24, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3360, file: !128, line: 256, column: 9)
!3388 = !DILocation(line: 256, column: 42, scope: !3387)
!3389 = !DILocation(line: 256, column: 9, scope: !3360)
!3390 = !DILocation(line: 257, column: 9, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3387, file: !128, line: 256, column: 78)
!3392 = !DILocation(line: 262, column: 5, scope: !3360)
!3393 = !DILocation(line: 262, column: 34, scope: !3360)
!3394 = !DILocation(line: 263, column: 55, scope: !3360)
!3395 = !DILocation(line: 263, column: 93, scope: !3360)
!3396 = !DILocation(line: 263, column: 76, scope: !3360)
!3397 = !DILocation(line: 263, column: 5, scope: !3360)
!3398 = !DILocation(line: 263, column: 38, scope: !3360)
!3399 = !DILocation(line: 266, column: 34, scope: !3360)
!3400 = !DILocation(line: 269, column: 45, scope: !3360)
!3401 = !DILocation(line: 269, column: 41, scope: !3360)
!3402 = !DILocation(line: 269, column: 43, scope: !3360)
!3403 = !DILocation(line: 270, column: 49, scope: !3360)
!3404 = !DILocation(line: 270, column: 45, scope: !3360)
!3405 = !DILocation(line: 270, column: 47, scope: !3360)
!3406 = !DILocation(line: 272, column: 5, scope: !3360)
!3407 = !DILocation(line: 273, column: 1, scope: !3360)
!3408 = distinct !DISubprogram(name: "hal_cache_invalidate_one_cache_line", scope: !128, file: !128, line: 275, type: !3409, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!3190, !12}
!3411 = !{!3412, !3413}
!3412 = !DILocalVariable(name: "address", arg: 1, scope: !3408, file: !128, line: 275, type: !12)
!3413 = !DILocalVariable(name: "irq_flag", scope: !3408, file: !128, line: 277, type: !12)
!3414 = !DILocation(line: 0, scope: !3408)
!3415 = !DILocation(line: 280, column: 17, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3408, file: !128, line: 280, column: 9)
!3417 = !DILocation(line: 280, column: 9, scope: !3408)
!3418 = !DILocation(line: 284, column: 16, scope: !3408)
!3419 = !DILocation(line: 287, column: 32, scope: !3408)
!3420 = !DILocation(line: 287, column: 21, scope: !3408)
!3421 = !DILocation(line: 288, column: 21, scope: !3408)
!3422 = !DILocation(line: 434, column: 3, scope: !3238, inlinedAt: !3423)
!3423 = distinct !DILocation(line: 291, column: 5, scope: !3408)
!3424 = !DILocation(line: 294, column: 5, scope: !3408)
!3425 = !DILocation(line: 296, column: 5, scope: !3408)
!3426 = !DILocation(line: 297, column: 1, scope: !3408)
!3427 = distinct !DISubprogram(name: "hal_cache_invalidate_multiple_cache_lines", scope: !128, file: !128, line: 299, type: !3428, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!3190, !12, !12}
!3430 = !{!3431, !3432, !3433, !3434}
!3431 = !DILocalVariable(name: "address", arg: 1, scope: !3427, file: !128, line: 299, type: !12)
!3432 = !DILocalVariable(name: "length", arg: 2, scope: !3427, file: !128, line: 299, type: !12)
!3433 = !DILocalVariable(name: "irq_flag", scope: !3427, file: !128, line: 301, type: !12)
!3434 = !DILocalVariable(name: "end_address", scope: !3427, file: !128, line: 302, type: !12)
!3435 = !DILocation(line: 0, scope: !3427)
!3436 = !DILocation(line: 302, column: 36, scope: !3427)
!3437 = !DILocation(line: 305, column: 47, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3427, file: !128, line: 305, column: 9)
!3439 = !DILocation(line: 310, column: 16, scope: !3427)
!3440 = !DILocation(line: 313, column: 20, scope: !3427)
!3441 = !DILocation(line: 313, column: 5, scope: !3427)
!3442 = !DILocation(line: 314, column: 9, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3427, file: !128, line: 313, column: 35)
!3444 = !DILocation(line: 315, column: 17, scope: !3443)
!3445 = distinct !{!3445, !3441, !3446}
!3446 = !DILocation(line: 316, column: 5, scope: !3427)
!3447 = !DILocation(line: 434, column: 3, scope: !3238, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 319, column: 5, scope: !3427)
!3449 = !DILocation(line: 322, column: 5, scope: !3427)
!3450 = !DILocation(line: 324, column: 5, scope: !3427)
!3451 = !DILocation(line: 325, column: 1, scope: !3427)
!3452 = distinct !DISubprogram(name: "hal_cache_flush_one_cache_line", scope: !128, file: !128, line: 351, type: !3409, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3453)
!3453 = !{!3454, !3455}
!3454 = !DILocalVariable(name: "address", arg: 1, scope: !3452, file: !128, line: 351, type: !12)
!3455 = !DILocalVariable(name: "irq_flag", scope: !3452, file: !128, line: 353, type: !12)
!3456 = !DILocation(line: 0, scope: !3452)
!3457 = !DILocation(line: 356, column: 17, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3452, file: !128, line: 356, column: 9)
!3459 = !DILocation(line: 356, column: 9, scope: !3452)
!3460 = !DILocation(line: 361, column: 16, scope: !3452)
!3461 = !DILocation(line: 364, column: 32, scope: !3452)
!3462 = !DILocation(line: 364, column: 21, scope: !3452)
!3463 = !DILocation(line: 365, column: 21, scope: !3452)
!3464 = !DILocation(line: 434, column: 3, scope: !3238, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 368, column: 5, scope: !3452)
!3466 = !DILocation(line: 371, column: 5, scope: !3452)
!3467 = !DILocation(line: 373, column: 5, scope: !3452)
!3468 = !DILocation(line: 374, column: 1, scope: !3452)
!3469 = distinct !DISubprogram(name: "hal_cache_flush_multiple_cache_lines", scope: !128, file: !128, line: 376, type: !3428, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3470)
!3470 = !{!3471, !3472, !3473, !3474}
!3471 = !DILocalVariable(name: "address", arg: 1, scope: !3469, file: !128, line: 376, type: !12)
!3472 = !DILocalVariable(name: "length", arg: 2, scope: !3469, file: !128, line: 376, type: !12)
!3473 = !DILocalVariable(name: "irq_flag", scope: !3469, file: !128, line: 378, type: !12)
!3474 = !DILocalVariable(name: "end_address", scope: !3469, file: !128, line: 379, type: !12)
!3475 = !DILocation(line: 0, scope: !3469)
!3476 = !DILocation(line: 379, column: 36, scope: !3469)
!3477 = !DILocation(line: 382, column: 47, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3469, file: !128, line: 382, column: 9)
!3479 = !DILocation(line: 387, column: 16, scope: !3469)
!3480 = !DILocation(line: 390, column: 20, scope: !3469)
!3481 = !DILocation(line: 390, column: 5, scope: !3469)
!3482 = !DILocation(line: 391, column: 9, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3469, file: !128, line: 390, column: 35)
!3484 = !DILocation(line: 392, column: 17, scope: !3483)
!3485 = distinct !{!3485, !3481, !3486}
!3486 = !DILocation(line: 393, column: 5, scope: !3469)
!3487 = !DILocation(line: 434, column: 3, scope: !3238, inlinedAt: !3488)
!3488 = distinct !DILocation(line: 396, column: 5, scope: !3469)
!3489 = !DILocation(line: 399, column: 5, scope: !3469)
!3490 = !DILocation(line: 401, column: 5, scope: !3469)
!3491 = !DILocation(line: 402, column: 1, scope: !3469)
!3492 = distinct !DISubprogram(name: "hal_cache_flush_all_cache_lines", scope: !128, file: !128, line: 404, type: !3188, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3493)
!3493 = !{!3494}
!3494 = !DILocalVariable(name: "irq_flag", scope: !3492, file: !128, line: 406, type: !12)
!3495 = !DILocation(line: 409, column: 16, scope: !3492)
!3496 = !DILocation(line: 0, scope: !3492)
!3497 = !DILocation(line: 412, column: 21, scope: !3492)
!3498 = !DILocation(line: 413, column: 21, scope: !3492)
!3499 = !DILocation(line: 434, column: 3, scope: !3238, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 416, column: 5, scope: !3492)
!3501 = !DILocation(line: 419, column: 5, scope: !3492)
!3502 = !DILocation(line: 421, column: 5, scope: !3492)
!3503 = distinct !DISubprogram(name: "hal_cache_is_cacheable", scope: !128, file: !128, line: 424, type: !3504, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !127, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!124, !12}
!3506 = !{!3507, !3508}
!3507 = !DILocalVariable(name: "address", arg: 1, scope: !3503, file: !128, line: 424, type: !12)
!3508 = !DILocalVariable(name: "region", scope: !3503, file: !128, line: 426, type: !3193)
!3509 = !DILocation(line: 0, scope: !3503)
!3510 = !DILocation(line: 429, column: 18, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3503, file: !128, line: 429, column: 9)
!3512 = !DILocation(line: 429, column: 28, scope: !3511)
!3513 = !DILocation(line: 429, column: 9, scope: !3503)
!3514 = !DILocation(line: 435, column: 20, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !128, line: 435, column: 13)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !128, line: 433, column: 81)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !128, line: 433, column: 5)
!3518 = distinct !DILexicalBlock(scope: !3503, file: !128, line: 433, column: 5)
!3519 = !DILocation(line: 435, column: 41, scope: !3515)
!3520 = !DILocation(line: 435, column: 36, scope: !3515)
!3521 = !DILocation(line: 435, column: 13, scope: !3516)
!3522 = !DILocation(line: 436, column: 30, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !128, line: 436, column: 17)
!3524 = distinct !DILexicalBlock(scope: !3515, file: !128, line: 435, column: 53)
!3525 = !DILocation(line: 436, column: 59, scope: !3523)
!3526 = !DILocation(line: 436, column: 26, scope: !3523)
!3527 = !DILocation(line: 436, column: 85, scope: !3523)
!3528 = !DILocation(line: 436, column: 99, scope: !3523)
!3529 = !DILocation(line: 436, column: 97, scope: !3523)
!3530 = !DILocation(line: 436, column: 17, scope: !3524)
!3531 = !DILocation(line: 433, column: 77, scope: !3517)
!3532 = !DILocation(line: 433, column: 46, scope: !3517)
!3533 = !DILocation(line: 433, column: 5, scope: !3518)
!3534 = distinct !{!3534, !3533, !3535}
!3535 = !DILocation(line: 440, column: 5, scope: !3518)
!3536 = !DILocation(line: 442, column: 1, scope: !3503)
!3537 = distinct !DISubprogram(name: "hal_des_encrypt_with_padding", scope: !210, file: !210, line: 121, type: !3538, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3547)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!3540, !3541, !3541, !3541, !428, !118}
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_des_status_t", file: !213, line: 289, baseType: !212)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 32)
!3542 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_des_buffer_t", file: !213, line: 303, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 300, size: 64, elements: !3544)
!3544 = !{!3545, !3546}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3543, file: !213, line: 301, baseType: !428, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3543, file: !213, line: 302, baseType: !12, size: 32, offset: 32)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3560, !3561, !3562}
!3548 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3537, file: !210, line: 121, type: !3541)
!3549 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3537, file: !210, line: 122, type: !3541)
!3550 = !DILocalVariable(name: "key", arg: 3, scope: !3537, file: !210, line: 123, type: !3541)
!3551 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3537, file: !210, line: 124, type: !428)
!3552 = !DILocalVariable(name: "mode", arg: 5, scope: !3537, file: !210, line: 125, type: !118)
!3553 = !DILocalVariable(name: "last_block_size", scope: !3537, file: !210, line: 136, type: !12)
!3554 = !DILocalVariable(name: "padding_size", scope: !3537, file: !210, line: 137, type: !12)
!3555 = !DILocalVariable(name: "block_num", scope: !3537, file: !210, line: 138, type: !12)
!3556 = !DILocalVariable(name: "iv", scope: !3537, file: !210, line: 139, type: !428)
!3557 = !DILocalVariable(name: "first_encypt_size", scope: !3558, file: !210, line: 160, type: !12)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !210, line: 159, column: 24)
!3559 = distinct !DILexicalBlock(scope: !3537, file: !210, line: 159, column: 9)
!3560 = !DILocalVariable(name: "data_block", scope: !3558, file: !210, line: 171, type: !2906)
!3561 = !DILocalVariable(name: "init_vector2", scope: !3558, file: !210, line: 175, type: !428)
!3562 = !DILocalVariable(name: "data_block", scope: !3563, file: !210, line: 193, type: !2906)
!3563 = distinct !DILexicalBlock(scope: !3559, file: !210, line: 192, column: 12)
!3564 = !DILocation(line: 0, scope: !3537)
!3565 = !DILocation(line: 128, column: 15, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3537, file: !210, line: 128, column: 9)
!3567 = !DILocation(line: 129, column: 13, scope: !3566)
!3568 = !DILocation(line: 132, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3566, file: !210, line: 131, column: 39)
!3570 = !DILocation(line: 133, column: 9, scope: !3569)
!3571 = !DILocation(line: 136, column: 44, scope: !3537)
!3572 = !DILocation(line: 136, column: 51, scope: !3537)
!3573 = !DILocation(line: 137, column: 46, scope: !3537)
!3574 = !DILocation(line: 160, column: 48, scope: !3558)
!3575 = !DILocation(line: 141, column: 25, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3537, file: !210, line: 141, column: 9)
!3577 = !DILocation(line: 141, column: 54, scope: !3576)
!3578 = !DILocation(line: 141, column: 32, scope: !3576)
!3579 = !DILocation(line: 141, column: 9, scope: !3537)
!3580 = !DILocation(line: 142, column: 9, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3576, file: !210, line: 141, column: 71)
!3582 = !DILocation(line: 143, column: 9, scope: !3581)
!3583 = !DILocation(line: 146, column: 5, scope: !3537)
!3584 = !DILocation(line: 148, column: 5, scope: !3537)
!3585 = !DILocation(line: 149, column: 5, scope: !3537)
!3586 = !DILocation(line: 150, column: 5, scope: !3537)
!3587 = !DILocation(line: 152, column: 22, scope: !3537)
!3588 = !DILocation(line: 152, column: 17, scope: !3537)
!3589 = !DILocation(line: 152, column: 35, scope: !3537)
!3590 = !DILocation(line: 152, column: 5, scope: !3537)
!3591 = !DILocation(line: 153, column: 22, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3537, file: !210, line: 153, column: 9)
!3593 = !DILocation(line: 0, scope: !3592)
!3594 = !DILocation(line: 159, column: 19, scope: !3559)
!3595 = !DILocation(line: 159, column: 9, scope: !3537)
!3596 = !DILocation(line: 0, scope: !3558)
!3597 = !DILocation(line: 161, column: 65, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3558, file: !210, line: 161, column: 13)
!3599 = !DILocation(line: 162, column: 65, scope: !3598)
!3600 = !DILocation(line: 163, column: 61, scope: !3598)
!3601 = !DILocation(line: 161, column: 34, scope: !3598)
!3602 = !DILocation(line: 161, column: 31, scope: !3598)
!3603 = !DILocation(line: 161, column: 13, scope: !3558)
!3604 = !DILocation(line: 166, column: 13, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3598, file: !210, line: 165, column: 63)
!3606 = !DILocation(line: 167, column: 13, scope: !3605)
!3607 = !DILocation(line: 171, column: 9, scope: !3558)
!3608 = !DILocation(line: 171, column: 17, scope: !3558)
!3609 = !DILocation(line: 172, column: 40, scope: !3558)
!3610 = !DILocation(line: 172, column: 47, scope: !3558)
!3611 = !DILocation(line: 172, column: 9, scope: !3558)
!3612 = !DILocation(line: 173, column: 27, scope: !3558)
!3613 = !DILocation(line: 173, column: 9, scope: !3558)
!3614 = !DILocation(line: 176, column: 13, scope: !3558)
!3615 = !DILocation(line: 183, column: 72, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3558, file: !210, line: 183, column: 13)
!3617 = !DILocation(line: 184, column: 65, scope: !3616)
!3618 = !DILocation(line: 183, column: 34, scope: !3616)
!3619 = !DILocation(line: 183, column: 31, scope: !3616)
!3620 = !DILocation(line: 183, column: 13, scope: !3558)
!3621 = !DILocation(line: 192, column: 5, scope: !3559)
!3622 = !DILocation(line: 188, column: 13, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3616, file: !210, line: 187, column: 54)
!3624 = !DILocation(line: 189, column: 13, scope: !3623)
!3625 = !DILocation(line: 193, column: 9, scope: !3563)
!3626 = !DILocation(line: 193, column: 17, scope: !3563)
!3627 = !DILocation(line: 194, column: 40, scope: !3563)
!3628 = !DILocation(line: 194, column: 60, scope: !3563)
!3629 = !DILocation(line: 194, column: 9, scope: !3563)
!3630 = !DILocation(line: 195, column: 27, scope: !3563)
!3631 = !DILocation(line: 195, column: 9, scope: !3563)
!3632 = !DILocation(line: 197, column: 65, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3563, file: !210, line: 197, column: 13)
!3634 = !DILocation(line: 198, column: 65, scope: !3633)
!3635 = !DILocation(line: 197, column: 34, scope: !3633)
!3636 = !DILocation(line: 197, column: 31, scope: !3633)
!3637 = !DILocation(line: 197, column: 13, scope: !3563)
!3638 = !DILocation(line: 202, column: 13, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3633, file: !210, line: 201, column: 63)
!3640 = !DILocation(line: 203, column: 13, scope: !3639)
!3641 = !DILocation(line: 206, column: 5, scope: !3559)
!3642 = !DILocation(line: 208, column: 46, scope: !3537)
!3643 = !DILocation(line: 208, column: 28, scope: !3537)
!3644 = !DILocation(line: 210, column: 5, scope: !3537)
!3645 = !DILocation(line: 211, column: 5, scope: !3537)
!3646 = !DILocation(line: 212, column: 1, scope: !3537)
!3647 = distinct !DISubprogram(name: "des_operation_done", scope: !210, file: !210, line: 53, type: !316, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3648)
!3648 = !{!3649}
!3649 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3647, file: !210, line: 53, type: !233)
!3650 = !DILocation(line: 0, scope: !3647)
!3651 = !DILocation(line: 55, column: 5, scope: !3647)
!3652 = !DILocation(line: 56, column: 5, scope: !3647)
!3653 = !DILocation(line: 58, column: 19, scope: !3647)
!3654 = !DILocation(line: 60, column: 5, scope: !3647)
!3655 = !DILocation(line: 61, column: 1, scope: !3647)
!3656 = distinct !DISubprogram(name: "do_des_encrypt", scope: !210, file: !210, line: 63, type: !3657, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3659)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!3540, !428, !12, !428, !12, !428}
!3659 = !{!3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3660 = !DILocalVariable(name: "encrypt_buffer", arg: 1, scope: !3656, file: !210, line: 63, type: !428)
!3661 = !DILocalVariable(name: "encrypt_buffer_length", arg: 2, scope: !3656, file: !210, line: 64, type: !12)
!3662 = !DILocalVariable(name: "plain_buffer", arg: 3, scope: !3656, file: !210, line: 65, type: !428)
!3663 = !DILocalVariable(name: "plain_buffer_length", arg: 4, scope: !3656, file: !210, line: 66, type: !12)
!3664 = !DILocalVariable(name: "init_vector", arg: 5, scope: !3656, file: !210, line: 67, type: !428)
!3665 = !DILocalVariable(name: "ret_val", scope: !3656, file: !210, line: 70, type: !234)
!3666 = !DILocalVariable(name: "wait_count", scope: !3656, file: !210, line: 80, type: !12)
!3667 = !DILocation(line: 0, scope: !3656)
!3668 = !DILocation(line: 69, column: 19, scope: !3656)
!3669 = !DILocation(line: 71, column: 35, scope: !3656)
!3670 = !DILocation(line: 73, column: 35, scope: !3656)
!3671 = !DILocation(line: 70, column: 23, scope: !3656)
!3672 = !DILocation(line: 76, column: 17, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3656, file: !210, line: 76, column: 9)
!3674 = !DILocation(line: 76, column: 9, scope: !3656)
!3675 = !DILocation(line: 77, column: 9, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3673, file: !210, line: 76, column: 22)
!3677 = !DILocation(line: 78, column: 9, scope: !3676)
!3678 = !DILocation(line: 81, column: 13, scope: !3656)
!3679 = !DILocation(line: 81, column: 12, scope: !3656)
!3680 = !DILocation(line: 81, column: 5, scope: !3656)
!3681 = !DILocation(line: 83, column: 19, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3656, file: !210, line: 81, column: 28)
!3683 = !DILocation(line: 84, column: 24, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3682, file: !210, line: 84, column: 13)
!3685 = !DILocation(line: 84, column: 13, scope: !3682)
!3686 = distinct !{!3686, !3680, !3687}
!3687 = !DILocation(line: 88, column: 5, scope: !3656)
!3688 = !DILocation(line: 85, column: 13, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3684, file: !210, line: 84, column: 50)
!3690 = !DILocation(line: 86, column: 13, scope: !3689)
!3691 = !DILocation(line: 90, column: 1, scope: !3656)
!3692 = distinct !DISubprogram(name: "hal_des_decrypt", scope: !210, file: !210, line: 214, type: !3538, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3693)
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699}
!3694 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3692, file: !210, line: 214, type: !3541)
!3695 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3692, file: !210, line: 215, type: !3541)
!3696 = !DILocalVariable(name: "key", arg: 3, scope: !3692, file: !210, line: 216, type: !3541)
!3697 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3692, file: !210, line: 217, type: !428)
!3698 = !DILocalVariable(name: "mode", arg: 5, scope: !3692, file: !210, line: 218, type: !118)
!3699 = !DILocalVariable(name: "padding_size", scope: !3692, file: !210, line: 262, type: !12)
!3700 = !DILocation(line: 0, scope: !3692)
!3701 = !DILocation(line: 220, column: 15, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3692, file: !210, line: 220, column: 9)
!3703 = !DILocation(line: 221, column: 13, scope: !3702)
!3704 = !DILocation(line: 224, column: 9, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3702, file: !210, line: 223, column: 39)
!3706 = !DILocation(line: 225, column: 9, scope: !3705)
!3707 = !DILocation(line: 227, column: 26, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3692, file: !210, line: 227, column: 9)
!3709 = !DILocation(line: 227, column: 33, scope: !3708)
!3710 = !DILocation(line: 227, column: 56, scope: !3708)
!3711 = !DILocation(line: 227, column: 9, scope: !3692)
!3712 = !DILocation(line: 228, column: 9, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3708, file: !210, line: 227, column: 62)
!3714 = !DILocation(line: 229, column: 9, scope: !3713)
!3715 = !DILocation(line: 231, column: 21, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3692, file: !210, line: 231, column: 9)
!3717 = !DILocation(line: 231, column: 54, scope: !3716)
!3718 = !DILocation(line: 231, column: 28, scope: !3716)
!3719 = !DILocation(line: 231, column: 9, scope: !3692)
!3720 = !DILocation(line: 232, column: 9, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !210, line: 231, column: 78)
!3722 = !DILocation(line: 234, column: 9, scope: !3721)
!3723 = !DILocation(line: 236, column: 15, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3692, file: !210, line: 236, column: 9)
!3725 = !DILocation(line: 237, column: 13, scope: !3724)
!3726 = !DILocation(line: 239, column: 9, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !210, line: 238, column: 56)
!3728 = !DILocation(line: 240, column: 9, scope: !3727)
!3729 = !DILocation(line: 243, column: 5, scope: !3692)
!3730 = !DILocation(line: 245, column: 5, scope: !3692)
!3731 = !DILocation(line: 246, column: 5, scope: !3692)
!3732 = !DILocation(line: 247, column: 5, scope: !3692)
!3733 = !DILocation(line: 249, column: 22, scope: !3692)
!3734 = !DILocation(line: 249, column: 17, scope: !3692)
!3735 = !DILocation(line: 249, column: 35, scope: !3692)
!3736 = !DILocation(line: 249, column: 5, scope: !3692)
!3737 = !DILocation(line: 250, column: 22, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3692, file: !210, line: 250, column: 9)
!3739 = !DILocation(line: 0, scope: !3738)
!3740 = !DILocation(line: 256, column: 30, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3692, file: !210, line: 256, column: 9)
!3742 = !DILocation(line: 256, column: 27, scope: !3741)
!3743 = !DILocation(line: 256, column: 9, scope: !3692)
!3744 = !DILocation(line: 257, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3741, file: !210, line: 256, column: 87)
!3746 = !DILocation(line: 258, column: 9, scope: !3745)
!3747 = !DILocation(line: 259, column: 9, scope: !3745)
!3748 = !DILocation(line: 262, column: 41, scope: !3692)
!3749 = !DILocation(line: 262, column: 64, scope: !3692)
!3750 = !DILocation(line: 262, column: 71, scope: !3692)
!3751 = !DILocation(line: 262, column: 29, scope: !3692)
!3752 = !DILocation(line: 263, column: 49, scope: !3692)
!3753 = !DILocation(line: 263, column: 24, scope: !3692)
!3754 = !DILocation(line: 265, column: 5, scope: !3692)
!3755 = !DILocation(line: 267, column: 1, scope: !3692)
!3756 = distinct !DISubprogram(name: "do_des_decrypt", scope: !210, file: !210, line: 92, type: !3757, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!3540, !3541, !3541, !428}
!3759 = !{!3760, !3761, !3762, !3763, !3764}
!3760 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3756, file: !210, line: 92, type: !3541)
!3761 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3756, file: !210, line: 93, type: !3541)
!3762 = !DILocalVariable(name: "init_vector", arg: 3, scope: !3756, file: !210, line: 94, type: !428)
!3763 = !DILocalVariable(name: "ret_val", scope: !3756, file: !210, line: 98, type: !234)
!3764 = !DILocalVariable(name: "wait_count", scope: !3756, file: !210, line: 108, type: !12)
!3765 = !DILocation(line: 0, scope: !3756)
!3766 = !DILocation(line: 96, column: 19, scope: !3756)
!3767 = !DILocation(line: 98, column: 51, scope: !3756)
!3768 = !DILocation(line: 99, column: 51, scope: !3756)
!3769 = !DILocation(line: 99, column: 35, scope: !3756)
!3770 = !DILocation(line: 100, column: 47, scope: !3756)
!3771 = !DILocation(line: 101, column: 47, scope: !3756)
!3772 = !DILocation(line: 101, column: 35, scope: !3756)
!3773 = !DILocation(line: 98, column: 23, scope: !3756)
!3774 = !DILocation(line: 104, column: 17, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3756, file: !210, line: 104, column: 9)
!3776 = !DILocation(line: 104, column: 9, scope: !3756)
!3777 = !DILocation(line: 105, column: 9, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3775, file: !210, line: 104, column: 22)
!3779 = !DILocation(line: 106, column: 9, scope: !3778)
!3780 = !DILocation(line: 109, column: 13, scope: !3756)
!3781 = !DILocation(line: 109, column: 12, scope: !3756)
!3782 = !DILocation(line: 109, column: 5, scope: !3756)
!3783 = !DILocation(line: 111, column: 19, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3756, file: !210, line: 109, column: 28)
!3785 = !DILocation(line: 112, column: 24, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3784, file: !210, line: 112, column: 13)
!3787 = !DILocation(line: 112, column: 13, scope: !3784)
!3788 = distinct !{!3788, !3782, !3789}
!3789 = !DILocation(line: 116, column: 5, scope: !3756)
!3790 = !DILocation(line: 113, column: 13, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3786, file: !210, line: 112, column: 50)
!3792 = !DILocation(line: 114, column: 13, scope: !3791)
!3793 = !DILocation(line: 118, column: 1, scope: !3756)
!3794 = distinct !DISubprogram(name: "hal_des_cbc_encrypt", scope: !210, file: !210, line: 269, type: !3795, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!3540, !3541, !3541, !3541, !428}
!3797 = !{!3798, !3799, !3800, !3801}
!3798 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3794, file: !210, line: 269, type: !3541)
!3799 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3794, file: !210, line: 270, type: !3541)
!3800 = !DILocalVariable(name: "key", arg: 3, scope: !3794, file: !210, line: 271, type: !3541)
!3801 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3794, file: !210, line: 272, type: !428)
!3802 = !DILocation(line: 0, scope: !3794)
!3803 = !DILocation(line: 274, column: 12, scope: !3794)
!3804 = !DILocation(line: 274, column: 5, scope: !3794)
!3805 = distinct !DISubprogram(name: "hal_des_cbc_decrypt", scope: !210, file: !210, line: 277, type: !3795, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3806)
!3806 = !{!3807, !3808, !3809, !3810}
!3807 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3805, file: !210, line: 277, type: !3541)
!3808 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3805, file: !210, line: 278, type: !3541)
!3809 = !DILocalVariable(name: "key", arg: 3, scope: !3805, file: !210, line: 279, type: !3541)
!3810 = !DILocalVariable(name: "init_vector", arg: 4, scope: !3805, file: !210, line: 280, type: !428)
!3811 = !DILocation(line: 0, scope: !3805)
!3812 = !DILocation(line: 282, column: 12, scope: !3805)
!3813 = !DILocation(line: 282, column: 5, scope: !3805)
!3814 = distinct !DISubprogram(name: "hal_des_ecb_encrypt", scope: !210, file: !210, line: 285, type: !3815, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!3540, !3541, !3541, !3541}
!3817 = !{!3818, !3819, !3820, !3821}
!3818 = !DILocalVariable(name: "encrypted_text", arg: 1, scope: !3814, file: !210, line: 285, type: !3541)
!3819 = !DILocalVariable(name: "plain_text", arg: 2, scope: !3814, file: !210, line: 286, type: !3541)
!3820 = !DILocalVariable(name: "key", arg: 3, scope: !3814, file: !210, line: 287, type: !3541)
!3821 = !DILocalVariable(name: "init_vector", scope: !3814, file: !210, line: 289, type: !3822)
!3822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !243)
!3823 = !DILocation(line: 0, scope: !3814)
!3824 = !DILocation(line: 289, column: 5, scope: !3814)
!3825 = !DILocation(line: 289, column: 13, scope: !3814)
!3826 = !DILocation(line: 291, column: 12, scope: !3814)
!3827 = !DILocation(line: 292, column: 1, scope: !3814)
!3828 = !DILocation(line: 291, column: 5, scope: !3814)
!3829 = distinct !DISubprogram(name: "hal_des_ecb_decrypt", scope: !210, file: !210, line: 294, type: !3815, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !209, retainedNodes: !3830)
!3830 = !{!3831, !3832, !3833, !3834}
!3831 = !DILocalVariable(name: "plain_text", arg: 1, scope: !3829, file: !210, line: 294, type: !3541)
!3832 = !DILocalVariable(name: "encrypted_text", arg: 2, scope: !3829, file: !210, line: 295, type: !3541)
!3833 = !DILocalVariable(name: "key", arg: 3, scope: !3829, file: !210, line: 296, type: !3541)
!3834 = !DILocalVariable(name: "init_vector", scope: !3829, file: !210, line: 298, type: !3822)
!3835 = !DILocation(line: 0, scope: !3829)
!3836 = !DILocation(line: 298, column: 5, scope: !3829)
!3837 = !DILocation(line: 298, column: 13, scope: !3829)
!3838 = !DILocation(line: 300, column: 12, scope: !3829)
!3839 = !DILocation(line: 301, column: 1, scope: !3829)
!3840 = !DILocation(line: 300, column: 5, scope: !3829)
!3841 = distinct !DISubprogram(name: "hal_nvic_init", scope: !222, file: !222, line: 60, type: !3842, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1882)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!3844}
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_status_t", file: !225, line: 158, baseType: !224)
!3845 = !DILocation(line: 62, column: 5, scope: !3841)
!3846 = distinct !DISubprogram(name: "hal_nvic_enable_irq", scope: !222, file: !222, line: 65, type: !3847, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3849)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!3844, !233}
!3849 = !{!3850, !3851}
!3850 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3846, file: !222, line: 65, type: !233)
!3851 = !DILocalVariable(name: "status", scope: !3846, file: !222, line: 67, type: !3844)
!3852 = !DILocation(line: 0, scope: !3846)
!3853 = !DILocation(line: 69, column: 40, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3846, file: !222, line: 69, column: 9)
!3855 = !DILocation(line: 73, column: 9, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3854, file: !222, line: 72, column: 12)
!3857 = !DILocation(line: 77, column: 5, scope: !3846)
!3858 = !DILocation(line: 78, column: 1, scope: !3846)
!3859 = distinct !DISubprogram(name: "NVIC_EnableIRQ", scope: !238, file: !238, line: 1494, type: !3860, scopeLine: 1495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !117}
!3862 = !{!3863}
!3863 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3859, file: !238, line: 1494, type: !117)
!3864 = !DILocation(line: 0, scope: !3859)
!3865 = !DILocation(line: 1497, column: 91, scope: !3859)
!3866 = !DILocation(line: 1497, column: 61, scope: !3859)
!3867 = !DILocation(line: 1497, column: 40, scope: !3859)
!3868 = !DILocation(line: 1497, column: 3, scope: !3859)
!3869 = !DILocation(line: 1497, column: 46, scope: !3859)
!3870 = !DILocation(line: 1498, column: 1, scope: !3859)
!3871 = distinct !DISubprogram(name: "hal_nvic_disable_irq", scope: !222, file: !222, line: 80, type: !3847, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3872)
!3872 = !{!3873, !3874}
!3873 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3871, file: !222, line: 80, type: !233)
!3874 = !DILocalVariable(name: "status", scope: !3871, file: !222, line: 82, type: !3844)
!3875 = !DILocation(line: 0, scope: !3871)
!3876 = !DILocation(line: 84, column: 40, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3871, file: !222, line: 84, column: 9)
!3878 = !DILocation(line: 88, column: 9, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3877, file: !222, line: 87, column: 12)
!3880 = !DILocation(line: 92, column: 5, scope: !3871)
!3881 = !DILocation(line: 93, column: 1, scope: !3871)
!3882 = distinct !DISubprogram(name: "NVIC_DisableIRQ", scope: !238, file: !238, line: 1507, type: !3860, scopeLine: 1508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3883)
!3883 = !{!3884}
!3884 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3882, file: !238, line: 1507, type: !117)
!3885 = !DILocation(line: 0, scope: !3882)
!3886 = !DILocation(line: 1509, column: 65, scope: !3882)
!3887 = !DILocation(line: 1509, column: 44, scope: !3882)
!3888 = !DILocation(line: 1509, column: 32, scope: !3882)
!3889 = !DILocation(line: 1509, column: 3, scope: !3882)
!3890 = !DILocation(line: 1509, column: 39, scope: !3882)
!3891 = !DILocation(line: 1510, column: 1, scope: !3882)
!3892 = distinct !DISubprogram(name: "hal_nvic_get_pending_irq", scope: !222, file: !222, line: 95, type: !3893, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!12, !233}
!3895 = !{!3896, !3897}
!3896 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3892, file: !222, line: 95, type: !233)
!3897 = !DILocalVariable(name: "ret", scope: !3892, file: !222, line: 97, type: !12)
!3898 = !DILocation(line: 0, scope: !3892)
!3899 = !DILocation(line: 99, column: 40, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3892, file: !222, line: 99, column: 9)
!3901 = !DILocation(line: 102, column: 15, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3900, file: !222, line: 101, column: 12)
!3903 = !DILocation(line: 105, column: 5, scope: !3892)
!3904 = !DILocation(line: 106, column: 1, scope: !3892)
!3905 = distinct !DISubprogram(name: "NVIC_GetPendingIRQ", scope: !238, file: !238, line: 1523, type: !3906, scopeLine: 1524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!12, !117}
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3905, file: !238, line: 1523, type: !117)
!3910 = !DILocation(line: 0, scope: !3905)
!3911 = !DILocation(line: 1525, column: 51, scope: !3905)
!3912 = !DILocation(line: 1525, column: 23, scope: !3905)
!3913 = !DILocation(line: 1525, column: 83, scope: !3905)
!3914 = !DILocation(line: 1525, column: 22, scope: !3905)
!3915 = !DILocation(line: 1525, column: 3, scope: !3905)
!3916 = distinct !DISubprogram(name: "hal_nvic_set_pending_irq", scope: !222, file: !222, line: 108, type: !3847, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3917)
!3917 = !{!3918, !3919}
!3918 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3916, file: !222, line: 108, type: !233)
!3919 = !DILocalVariable(name: "status", scope: !3916, file: !222, line: 110, type: !3844)
!3920 = !DILocation(line: 0, scope: !3916)
!3921 = !DILocation(line: 112, column: 40, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3916, file: !222, line: 112, column: 9)
!3923 = !DILocation(line: 116, column: 9, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3922, file: !222, line: 115, column: 12)
!3925 = !DILocation(line: 120, column: 5, scope: !3916)
!3926 = !DILocation(line: 121, column: 1, scope: !3916)
!3927 = distinct !DISubprogram(name: "NVIC_SetPendingIRQ", scope: !238, file: !238, line: 1535, type: !3860, scopeLine: 1536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3928)
!3928 = !{!3929}
!3929 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3927, file: !238, line: 1535, type: !117)
!3930 = !DILocation(line: 0, scope: !3927)
!3931 = !DILocation(line: 1537, column: 65, scope: !3927)
!3932 = !DILocation(line: 1537, column: 44, scope: !3927)
!3933 = !DILocation(line: 1537, column: 32, scope: !3927)
!3934 = !DILocation(line: 1537, column: 3, scope: !3927)
!3935 = !DILocation(line: 1537, column: 39, scope: !3927)
!3936 = !DILocation(line: 1538, column: 1, scope: !3927)
!3937 = distinct !DISubprogram(name: "hal_nvic_clear_pending_irq", scope: !222, file: !222, line: 123, type: !3847, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3938)
!3938 = !{!3939, !3940}
!3939 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3937, file: !222, line: 123, type: !233)
!3940 = !DILocalVariable(name: "status", scope: !3937, file: !222, line: 125, type: !3844)
!3941 = !DILocation(line: 0, scope: !3937)
!3942 = !DILocation(line: 127, column: 40, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3937, file: !222, line: 127, column: 9)
!3944 = !DILocation(line: 131, column: 9, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3943, file: !222, line: 130, column: 12)
!3946 = !DILocation(line: 135, column: 5, scope: !3937)
!3947 = !DILocation(line: 136, column: 1, scope: !3937)
!3948 = distinct !DISubprogram(name: "NVIC_ClearPendingIRQ", scope: !238, file: !238, line: 1547, type: !3860, scopeLine: 1548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3949)
!3949 = !{!3950}
!3950 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3948, file: !238, line: 1547, type: !117)
!3951 = !DILocation(line: 0, scope: !3948)
!3952 = !DILocation(line: 1549, column: 65, scope: !3948)
!3953 = !DILocation(line: 1549, column: 44, scope: !3948)
!3954 = !DILocation(line: 1549, column: 32, scope: !3948)
!3955 = !DILocation(line: 1549, column: 3, scope: !3948)
!3956 = !DILocation(line: 1549, column: 39, scope: !3948)
!3957 = !DILocation(line: 1550, column: 1, scope: !3948)
!3958 = distinct !DISubprogram(name: "hal_nvic_set_priority", scope: !222, file: !222, line: 138, type: !3959, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!3844, !233, !12}
!3961 = !{!3962, !3963, !3964}
!3962 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3958, file: !222, line: 138, type: !233)
!3963 = !DILocalVariable(name: "priority", arg: 2, scope: !3958, file: !222, line: 138, type: !12)
!3964 = !DILocalVariable(name: "status", scope: !3958, file: !222, line: 140, type: !3844)
!3965 = !DILocation(line: 0, scope: !3958)
!3966 = !DILocation(line: 142, column: 40, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3958, file: !222, line: 142, column: 9)
!3968 = !DILocation(line: 146, column: 9, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3967, file: !222, line: 145, column: 12)
!3970 = !DILocation(line: 150, column: 5, scope: !3958)
!3971 = !DILocation(line: 151, column: 1, scope: !3958)
!3972 = distinct !DISubprogram(name: "NVIC_SetPriority", scope: !238, file: !238, line: 1577, type: !3973, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{null, !117, !12}
!3975 = !{!3976, !3977}
!3976 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3972, file: !238, line: 1577, type: !117)
!3977 = !DILocalVariable(name: "priority", arg: 2, scope: !3972, file: !238, line: 1577, type: !12)
!3978 = !DILocation(line: 0, scope: !3972)
!3979 = !DILocation(line: 1582, column: 34, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3981, file: !238, line: 1581, column: 8)
!3981 = distinct !DILexicalBlock(scope: !3972, file: !238, line: 1579, column: 6)
!3982 = !DILocation(line: 1582, column: 5, scope: !3980)
!3983 = !DILocation(line: 1582, column: 32, scope: !3980)
!3984 = !DILocation(line: 1583, column: 1, scope: !3972)
!3985 = distinct !DISubprogram(name: "hal_nvic_get_priority", scope: !222, file: !222, line: 153, type: !3893, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3986)
!3986 = !{!3987, !3988}
!3987 = !DILocalVariable(name: "irq_number", arg: 1, scope: !3985, file: !222, line: 153, type: !233)
!3988 = !DILocalVariable(name: "ret", scope: !3985, file: !222, line: 155, type: !12)
!3989 = !DILocation(line: 0, scope: !3985)
!3990 = !DILocation(line: 157, column: 40, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3985, file: !222, line: 157, column: 9)
!3992 = !DILocation(line: 160, column: 15, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3991, file: !222, line: 159, column: 12)
!3994 = !DILocation(line: 163, column: 5, scope: !3985)
!3995 = !DILocation(line: 164, column: 1, scope: !3985)
!3996 = distinct !DISubprogram(name: "NVIC_GetPriority", scope: !238, file: !238, line: 1597, type: !3906, scopeLine: 1598, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !3997)
!3997 = !{!3998}
!3998 = !DILocalVariable(name: "IRQn", arg: 1, scope: !3996, file: !238, line: 1597, type: !117)
!3999 = !DILocation(line: 0, scope: !3996)
!4000 = !DILocation(line: 1603, column: 23, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !238, line: 1602, column: 8)
!4002 = distinct !DILexicalBlock(scope: !3996, file: !238, line: 1600, column: 6)
!4003 = !DILocation(line: 1603, column: 60, scope: !4001)
!4004 = !DILocation(line: 1604, column: 1, scope: !3996)
!4005 = distinct !DISubprogram(name: "Flash_ReturnReady", scope: !222, file: !222, line: 173, type: !386, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1882)
!4006 = !DILocation(line: 175, column: 1, scope: !4005)
!4007 = distinct !DISubprogram(name: "isrC_main", scope: !222, file: !222, line: 178, type: !3842, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !4008)
!4008 = !{!4009, !4010}
!4009 = !DILocalVariable(name: "status", scope: !4007, file: !222, line: 180, type: !3844)
!4010 = !DILocalVariable(name: "irq_number", scope: !4007, file: !222, line: 181, type: !233)
!4011 = !DILocation(line: 0, scope: !4007)
!4012 = !DILocation(line: 188, column: 34, scope: !4007)
!4013 = !DILocation(line: 189, column: 24, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4007, file: !222, line: 189, column: 9)
!4015 = !DILocation(line: 192, column: 48, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !4014, file: !222, line: 192, column: 16)
!4017 = !DILocation(line: 192, column: 62, scope: !4016)
!4018 = !DILocation(line: 192, column: 16, scope: !4014)
!4019 = !DILocation(line: 194, column: 9, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4016, file: !222, line: 192, column: 71)
!4021 = !DILocation(line: 195, column: 9, scope: !4020)
!4022 = !DILocation(line: 197, column: 55, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4016, file: !222, line: 196, column: 12)
!4024 = !DILocation(line: 197, column: 41, scope: !4023)
!4025 = !DILocation(line: 197, column: 53, scope: !4023)
!4026 = !DILocation(line: 198, column: 41, scope: !4023)
!4027 = !DILocation(line: 198, column: 9, scope: !4023)
!4028 = !DILocation(line: 202, column: 5, scope: !4007)
!4029 = !DILocation(line: 203, column: 1, scope: !4007)
!4030 = distinct !DISubprogram(name: "get_current_irq", scope: !222, file: !222, line: 166, type: !1866, scopeLine: 167, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !4031)
!4031 = !{!4032}
!4032 = !DILocalVariable(name: "irq_num", scope: !4030, file: !222, line: 168, type: !12)
!4033 = !DILocation(line: 168, column: 31, scope: !4030)
!4034 = !DILocation(line: 168, column: 36, scope: !4030)
!4035 = !DILocation(line: 0, scope: !4030)
!4036 = !DILocation(line: 169, column: 21, scope: !4030)
!4037 = !DILocation(line: 169, column: 5, scope: !4030)
!4038 = distinct !DISubprogram(name: "get_pending_irq", scope: !222, file: !222, line: 55, type: !1866, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1882)
!4039 = !DILocation(line: 57, column: 19, scope: !4038)
!4040 = !DILocation(line: 57, column: 51, scope: !4038)
!4041 = !DILocation(line: 57, column: 5, scope: !4038)
!4042 = distinct !DISubprogram(name: "hal_nvic_register_isr_handler", scope: !222, file: !222, line: 205, type: !4043, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !4046)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!3844, !233, !4045}
!4045 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_nvic_isr_t", file: !225, line: 175, baseType: !315)
!4046 = !{!4047, !4048, !4049}
!4047 = !DILocalVariable(name: "irq_number", arg: 1, scope: !4042, file: !222, line: 205, type: !233)
!4048 = !DILocalVariable(name: "callback", arg: 2, scope: !4042, file: !222, line: 205, type: !4045)
!4049 = !DILocalVariable(name: "mask", scope: !4042, file: !222, line: 207, type: !12)
!4050 = !DILocation(line: 0, scope: !4042)
!4051 = !DILocation(line: 209, column: 24, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4042, file: !222, line: 209, column: 9)
!4053 = !DILocation(line: 213, column: 12, scope: !4042)
!4054 = !DILocation(line: 214, column: 5, scope: !4042)
!4055 = !DILocation(line: 215, column: 37, scope: !4042)
!4056 = !DILocation(line: 215, column: 51, scope: !4042)
!4057 = !DILocation(line: 216, column: 37, scope: !4042)
!4058 = !DILocation(line: 216, column: 49, scope: !4042)
!4059 = !DILocation(line: 217, column: 5, scope: !4042)
!4060 = !DILocation(line: 219, column: 5, scope: !4042)
!4061 = !DILocation(line: 220, column: 1, scope: !4042)
!4062 = distinct !DISubprogram(name: "hal_nvic_save_and_set_interrupt_mask", scope: !222, file: !222, line: 222, type: !4063, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!3844, !2482}
!4065 = !{!4066}
!4066 = !DILocalVariable(name: "mask", arg: 1, scope: !4062, file: !222, line: 222, type: !2482)
!4067 = !DILocation(line: 0, scope: !4062)
!4068 = !DILocation(line: 224, column: 13, scope: !4062)
!4069 = !DILocation(line: 224, column: 11, scope: !4062)
!4070 = !DILocation(line: 225, column: 5, scope: !4062)
!4071 = distinct !DISubprogram(name: "hal_nvic_restore_interrupt_mask", scope: !222, file: !222, line: 228, type: !4072, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !4074)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!3844, !12}
!4074 = !{!4075}
!4075 = !DILocalVariable(name: "mask", arg: 1, scope: !4071, file: !222, line: 228, type: !12)
!4076 = !DILocation(line: 0, scope: !4071)
!4077 = !DILocation(line: 230, column: 5, scope: !4071)
!4078 = !DILocation(line: 231, column: 5, scope: !4071)
!4079 = distinct !DISubprogram(name: "hal_pinmux_set_function", scope: !895, file: !895, line: 50, type: !4080, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4084)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!4082, !4083, !118}
!4082 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_pinmux_status_t", file: !898, line: 238, baseType: !897)
!4083 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_pin_t", file: !335, line: 281, baseType: !904)
!4084 = !{!4085, !4086, !4087}
!4085 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4079, file: !895, line: 50, type: !4083)
!4086 = !DILocalVariable(name: "function_index", arg: 2, scope: !4079, file: !895, line: 50, type: !118)
!4087 = !DILocalVariable(name: "ret_value", scope: !4079, file: !895, line: 52, type: !234)
!4088 = !DILocation(line: 0, scope: !4079)
!4089 = !DILocation(line: 53, column: 18, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4079, file: !895, line: 53, column: 9)
!4091 = !DILocation(line: 53, column: 9, scope: !4079)
!4092 = !DILocation(line: 57, column: 24, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4079, file: !895, line: 57, column: 9)
!4094 = !DILocation(line: 57, column: 9, scope: !4079)
!4095 = !DILocation(line: 57, column: 9, scope: !4093)
!4096 = !DILocation(line: 60, column: 17, scope: !4079)
!4097 = !DILocation(line: 61, column: 12, scope: !4079)
!4098 = !DILocation(line: 61, column: 5, scope: !4079)
!4099 = !DILocation(line: 62, column: 1, scope: !4079)
!4100 = distinct !DISubprogram(name: "hal_gpio_init", scope: !895, file: !895, line: 64, type: !4101, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4104)
!4101 = !DISubroutineType(types: !4102)
!4102 = !{!4103, !4083}
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_status_t", file: !898, line: 229, baseType: !935)
!4104 = !{!4105}
!4105 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4100, file: !895, line: 64, type: !4083)
!4106 = !DILocation(line: 0, scope: !4100)
!4107 = !DILocation(line: 66, column: 5, scope: !4100)
!4108 = distinct !DISubprogram(name: "hal_gpio_deinit", scope: !895, file: !895, line: 69, type: !4101, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4109)
!4109 = !{!4110}
!4110 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4108, file: !895, line: 69, type: !4083)
!4111 = !DILocation(line: 0, scope: !4108)
!4112 = !DILocation(line: 71, column: 5, scope: !4108)
!4113 = distinct !DISubprogram(name: "hal_gpio_get_input", scope: !895, file: !895, line: 74, type: !4114, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4117)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!4103, !4083, !4116}
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 32)
!4117 = !{!4118, !4119, !4120}
!4118 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4113, file: !895, line: 74, type: !4083)
!4119 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4113, file: !895, line: 74, type: !4116)
!4120 = !DILocalVariable(name: "status", scope: !4113, file: !895, line: 76, type: !4121)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_status", file: !956, line: 67, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !956, line: 62, size: 64, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4127}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_PIN", scope: !4122, file: !956, line: 63, baseType: !12, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "GPIO_OUTEN", scope: !4122, file: !956, line: 64, baseType: !118, size: 8, offset: 32)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "GPI_DIN", scope: !4122, file: !956, line: 65, baseType: !118, size: 8, offset: 40)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "GPO_DOUT", scope: !4122, file: !956, line: 66, baseType: !118, size: 8, offset: 48)
!4128 = !DILocation(line: 0, scope: !4113)
!4129 = !DILocation(line: 77, column: 14, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4113, file: !895, line: 77, column: 9)
!4131 = !DILocation(line: 77, column: 9, scope: !4113)
!4132 = !DILocation(line: 81, column: 18, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4113, file: !895, line: 81, column: 9)
!4134 = !DILocation(line: 81, column: 9, scope: !4113)
!4135 = !DILocation(line: 85, column: 14, scope: !4113)
!4136 = !DILocation(line: 86, column: 18, scope: !4113)
!4137 = !DILocation(line: 86, column: 16, scope: !4113)
!4138 = !DILocation(line: 87, column: 5, scope: !4113)
!4139 = !DILocation(line: 88, column: 1, scope: !4113)
!4140 = distinct !DISubprogram(name: "hal_gpio_set_output", scope: !895, file: !895, line: 90, type: !4141, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4143)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!4103, !4083, !962}
!4143 = !{!4144, !4145, !4146}
!4144 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4140, file: !895, line: 90, type: !4083)
!4145 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4140, file: !895, line: 90, type: !962)
!4146 = !DILocalVariable(name: "ret_value", scope: !4140, file: !895, line: 92, type: !234)
!4147 = !DILocation(line: 0, scope: !4140)
!4148 = !DILocation(line: 93, column: 18, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4140, file: !895, line: 93, column: 9)
!4150 = !DILocation(line: 93, column: 9, scope: !4140)
!4151 = !DILocation(line: 97, column: 60, scope: !4140)
!4152 = !DILocation(line: 97, column: 17, scope: !4140)
!4153 = !DILocation(line: 98, column: 12, scope: !4140)
!4154 = !DILocation(line: 98, column: 5, scope: !4140)
!4155 = !DILocation(line: 99, column: 1, scope: !4140)
!4156 = distinct !DISubprogram(name: "hal_gpio_get_output", scope: !895, file: !895, line: 101, type: !4114, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4157)
!4157 = !{!4158, !4159, !4160}
!4158 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4156, file: !895, line: 101, type: !4083)
!4159 = !DILocalVariable(name: "gpio_data", arg: 2, scope: !4156, file: !895, line: 101, type: !4116)
!4160 = !DILocalVariable(name: "status", scope: !4156, file: !895, line: 103, type: !4121)
!4161 = !DILocation(line: 0, scope: !4156)
!4162 = !DILocation(line: 104, column: 18, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4156, file: !895, line: 104, column: 9)
!4164 = !DILocation(line: 104, column: 9, scope: !4156)
!4165 = !DILocation(line: 108, column: 14, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4156, file: !895, line: 108, column: 9)
!4167 = !DILocation(line: 108, column: 9, scope: !4156)
!4168 = !DILocation(line: 112, column: 14, scope: !4156)
!4169 = !DILocation(line: 113, column: 18, scope: !4156)
!4170 = !DILocation(line: 113, column: 16, scope: !4156)
!4171 = !DILocation(line: 114, column: 5, scope: !4156)
!4172 = !DILocation(line: 115, column: 1, scope: !4156)
!4173 = distinct !DISubprogram(name: "hal_gpio_set_direction", scope: !895, file: !895, line: 117, type: !4174, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4177)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!4103, !4083, !4176}
!4176 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_gpio_direction_t", file: !898, line: 213, baseType: !945)
!4177 = !{!4178, !4179, !4180}
!4178 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4173, file: !895, line: 117, type: !4083)
!4179 = !DILocalVariable(name: "direction", arg: 2, scope: !4173, file: !895, line: 117, type: !4176)
!4180 = !DILocalVariable(name: "ret_value", scope: !4173, file: !895, line: 119, type: !234)
!4181 = !DILocation(line: 0, scope: !4173)
!4182 = !DILocation(line: 120, column: 18, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4173, file: !895, line: 120, column: 9)
!4184 = !DILocation(line: 120, column: 9, scope: !4173)
!4185 = !DILocation(line: 123, column: 17, scope: !4173)
!4186 = !DILocation(line: 125, column: 12, scope: !4173)
!4187 = !DILocation(line: 125, column: 5, scope: !4173)
!4188 = !DILocation(line: 126, column: 1, scope: !4173)
!4189 = distinct !DISubprogram(name: "hal_gpio_get_direction", scope: !895, file: !895, line: 128, type: !4190, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4193)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!4103, !4083, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 32)
!4193 = !{!4194, !4195, !4196}
!4194 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4189, file: !895, line: 128, type: !4083)
!4195 = !DILocalVariable(name: "direction", arg: 2, scope: !4189, file: !895, line: 128, type: !4192)
!4196 = !DILocalVariable(name: "status", scope: !4189, file: !895, line: 131, type: !4121)
!4197 = !DILocation(line: 0, scope: !4189)
!4198 = !DILocation(line: 132, column: 18, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4189, file: !895, line: 132, column: 9)
!4200 = !DILocation(line: 132, column: 9, scope: !4189)
!4201 = !DILocation(line: 136, column: 14, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4189, file: !895, line: 136, column: 9)
!4203 = !DILocation(line: 136, column: 9, scope: !4189)
!4204 = !DILocation(line: 140, column: 14, scope: !4189)
!4205 = !DILocation(line: 141, column: 18, scope: !4189)
!4206 = !DILocation(line: 141, column: 16, scope: !4189)
!4207 = !DILocation(line: 142, column: 5, scope: !4189)
!4208 = !DILocation(line: 143, column: 1, scope: !4189)
!4209 = distinct !DISubprogram(name: "hal_gpio_toggle_pin", scope: !895, file: !895, line: 146, type: !4101, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4210)
!4210 = !{!4211, !4212}
!4211 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4209, file: !895, line: 146, type: !4083)
!4212 = !DILocalVariable(name: "status", scope: !4209, file: !895, line: 148, type: !4121)
!4213 = !DILocation(line: 0, scope: !4209)
!4214 = !DILocation(line: 149, column: 18, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4209, file: !895, line: 149, column: 9)
!4216 = !DILocation(line: 149, column: 9, scope: !4209)
!4217 = !DILocation(line: 153, column: 14, scope: !4209)
!4218 = !DILocation(line: 154, column: 76, scope: !4209)
!4219 = !DILocation(line: 154, column: 12, scope: !4209)
!4220 = !DILocation(line: 154, column: 5, scope: !4209)
!4221 = !DILocation(line: 155, column: 1, scope: !4209)
!4222 = distinct !DISubprogram(name: "hal_gpio_pull_up", scope: !895, file: !895, line: 157, type: !4101, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4223)
!4223 = !{!4224, !4225}
!4224 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4222, file: !895, line: 157, type: !4083)
!4225 = !DILocalVariable(name: "ret_value", scope: !4222, file: !895, line: 159, type: !234)
!4226 = !DILocation(line: 0, scope: !4222)
!4227 = !DILocation(line: 160, column: 18, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4222, file: !895, line: 160, column: 9)
!4229 = !DILocation(line: 160, column: 9, scope: !4222)
!4230 = !DILocation(line: 164, column: 17, scope: !4222)
!4231 = !DILocation(line: 165, column: 19, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4222, file: !895, line: 165, column: 9)
!4233 = !DILocation(line: 165, column: 9, scope: !4222)
!4234 = !DILocation(line: 168, column: 17, scope: !4222)
!4235 = !DILocation(line: 169, column: 12, scope: !4222)
!4236 = !DILocation(line: 169, column: 5, scope: !4222)
!4237 = !DILocation(line: 170, column: 1, scope: !4222)
!4238 = distinct !DISubprogram(name: "hal_gpio_pull_down", scope: !895, file: !895, line: 172, type: !4101, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4239)
!4239 = !{!4240, !4241}
!4240 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4238, file: !895, line: 172, type: !4083)
!4241 = !DILocalVariable(name: "ret_value", scope: !4238, file: !895, line: 174, type: !234)
!4242 = !DILocation(line: 0, scope: !4238)
!4243 = !DILocation(line: 175, column: 18, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4238, file: !895, line: 175, column: 9)
!4245 = !DILocation(line: 175, column: 9, scope: !4238)
!4246 = !DILocation(line: 179, column: 17, scope: !4238)
!4247 = !DILocation(line: 180, column: 19, scope: !4248)
!4248 = distinct !DILexicalBlock(scope: !4238, file: !895, line: 180, column: 9)
!4249 = !DILocation(line: 180, column: 9, scope: !4238)
!4250 = !DILocation(line: 183, column: 17, scope: !4238)
!4251 = !DILocation(line: 184, column: 12, scope: !4238)
!4252 = !DILocation(line: 184, column: 5, scope: !4238)
!4253 = !DILocation(line: 185, column: 1, scope: !4238)
!4254 = distinct !DISubprogram(name: "hal_gpio_disable_pull", scope: !895, file: !895, line: 187, type: !4101, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4255)
!4255 = !{!4256, !4257}
!4256 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4254, file: !895, line: 187, type: !4083)
!4257 = !DILocalVariable(name: "ret_value", scope: !4254, file: !895, line: 189, type: !234)
!4258 = !DILocation(line: 0, scope: !4254)
!4259 = !DILocation(line: 191, column: 18, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4254, file: !895, line: 191, column: 9)
!4261 = !DILocation(line: 191, column: 9, scope: !4254)
!4262 = !DILocation(line: 195, column: 17, scope: !4254)
!4263 = !DILocation(line: 196, column: 12, scope: !4254)
!4264 = !DILocation(line: 196, column: 5, scope: !4254)
!4265 = !DILocation(line: 197, column: 1, scope: !4254)
!4266 = distinct !DISubprogram(name: "hal_gpio_set_driving_current", scope: !895, file: !895, line: 200, type: !4267, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!4103, !4083, !963}
!4269 = !{!4270, !4271, !4272}
!4270 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4266, file: !895, line: 200, type: !4083)
!4271 = !DILocalVariable(name: "driving", arg: 2, scope: !4266, file: !895, line: 200, type: !963)
!4272 = !DILocalVariable(name: "ret_value", scope: !4266, file: !895, line: 202, type: !234)
!4273 = !DILocation(line: 0, scope: !4266)
!4274 = !DILocation(line: 204, column: 18, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !4266, file: !895, line: 204, column: 9)
!4276 = !DILocation(line: 204, column: 9, scope: !4266)
!4277 = !DILocation(line: 208, column: 64, scope: !4266)
!4278 = !DILocation(line: 208, column: 17, scope: !4266)
!4279 = !DILocation(line: 210, column: 12, scope: !4266)
!4280 = !DILocation(line: 210, column: 5, scope: !4266)
!4281 = !DILocation(line: 211, column: 1, scope: !4266)
!4282 = distinct !DISubprogram(name: "hal_gpio_get_driving_current", scope: !895, file: !895, line: 214, type: !4283, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !894, retainedNodes: !4286)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!4103, !4083, !4285}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 32)
!4286 = !{!4287, !4288, !4289, !4290}
!4287 = !DILocalVariable(name: "gpio_pin", arg: 1, scope: !4282, file: !895, line: 214, type: !4083)
!4288 = !DILocalVariable(name: "driving", arg: 2, scope: !4282, file: !895, line: 214, type: !4285)
!4289 = !DILocalVariable(name: "ret_value", scope: !4282, file: !895, line: 216, type: !234)
!4290 = !DILocalVariable(name: "value", scope: !4282, file: !895, line: 217, type: !118)
!4291 = !DILocation(line: 0, scope: !4282)
!4292 = !DILocation(line: 217, column: 5, scope: !4282)
!4293 = !DILocation(line: 219, column: 18, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4282, file: !895, line: 219, column: 9)
!4295 = !DILocation(line: 219, column: 9, scope: !4282)
!4296 = !DILocation(line: 223, column: 17, scope: !4282)
!4297 = !DILocation(line: 225, column: 44, scope: !4282)
!4298 = !DILocation(line: 225, column: 16, scope: !4282)
!4299 = !DILocation(line: 225, column: 14, scope: !4282)
!4300 = !DILocation(line: 227, column: 12, scope: !4282)
!4301 = !DILocation(line: 227, column: 5, scope: !4282)
!4302 = !DILocation(line: 228, column: 1, scope: !4282)
!4303 = distinct !DISubprogram(name: "hal_uart_init", scope: !324, file: !324, line: 234, type: !4304, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4308)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!4306, !388, !4307}
!4306 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_status_t", file: !327, line: 351, baseType: !326)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!4308 = !{!4309, !4310}
!4309 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4303, file: !324, line: 234, type: !388)
!4310 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4303, file: !324, line: 234, type: !4307)
!4311 = !DILocation(line: 0, scope: !4303)
!4312 = !DILocation(line: 236, column: 10, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4303, file: !324, line: 236, column: 9)
!4314 = !DILocation(line: 236, column: 9, scope: !4303)
!4315 = !DILocation(line: 239, column: 41, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4303, file: !324, line: 239, column: 9)
!4317 = !DILocation(line: 239, column: 9, scope: !4303)
!4318 = !DILocation(line: 242, column: 5, scope: !4303)
!4319 = !DILocation(line: 243, column: 45, scope: !4303)
!4320 = !DILocation(line: 243, column: 12, scope: !4303)
!4321 = !DILocation(line: 244, column: 12, scope: !4303)
!4322 = !DILocation(line: 243, column: 5, scope: !4303)
!4323 = !DILocation(line: 245, column: 58, scope: !4303)
!4324 = !DILocation(line: 246, column: 30, scope: !4303)
!4325 = !{i32 0, i32 2}
!4326 = !DILocation(line: 246, column: 5, scope: !4303)
!4327 = !DILocation(line: 247, column: 5, scope: !4303)
!4328 = !DILocation(line: 249, column: 31, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4303, file: !324, line: 249, column: 9)
!4330 = !DILocation(line: 249, column: 28, scope: !4329)
!4331 = !DILocation(line: 261, column: 1, scope: !4303)
!4332 = distinct !DISubprogram(name: "hal_uart_is_config_valid", scope: !324, file: !324, line: 93, type: !4333, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4337)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!124, !388, !4335}
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 32)
!4336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!4337 = !{!4338, !4339}
!4338 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4332, file: !324, line: 93, type: !388)
!4339 = !DILocalVariable(name: "uart_config", arg: 2, scope: !4332, file: !324, line: 93, type: !4335)
!4340 = !DILocation(line: 0, scope: !4332)
!4341 = !DILocation(line: 95, column: 10, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4332, file: !324, line: 95, column: 9)
!4343 = !DILocation(line: 95, column: 9, scope: !4332)
!4344 = !DILocation(line: 101, column: 23, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4332, file: !324, line: 101, column: 9)
!4346 = !DILocation(line: 101, column: 32, scope: !4345)
!4347 = !DILocation(line: 101, column: 60, scope: !4345)
!4348 = !DILocation(line: 102, column: 27, scope: !4345)
!4349 = !DILocation(line: 102, column: 34, scope: !4345)
!4350 = !DILocation(line: 102, column: 58, scope: !4345)
!4351 = !DILocation(line: 103, column: 27, scope: !4345)
!4352 = !DILocation(line: 103, column: 36, scope: !4345)
!4353 = !DILocation(line: 103, column: 59, scope: !4345)
!4354 = !DILocation(line: 104, column: 27, scope: !4345)
!4355 = !DILocation(line: 104, column: 39, scope: !4345)
!4356 = !DILocation(line: 101, column: 9, scope: !4332)
!4357 = !DILocation(line: 109, column: 1, scope: !4332)
!4358 = distinct !DISubprogram(name: "hal_uart_translate_port", scope: !324, file: !324, line: 139, type: !4359, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!2335, !388}
!4361 = !{!4362}
!4362 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4358, file: !324, line: 139, type: !388)
!4363 = !DILocation(line: 0, scope: !4358)
!4364 = !DILocation(line: 141, column: 24, scope: !4358)
!4365 = !DILocation(line: 141, column: 12, scope: !4358)
!4366 = !DILocation(line: 141, column: 5, scope: !4358)
!4367 = distinct !DISubprogram(name: "hal_uart_set_format", scope: !324, file: !324, line: 593, type: !4368, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4370)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!4306, !388, !4335}
!4370 = !{!4371, !4372}
!4371 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4367, file: !324, line: 593, type: !388)
!4372 = !DILocalVariable(name: "config", arg: 2, scope: !4367, file: !324, line: 593, type: !4335)
!4373 = !DILocation(line: 0, scope: !4367)
!4374 = !DILocation(line: 595, column: 10, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4367, file: !324, line: 595, column: 9)
!4376 = !DILocation(line: 595, column: 9, scope: !4367)
!4377 = !DILocation(line: 598, column: 45, scope: !4367)
!4378 = !DILocation(line: 598, column: 12, scope: !4367)
!4379 = !DILocation(line: 598, column: 59, scope: !4367)
!4380 = !DILocation(line: 598, column: 5, scope: !4367)
!4381 = !DILocation(line: 599, column: 23, scope: !4367)
!4382 = !DILocation(line: 600, column: 59, scope: !4367)
!4383 = !DILocation(line: 600, column: 23, scope: !4367)
!4384 = !DILocation(line: 601, column: 62, scope: !4367)
!4385 = !DILocation(line: 601, column: 23, scope: !4367)
!4386 = !DILocation(line: 602, column: 57, scope: !4367)
!4387 = !DILocation(line: 602, column: 23, scope: !4367)
!4388 = !DILocation(line: 603, column: 58, scope: !4367)
!4389 = !DILocation(line: 603, column: 23, scope: !4367)
!4390 = !DILocation(line: 599, column: 5, scope: !4367)
!4391 = !DILocation(line: 604, column: 5, scope: !4367)
!4392 = !DILocation(line: 605, column: 1, scope: !4367)
!4393 = distinct !DISubprogram(name: "hal_uart_translate_baudrate", scope: !324, file: !324, line: 145, type: !4394, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4396)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!12, !403}
!4396 = !{!4397, !4398}
!4397 = !DILocalVariable(name: "bandrate", arg: 1, scope: !4393, file: !324, line: 145, type: !403)
!4398 = !DILocalVariable(name: "baudrate_tbl", scope: !4393, file: !324, line: 147, type: !4399)
!4399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 416, elements: !4400)
!4400 = !{!4401}
!4401 = !DISubrange(count: 13)
!4402 = !DILocation(line: 0, scope: !4393)
!4403 = !DILocation(line: 147, column: 14, scope: !4393)
!4404 = !DILocation(line: 151, column: 12, scope: !4393)
!4405 = !DILocation(line: 151, column: 5, scope: !4393)
!4406 = distinct !DISubprogram(name: "hal_uart_translate_word_length", scope: !324, file: !324, line: 155, type: !4407, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4409)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!2405, !405}
!4409 = !{!4410, !4411}
!4410 = !DILocalVariable(name: "word_length", arg: 1, scope: !4406, file: !324, line: 155, type: !405)
!4411 = !DILocalVariable(name: "databit_tbl", scope: !4406, file: !324, line: 157, type: !4412)
!4412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2405, size: 64, elements: !300)
!4413 = !DILocation(line: 0, scope: !4406)
!4414 = !DILocation(line: 157, column: 14, scope: !4406)
!4415 = !DILocation(line: 160, column: 12, scope: !4406)
!4416 = !DILocation(line: 160, column: 5, scope: !4406)
!4417 = distinct !DISubprogram(name: "hal_uart_translate_parity", scope: !324, file: !324, line: 164, type: !4418, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!2405, !409}
!4420 = !{!4421, !4422}
!4421 = !DILocalVariable(name: "parity", arg: 1, scope: !4417, file: !324, line: 164, type: !409)
!4422 = !DILocalVariable(name: "parity_tbl", scope: !4417, file: !324, line: 166, type: !4423)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2405, size: 80, elements: !304)
!4424 = !DILocation(line: 0, scope: !4417)
!4425 = !DILocation(line: 166, column: 14, scope: !4417)
!4426 = !DILocation(line: 169, column: 12, scope: !4417)
!4427 = !DILocation(line: 169, column: 5, scope: !4417)
!4428 = distinct !DISubprogram(name: "hal_uart_translate_stopbit", scope: !324, file: !324, line: 173, type: !4429, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4431)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!2405, !407}
!4431 = !{!4432, !4433}
!4432 = !DILocalVariable(name: "stopbit", arg: 1, scope: !4428, file: !324, line: 173, type: !407)
!4433 = !DILocalVariable(name: "stopbit_tbl", scope: !4428, file: !324, line: 175, type: !4434)
!4434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2405, size: 48, elements: !555)
!4435 = !DILocation(line: 0, scope: !4428)
!4436 = !DILocation(line: 175, column: 14, scope: !4428)
!4437 = !DILocation(line: 178, column: 12, scope: !4428)
!4438 = !DILocation(line: 178, column: 5, scope: !4428)
!4439 = distinct !DISubprogram(name: "hal_uart_is_port_valid", scope: !324, file: !324, line: 87, type: !4440, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4442)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!124, !388}
!4442 = !{!4443}
!4443 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4439, file: !324, line: 87, type: !388)
!4444 = !DILocation(line: 0, scope: !4439)
!4445 = !DILocation(line: 89, column: 23, scope: !4439)
!4446 = !DILocation(line: 89, column: 5, scope: !4439)
!4447 = distinct !DISubprogram(name: "hal_uart_deinit", scope: !324, file: !324, line: 264, type: !4448, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4450)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!4306, !388}
!4450 = !{!4451}
!4451 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4447, file: !324, line: 264, type: !388)
!4452 = !DILocation(line: 0, scope: !4447)
!4453 = !DILocation(line: 266, column: 10, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4447, file: !324, line: 266, column: 9)
!4455 = !DILocation(line: 266, column: 9, scope: !4447)
!4456 = !DILocation(line: 269, column: 41, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4447, file: !324, line: 269, column: 9)
!4458 = !DILocation(line: 269, column: 62, scope: !4457)
!4459 = !DILocation(line: 269, column: 9, scope: !4447)
!4460 = !DILocation(line: 272, column: 5, scope: !4447)
!4461 = !DILocation(line: 275, column: 22, scope: !4447)
!4462 = !DILocation(line: 275, column: 5, scope: !4447)
!4463 = !DILocation(line: 284, column: 5, scope: !4447)
!4464 = !DILocation(line: 286, column: 5, scope: !4447)
!4465 = !DILocation(line: 287, column: 1, scope: !4447)
!4466 = distinct !DISubprogram(name: "hal_uart_put_char", scope: !324, file: !324, line: 290, type: !4467, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4469)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{null, !388, !377}
!4469 = !{!4470, !4471, !4472}
!4470 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4466, file: !324, line: 290, type: !388)
!4471 = !DILocalVariable(name: "byte", arg: 2, scope: !4466, file: !324, line: 290, type: !377)
!4472 = !DILocalVariable(name: "int_no", scope: !4466, file: !324, line: 292, type: !2335)
!4473 = !DILocation(line: 0, scope: !4466)
!4474 = !DILocation(line: 292, column: 26, scope: !4466)
!4475 = !DILocation(line: 294, column: 16, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4466, file: !324, line: 294, column: 9)
!4477 = !DILocation(line: 294, column: 9, scope: !4466)
!4478 = !DILocation(line: 295, column: 9, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4476, file: !324, line: 294, column: 34)
!4480 = !DILocation(line: 296, column: 5, scope: !4479)
!4481 = !DILocation(line: 299, column: 1, scope: !4466)
!4482 = distinct !DISubprogram(name: "hal_uart_send_polling", scope: !324, file: !324, line: 302, type: !4483, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4485)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{!12, !388, !2542, !12}
!4485 = !{!4486, !4487, !4488, !4489, !4490}
!4486 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4482, file: !324, line: 302, type: !388)
!4487 = !DILocalVariable(name: "data", arg: 2, scope: !4482, file: !324, line: 302, type: !2542)
!4488 = !DILocalVariable(name: "size", arg: 3, scope: !4482, file: !324, line: 302, type: !12)
!4489 = !DILocalVariable(name: "int_no", scope: !4482, file: !324, line: 304, type: !2335)
!4490 = !DILocalVariable(name: "index", scope: !4482, file: !324, line: 305, type: !12)
!4491 = !DILocation(line: 0, scope: !4482)
!4492 = !DILocation(line: 304, column: 26, scope: !4482)
!4493 = !DILocation(line: 307, column: 14, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4482, file: !324, line: 307, column: 9)
!4495 = !DILocation(line: 307, column: 9, scope: !4482)
!4496 = !DILocation(line: 313, column: 53, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !324, line: 312, column: 48)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !324, line: 312, column: 9)
!4499 = distinct !DILexicalBlock(scope: !4500, file: !324, line: 312, column: 9)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !324, line: 311, column: 33)
!4501 = distinct !DILexicalBlock(scope: !4482, file: !324, line: 311, column: 9)
!4502 = !DILocation(line: 313, column: 13, scope: !4497)
!4503 = !DILocation(line: 312, column: 44, scope: !4498)
!4504 = !DILocation(line: 312, column: 31, scope: !4498)
!4505 = !DILocation(line: 312, column: 9, scope: !4499)
!4506 = distinct !{!4506, !4505, !4507}
!4507 = !DILocation(line: 314, column: 9, scope: !4499)
!4508 = !DILocation(line: 318, column: 1, scope: !4482)
!4509 = distinct !DISubprogram(name: "hal_uart_send_dma", scope: !324, file: !324, line: 320, type: !4483, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4510)
!4510 = !{!4511, !4512, !4513, !4514, !4515, !4516}
!4511 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4509, file: !324, line: 320, type: !388)
!4512 = !DILocalVariable(name: "data", arg: 2, scope: !4509, file: !324, line: 320, type: !2542)
!4513 = !DILocalVariable(name: "size", arg: 3, scope: !4509, file: !324, line: 320, type: !12)
!4514 = !DILocalVariable(name: "actual_space", scope: !4509, file: !324, line: 322, type: !12)
!4515 = !DILocalVariable(name: "send_size", scope: !4509, file: !324, line: 322, type: !12)
!4516 = !DILocalVariable(name: "ch", scope: !4509, file: !324, line: 323, type: !4517)
!4517 = !DIDerivedType(tag: DW_TAG_typedef, name: "DMA_VFIFO_CHANNEL", file: !33, line: 144, baseType: !32)
!4518 = !DILocation(line: 0, scope: !4509)
!4519 = !DILocation(line: 322, column: 5, scope: !4509)
!4520 = !DILocation(line: 328, column: 10, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4509, file: !324, line: 328, column: 9)
!4522 = !DILocation(line: 328, column: 9, scope: !4509)
!4523 = !DILocation(line: 332, column: 15, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4509, file: !324, line: 332, column: 9)
!4525 = !DILocation(line: 332, column: 24, scope: !4524)
!4526 = !DILocation(line: 335, column: 42, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4509, file: !324, line: 335, column: 9)
!4528 = !DILocation(line: 335, column: 9, scope: !4509)
!4529 = !DILocation(line: 349, column: 30, scope: !4509)
!4530 = !DILocation(line: 349, column: 5, scope: !4509)
!4531 = !DILocation(line: 350, column: 9, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4509, file: !324, line: 350, column: 9)
!4533 = !DILocation(line: 350, column: 22, scope: !4532)
!4534 = !DILocation(line: 355, column: 5, scope: !4509)
!4535 = !DILocation(line: 357, column: 22, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4509, file: !324, line: 357, column: 9)
!4537 = !DILocation(line: 357, column: 19, scope: !4536)
!4538 = !DILocation(line: 357, column: 9, scope: !4509)
!4539 = !DILocation(line: 358, column: 14, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4536, file: !324, line: 357, column: 36)
!4541 = !{i32 14, i32 18}
!4542 = !DILocation(line: 359, column: 9, scope: !4540)
!4543 = !DILocation(line: 360, column: 5, scope: !4540)
!4544 = !DILocation(line: 362, column: 1, scope: !4509)
!4545 = distinct !DISubprogram(name: "uart_channel_to_dma_channel", scope: !324, file: !324, line: 191, type: !4546, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!4517, !2335, !124}
!4548 = !{!4549, !4550, !4551}
!4549 = !DILocalVariable(name: "port", arg: 1, scope: !4545, file: !324, line: 191, type: !2335)
!4550 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4545, file: !324, line: 191, type: !124)
!4551 = !DILocalVariable(name: "ch", scope: !4545, file: !324, line: 193, type: !4517)
!4552 = !DILocation(line: 0, scope: !4545)
!4553 = !DILocation(line: 195, column: 14, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4545, file: !324, line: 195, column: 9)
!4555 = !DILocation(line: 195, column: 9, scope: !4545)
!4556 = !DILocation(line: 209, column: 5, scope: !4545)
!4557 = distinct !DISubprogram(name: "hal_uart_get_char", scope: !324, file: !324, line: 365, type: !4558, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4560)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!377, !388}
!4560 = !{!4561, !4562}
!4561 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4557, file: !324, line: 365, type: !388)
!4562 = !DILocalVariable(name: "int_no", scope: !4557, file: !324, line: 367, type: !2335)
!4563 = !DILocation(line: 0, scope: !4557)
!4564 = !DILocation(line: 367, column: 26, scope: !4557)
!4565 = !DILocation(line: 369, column: 16, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4557, file: !324, line: 369, column: 9)
!4567 = !DILocation(line: 369, column: 9, scope: !4557)
!4568 = !DILocation(line: 370, column: 22, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4566, file: !324, line: 369, column: 33)
!4570 = !DILocation(line: 370, column: 9, scope: !4569)
!4571 = !DILocation(line: 0, scope: !4566)
!4572 = !DILocation(line: 375, column: 1, scope: !4557)
!4573 = distinct !DISubprogram(name: "hal_uart_get_char_unblocking", scope: !324, file: !324, line: 377, type: !4574, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4576)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!12, !388}
!4576 = !{!4577, !4578}
!4577 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4573, file: !324, line: 377, type: !388)
!4578 = !DILocalVariable(name: "int_no", scope: !4573, file: !324, line: 379, type: !2335)
!4579 = !DILocation(line: 0, scope: !4573)
!4580 = !DILocation(line: 379, column: 26, scope: !4573)
!4581 = !DILocation(line: 381, column: 16, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4573, file: !324, line: 381, column: 9)
!4583 = !DILocation(line: 381, column: 9, scope: !4573)
!4584 = !DILocation(line: 382, column: 16, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4582, file: !324, line: 381, column: 33)
!4586 = !DILocation(line: 382, column: 9, scope: !4585)
!4587 = !DILocation(line: 0, scope: !4582)
!4588 = !DILocation(line: 387, column: 1, scope: !4573)
!4589 = distinct !DISubprogram(name: "hal_uart_receive_polling", scope: !324, file: !324, line: 390, type: !4590, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4592)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!12, !388, !428, !12}
!4592 = !{!4593, !4594, !4595, !4596, !4597}
!4593 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4589, file: !324, line: 390, type: !388)
!4594 = !DILocalVariable(name: "buffer", arg: 2, scope: !4589, file: !324, line: 390, type: !428)
!4595 = !DILocalVariable(name: "size", arg: 3, scope: !4589, file: !324, line: 390, type: !12)
!4596 = !DILocalVariable(name: "int_no", scope: !4589, file: !324, line: 392, type: !2335)
!4597 = !DILocalVariable(name: "index", scope: !4589, file: !324, line: 393, type: !12)
!4598 = !DILocation(line: 0, scope: !4589)
!4599 = !DILocation(line: 392, column: 26, scope: !4589)
!4600 = !DILocation(line: 395, column: 16, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4589, file: !324, line: 395, column: 9)
!4602 = !DILocation(line: 395, column: 9, scope: !4589)
!4603 = !DILocation(line: 401, column: 38, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !324, line: 400, column: 48)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !324, line: 400, column: 9)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !324, line: 400, column: 9)
!4607 = distinct !DILexicalBlock(scope: !4608, file: !324, line: 399, column: 33)
!4608 = distinct !DILexicalBlock(scope: !4589, file: !324, line: 399, column: 9)
!4609 = !DILocation(line: 401, column: 13, scope: !4604)
!4610 = !DILocation(line: 401, column: 27, scope: !4604)
!4611 = !DILocation(line: 400, column: 44, scope: !4605)
!4612 = !DILocation(line: 400, column: 31, scope: !4605)
!4613 = !DILocation(line: 400, column: 9, scope: !4606)
!4614 = distinct !{!4614, !4613, !4615}
!4615 = !DILocation(line: 402, column: 9, scope: !4606)
!4616 = !DILocation(line: 406, column: 1, scope: !4589)
!4617 = distinct !DISubprogram(name: "hal_uart_receive_dma", scope: !324, file: !324, line: 408, type: !4590, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4618)
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624}
!4619 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4617, file: !324, line: 408, type: !388)
!4620 = !DILocalVariable(name: "buffer", arg: 2, scope: !4617, file: !324, line: 408, type: !428)
!4621 = !DILocalVariable(name: "size", arg: 3, scope: !4617, file: !324, line: 408, type: !12)
!4622 = !DILocalVariable(name: "actual_size", scope: !4617, file: !324, line: 410, type: !12)
!4623 = !DILocalVariable(name: "receive_size", scope: !4617, file: !324, line: 410, type: !12)
!4624 = !DILocalVariable(name: "ch", scope: !4617, file: !324, line: 411, type: !4517)
!4625 = !DILocation(line: 0, scope: !4617)
!4626 = !DILocation(line: 410, column: 5, scope: !4617)
!4627 = !DILocation(line: 413, column: 10, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4617, file: !324, line: 413, column: 9)
!4629 = !DILocation(line: 413, column: 9, scope: !4617)
!4630 = !DILocation(line: 417, column: 17, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4617, file: !324, line: 417, column: 9)
!4632 = !DILocation(line: 417, column: 26, scope: !4631)
!4633 = !DILocation(line: 421, column: 30, scope: !4617)
!4634 = !DILocation(line: 421, column: 5, scope: !4617)
!4635 = !DILocation(line: 422, column: 9, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4617, file: !324, line: 422, column: 9)
!4637 = !DILocation(line: 422, column: 21, scope: !4636)
!4638 = !DILocation(line: 427, column: 5, scope: !4617)
!4639 = !DILocation(line: 429, column: 25, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4617, file: !324, line: 429, column: 9)
!4641 = !DILocation(line: 429, column: 22, scope: !4640)
!4642 = !DILocation(line: 429, column: 9, scope: !4617)
!4643 = !DILocation(line: 430, column: 14, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4640, file: !324, line: 429, column: 38)
!4645 = !DILocation(line: 431, column: 9, scope: !4644)
!4646 = !DILocation(line: 432, column: 5, scope: !4644)
!4647 = !DILocation(line: 435, column: 1, scope: !4617)
!4648 = distinct !DISubprogram(name: "hal_uart_get_available_send_space", scope: !324, file: !324, line: 438, type: !4574, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4649)
!4649 = !{!4650, !4651}
!4650 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4648, file: !324, line: 438, type: !388)
!4651 = !DILocalVariable(name: "length", scope: !4648, file: !324, line: 440, type: !12)
!4652 = !DILocation(line: 0, scope: !4648)
!4653 = !DILocation(line: 440, column: 5, scope: !4648)
!4654 = !DILocation(line: 440, column: 14, scope: !4648)
!4655 = !DILocation(line: 442, column: 10, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4648, file: !324, line: 442, column: 9)
!4657 = !DILocation(line: 442, column: 9, scope: !4648)
!4658 = !DILocation(line: 446, column: 30, scope: !4648)
!4659 = !DILocation(line: 446, column: 5, scope: !4648)
!4660 = !DILocation(line: 447, column: 12, scope: !4648)
!4661 = !DILocation(line: 447, column: 5, scope: !4648)
!4662 = !DILocation(line: 448, column: 1, scope: !4648)
!4663 = distinct !DISubprogram(name: "hal_uart_get_available_receive_bytes", scope: !324, file: !324, line: 451, type: !4574, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4664)
!4664 = !{!4665, !4666}
!4665 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4663, file: !324, line: 451, type: !388)
!4666 = !DILocalVariable(name: "length", scope: !4663, file: !324, line: 453, type: !12)
!4667 = !DILocation(line: 0, scope: !4663)
!4668 = !DILocation(line: 453, column: 5, scope: !4663)
!4669 = !DILocation(line: 453, column: 14, scope: !4663)
!4670 = !DILocation(line: 455, column: 10, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4663, file: !324, line: 455, column: 9)
!4672 = !DILocation(line: 455, column: 9, scope: !4663)
!4673 = !DILocation(line: 459, column: 30, scope: !4663)
!4674 = !DILocation(line: 459, column: 5, scope: !4663)
!4675 = !DILocation(line: 461, column: 12, scope: !4663)
!4676 = !DILocation(line: 461, column: 5, scope: !4663)
!4677 = !DILocation(line: 462, column: 1, scope: !4663)
!4678 = distinct !DISubprogram(name: "hal_uart_register_callback", scope: !324, file: !324, line: 543, type: !4679, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4681)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!4306, !388, !416, !116}
!4681 = !{!4682, !4683, !4684, !4685}
!4682 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4678, file: !324, line: 543, type: !388)
!4683 = !DILocalVariable(name: "user_callback", arg: 2, scope: !4678, file: !324, line: 544, type: !416)
!4684 = !DILocalVariable(name: "user_data", arg: 3, scope: !4678, file: !324, line: 545, type: !116)
!4685 = !DILocalVariable(name: "ch", scope: !4678, file: !324, line: 547, type: !4517)
!4686 = !DILocation(line: 0, scope: !4678)
!4687 = !DILocation(line: 549, column: 10, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4678, file: !324, line: 549, column: 9)
!4689 = !DILocation(line: 549, column: 9, scope: !4678)
!4690 = !DILocation(line: 556, column: 53, scope: !4678)
!4691 = !DILocation(line: 556, column: 62, scope: !4678)
!4692 = !DILocation(line: 557, column: 53, scope: !4678)
!4693 = !DILocation(line: 557, column: 63, scope: !4678)
!4694 = !DILocation(line: 558, column: 37, scope: !4678)
!4695 = !DILocation(line: 558, column: 54, scope: !4678)
!4696 = !DILocation(line: 560, column: 39, scope: !4678)
!4697 = !DILocation(line: 561, column: 39, scope: !4678)
!4698 = !DILocation(line: 560, column: 5, scope: !4678)
!4699 = !DILocation(line: 562, column: 5, scope: !4678)
!4700 = !DILocation(line: 564, column: 44, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4678, file: !324, line: 564, column: 9)
!4702 = !DILocation(line: 564, column: 9, scope: !4678)
!4703 = !DILocation(line: 565, column: 9, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4701, file: !324, line: 564, column: 59)
!4705 = !DILocation(line: 566, column: 5, scope: !4704)
!4706 = !DILocation(line: 567, column: 9, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4701, file: !324, line: 566, column: 12)
!4708 = !DILocation(line: 569, column: 10, scope: !4678)
!4709 = !DILocation(line: 570, column: 5, scope: !4678)
!4710 = !DILocation(line: 578, column: 5, scope: !4678)
!4711 = !DILocation(line: 579, column: 1, scope: !4678)
!4712 = !DILocation(line: 0, scope: !381)
!4713 = !DILocation(line: 539, column: 12, scope: !381)
!4714 = !DILocation(line: 539, column: 5, scope: !381)
!4715 = distinct !DISubprogram(name: "hal_uart_send_callback0", scope: !324, file: !324, line: 511, type: !386, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4716)
!4716 = !{!4717}
!4717 = !DILocalVariable(name: "callback_context", scope: !4718, file: !324, line: 514, type: !4720)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !324, line: 513, column: 60)
!4719 = distinct !DILexicalBlock(scope: !4715, file: !324, line: 513, column: 9)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 32)
!4721 = !DILocation(line: 513, column: 42, scope: !4719)
!4722 = !DILocation(line: 513, column: 9, scope: !4715)
!4723 = !DILocation(line: 515, column: 39, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4718, file: !324, line: 515, column: 13)
!4725 = !DILocation(line: 515, column: 18, scope: !4724)
!4726 = !DILocation(line: 515, column: 13, scope: !4718)
!4727 = !DILocation(line: 516, column: 89, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4724, file: !324, line: 515, column: 49)
!4729 = !DILocation(line: 516, column: 13, scope: !4728)
!4730 = !DILocation(line: 517, column: 9, scope: !4728)
!4731 = !DILocation(line: 519, column: 32, scope: !4715)
!4732 = !DILocation(line: 519, column: 5, scope: !4715)
!4733 = !DILocation(line: 520, column: 1, scope: !4715)
!4734 = distinct !DISubprogram(name: "hal_uart_send_callback1", scope: !324, file: !324, line: 523, type: !386, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4735)
!4735 = !{!4736}
!4736 = !DILocalVariable(name: "callback_context", scope: !4737, file: !324, line: 526, type: !4720)
!4737 = distinct !DILexicalBlock(scope: !4738, file: !324, line: 525, column: 60)
!4738 = distinct !DILexicalBlock(scope: !4734, file: !324, line: 525, column: 9)
!4739 = !DILocation(line: 525, column: 42, scope: !4738)
!4740 = !DILocation(line: 525, column: 9, scope: !4734)
!4741 = !DILocation(line: 527, column: 39, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4737, file: !324, line: 527, column: 13)
!4743 = !DILocation(line: 527, column: 18, scope: !4742)
!4744 = !DILocation(line: 527, column: 13, scope: !4737)
!4745 = !DILocation(line: 528, column: 89, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4742, file: !324, line: 527, column: 49)
!4747 = !DILocation(line: 528, column: 13, scope: !4746)
!4748 = !DILocation(line: 529, column: 9, scope: !4746)
!4749 = !DILocation(line: 531, column: 32, scope: !4734)
!4750 = !DILocation(line: 531, column: 5, scope: !4734)
!4751 = !DILocation(line: 532, column: 1, scope: !4734)
!4752 = distinct !DISubprogram(name: "hal_uart_check_irq_disable", scope: !324, file: !324, line: 464, type: !4753, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{null, !2335, !124}
!4755 = !{!4756, !4757, !4758, !4759, !4760, !4762}
!4756 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4752, file: !324, line: 464, type: !2335)
!4757 = !DILocalVariable(name: "is_rx", arg: 2, scope: !4752, file: !324, line: 464, type: !124)
!4758 = !DILocalVariable(name: "avail_size", scope: !4752, file: !324, line: 466, type: !12)
!4759 = !DILocalVariable(name: "avail_space", scope: !4752, file: !324, line: 466, type: !12)
!4760 = !DILocalVariable(name: "dma_config", scope: !4752, file: !324, line: 467, type: !4761)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 32)
!4762 = !DILocalVariable(name: "ch", scope: !4752, file: !324, line: 468, type: !4517)
!4763 = !DILocation(line: 0, scope: !4752)
!4764 = !DILocation(line: 466, column: 5, scope: !4752)
!4765 = !DILocation(line: 471, column: 9, scope: !4752)
!4766 = !DILocation(line: 472, column: 9, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !324, line: 471, column: 16)
!4768 = distinct !DILexicalBlock(scope: !4752, file: !324, line: 471, column: 9)
!4769 = !DILocation(line: 473, column: 13, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4767, file: !324, line: 473, column: 13)
!4771 = !DILocation(line: 473, column: 39, scope: !4770)
!4772 = !DILocation(line: 473, column: 24, scope: !4770)
!4773 = !DILocation(line: 473, column: 13, scope: !4767)
!4774 = !DILocation(line: 478, column: 9, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4768, file: !324, line: 477, column: 12)
!4776 = !DILocation(line: 479, column: 13, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4775, file: !324, line: 479, column: 13)
!4778 = !DILocation(line: 479, column: 40, scope: !4777)
!4779 = !DILocation(line: 479, column: 77, scope: !4777)
!4780 = !DILocation(line: 479, column: 63, scope: !4777)
!4781 = !DILocation(line: 479, column: 25, scope: !4777)
!4782 = !DILocation(line: 479, column: 13, scope: !4775)
!4783 = !DILocation(line: 0, scope: !4768)
!4784 = !DILocation(line: 484, column: 1, scope: !4752)
!4785 = distinct !DISubprogram(name: "hal_uart_receive_callback0", scope: !324, file: !324, line: 486, type: !386, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4786)
!4786 = !{!4787}
!4787 = !DILocalVariable(name: "callback_context", scope: !4788, file: !324, line: 490, type: !4720)
!4788 = distinct !DILexicalBlock(scope: !4789, file: !324, line: 489, column: 70)
!4789 = distinct !DILexicalBlock(scope: !4785, file: !324, line: 488, column: 9)
!4790 = !DILocation(line: 488, column: 43, scope: !4789)
!4791 = !DILocation(line: 488, column: 61, scope: !4789)
!4792 = !DILocation(line: 489, column: 14, scope: !4789)
!4793 = !DILocation(line: 489, column: 63, scope: !4789)
!4794 = !DILocation(line: 488, column: 9, scope: !4785)
!4795 = !DILocation(line: 491, column: 39, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4788, file: !324, line: 491, column: 13)
!4797 = !DILocation(line: 491, column: 18, scope: !4796)
!4798 = !DILocation(line: 491, column: 13, scope: !4788)
!4799 = !DILocation(line: 492, column: 88, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4796, file: !324, line: 491, column: 49)
!4801 = !DILocation(line: 492, column: 13, scope: !4800)
!4802 = !DILocation(line: 493, column: 9, scope: !4800)
!4803 = !DILocation(line: 495, column: 32, scope: !4785)
!4804 = !DILocation(line: 495, column: 5, scope: !4785)
!4805 = !DILocation(line: 496, column: 1, scope: !4785)
!4806 = distinct !DISubprogram(name: "hal_uart_receive_callback1", scope: !324, file: !324, line: 499, type: !386, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4807)
!4807 = !{!4808}
!4808 = !DILocalVariable(name: "callback_context", scope: !4809, file: !324, line: 503, type: !4720)
!4809 = distinct !DILexicalBlock(scope: !4810, file: !324, line: 502, column: 70)
!4810 = distinct !DILexicalBlock(scope: !4806, file: !324, line: 501, column: 9)
!4811 = !DILocation(line: 501, column: 43, scope: !4810)
!4812 = !DILocation(line: 501, column: 61, scope: !4810)
!4813 = !DILocation(line: 502, column: 14, scope: !4810)
!4814 = !DILocation(line: 502, column: 63, scope: !4810)
!4815 = !DILocation(line: 501, column: 9, scope: !4806)
!4816 = !DILocation(line: 504, column: 39, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4809, file: !324, line: 504, column: 13)
!4818 = !DILocation(line: 504, column: 18, scope: !4817)
!4819 = !DILocation(line: 504, column: 13, scope: !4809)
!4820 = !DILocation(line: 505, column: 88, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4817, file: !324, line: 504, column: 49)
!4822 = !DILocation(line: 505, column: 13, scope: !4821)
!4823 = !DILocation(line: 506, column: 9, scope: !4821)
!4824 = !DILocation(line: 508, column: 32, scope: !4806)
!4825 = !DILocation(line: 508, column: 5, scope: !4806)
!4826 = !DILocation(line: 509, column: 1, scope: !4806)
!4827 = distinct !DISubprogram(name: "hal_uart_set_baudrate", scope: !324, file: !324, line: 582, type: !4828, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4830)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!4306, !388, !403}
!4830 = !{!4831, !4832}
!4831 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4827, file: !324, line: 582, type: !388)
!4832 = !DILocalVariable(name: "baudrate", arg: 2, scope: !4827, file: !324, line: 582, type: !403)
!4833 = !DILocation(line: 0, scope: !4827)
!4834 = !DILocation(line: 584, column: 11, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4827, file: !324, line: 584, column: 9)
!4836 = !DILocation(line: 584, column: 46, scope: !4835)
!4837 = !DILocation(line: 588, column: 37, scope: !4827)
!4838 = !DILocation(line: 588, column: 50, scope: !4827)
!4839 = !DILocation(line: 588, column: 59, scope: !4827)
!4840 = !DILocation(line: 589, column: 12, scope: !4827)
!4841 = !DILocation(line: 589, column: 5, scope: !4827)
!4842 = !DILocation(line: 590, column: 1, scope: !4827)
!4843 = distinct !DISubprogram(name: "hal_uart_set_dma", scope: !324, file: !324, line: 608, type: !4844, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4848)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!4306, !388, !4846}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 32)
!4847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!4848 = !{!4849, !4850}
!4849 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4843, file: !324, line: 608, type: !388)
!4850 = !DILocalVariable(name: "uart_dma_config", arg: 2, scope: !4843, file: !324, line: 608, type: !4846)
!4851 = !DILocation(line: 0, scope: !4843)
!4852 = !DILocation(line: 610, column: 10, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4843, file: !324, line: 610, column: 9)
!4854 = !DILocation(line: 610, column: 9, scope: !4843)
!4855 = !DILocation(line: 614, column: 10, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4843, file: !324, line: 614, column: 9)
!4857 = !DILocation(line: 614, column: 9, scope: !4843)
!4858 = !DILocation(line: 618, column: 37, scope: !4843)
!4859 = !DILocation(line: 618, column: 56, scope: !4843)
!4860 = !DILocation(line: 619, column: 45, scope: !4843)
!4861 = !DILocation(line: 619, column: 12, scope: !4843)
!4862 = !DILocation(line: 620, column: 12, scope: !4843)
!4863 = !DILocation(line: 619, column: 5, scope: !4843)
!4864 = !DILocation(line: 621, column: 5, scope: !4843)
!4865 = !DILocation(line: 622, column: 5, scope: !4843)
!4866 = !DILocation(line: 623, column: 33, scope: !4843)
!4867 = !DILocation(line: 624, column: 50, scope: !4843)
!4868 = !DILocation(line: 625, column: 50, scope: !4843)
!4869 = !DILocation(line: 626, column: 50, scope: !4843)
!4870 = !DILocation(line: 627, column: 50, scope: !4843)
!4871 = !DILocation(line: 628, column: 33, scope: !4843)
!4872 = !DILocation(line: 623, column: 5, scope: !4843)
!4873 = !DILocation(line: 630, column: 50, scope: !4843)
!4874 = !DILocation(line: 631, column: 50, scope: !4843)
!4875 = !DILocation(line: 632, column: 50, scope: !4843)
!4876 = !DILocation(line: 629, column: 5, scope: !4843)
!4877 = !DILocation(line: 634, column: 5, scope: !4843)
!4878 = !DILocation(line: 635, column: 1, scope: !4843)
!4879 = distinct !DISubprogram(name: "hal_uart_is_dma_config_valid", scope: !324, file: !324, line: 112, type: !4880, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4882)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!124, !4846}
!4882 = !{!4883}
!4883 = !DILocalVariable(name: "dma_config", arg: 1, scope: !4879, file: !324, line: 112, type: !4846)
!4884 = !DILocation(line: 0, scope: !4879)
!4885 = !DILocation(line: 114, column: 14, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4879, file: !324, line: 114, column: 9)
!4887 = !DILocation(line: 114, column: 9, scope: !4879)
!4888 = !DILocation(line: 117, column: 29, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4879, file: !324, line: 117, column: 9)
!4890 = !DILocation(line: 117, column: 14, scope: !4889)
!4891 = !DILocation(line: 117, column: 9, scope: !4879)
!4892 = !DILocation(line: 120, column: 21, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4879, file: !324, line: 120, column: 9)
!4894 = !DILocation(line: 120, column: 61, scope: !4893)
!4895 = !DILocation(line: 120, column: 47, scope: !4893)
!4896 = !DILocation(line: 120, column: 9, scope: !4879)
!4897 = !DILocation(line: 123, column: 61, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4879, file: !324, line: 123, column: 9)
!4899 = !DILocation(line: 123, column: 47, scope: !4898)
!4900 = !DILocation(line: 123, column: 9, scope: !4879)
!4901 = !DILocation(line: 126, column: 29, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4879, file: !324, line: 126, column: 9)
!4903 = !DILocation(line: 126, column: 14, scope: !4902)
!4904 = !DILocation(line: 126, column: 9, scope: !4879)
!4905 = !DILocation(line: 129, column: 21, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4879, file: !324, line: 129, column: 9)
!4907 = !DILocation(line: 129, column: 58, scope: !4906)
!4908 = !DILocation(line: 129, column: 44, scope: !4906)
!4909 = !DILocation(line: 129, column: 9, scope: !4879)
!4910 = !DILocation(line: 136, column: 1, scope: !4879)
!4911 = distinct !DISubprogram(name: "hal_uart_translate_timeout", scope: !324, file: !324, line: 182, type: !4912, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4914)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!12, !12}
!4914 = !{!4915, !4916}
!4915 = !DILocalVariable(name: "timeout_us", arg: 1, scope: !4911, file: !324, line: 182, type: !12)
!4916 = !DILocalVariable(name: "ticks_per_us", scope: !4911, file: !324, line: 184, type: !12)
!4917 = !DILocation(line: 0, scope: !4911)
!4918 = !DILocation(line: 186, column: 20, scope: !4911)
!4919 = !DILocation(line: 186, column: 39, scope: !4911)
!4920 = !DILocation(line: 188, column: 25, scope: !4911)
!4921 = !DILocation(line: 188, column: 5, scope: !4911)
!4922 = distinct !DISubprogram(name: "hal_uart_set_hardware_flowcontrol", scope: !324, file: !324, line: 637, type: !4448, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4923)
!4923 = !{!4924, !4925}
!4924 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4922, file: !324, line: 637, type: !388)
!4925 = !DILocalVariable(name: "int_no", scope: !4922, file: !324, line: 639, type: !2335)
!4926 = !DILocation(line: 0, scope: !4922)
!4927 = !DILocation(line: 641, column: 10, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4922, file: !324, line: 641, column: 9)
!4929 = !DILocation(line: 641, column: 9, scope: !4922)
!4930 = !DILocation(line: 645, column: 14, scope: !4922)
!4931 = !DILocation(line: 646, column: 5, scope: !4922)
!4932 = !DILocation(line: 648, column: 5, scope: !4922)
!4933 = !DILocation(line: 649, column: 1, scope: !4922)
!4934 = distinct !DISubprogram(name: "hal_uart_set_software_flowcontrol", scope: !324, file: !324, line: 651, type: !4935, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4937)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!4306, !388, !118, !118, !118}
!4937 = !{!4938, !4939, !4940, !4941, !4942}
!4938 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4934, file: !324, line: 651, type: !388)
!4939 = !DILocalVariable(name: "xon", arg: 2, scope: !4934, file: !324, line: 652, type: !118)
!4940 = !DILocalVariable(name: "xoff", arg: 3, scope: !4934, file: !324, line: 653, type: !118)
!4941 = !DILocalVariable(name: "escape_character", arg: 4, scope: !4934, file: !324, line: 654, type: !118)
!4942 = !DILocalVariable(name: "int_no", scope: !4934, file: !324, line: 656, type: !2335)
!4943 = !DILocation(line: 0, scope: !4934)
!4944 = !DILocation(line: 658, column: 10, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4934, file: !324, line: 658, column: 9)
!4946 = !DILocation(line: 658, column: 9, scope: !4934)
!4947 = !DILocation(line: 662, column: 14, scope: !4934)
!4948 = !DILocation(line: 663, column: 5, scope: !4934)
!4949 = !DILocation(line: 665, column: 5, scope: !4934)
!4950 = !DILocation(line: 666, column: 1, scope: !4934)
!4951 = distinct !DISubprogram(name: "hal_uart_disable_flowcontrol", scope: !324, file: !324, line: 668, type: !4448, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4952)
!4952 = !{!4953, !4954}
!4953 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4951, file: !324, line: 668, type: !388)
!4954 = !DILocalVariable(name: "int_no", scope: !4951, file: !324, line: 670, type: !2335)
!4955 = !DILocation(line: 0, scope: !4951)
!4956 = !DILocation(line: 672, column: 10, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4951, file: !324, line: 672, column: 9)
!4958 = !DILocation(line: 672, column: 9, scope: !4951)
!4959 = !DILocation(line: 676, column: 14, scope: !4951)
!4960 = !DILocation(line: 677, column: 5, scope: !4951)
!4961 = !DILocation(line: 679, column: 5, scope: !4951)
!4962 = !DILocation(line: 680, column: 1, scope: !4951)
!4963 = distinct !DISubprogram(name: "hal_uart_set_dma_timeout", scope: !324, file: !324, line: 683, type: !4964, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !323, retainedNodes: !4966)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!4306, !388, !12}
!4966 = !{!4967, !4968}
!4967 = !DILocalVariable(name: "uart_port", arg: 1, scope: !4963, file: !324, line: 683, type: !388)
!4968 = !DILocalVariable(name: "timeout", arg: 2, scope: !4963, file: !324, line: 683, type: !12)
!4969 = !DILocation(line: 0, scope: !4963)
!4970 = !DILocation(line: 685, column: 10, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4963, file: !324, line: 685, column: 9)
!4972 = !DILocation(line: 685, column: 9, scope: !4963)
!4973 = !DILocation(line: 689, column: 19, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4963, file: !324, line: 689, column: 9)
!4975 = !DILocation(line: 0, scope: !4974)
!4976 = !DILocation(line: 696, column: 1, scope: !4963)
!4977 = distinct !DISubprogram(name: "__io_putchar", scope: !966, file: !966, line: 53, type: !4978, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !4980)
!4978 = !DISubroutineType(types: !4979)
!4979 = !{!66, !66}
!4980 = !{!4981}
!4981 = !DILocalVariable(name: "ch", arg: 1, scope: !4977, file: !966, line: 53, type: !66)
!4982 = !DILocation(line: 0, scope: !4977)
!4983 = !DILocation(line: 60, column: 35, scope: !4977)
!4984 = !DILocation(line: 60, column: 5, scope: !4977)
!4985 = !DILocation(line: 61, column: 5, scope: !4977)
!4986 = distinct !DISubprogram(name: "main", scope: !966, file: !966, line: 200, type: !2311, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !1882)
!4987 = !DILocation(line: 203, column: 5, scope: !4986)
!4988 = !DILocation(line: 206, column: 5, scope: !4986)
!4989 = !DILocation(line: 319, column: 3, scope: !4990, inlinedAt: !4991)
!4990 = distinct !DISubprogram(name: "__enable_irq", scope: !1872, file: !1872, line: 317, type: !386, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !1882)
!4991 = distinct !DILocation(line: 209, column: 5, scope: !4986)
!4992 = !{i64 508979}
!4993 = !DILocation(line: 496, column: 3, scope: !4994, inlinedAt: !4995)
!4994 = distinct !DISubprogram(name: "__enable_fault_irq", scope: !1872, file: !1872, line: 494, type: !386, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !1882)
!4995 = distinct !DILocation(line: 210, column: 5, scope: !4986)
!4996 = !{i64 513254}
!4997 = !DILocation(line: 213, column: 5, scope: !4986)
!4998 = !DILocation(line: 214, column: 5, scope: !4986)
!4999 = !DILocation(line: 215, column: 5, scope: !4986)
!5000 = !DILocation(line: 217, column: 5, scope: !4986)
!5001 = !DILocation(line: 219, column: 5, scope: !4986)
!5002 = !DILocation(line: 219, column: 5, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !966, line: 219, column: 5)
!5004 = distinct !DILexicalBlock(scope: !4986, file: !966, line: 219, column: 5)
!5005 = distinct !{!5005, !5006, !5007}
!5006 = !DILocation(line: 219, column: 5, scope: !5004)
!5007 = !DILocation(line: 219, column: 13, scope: !5004)
!5008 = distinct !DISubprogram(name: "SystemClock_Config", scope: !966, file: !966, line: 91, type: !386, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !1882)
!5009 = !DILocation(line: 93, column: 5, scope: !5008)
!5010 = !DILocation(line: 94, column: 1, scope: !5008)
!5011 = distinct !DISubprogram(name: "prvSetupHardware", scope: !966, file: !966, line: 100, type: !386, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !1882)
!5012 = !DILocation(line: 103, column: 5, scope: !5011)
!5013 = !DILocation(line: 105, column: 1, scope: !5011)
!5014 = distinct !DISubprogram(name: "des_encrypt_decrypt_data_example", scope: !966, file: !966, line: 131, type: !386, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !5015)
!5015 = !{!5016, !5020, !5021, !5022, !5024, !5025, !5031, !5032, !5033}
!5016 = !DILocalVariable(name: "plain", scope: !5014, file: !966, line: 134, type: !5017)
!5017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 240, elements: !5018)
!5018 = !{!5019}
!5019 = !DISubrange(count: 30)
!5020 = !DILocalVariable(name: "hardware_id", scope: !5014, file: !966, line: 138, type: !3822)
!5021 = !DILocalVariable(name: "des_cbc_iv", scope: !5014, file: !966, line: 141, type: !3822)
!5022 = !DILocalVariable(name: "encrypted", scope: !5014, file: !966, line: 144, type: !5023)
!5023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !657)
!5024 = !DILocalVariable(name: "decrypted", scope: !5014, file: !966, line: 145, type: !5023)
!5025 = !DILocalVariable(name: "encrypted_text", scope: !5014, file: !966, line: 147, type: !5026)
!5026 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_des_buffer_t", file: !213, line: 303, baseType: !5027)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !213, line: 300, size: 64, elements: !5028)
!5028 = !{!5029, !5030}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5027, file: !213, line: 301, baseType: !428, size: 32)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5027, file: !213, line: 302, baseType: !12, size: 32, offset: 32)
!5031 = !DILocalVariable(name: "origin_text", scope: !5014, file: !966, line: 151, type: !5026)
!5032 = !DILocalVariable(name: "key", scope: !5014, file: !966, line: 155, type: !5026)
!5033 = !DILocalVariable(name: "decrypted_text", scope: !5014, file: !966, line: 174, type: !5026)
!5034 = !DILocation(line: 134, column: 5, scope: !5014)
!5035 = !DILocation(line: 134, column: 13, scope: !5014)
!5036 = !DILocation(line: 138, column: 5, scope: !5014)
!5037 = !DILocation(line: 0, scope: !5014)
!5038 = !DILocation(line: 138, column: 13, scope: !5014)
!5039 = !DILocation(line: 141, column: 5, scope: !5014)
!5040 = !DILocation(line: 141, column: 13, scope: !5014)
!5041 = !DILocation(line: 144, column: 5, scope: !5014)
!5042 = !DILocation(line: 144, column: 13, scope: !5014)
!5043 = !DILocation(line: 145, column: 5, scope: !5014)
!5044 = !DILocation(line: 145, column: 13, scope: !5014)
!5045 = !DILocation(line: 147, column: 5, scope: !5014)
!5046 = !DILocation(line: 147, column: 22, scope: !5014)
!5047 = !DILocation(line: 147, column: 39, scope: !5014)
!5048 = !DILocation(line: 151, column: 5, scope: !5014)
!5049 = !DILocation(line: 151, column: 22, scope: !5014)
!5050 = !DILocation(line: 151, column: 36, scope: !5014)
!5051 = !DILocation(line: 155, column: 5, scope: !5014)
!5052 = !DILocation(line: 155, column: 22, scope: !5014)
!5053 = !DILocation(line: 155, column: 28, scope: !5014)
!5054 = !DILocation(line: 160, column: 5, scope: !5014)
!5055 = !DILocation(line: 161, column: 5, scope: !5014)
!5056 = !DILocation(line: 162, column: 5, scope: !5014)
!5057 = !DILocation(line: 163, column: 5, scope: !5014)
!5058 = !DILocation(line: 164, column: 5, scope: !5014)
!5059 = !DILocation(line: 165, column: 5, scope: !5014)
!5060 = !DILocation(line: 167, column: 5, scope: !5014)
!5061 = !DILocation(line: 171, column: 5, scope: !5014)
!5062 = !DILocation(line: 172, column: 36, scope: !5014)
!5063 = !DILocation(line: 172, column: 59, scope: !5014)
!5064 = !DILocation(line: 172, column: 44, scope: !5014)
!5065 = !DILocation(line: 172, column: 5, scope: !5014)
!5066 = !DILocation(line: 174, column: 5, scope: !5014)
!5067 = !DILocation(line: 174, column: 22, scope: !5014)
!5068 = !DILocation(line: 174, column: 39, scope: !5014)
!5069 = !DILocation(line: 178, column: 5, scope: !5014)
!5070 = !DILocation(line: 182, column: 5, scope: !5014)
!5071 = !DILocation(line: 183, column: 36, scope: !5014)
!5072 = !DILocation(line: 183, column: 59, scope: !5014)
!5073 = !DILocation(line: 183, column: 44, scope: !5014)
!5074 = !DILocation(line: 183, column: 5, scope: !5014)
!5075 = !DILocation(line: 186, column: 5, scope: !5014)
!5076 = !DILocation(line: 189, column: 5, scope: !5014)
!5077 = !DILocation(line: 190, column: 36, scope: !5014)
!5078 = !DILocation(line: 190, column: 59, scope: !5014)
!5079 = !DILocation(line: 190, column: 44, scope: !5014)
!5080 = !DILocation(line: 190, column: 5, scope: !5014)
!5081 = !DILocation(line: 192, column: 5, scope: !5014)
!5082 = !DILocation(line: 195, column: 5, scope: !5014)
!5083 = !DILocation(line: 196, column: 36, scope: !5014)
!5084 = !DILocation(line: 196, column: 59, scope: !5014)
!5085 = !DILocation(line: 196, column: 44, scope: !5014)
!5086 = !DILocation(line: 196, column: 5, scope: !5014)
!5087 = !DILocation(line: 197, column: 1, scope: !5014)
!5088 = distinct !DISubprogram(name: "des_result_dump", scope: !966, file: !966, line: 112, type: !5089, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !5091)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !428, !118}
!5091 = !{!5092, !5093, !5094}
!5092 = !DILocalVariable(name: "result", arg: 1, scope: !5088, file: !966, line: 112, type: !428)
!5093 = !DILocalVariable(name: "length", arg: 2, scope: !5088, file: !966, line: 112, type: !118)
!5094 = !DILocalVariable(name: "i", scope: !5088, file: !966, line: 114, type: !118)
!5095 = !DILocation(line: 0, scope: !5088)
!5096 = !DILocation(line: 116, column: 19, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !966, line: 116, column: 5)
!5098 = distinct !DILexicalBlock(scope: !5088, file: !966, line: 116, column: 5)
!5099 = !DILocation(line: 116, column: 5, scope: !5098)
!5100 = !DILocation(line: 117, column: 15, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5102, file: !966, line: 117, column: 13)
!5102 = distinct !DILexicalBlock(scope: !5097, file: !966, line: 116, column: 34)
!5103 = !DILocation(line: 117, column: 20, scope: !5101)
!5104 = !DILocation(line: 117, column: 13, scope: !5102)
!5105 = !DILocation(line: 118, column: 13, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5101, file: !966, line: 117, column: 26)
!5107 = !DILocation(line: 119, column: 9, scope: !5106)
!5108 = !DILocation(line: 121, column: 26, scope: !5102)
!5109 = !DILocation(line: 121, column: 9, scope: !5102)
!5110 = !DILocation(line: 116, column: 30, scope: !5097)
!5111 = distinct !{!5111, !5099, !5112}
!5112 = !DILocation(line: 122, column: 5, scope: !5098)
!5113 = !DILocation(line: 123, column: 5, scope: !5088)
!5114 = !DILocation(line: 125, column: 1, scope: !5088)
!5115 = distinct !DISubprogram(name: "log_uart_init", scope: !966, file: !966, line: 69, type: !386, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !965, retainedNodes: !5116)
!5116 = !{!5117}
!5117 = !DILocalVariable(name: "uart_config", scope: !5115, file: !966, line: 71, type: !5118)
!5118 = !DIDerivedType(tag: DW_TAG_typedef, name: "hal_uart_config_t", file: !327, line: 378, baseType: !5119)
!5119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !327, line: 373, size: 128, elements: !5120)
!5120 = !{!5121, !5122, !5123, !5124}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "baudrate", scope: !5119, file: !327, line: 374, baseType: !403, size: 32)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "word_length", scope: !5119, file: !327, line: 375, baseType: !405, size: 32, offset: 32)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bit", scope: !5119, file: !327, line: 376, baseType: !407, size: 32, offset: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5119, file: !327, line: 377, baseType: !409, size: 32, offset: 96)
!5125 = !DILocation(line: 71, column: 5, scope: !5115)
!5126 = !DILocation(line: 71, column: 23, scope: !5115)
!5127 = !DILocation(line: 73, column: 5, scope: !5115)
!5128 = !DILocation(line: 74, column: 5, scope: !5115)
!5129 = !DILocation(line: 75, column: 5, scope: !5115)
!5130 = !DILocation(line: 76, column: 5, scope: !5115)
!5131 = !DILocation(line: 79, column: 17, scope: !5115)
!5132 = !DILocation(line: 79, column: 26, scope: !5115)
!5133 = !DILocation(line: 80, column: 17, scope: !5115)
!5134 = !DILocation(line: 80, column: 29, scope: !5115)
!5135 = !DILocation(line: 81, column: 17, scope: !5115)
!5136 = !DILocation(line: 81, column: 26, scope: !5115)
!5137 = !DILocation(line: 82, column: 17, scope: !5115)
!5138 = !DILocation(line: 82, column: 24, scope: !5115)
!5139 = !DILocation(line: 83, column: 5, scope: !5115)
!5140 = !DILocation(line: 85, column: 1, scope: !5115)
!5141 = distinct !DISubprogram(name: "SysTick_Set", scope: !438, file: !438, line: 70, type: !4912, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !5142)
!5142 = !{!5143, !5144}
!5143 = !DILocalVariable(name: "ticks", arg: 1, scope: !5141, file: !438, line: 70, type: !12)
!5144 = !DILocalVariable(name: "val", scope: !5141, file: !438, line: 72, type: !12)
!5145 = !DILocation(line: 0, scope: !5141)
!5146 = !DILocation(line: 74, column: 16, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5141, file: !438, line: 74, column: 9)
!5148 = !DILocation(line: 74, column: 21, scope: !5147)
!5149 = !DILocation(line: 74, column: 9, scope: !5141)
!5150 = !DILocation(line: 78, column: 20, scope: !5141)
!5151 = !DILocation(line: 80, column: 19, scope: !5141)
!5152 = !DILocation(line: 83, column: 20, scope: !5141)
!5153 = !DILocation(line: 84, column: 20, scope: !5141)
!5154 = !DILocation(line: 86, column: 19, scope: !5141)
!5155 = !DILocation(line: 88, column: 5, scope: !5141)
!5156 = !DILocation(line: 89, column: 1, scope: !5141)
!5157 = distinct !DISubprogram(name: "SysInitStatus_Set", scope: !438, file: !438, line: 98, type: !386, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1882)
!5158 = !DILocation(line: 100, column: 28, scope: !5157)
!5159 = !DILocation(line: 101, column: 1, scope: !5157)
!5160 = distinct !DISubprogram(name: "SysInitStatus_Query", scope: !438, file: !438, line: 110, type: !1866, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1882)
!5161 = !DILocation(line: 112, column: 12, scope: !5160)
!5162 = !DILocation(line: 112, column: 5, scope: !5160)
!5163 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !438, file: !438, line: 122, type: !386, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1882)
!5164 = !DILocation(line: 124, column: 23, scope: !5163)
!5165 = !DILocation(line: 124, column: 21, scope: !5163)
!5166 = !DILocation(line: 125, column: 1, scope: !5163)
!5167 = distinct !DISubprogram(name: "SystemInit", scope: !438, file: !438, line: 136, type: !386, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1882)
!5168 = !DILocation(line: 140, column: 16, scope: !5167)
!5169 = !DILocation(line: 144, column: 16, scope: !5167)
!5170 = !DILocation(line: 147, column: 16, scope: !5167)
!5171 = !DILocation(line: 150, column: 1, scope: !5167)
!5172 = distinct !DISubprogram(name: "CachePreInit", scope: !438, file: !438, line: 158, type: !386, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !1882)
!5173 = !DILocation(line: 161, column: 22, scope: !5172)
!5174 = !DILocation(line: 164, column: 21, scope: !5172)
!5175 = !DILocation(line: 167, column: 21, scope: !5172)
!5176 = !DILocation(line: 170, column: 29, scope: !5172)
!5177 = !DILocation(line: 171, column: 33, scope: !5172)
!5178 = !DILocation(line: 173, column: 28, scope: !5172)
!5179 = !DILocation(line: 178, column: 30, scope: !5172)
!5180 = !DILocation(line: 192, column: 1, scope: !5172)
!5181 = distinct !DISubprogram(name: "_close", scope: !498, file: !498, line: 11, type: !4978, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5182)
!5182 = !{!5183}
!5183 = !DILocalVariable(name: "file", arg: 1, scope: !5181, file: !498, line: 11, type: !66)
!5184 = !DILocation(line: 0, scope: !5181)
!5185 = !DILocation(line: 13, column: 5, scope: !5181)
!5186 = distinct !DISubprogram(name: "_fstat", scope: !498, file: !498, line: 16, type: !5187, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5235)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!66, !66, !5189}
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5190, size: 32)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5191, line: 27, size: 704, elements: !5192)
!5191 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/stat.h", directory: "/home/mjshen/RTOSExploration")
!5192 = !{!5193, !5196, !5199, !5202, !5205, !5208, !5211, !5212, !5215, !5225, !5226, !5227, !5230, !5233}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5190, file: !5191, line: 29, baseType: !5194, size: 16)
!5194 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !502, line: 161, baseType: !5195)
!5195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !544, line: 56, baseType: !519)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5190, file: !5191, line: 30, baseType: !5197, size: 16, offset: 16)
!5197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !502, line: 139, baseType: !5198)
!5198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !544, line: 75, baseType: !53)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5190, file: !5191, line: 31, baseType: !5200, size: 32, offset: 32)
!5200 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !502, line: 189, baseType: !5201)
!5201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !544, line: 90, baseType: !14)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5190, file: !5191, line: 32, baseType: !5203, size: 16, offset: 64)
!5203 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !502, line: 194, baseType: !5204)
!5204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !544, line: 209, baseType: !53)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5190, file: !5191, line: 33, baseType: !5206, size: 16, offset: 80)
!5206 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !502, line: 165, baseType: !5207)
!5207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !544, line: 60, baseType: !53)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5190, file: !5191, line: 34, baseType: !5209, size: 16, offset: 96)
!5209 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !502, line: 169, baseType: !5210)
!5210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !544, line: 63, baseType: !53)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5190, file: !5191, line: 35, baseType: !5194, size: 16, offset: 112)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5190, file: !5191, line: 36, baseType: !5213, size: 32, offset: 128)
!5213 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !502, line: 157, baseType: !5214)
!5214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !544, line: 102, baseType: !562)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5190, file: !5191, line: 42, baseType: !5216, size: 128, offset: 192)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5217, line: 47, size: 128, elements: !5218)
!5217 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timespec.h", directory: "/home/mjshen/RTOSExploration")
!5218 = !{!5219, !5224}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5216, file: !5217, line: 48, baseType: !5220, size: 64)
!5220 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !5221, line: 42, baseType: !5222)
!5221 = !DIFile(filename: "gcc-arm-none-eabi-10.3-2021.10/bin/../lib/gcc/arm-none-eabi/10.3.1/../../../../arm-none-eabi/include/sys/_timeval.h", directory: "/home/mjshen/RTOSExploration")
!5222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int_least64_t", file: !15, line: 200, baseType: !5223)
!5223 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5216, file: !5217, line: 49, baseType: !545, size: 32, offset: 64)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5190, file: !5191, line: 43, baseType: !5216, size: 128, offset: 320)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5190, file: !5191, line: 44, baseType: !5216, size: 128, offset: 448)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5190, file: !5191, line: 45, baseType: !5228, size: 32, offset: 576)
!5228 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !502, line: 102, baseType: !5229)
!5229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !544, line: 34, baseType: !545)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5190, file: !5191, line: 46, baseType: !5231, size: 32, offset: 608)
!5231 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !502, line: 97, baseType: !5232)
!5232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !544, line: 30, baseType: !545)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "st_spare4", scope: !5190, file: !5191, line: 48, baseType: !5234, size: 64, offset: 640)
!5234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 64, elements: !294)
!5235 = !{!5236, !5237}
!5236 = !DILocalVariable(name: "file", arg: 1, scope: !5186, file: !498, line: 16, type: !66)
!5237 = !DILocalVariable(name: "st", arg: 2, scope: !5186, file: !498, line: 16, type: !5189)
!5238 = !DILocation(line: 0, scope: !5186)
!5239 = !DILocation(line: 18, column: 5, scope: !5186)
!5240 = distinct !DISubprogram(name: "_isatty", scope: !498, file: !498, line: 22, type: !4978, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5241)
!5241 = !{!5242}
!5242 = !DILocalVariable(name: "file", arg: 1, scope: !5240, file: !498, line: 22, type: !66)
!5243 = !DILocation(line: 0, scope: !5240)
!5244 = !DILocation(line: 24, column: 5, scope: !5240)
!5245 = distinct !DISubprogram(name: "_lseek", scope: !498, file: !498, line: 27, type: !5246, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5248)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{!66, !66, !66, !66}
!5248 = !{!5249, !5250, !5251}
!5249 = !DILocalVariable(name: "file", arg: 1, scope: !5245, file: !498, line: 27, type: !66)
!5250 = !DILocalVariable(name: "ptr", arg: 2, scope: !5245, file: !498, line: 27, type: !66)
!5251 = !DILocalVariable(name: "dir", arg: 3, scope: !5245, file: !498, line: 27, type: !66)
!5252 = !DILocation(line: 0, scope: !5245)
!5253 = !DILocation(line: 29, column: 5, scope: !5245)
!5254 = distinct !DISubprogram(name: "_open", scope: !498, file: !498, line: 32, type: !5255, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5257)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!66, !537, !66, !66}
!5257 = !{!5258, !5259, !5260}
!5258 = !DILocalVariable(name: "name", arg: 1, scope: !5254, file: !498, line: 32, type: !537)
!5259 = !DILocalVariable(name: "flags", arg: 2, scope: !5254, file: !498, line: 32, type: !66)
!5260 = !DILocalVariable(name: "mode", arg: 3, scope: !5254, file: !498, line: 32, type: !66)
!5261 = !DILocation(line: 0, scope: !5254)
!5262 = !DILocation(line: 34, column: 5, scope: !5254)
!5263 = distinct !DISubprogram(name: "_read", scope: !498, file: !498, line: 37, type: !5264, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5266)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!66, !66, !503, !66}
!5266 = !{!5267, !5268, !5269}
!5267 = !DILocalVariable(name: "file", arg: 1, scope: !5263, file: !498, line: 37, type: !66)
!5268 = !DILocalVariable(name: "ptr", arg: 2, scope: !5263, file: !498, line: 37, type: !503)
!5269 = !DILocalVariable(name: "len", arg: 3, scope: !5263, file: !498, line: 37, type: !66)
!5270 = !DILocation(line: 0, scope: !5263)
!5271 = !DILocation(line: 39, column: 5, scope: !5263)
!5272 = distinct !DISubprogram(name: "_write", scope: !498, file: !498, line: 52, type: !5264, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5273)
!5273 = !{!5274, !5275, !5276, !5277}
!5274 = !DILocalVariable(name: "file", arg: 1, scope: !5272, file: !498, line: 52, type: !66)
!5275 = !DILocalVariable(name: "ptr", arg: 2, scope: !5272, file: !498, line: 52, type: !503)
!5276 = !DILocalVariable(name: "len", arg: 3, scope: !5272, file: !498, line: 52, type: !66)
!5277 = !DILocalVariable(name: "i", scope: !5272, file: !498, line: 54, type: !66)
!5278 = !DILocation(line: 0, scope: !5272)
!5279 = !DILocation(line: 56, column: 19, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5281, file: !498, line: 56, column: 5)
!5281 = distinct !DILexicalBlock(scope: !5272, file: !498, line: 56, column: 5)
!5282 = !DILocation(line: 56, column: 5, scope: !5281)
!5283 = !DILocation(line: 57, column: 26, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5280, file: !498, line: 56, column: 31)
!5285 = !DILocation(line: 57, column: 22, scope: !5284)
!5286 = !DILocation(line: 57, column: 9, scope: !5284)
!5287 = !DILocation(line: 56, column: 27, scope: !5280)
!5288 = distinct !{!5288, !5282, !5289}
!5289 = !DILocation(line: 58, column: 5, scope: !5281)
!5290 = !DILocation(line: 60, column: 5, scope: !5272)
!5291 = !DILocation(line: 0, scope: !497)
!5292 = !DILocation(line: 70, column: 5, scope: !497)
!5293 = !{i64 1109}
!5294 = !DILocation(line: 72, column: 14, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !497, file: !498, line: 72, column: 9)
!5296 = !DILocation(line: 72, column: 11, scope: !5295)
!5297 = !DILocation(line: 72, column: 9, scope: !497)
!5298 = !DILocation(line: 78, column: 32, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !497, file: !498, line: 78, column: 9)
!5300 = !DILocation(line: 78, column: 15, scope: !5299)
!5301 = !DILocation(line: 89, column: 1, scope: !497)
!5302 = !DILocation(line: 78, column: 9, scope: !497)
!5303 = distinct !DISubprogram(name: "_exit", scope: !498, file: !498, line: 91, type: !647, scopeLine: 92, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5304)
!5304 = !{!5305}
!5305 = !DILocalVariable(name: "__status", arg: 1, scope: !5303, file: !498, line: 91, type: !66)
!5306 = !DILocation(line: 0, scope: !5303)
!5307 = !DILocation(line: 93, column: 5, scope: !5303)
!5308 = !DILocation(line: 94, column: 5, scope: !5303)
!5309 = distinct !{!5309, !5308, !5310}
!5310 = !DILocation(line: 96, column: 5, scope: !5303)
!5311 = distinct !DISubprogram(name: "_kill", scope: !498, file: !498, line: 100, type: !5312, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !5314)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!66, !66, !66}
!5314 = !{!5315, !5316}
!5315 = !DILocalVariable(name: "pid", arg: 1, scope: !5311, file: !498, line: 100, type: !66)
!5316 = !DILocalVariable(name: "sig", arg: 2, scope: !5311, file: !498, line: 100, type: !66)
!5317 = !DILocation(line: 0, scope: !5311)
!5318 = !DILocation(line: 102, column: 5, scope: !5311)
!5319 = !DILocation(line: 103, column: 5, scope: !5311)
!5320 = distinct !DISubprogram(name: "_getpid", scope: !498, file: !498, line: 107, type: !5321, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !695, retainedNodes: !1882)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!5323}
!5323 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !502, line: 174, baseType: !5324)
!5324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !544, line: 52, baseType: !66)
!5325 = !DILocation(line: 109, column: 5, scope: !5320)
!5326 = !DILocation(line: 110, column: 5, scope: !5320)
